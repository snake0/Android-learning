package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.v4.app.BackStackRecord.TransitionState;
import android.support.v4.app.Fragment.SavedState;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class FragmentManagerImpl extends FragmentManager implements LayoutInflaterFactory {
    static final Interpolator ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    static final Interpolator ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = false;
    static final Interpolator DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
    static final Interpolator DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    ArrayList<Fragment> mActive;
    ArrayList<Fragment> mAdded;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<Integer> mAvailIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    FragmentContainer mContainer;
    FragmentController mController;
    ArrayList<Fragment> mCreatedMenus;
    int mCurState = 0;
    boolean mDestroyed;
    Runnable mExecCommit = new Runnable() {
        public void run() {
            FragmentManagerImpl.this.execPendingActions();
        }
    };
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    FragmentHostCallback mHost;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<Runnable> mPendingActions;
    SparseArray<Parcelable> mStateArray = null;
    Bundle mStateBundle = null;
    boolean mStateSaved;
    Runnable[] mTmpActions;

    class AnimateOnHWLayerIfNeededListener implements AnimationListener {
        private boolean mShouldRunOnHWLayer = false;
        private View mView;

        public AnimateOnHWLayerIfNeededListener(View view, Animation animation) {
            if (view != null && animation != null) {
                this.mView = view;
            }
        }

        @CallSuper
        public void onAnimationStart(Animation animation) {
            this.mShouldRunOnHWLayer = FragmentManagerImpl.shouldRunOnHWLayer(this.mView, animation);
            if (this.mShouldRunOnHWLayer) {
                this.mView.post(new Runnable() {
                    public void run() {
                        ViewCompat.setLayerType(AnimateOnHWLayerIfNeededListener.this.mView, 2, null);
                    }
                });
            }
        }

        @CallSuper
        public void onAnimationEnd(Animation animation) {
            if (this.mShouldRunOnHWLayer) {
                this.mView.post(new Runnable() {
                    public void run() {
                        ViewCompat.setLayerType(AnimateOnHWLayerIfNeededListener.this.mView, 0, null);
                    }
                });
            }
        }

        public void onAnimationRepeat(Animation animation) {
        }
    }

    class FragmentTag {
        public static final int[] Fragment = new int[]{16842755, 16842960, 16842961};
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        FragmentTag() {
        }
    }

    FragmentManagerImpl() {
    }

    static {
        boolean z = false;
        if (VERSION.SDK_INT >= 11) {
            z = true;
        }
        HONEYCOMB = z;
    }

    static boolean modifiesAlpha(Animation animation) {
        if (animation instanceof AlphaAnimation) {
            return true;
        }
        if (!(animation instanceof AnimationSet)) {
            return false;
        }
        List animations = ((AnimationSet) animation).getAnimations();
        for (int i = 0; i < animations.size(); i++) {
            if (animations.get(i) instanceof AlphaAnimation) {
                return true;
            }
        }
        return false;
    }

    static boolean shouldRunOnHWLayer(View view, Animation animation) {
        return ViewCompat.getLayerType(view) == 0 && ViewCompat.hasOverlappingRendering(view) && modifiesAlpha(animation);
    }

    private void throwException(RuntimeException runtimeException) {
        Log.e(TAG, runtimeException.getMessage());
        Log.e(TAG, "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
        if (this.mHost != null) {
            try {
                this.mHost.onDump("  ", null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e(TAG, "Failed dumping state", e);
            }
        } else {
            try {
                dump("  ", null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e(TAG, "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public boolean executePendingTransactions() {
        return execPendingActions();
    }

    public void popBackStack() {
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, -1, 0);
            }
        }, false);
    }

    public boolean popBackStackImmediate() {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mHost.getHandler(), null, -1, 0);
    }

    public void popBackStack(final String str, final int i) {
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), str, -1, i);
            }
        }, false);
    }

    public boolean popBackStackImmediate(String str, int i) {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mHost.getHandler(), str, -1, i);
    }

    public void popBackStack(final int i, final int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, i, i2);
            }
        }, false);
    }

    public boolean popBackStackImmediate(int i, int i2) {
        checkStateLoss();
        executePendingTransactions();
        if (i >= 0) {
            return popBackStackState(this.mHost.getHandler(), null, i, i2);
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    public int getBackStackEntryCount() {
        return this.mBackStack != null ? this.mBackStack.size() : 0;
    }

    public BackStackEntry getBackStackEntryAt(int i) {
        return (BackStackEntry) this.mBackStack.get(i);
    }

    public void addOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    public void removeOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(onBackStackChangedListener);
        }
    }

    public void putFragment(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    public Fragment getFragment(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.mActive.size()) {
            throwException(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        }
        Fragment fragment = (Fragment) this.mActive.get(i);
        if (fragment != null) {
            return fragment;
        }
        throwException(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        return fragment;
    }

    public List<Fragment> getFragments() {
        return this.mActive;
    }

    public SavedState saveFragmentInstanceState(Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.mState <= 0) {
            return null;
        }
        Bundle saveFragmentBasicState = saveFragmentBasicState(fragment);
        if (saveFragmentBasicState != null) {
            return new SavedState(saveFragmentBasicState);
        }
        return null;
    }

    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("FragmentManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        if (this.mParent != null) {
            DebugUtils.buildShortClassTag(this.mParent, stringBuilder);
        } else {
            DebugUtils.buildShortClassTag(this.mHost, stringBuilder);
        }
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int i;
        Fragment fragment;
        BackStackRecord backStackRecord;
        int i2 = 0;
        String str2 = str + "    ";
        if (this.mActive != null) {
            size = this.mActive.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.print("Active Fragments in ");
                printWriter.print(Integer.toHexString(System.identityHashCode(this)));
                printWriter.println(":");
                for (i = 0; i < size; i++) {
                    fragment = (Fragment) this.mActive.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment);
                    if (fragment != null) {
                        fragment.dump(str2, fileDescriptor, printWriter, strArr);
                    }
                }
            }
        }
        if (this.mAdded != null) {
            size = this.mAdded.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Added Fragments:");
                for (i = 0; i < size; i++) {
                    fragment = (Fragment) this.mAdded.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                }
            }
        }
        if (this.mCreatedMenus != null) {
            size = this.mCreatedMenus.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Fragments Created Menus:");
                for (i = 0; i < size; i++) {
                    fragment = (Fragment) this.mCreatedMenus.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                }
            }
        }
        if (this.mBackStack != null) {
            size = this.mBackStack.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack:");
                for (i = 0; i < size; i++) {
                    backStackRecord = (BackStackRecord) this.mBackStack.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(backStackRecord.toString());
                    backStackRecord.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        synchronized (this) {
            if (this.mBackStackIndices != null) {
                int size2 = this.mBackStackIndices.size();
                if (size2 > 0) {
                    printWriter.print(str);
                    printWriter.println("Back Stack Indices:");
                    for (i = 0; i < size2; i++) {
                        backStackRecord = (BackStackRecord) this.mBackStackIndices.get(i);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i);
                        printWriter.print(": ");
                        printWriter.println(backStackRecord);
                    }
                }
            }
            if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        if (this.mPendingActions != null) {
            i = this.mPendingActions.size();
            if (i > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                while (i2 < i) {
                    Runnable runnable = (Runnable) this.mPendingActions.get(i2);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i2);
                    printWriter.print(": ");
                    printWriter.println(runnable);
                    i2++;
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.mHost);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices != null && this.mAvailIndices.size() > 0) {
            printWriter.print(str);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.mAvailIndices.toArray()));
        }
    }

    static Animation makeOpenCloseAnimation(Context context, float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(DECELERATE_QUINT);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    static Animation makeFadeAnimation(Context context, float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220);
        return alphaAnimation;
    }

    /* Access modifiers changed, original: 0000 */
    public Animation loadAnimation(Fragment fragment, int i, boolean z, int i2) {
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z, fragment.mNextAnim);
        if (onCreateAnimation != null) {
            return onCreateAnimation;
        }
        if (fragment.mNextAnim != 0) {
            onCreateAnimation = AnimationUtils.loadAnimation(this.mHost.getContext(), fragment.mNextAnim);
            if (onCreateAnimation != null) {
                return onCreateAnimation;
            }
        }
        if (i == 0) {
            return null;
        }
        int transitToStyleIndex = transitToStyleIndex(i, z);
        if (transitToStyleIndex < 0) {
            return null;
        }
        switch (transitToStyleIndex) {
            case 1:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return makeOpenCloseAnimation(this.mHost.getContext(), 0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return makeFadeAnimation(this.mHost.getContext(), 0.0f, 1.0f);
            case 6:
                return makeFadeAnimation(this.mHost.getContext(), 1.0f, 0.0f);
            default:
                if (i2 == 0 && this.mHost.onHasWindowAnimations()) {
                    i2 = this.mHost.onGetWindowAnimations();
                }
                if (i2 == 0) {
                    return null;
                }
                return null;
        }
    }

    public void performPendingDeferredStart(Fragment fragment) {
        if (!fragment.mDeferStart) {
            return;
        }
        if (this.mExecutingActions) {
            this.mHavePendingDeferredStart = true;
            return;
        }
        fragment.mDeferStart = false;
        moveToState(fragment, this.mCurState, 0, 0, false);
    }

    private void setHWLayerAnimListenerIfAlpha(View view, Animation animation) {
        if (view != null && animation != null && shouldRunOnHWLayer(view, animation)) {
            animation.setAnimationListener(new AnimateOnHWLayerIfNeededListener(view, animation));
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Missing block: B:67:0x013e, code skipped:
            if (r12 <= 1) goto L_0x020f;
     */
    /* JADX WARNING: Missing block: B:69:0x0142, code skipped:
            if (DEBUG == false) goto L_0x015c;
     */
    /* JADX WARNING: Missing block: B:70:0x0144, code skipped:
            android.util.Log.v(TAG, "moveto ACTIVITY_CREATED: " + r11);
     */
    /* JADX WARNING: Missing block: B:72:0x015e, code skipped:
            if (r11.mFromLayout != false) goto L_0x01ff;
     */
    /* JADX WARNING: Missing block: B:74:0x0162, code skipped:
            if (r11.mContainerId == 0) goto L_0x03d1;
     */
    /* JADX WARNING: Missing block: B:75:0x0164, code skipped:
            r0 = (android.view.ViewGroup) r10.mContainer.onFindViewById(r11.mContainerId);
     */
    /* JADX WARNING: Missing block: B:76:0x016e, code skipped:
            if (r0 != null) goto L_0x01b3;
     */
    /* JADX WARNING: Missing block: B:78:0x0172, code skipped:
            if (r11.mRestored != false) goto L_0x01b3;
     */
    /* JADX WARNING: Missing block: B:79:0x0174, code skipped:
            throwException(new java.lang.IllegalArgumentException("No view found for id 0x" + java.lang.Integer.toHexString(r11.mContainerId) + " (" + r11.getResources().getResourceName(r11.mContainerId) + ") for fragment " + r11));
     */
    /* JADX WARNING: Missing block: B:80:0x01b3, code skipped:
            r11.mContainer = r0;
            r11.mView = r11.performCreateView(r11.getLayoutInflater(r11.mSavedFragmentState), r0, r11.mSavedFragmentState);
     */
    /* JADX WARNING: Missing block: B:81:0x01c5, code skipped:
            if (r11.mView == null) goto L_0x0271;
     */
    /* JADX WARNING: Missing block: B:82:0x01c7, code skipped:
            r11.mInnerView = r11.mView;
     */
    /* JADX WARNING: Missing block: B:83:0x01cf, code skipped:
            if (android.os.Build.VERSION.SDK_INT < 11) goto L_0x0267;
     */
    /* JADX WARNING: Missing block: B:84:0x01d1, code skipped:
            android.support.v4.view.ViewCompat.setSaveFromParentEnabled(r11.mView, false);
     */
    /* JADX WARNING: Missing block: B:85:0x01d6, code skipped:
            if (r0 == null) goto L_0x01ed;
     */
    /* JADX WARNING: Missing block: B:86:0x01d8, code skipped:
            r1 = loadAnimation(r11, r13, true, r14);
     */
    /* JADX WARNING: Missing block: B:87:0x01dc, code skipped:
            if (r1 == null) goto L_0x01e8;
     */
    /* JADX WARNING: Missing block: B:88:0x01de, code skipped:
            setHWLayerAnimListenerIfAlpha(r11.mView, r1);
            r11.mView.startAnimation(r1);
     */
    /* JADX WARNING: Missing block: B:89:0x01e8, code skipped:
            r0.addView(r11.mView);
     */
    /* JADX WARNING: Missing block: B:91:0x01ef, code skipped:
            if (r11.mHidden == false) goto L_0x01f8;
     */
    /* JADX WARNING: Missing block: B:92:0x01f1, code skipped:
            r11.mView.setVisibility(8);
     */
    /* JADX WARNING: Missing block: B:93:0x01f8, code skipped:
            r11.onViewCreated(r11.mView, r11.mSavedFragmentState);
     */
    /* JADX WARNING: Missing block: B:94:0x01ff, code skipped:
            r11.performActivityCreated(r11.mSavedFragmentState);
     */
    /* JADX WARNING: Missing block: B:95:0x0206, code skipped:
            if (r11.mView == null) goto L_0x020d;
     */
    /* JADX WARNING: Missing block: B:96:0x0208, code skipped:
            r11.restoreViewState(r11.mSavedFragmentState);
     */
    /* JADX WARNING: Missing block: B:97:0x020d, code skipped:
            r11.mSavedFragmentState = null;
     */
    /* JADX WARNING: Missing block: B:98:0x020f, code skipped:
            if (r12 <= 3) goto L_0x0230;
     */
    /* JADX WARNING: Missing block: B:100:0x0213, code skipped:
            if (DEBUG == false) goto L_0x022d;
     */
    /* JADX WARNING: Missing block: B:101:0x0215, code skipped:
            android.util.Log.v(TAG, "moveto STARTED: " + r11);
     */
    /* JADX WARNING: Missing block: B:102:0x022d, code skipped:
            r11.performStart();
     */
    /* JADX WARNING: Missing block: B:103:0x0230, code skipped:
            if (r12 <= 4) goto L_0x0045;
     */
    /* JADX WARNING: Missing block: B:105:0x0234, code skipped:
            if (DEBUG == false) goto L_0x024e;
     */
    /* JADX WARNING: Missing block: B:106:0x0236, code skipped:
            android.util.Log.v(TAG, "moveto RESUMED: " + r11);
     */
    /* JADX WARNING: Missing block: B:107:0x024e, code skipped:
            r11.mResumed = true;
            r11.performResume();
            r11.mSavedFragmentState = null;
            r11.mSavedViewState = null;
     */
    /* JADX WARNING: Missing block: B:110:0x0267, code skipped:
            r11.mView = android.support.v4.app.NoSaveStateFrameLayout.wrap(r11.mView);
     */
    /* JADX WARNING: Missing block: B:111:0x0271, code skipped:
            r11.mInnerView = null;
     */
    /* JADX WARNING: Missing block: B:116:0x027f, code skipped:
            if (r12 >= 1) goto L_0x0045;
     */
    /* JADX WARNING: Missing block: B:118:0x0283, code skipped:
            if (r10.mDestroyed == false) goto L_0x0290;
     */
    /* JADX WARNING: Missing block: B:120:0x0287, code skipped:
            if (r11.mAnimatingAway == null) goto L_0x0290;
     */
    /* JADX WARNING: Missing block: B:121:0x0289, code skipped:
            r0 = r11.mAnimatingAway;
            r11.mAnimatingAway = null;
            r0.clearAnimation();
     */
    /* JADX WARNING: Missing block: B:123:0x0292, code skipped:
            if (r11.mAnimatingAway == null) goto L_0x036e;
     */
    /* JADX WARNING: Missing block: B:124:0x0294, code skipped:
            r11.mStateAfterAnimating = r12;
            r12 = 1;
     */
    /* JADX WARNING: Missing block: B:131:0x02bd, code skipped:
            if (r12 >= 4) goto L_0x02de;
     */
    /* JADX WARNING: Missing block: B:133:0x02c1, code skipped:
            if (DEBUG == false) goto L_0x02db;
     */
    /* JADX WARNING: Missing block: B:134:0x02c3, code skipped:
            android.util.Log.v(TAG, "movefrom STARTED: " + r11);
     */
    /* JADX WARNING: Missing block: B:135:0x02db, code skipped:
            r11.performStop();
     */
    /* JADX WARNING: Missing block: B:136:0x02de, code skipped:
            if (r12 >= 3) goto L_0x02ff;
     */
    /* JADX WARNING: Missing block: B:138:0x02e2, code skipped:
            if (DEBUG == false) goto L_0x02fc;
     */
    /* JADX WARNING: Missing block: B:139:0x02e4, code skipped:
            android.util.Log.v(TAG, "movefrom STOPPED: " + r11);
     */
    /* JADX WARNING: Missing block: B:140:0x02fc, code skipped:
            r11.performReallyStop();
     */
    /* JADX WARNING: Missing block: B:142:0x0300, code skipped:
            if (r12 >= 2) goto L_0x027f;
     */
    /* JADX WARNING: Missing block: B:144:0x0304, code skipped:
            if (DEBUG == false) goto L_0x031e;
     */
    /* JADX WARNING: Missing block: B:145:0x0306, code skipped:
            android.util.Log.v(TAG, "movefrom ACTIVITY_CREATED: " + r11);
     */
    /* JADX WARNING: Missing block: B:147:0x0320, code skipped:
            if (r11.mView == null) goto L_0x0331;
     */
    /* JADX WARNING: Missing block: B:149:0x0328, code skipped:
            if (r10.mHost.onShouldSaveFragmentState(r11) == false) goto L_0x0331;
     */
    /* JADX WARNING: Missing block: B:151:0x032c, code skipped:
            if (r11.mSavedViewState != null) goto L_0x0331;
     */
    /* JADX WARNING: Missing block: B:152:0x032e, code skipped:
            saveFragmentViewState(r11);
     */
    /* JADX WARNING: Missing block: B:153:0x0331, code skipped:
            r11.performDestroyView();
     */
    /* JADX WARNING: Missing block: B:154:0x0336, code skipped:
            if (r11.mView == null) goto L_0x0366;
     */
    /* JADX WARNING: Missing block: B:156:0x033a, code skipped:
            if (r11.mContainer == null) goto L_0x0366;
     */
    /* JADX WARNING: Missing block: B:158:0x033e, code skipped:
            if (r10.mCurState <= 0) goto L_0x03ce;
     */
    /* JADX WARNING: Missing block: B:160:0x0342, code skipped:
            if (r10.mDestroyed != false) goto L_0x03ce;
     */
    /* JADX WARNING: Missing block: B:161:0x0344, code skipped:
            r0 = loadAnimation(r11, r13, false, r14);
     */
    /* JADX WARNING: Missing block: B:162:0x0348, code skipped:
            if (r0 == null) goto L_0x035f;
     */
    /* JADX WARNING: Missing block: B:163:0x034a, code skipped:
            r11.mAnimatingAway = r11.mView;
            r11.mStateAfterAnimating = r12;
            r0.setAnimationListener(new android.support.v4.app.FragmentManagerImpl.AnonymousClass5(r10, r11.mView, r0));
            r11.mView.startAnimation(r0);
     */
    /* JADX WARNING: Missing block: B:164:0x035f, code skipped:
            r11.mContainer.removeView(r11.mView);
     */
    /* JADX WARNING: Missing block: B:165:0x0366, code skipped:
            r11.mContainer = null;
            r11.mView = null;
            r11.mInnerView = null;
     */
    /* JADX WARNING: Missing block: B:167:0x0370, code skipped:
            if (DEBUG == false) goto L_0x038a;
     */
    /* JADX WARNING: Missing block: B:168:0x0372, code skipped:
            android.util.Log.v(TAG, "movefrom CREATED: " + r11);
     */
    /* JADX WARNING: Missing block: B:170:0x038c, code skipped:
            if (r11.mRetaining != false) goto L_0x0391;
     */
    /* JADX WARNING: Missing block: B:171:0x038e, code skipped:
            r11.performDestroy();
     */
    /* JADX WARNING: Missing block: B:172:0x0391, code skipped:
            r11.mCalled = false;
            r11.onDetach();
     */
    /* JADX WARNING: Missing block: B:173:0x0398, code skipped:
            if (r11.mCalled != false) goto L_0x03b9;
     */
    /* JADX WARNING: Missing block: B:175:0x03b8, code skipped:
            throw new android.support.v4.app.SuperNotCalledException("Fragment " + r11 + " did not call through to super.onDetach()");
     */
    /* JADX WARNING: Missing block: B:176:0x03b9, code skipped:
            if (r15 != false) goto L_0x0045;
     */
    /* JADX WARNING: Missing block: B:178:0x03bd, code skipped:
            if (r11.mRetaining != false) goto L_0x03c4;
     */
    /* JADX WARNING: Missing block: B:179:0x03bf, code skipped:
            makeInactive(r11);
     */
    /* JADX WARNING: Missing block: B:180:0x03c4, code skipped:
            r11.mHost = null;
            r11.mParentFragment = null;
            r11.mFragmentManager = null;
            r11.mChildFragmentManager = null;
     */
    /* JADX WARNING: Missing block: B:181:0x03ce, code skipped:
            r0 = null;
     */
    /* JADX WARNING: Missing block: B:182:0x03d1, code skipped:
            r0 = null;
     */
    public void moveToState(final android.support.v4.app.Fragment r11, int r12, int r13, int r14, boolean r15) {
        /*
        r10 = this;
        r9 = 4;
        r6 = 3;
        r5 = 1;
        r3 = 0;
        r7 = 0;
        r0 = r11.mAdded;
        if (r0 == 0) goto L_0x000d;
    L_0x0009:
        r0 = r11.mDetached;
        if (r0 == 0) goto L_0x0010;
    L_0x000d:
        if (r12 <= r5) goto L_0x0010;
    L_0x000f:
        r12 = r5;
    L_0x0010:
        r0 = r11.mRemoving;
        if (r0 == 0) goto L_0x001a;
    L_0x0014:
        r0 = r11.mState;
        if (r12 <= r0) goto L_0x001a;
    L_0x0018:
        r12 = r11.mState;
    L_0x001a:
        r0 = r11.mDeferStart;
        if (r0 == 0) goto L_0x0025;
    L_0x001e:
        r0 = r11.mState;
        if (r0 >= r9) goto L_0x0025;
    L_0x0022:
        if (r12 <= r6) goto L_0x0025;
    L_0x0024:
        r12 = r6;
    L_0x0025:
        r0 = r11.mState;
        if (r0 >= r12) goto L_0x0274;
    L_0x0029:
        r0 = r11.mFromLayout;
        if (r0 == 0) goto L_0x0032;
    L_0x002d:
        r0 = r11.mInLayout;
        if (r0 != 0) goto L_0x0032;
    L_0x0031:
        return;
    L_0x0032:
        r0 = r11.mAnimatingAway;
        if (r0 == 0) goto L_0x0040;
    L_0x0036:
        r11.mAnimatingAway = r7;
        r2 = r11.mStateAfterAnimating;
        r0 = r10;
        r1 = r11;
        r4 = r3;
        r0.moveToState(r1, r2, r3, r4, r5);
    L_0x0040:
        r0 = r11.mState;
        switch(r0) {
            case 0: goto L_0x0048;
            case 1: goto L_0x013e;
            case 2: goto L_0x020f;
            case 3: goto L_0x020f;
            case 4: goto L_0x0230;
            default: goto L_0x0045;
        };
    L_0x0045:
        r11.mState = r12;
        goto L_0x0031;
    L_0x0048:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x0064;
    L_0x004c:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x0064:
        r0 = r11.mSavedFragmentState;
        if (r0 == 0) goto L_0x00ac;
    L_0x0068:
        r0 = r11.mSavedFragmentState;
        r1 = r10.mHost;
        r1 = r1.getContext();
        r1 = r1.getClassLoader();
        r0.setClassLoader(r1);
        r0 = r11.mSavedFragmentState;
        r1 = "android:view_state";
        r0 = r0.getSparseParcelableArray(r1);
        r11.mSavedViewState = r0;
        r0 = r11.mSavedFragmentState;
        r1 = "android:target_state";
        r0 = r10.getFragment(r0, r1);
        r11.mTarget = r0;
        r0 = r11.mTarget;
        if (r0 == 0) goto L_0x0099;
    L_0x008f:
        r0 = r11.mSavedFragmentState;
        r1 = "android:target_req_state";
        r0 = r0.getInt(r1, r3);
        r11.mTargetRequestCode = r0;
    L_0x0099:
        r0 = r11.mSavedFragmentState;
        r1 = "android:user_visible_hint";
        r0 = r0.getBoolean(r1, r5);
        r11.mUserVisibleHint = r0;
        r0 = r11.mUserVisibleHint;
        if (r0 != 0) goto L_0x00ac;
    L_0x00a7:
        r11.mDeferStart = r5;
        if (r12 <= r6) goto L_0x00ac;
    L_0x00ab:
        r12 = r6;
    L_0x00ac:
        r0 = r10.mHost;
        r11.mHost = r0;
        r0 = r10.mParent;
        r11.mParentFragment = r0;
        r0 = r10.mParent;
        if (r0 == 0) goto L_0x00ec;
    L_0x00b8:
        r0 = r10.mParent;
        r0 = r0.mChildFragmentManager;
    L_0x00bc:
        r11.mFragmentManager = r0;
        r11.mCalled = r3;
        r0 = r10.mHost;
        r0 = r0.getContext();
        r11.onAttach(r0);
        r0 = r11.mCalled;
        if (r0 != 0) goto L_0x00f3;
    L_0x00cd:
        r0 = new android.support.v4.app.SuperNotCalledException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Fragment ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r2 = " did not call through to super.onAttach()";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x00ec:
        r0 = r10.mHost;
        r0 = r0.getFragmentManagerImpl();
        goto L_0x00bc;
    L_0x00f3:
        r0 = r11.mParentFragment;
        if (r0 != 0) goto L_0x00fc;
    L_0x00f7:
        r0 = r10.mHost;
        r0.onAttachFragment(r11);
    L_0x00fc:
        r0 = r11.mRetaining;
        if (r0 != 0) goto L_0x0105;
    L_0x0100:
        r0 = r11.mSavedFragmentState;
        r11.performCreate(r0);
    L_0x0105:
        r11.mRetaining = r3;
        r0 = r11.mFromLayout;
        if (r0 == 0) goto L_0x013e;
    L_0x010b:
        r0 = r11.mSavedFragmentState;
        r0 = r11.getLayoutInflater(r0);
        r1 = r11.mSavedFragmentState;
        r0 = r11.performCreateView(r0, r7, r1);
        r11.mView = r0;
        r0 = r11.mView;
        if (r0 == 0) goto L_0x0263;
    L_0x011d:
        r0 = r11.mView;
        r11.mInnerView = r0;
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 11;
        if (r0 < r1) goto L_0x0259;
    L_0x0127:
        r0 = r11.mView;
        android.support.v4.view.ViewCompat.setSaveFromParentEnabled(r0, r3);
    L_0x012c:
        r0 = r11.mHidden;
        if (r0 == 0) goto L_0x0137;
    L_0x0130:
        r0 = r11.mView;
        r1 = 8;
        r0.setVisibility(r1);
    L_0x0137:
        r0 = r11.mView;
        r1 = r11.mSavedFragmentState;
        r11.onViewCreated(r0, r1);
    L_0x013e:
        if (r12 <= r5) goto L_0x020f;
    L_0x0140:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x015c;
    L_0x0144:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto ACTIVITY_CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x015c:
        r0 = r11.mFromLayout;
        if (r0 != 0) goto L_0x01ff;
    L_0x0160:
        r0 = r11.mContainerId;
        if (r0 == 0) goto L_0x03d1;
    L_0x0164:
        r0 = r10.mContainer;
        r1 = r11.mContainerId;
        r0 = r0.onFindViewById(r1);
        r0 = (android.view.ViewGroup) r0;
        if (r0 != 0) goto L_0x01b3;
    L_0x0170:
        r1 = r11.mRestored;
        if (r1 != 0) goto L_0x01b3;
    L_0x0174:
        r1 = new java.lang.IllegalArgumentException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "No view found for id 0x";
        r2 = r2.append(r4);
        r4 = r11.mContainerId;
        r4 = java.lang.Integer.toHexString(r4);
        r2 = r2.append(r4);
        r4 = " (";
        r2 = r2.append(r4);
        r4 = r11.getResources();
        r8 = r11.mContainerId;
        r4 = r4.getResourceName(r8);
        r2 = r2.append(r4);
        r4 = ") for fragment ";
        r2 = r2.append(r4);
        r2 = r2.append(r11);
        r2 = r2.toString();
        r1.<init>(r2);
        r10.throwException(r1);
    L_0x01b3:
        r11.mContainer = r0;
        r1 = r11.mSavedFragmentState;
        r1 = r11.getLayoutInflater(r1);
        r2 = r11.mSavedFragmentState;
        r1 = r11.performCreateView(r1, r0, r2);
        r11.mView = r1;
        r1 = r11.mView;
        if (r1 == 0) goto L_0x0271;
    L_0x01c7:
        r1 = r11.mView;
        r11.mInnerView = r1;
        r1 = android.os.Build.VERSION.SDK_INT;
        r2 = 11;
        if (r1 < r2) goto L_0x0267;
    L_0x01d1:
        r1 = r11.mView;
        android.support.v4.view.ViewCompat.setSaveFromParentEnabled(r1, r3);
    L_0x01d6:
        if (r0 == 0) goto L_0x01ed;
    L_0x01d8:
        r1 = r10.loadAnimation(r11, r13, r5, r14);
        if (r1 == 0) goto L_0x01e8;
    L_0x01de:
        r2 = r11.mView;
        r10.setHWLayerAnimListenerIfAlpha(r2, r1);
        r2 = r11.mView;
        r2.startAnimation(r1);
    L_0x01e8:
        r1 = r11.mView;
        r0.addView(r1);
    L_0x01ed:
        r0 = r11.mHidden;
        if (r0 == 0) goto L_0x01f8;
    L_0x01f1:
        r0 = r11.mView;
        r1 = 8;
        r0.setVisibility(r1);
    L_0x01f8:
        r0 = r11.mView;
        r1 = r11.mSavedFragmentState;
        r11.onViewCreated(r0, r1);
    L_0x01ff:
        r0 = r11.mSavedFragmentState;
        r11.performActivityCreated(r0);
        r0 = r11.mView;
        if (r0 == 0) goto L_0x020d;
    L_0x0208:
        r0 = r11.mSavedFragmentState;
        r11.restoreViewState(r0);
    L_0x020d:
        r11.mSavedFragmentState = r7;
    L_0x020f:
        if (r12 <= r6) goto L_0x0230;
    L_0x0211:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x022d;
    L_0x0215:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto STARTED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x022d:
        r11.performStart();
    L_0x0230:
        if (r12 <= r9) goto L_0x0045;
    L_0x0232:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x024e;
    L_0x0236:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto RESUMED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x024e:
        r11.mResumed = r5;
        r11.performResume();
        r11.mSavedFragmentState = r7;
        r11.mSavedViewState = r7;
        goto L_0x0045;
    L_0x0259:
        r0 = r11.mView;
        r0 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r0);
        r11.mView = r0;
        goto L_0x012c;
    L_0x0263:
        r11.mInnerView = r7;
        goto L_0x013e;
    L_0x0267:
        r1 = r11.mView;
        r1 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r1);
        r11.mView = r1;
        goto L_0x01d6;
    L_0x0271:
        r11.mInnerView = r7;
        goto L_0x01ff;
    L_0x0274:
        r0 = r11.mState;
        if (r0 <= r12) goto L_0x0045;
    L_0x0278:
        r0 = r11.mState;
        switch(r0) {
            case 1: goto L_0x027f;
            case 2: goto L_0x02ff;
            case 3: goto L_0x02de;
            case 4: goto L_0x02bd;
            case 5: goto L_0x0299;
            default: goto L_0x027d;
        };
    L_0x027d:
        goto L_0x0045;
    L_0x027f:
        if (r12 >= r5) goto L_0x0045;
    L_0x0281:
        r0 = r10.mDestroyed;
        if (r0 == 0) goto L_0x0290;
    L_0x0285:
        r0 = r11.mAnimatingAway;
        if (r0 == 0) goto L_0x0290;
    L_0x0289:
        r0 = r11.mAnimatingAway;
        r11.mAnimatingAway = r7;
        r0.clearAnimation();
    L_0x0290:
        r0 = r11.mAnimatingAway;
        if (r0 == 0) goto L_0x036e;
    L_0x0294:
        r11.mStateAfterAnimating = r12;
        r12 = r5;
        goto L_0x0045;
    L_0x0299:
        r0 = 5;
        if (r12 >= r0) goto L_0x02bd;
    L_0x029c:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x02b8;
    L_0x02a0:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom RESUMED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x02b8:
        r11.performPause();
        r11.mResumed = r3;
    L_0x02bd:
        if (r12 >= r9) goto L_0x02de;
    L_0x02bf:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x02db;
    L_0x02c3:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom STARTED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x02db:
        r11.performStop();
    L_0x02de:
        if (r12 >= r6) goto L_0x02ff;
    L_0x02e0:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x02fc;
    L_0x02e4:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom STOPPED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x02fc:
        r11.performReallyStop();
    L_0x02ff:
        r0 = 2;
        if (r12 >= r0) goto L_0x027f;
    L_0x0302:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x031e;
    L_0x0306:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom ACTIVITY_CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x031e:
        r0 = r11.mView;
        if (r0 == 0) goto L_0x0331;
    L_0x0322:
        r0 = r10.mHost;
        r0 = r0.onShouldSaveFragmentState(r11);
        if (r0 == 0) goto L_0x0331;
    L_0x032a:
        r0 = r11.mSavedViewState;
        if (r0 != 0) goto L_0x0331;
    L_0x032e:
        r10.saveFragmentViewState(r11);
    L_0x0331:
        r11.performDestroyView();
        r0 = r11.mView;
        if (r0 == 0) goto L_0x0366;
    L_0x0338:
        r0 = r11.mContainer;
        if (r0 == 0) goto L_0x0366;
    L_0x033c:
        r0 = r10.mCurState;
        if (r0 <= 0) goto L_0x03ce;
    L_0x0340:
        r0 = r10.mDestroyed;
        if (r0 != 0) goto L_0x03ce;
    L_0x0344:
        r0 = r10.loadAnimation(r11, r13, r3, r14);
    L_0x0348:
        if (r0 == 0) goto L_0x035f;
    L_0x034a:
        r1 = r11.mView;
        r11.mAnimatingAway = r1;
        r11.mStateAfterAnimating = r12;
        r1 = r11.mView;
        r2 = new android.support.v4.app.FragmentManagerImpl$5;
        r2.<init>(r1, r0, r11);
        r0.setAnimationListener(r2);
        r1 = r11.mView;
        r1.startAnimation(r0);
    L_0x035f:
        r0 = r11.mContainer;
        r1 = r11.mView;
        r0.removeView(r1);
    L_0x0366:
        r11.mContainer = r7;
        r11.mView = r7;
        r11.mInnerView = r7;
        goto L_0x027f;
    L_0x036e:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x038a;
    L_0x0372:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x038a:
        r0 = r11.mRetaining;
        if (r0 != 0) goto L_0x0391;
    L_0x038e:
        r11.performDestroy();
    L_0x0391:
        r11.mCalled = r3;
        r11.onDetach();
        r0 = r11.mCalled;
        if (r0 != 0) goto L_0x03b9;
    L_0x039a:
        r0 = new android.support.v4.app.SuperNotCalledException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Fragment ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r2 = " did not call through to super.onDetach()";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x03b9:
        if (r15 != 0) goto L_0x0045;
    L_0x03bb:
        r0 = r11.mRetaining;
        if (r0 != 0) goto L_0x03c4;
    L_0x03bf:
        r10.makeInactive(r11);
        goto L_0x0045;
    L_0x03c4:
        r11.mHost = r7;
        r11.mParentFragment = r7;
        r11.mFragmentManager = r7;
        r11.mChildFragmentManager = r7;
        goto L_0x0045;
    L_0x03ce:
        r0 = r7;
        goto L_0x0348;
    L_0x03d1:
        r0 = r7;
        goto L_0x01b3;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.moveToState(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    /* Access modifiers changed, original: 0000 */
    public void moveToState(Fragment fragment) {
        moveToState(fragment, this.mCurState, 0, 0, false);
    }

    /* Access modifiers changed, original: 0000 */
    public void moveToState(int i, boolean z) {
        moveToState(i, 0, 0, z);
    }

    /* Access modifiers changed, original: 0000 */
    public void moveToState(int i, int i2, int i3, boolean z) {
        if (this.mHost == null && i != 0) {
            throw new IllegalStateException("No host");
        } else if (z || this.mCurState != i) {
            this.mCurState = i;
            if (this.mActive != null) {
                int i4 = 0;
                int i5 = 0;
                while (i4 < this.mActive.size()) {
                    Fragment fragment = (Fragment) this.mActive.get(i4);
                    if (fragment != null) {
                        moveToState(fragment, i, i2, i3, false);
                        if (fragment.mLoaderManager != null) {
                            i5 |= fragment.mLoaderManager.hasRunningLoaders();
                        }
                    }
                    i4++;
                    i5 = i5;
                }
                if (i5 == 0) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && this.mHost != null && this.mCurState == 5) {
                    this.mHost.onSupportInvalidateOptionsMenu();
                    this.mNeedMenuInvalidate = false;
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void startPendingDeferredFragments() {
        if (this.mActive != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mActive.size()) {
                    Fragment fragment = (Fragment) this.mActive.get(i2);
                    if (fragment != null) {
                        performPendingDeferredStart(fragment);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void makeActive(Fragment fragment) {
        if (fragment.mIndex < 0) {
            if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
                if (this.mActive == null) {
                    this.mActive = new ArrayList();
                }
                fragment.setIndex(this.mActive.size(), this.mParent);
                this.mActive.add(fragment);
            } else {
                fragment.setIndex(((Integer) this.mAvailIndices.remove(this.mAvailIndices.size() - 1)).intValue(), this.mParent);
                this.mActive.set(fragment.mIndex, fragment);
            }
            if (DEBUG) {
                Log.v(TAG, "Allocated fragment index " + fragment);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void makeInactive(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            if (DEBUG) {
                Log.v(TAG, "Freeing fragment index " + fragment);
            }
            this.mActive.set(fragment.mIndex, null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList();
            }
            this.mAvailIndices.add(Integer.valueOf(fragment.mIndex));
            this.mHost.inactivateFragment(fragment.mWho);
            fragment.initState();
        }
    }

    public void addFragment(Fragment fragment, boolean z) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList();
        }
        if (DEBUG) {
            Log.v(TAG, "add: " + fragment);
        }
        makeActive(fragment);
        if (!fragment.mDetached) {
            if (this.mAdded.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.mAdded.add(fragment);
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            if (z) {
                moveToState(fragment);
            }
        }
    }

    public void removeFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            int i3;
            if (this.mAdded != null) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
            if (z) {
                i3 = 0;
            } else {
                i3 = 1;
            }
            moveToState(fragment, i3, i, i2, false);
        }
    }

    public void hideFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, i, false, i2);
                if (loadAnimation != null) {
                    setHWLayerAnimListenerIfAlpha(fragment.mView, loadAnimation);
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(8);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    public void showFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, i, true, i2);
                if (loadAnimation != null) {
                    setHWLayerAnimListenerIfAlpha(fragment.mView, loadAnimation);
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    public void detachFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.mAdded != null) {
                    if (DEBUG) {
                        Log.v(TAG, "remove from detach: " + fragment);
                    }
                    this.mAdded.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = false;
                moveToState(fragment, 1, i, i2, false);
            }
        }
    }

    public void attachFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.mAdded == null) {
                    this.mAdded = new ArrayList();
                }
                if (this.mAdded.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (DEBUG) {
                    Log.v(TAG, "add from attach: " + fragment);
                }
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                moveToState(fragment, this.mCurState, i, i2, false);
            }
        }
    }

    public Fragment findFragmentById(int i) {
        int size;
        Fragment fragment;
        if (this.mAdded != null) {
            for (size = this.mAdded.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.mAdded.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        if (this.mActive != null) {
            for (size = this.mActive.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.mActive.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByTag(String str) {
        int size;
        Fragment fragment;
        if (!(this.mAdded == null || str == null)) {
            for (size = this.mAdded.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.mAdded.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (!(this.mActive == null || str == null)) {
            for (size = this.mActive.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.mActive.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String str) {
        if (!(this.mActive == null || str == null)) {
            for (int size = this.mActive.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.mActive.get(size);
                if (fragment != null) {
                    fragment = fragment.findFragmentByWho(str);
                    if (fragment != null) {
                        return fragment;
                    }
                }
            }
        }
        return null;
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    public void enqueueAction(Runnable runnable, boolean z) {
        if (!z) {
            checkStateLoss();
        }
        synchronized (this) {
            if (this.mDestroyed || this.mHost == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList();
            }
            this.mPendingActions.add(runnable);
            if (this.mPendingActions.size() == 1) {
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
                this.mHost.getHandler().post(this.mExecCommit);
            }
        }
    }

    public int allocBackStackIndex(BackStackRecord backStackRecord) {
        int size;
        synchronized (this) {
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList();
                }
                size = this.mBackStackIndices.size();
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + size + " to " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            } else {
                size = ((Integer) this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1)).intValue();
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + size + " with " + backStackRecord);
                }
                this.mBackStackIndices.set(size, backStackRecord);
            }
        }
        return size;
    }

    public void setBackStackIndex(int i, BackStackRecord backStackRecord) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList();
            }
            int size = this.mBackStackIndices.size();
            if (i < size) {
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + i + " to " + backStackRecord);
                }
                this.mBackStackIndices.set(i, backStackRecord);
            } else {
                while (size < i) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList();
                    }
                    if (DEBUG) {
                        Log.v(TAG, "Adding available back stack index " + size);
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(size));
                    size++;
                }
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + i + " with " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            }
        }
    }

    public void freeBackStackIndex(int i) {
        synchronized (this) {
            this.mBackStackIndices.set(i, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList();
            }
            if (DEBUG) {
                Log.v(TAG, "Freeing back stack index " + i);
            }
            this.mAvailBackStackIndices.add(Integer.valueOf(i));
        }
    }

    /* JADX WARNING: Missing block: B:17:0x0037, code skipped:
            if (r6.mHavePendingDeferredStart == false) goto L_0x00a9;
     */
    /* JADX WARNING: Missing block: B:18:0x0039, code skipped:
            r3 = 0;
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:20:0x0041, code skipped:
            if (r3 >= r6.mActive.size()) goto L_0x00a2;
     */
    /* JADX WARNING: Missing block: B:21:0x0043, code skipped:
            r0 = (android.support.v4.app.Fragment) r6.mActive.get(r3);
     */
    /* JADX WARNING: Missing block: B:22:0x004b, code skipped:
            if (r0 == null) goto L_0x0058;
     */
    /* JADX WARNING: Missing block: B:24:0x004f, code skipped:
            if (r0.mLoaderManager == null) goto L_0x0058;
     */
    /* JADX WARNING: Missing block: B:25:0x0051, code skipped:
            r4 = r4 | r0.mLoaderManager.hasRunningLoaders();
     */
    /* JADX WARNING: Missing block: B:26:0x0058, code skipped:
            r3 = r3 + 1;
     */
    /* JADX WARNING: Missing block: B:35:0x0087, code skipped:
            r6.mExecutingActions = true;
            r1 = 0;
     */
    /* JADX WARNING: Missing block: B:36:0x008a, code skipped:
            if (r1 >= r3) goto L_0x009e;
     */
    /* JADX WARNING: Missing block: B:37:0x008c, code skipped:
            r6.mTmpActions[r1].run();
            r6.mTmpActions[r1] = null;
            r1 = r1 + 1;
     */
    /* JADX WARNING: Missing block: B:43:0x00a2, code skipped:
            if (r4 != 0) goto L_0x00a9;
     */
    /* JADX WARNING: Missing block: B:44:0x00a4, code skipped:
            r6.mHavePendingDeferredStart = false;
            startPendingDeferredFragments();
     */
    /* JADX WARNING: Missing block: B:45:0x00a9, code skipped:
            return r1;
     */
    public boolean execPendingActions() {
        /*
        r6 = this;
        r0 = 1;
        r2 = 0;
        r1 = r6.mExecutingActions;
        if (r1 == 0) goto L_0x000e;
    L_0x0006:
        r0 = new java.lang.IllegalStateException;
        r1 = "Recursive entry to executePendingTransactions";
        r0.<init>(r1);
        throw r0;
    L_0x000e:
        r1 = android.os.Looper.myLooper();
        r3 = r6.mHost;
        r3 = r3.getHandler();
        r3 = r3.getLooper();
        if (r1 == r3) goto L_0x0026;
    L_0x001e:
        r0 = new java.lang.IllegalStateException;
        r1 = "Must be called from main thread of process";
        r0.<init>(r1);
        throw r0;
    L_0x0026:
        r1 = r2;
    L_0x0027:
        monitor-enter(r6);
        r3 = r6.mPendingActions;	 Catch:{ all -> 0x009b }
        if (r3 == 0) goto L_0x0034;
    L_0x002c:
        r3 = r6.mPendingActions;	 Catch:{ all -> 0x009b }
        r3 = r3.size();	 Catch:{ all -> 0x009b }
        if (r3 != 0) goto L_0x005c;
    L_0x0034:
        monitor-exit(r6);	 Catch:{ all -> 0x009b }
        r0 = r6.mHavePendingDeferredStart;
        if (r0 == 0) goto L_0x00a9;
    L_0x0039:
        r3 = r2;
        r4 = r2;
    L_0x003b:
        r0 = r6.mActive;
        r0 = r0.size();
        if (r3 >= r0) goto L_0x00a2;
    L_0x0043:
        r0 = r6.mActive;
        r0 = r0.get(r3);
        r0 = (android.support.v4.app.Fragment) r0;
        if (r0 == 0) goto L_0x0058;
    L_0x004d:
        r5 = r0.mLoaderManager;
        if (r5 == 0) goto L_0x0058;
    L_0x0051:
        r0 = r0.mLoaderManager;
        r0 = r0.hasRunningLoaders();
        r4 = r4 | r0;
    L_0x0058:
        r0 = r3 + 1;
        r3 = r0;
        goto L_0x003b;
    L_0x005c:
        r1 = r6.mPendingActions;	 Catch:{ all -> 0x009b }
        r3 = r1.size();	 Catch:{ all -> 0x009b }
        r1 = r6.mTmpActions;	 Catch:{ all -> 0x009b }
        if (r1 == 0) goto L_0x006b;
    L_0x0066:
        r1 = r6.mTmpActions;	 Catch:{ all -> 0x009b }
        r1 = r1.length;	 Catch:{ all -> 0x009b }
        if (r1 >= r3) goto L_0x006f;
    L_0x006b:
        r1 = new java.lang.Runnable[r3];	 Catch:{ all -> 0x009b }
        r6.mTmpActions = r1;	 Catch:{ all -> 0x009b }
    L_0x006f:
        r1 = r6.mPendingActions;	 Catch:{ all -> 0x009b }
        r4 = r6.mTmpActions;	 Catch:{ all -> 0x009b }
        r1.toArray(r4);	 Catch:{ all -> 0x009b }
        r1 = r6.mPendingActions;	 Catch:{ all -> 0x009b }
        r1.clear();	 Catch:{ all -> 0x009b }
        r1 = r6.mHost;	 Catch:{ all -> 0x009b }
        r1 = r1.getHandler();	 Catch:{ all -> 0x009b }
        r4 = r6.mExecCommit;	 Catch:{ all -> 0x009b }
        r1.removeCallbacks(r4);	 Catch:{ all -> 0x009b }
        monitor-exit(r6);	 Catch:{ all -> 0x009b }
        r6.mExecutingActions = r0;
        r1 = r2;
    L_0x008a:
        if (r1 >= r3) goto L_0x009e;
    L_0x008c:
        r4 = r6.mTmpActions;
        r4 = r4[r1];
        r4.run();
        r4 = r6.mTmpActions;
        r5 = 0;
        r4[r1] = r5;
        r1 = r1 + 1;
        goto L_0x008a;
    L_0x009b:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x009b }
        throw r0;
    L_0x009e:
        r6.mExecutingActions = r2;
        r1 = r0;
        goto L_0x0027;
    L_0x00a2:
        if (r4 != 0) goto L_0x00a9;
    L_0x00a4:
        r6.mHavePendingDeferredStart = r2;
        r6.startPendingDeferredFragments();
    L_0x00a9:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.execPendingActions():boolean");
    }

    /* Access modifiers changed, original: 0000 */
    public void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mBackStackChangeListeners.size()) {
                    ((OnBackStackChangedListener) this.mBackStackChangeListeners.get(i2)).onBackStackChanged();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void addBackStackState(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList();
        }
        this.mBackStack.add(backStackRecord);
        reportBackStackChanged();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean popBackStackState(Handler handler, String str, int i, int i2) {
        if (this.mBackStack == null) {
            return false;
        }
        int size;
        BackStackRecord backStackRecord;
        if (str == null && i < 0 && (i2 & 1) == 0) {
            size = this.mBackStack.size() - 1;
            if (size < 0) {
                return false;
            }
            backStackRecord = (BackStackRecord) this.mBackStack.remove(size);
            SparseArray sparseArray = new SparseArray();
            SparseArray sparseArray2 = new SparseArray();
            backStackRecord.calculateBackFragments(sparseArray, sparseArray2);
            backStackRecord.popFromBackStack(true, null, sparseArray, sparseArray2);
            reportBackStackChanged();
        } else {
            int size2;
            size = -1;
            if (str != null || i >= 0) {
                size2 = this.mBackStack.size() - 1;
                while (size2 >= 0) {
                    backStackRecord = (BackStackRecord) this.mBackStack.get(size2);
                    if ((str != null && str.equals(backStackRecord.getName())) || (i >= 0 && i == backStackRecord.mIndex)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    size2--;
                    while (size2 >= 0) {
                        backStackRecord = (BackStackRecord) this.mBackStack.get(size2);
                        if ((str == null || !str.equals(backStackRecord.getName())) && (i < 0 || i != backStackRecord.mIndex)) {
                            break;
                        }
                        size2--;
                    }
                }
                size = size2;
            }
            if (size == this.mBackStack.size() - 1) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (size2 = this.mBackStack.size() - 1; size2 > size; size2--) {
                arrayList.add(this.mBackStack.remove(size2));
            }
            int size3 = arrayList.size() - 1;
            SparseArray sparseArray3 = new SparseArray();
            SparseArray sparseArray4 = new SparseArray();
            for (size2 = 0; size2 <= size3; size2++) {
                ((BackStackRecord) arrayList.get(size2)).calculateBackFragments(sparseArray3, sparseArray4);
            }
            TransitionState transitionState = null;
            int i3 = 0;
            while (i3 <= size3) {
                boolean z;
                if (DEBUG) {
                    Log.v(TAG, "Popping back stack state: " + arrayList.get(i3));
                }
                backStackRecord = (BackStackRecord) arrayList.get(i3);
                if (i3 == size3) {
                    z = true;
                } else {
                    z = false;
                }
                i3++;
                transitionState = backStackRecord.popFromBackStack(z, transitionState, sparseArray3, sparseArray4);
            }
            reportBackStackChanged();
        }
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public ArrayList<Fragment> retainNonConfig() {
        ArrayList<Fragment> arrayList = null;
        if (this.mActive != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.mActive.size()) {
                    break;
                }
                Fragment fragment = (Fragment) this.mActive.get(i2);
                if (fragment != null && fragment.mRetainInstance) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                    fragment.mRetaining = true;
                    fragment.mTargetIndex = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                    if (DEBUG) {
                        Log.v(TAG, "retainNonConfig: keeping retained " + fragment);
                    }
                }
                i = i2 + 1;
            }
        }
        return arrayList;
    }

    /* Access modifiers changed, original: 0000 */
    public void saveFragmentViewState(Fragment fragment) {
        if (fragment.mInnerView != null) {
            if (this.mStateArray == null) {
                this.mStateArray = new SparseArray();
            } else {
                this.mStateArray.clear();
            }
            fragment.mInnerView.saveHierarchyState(this.mStateArray);
            if (this.mStateArray.size() > 0) {
                fragment.mSavedViewState = this.mStateArray;
                this.mStateArray = null;
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Bundle saveFragmentBasicState(Fragment fragment) {
        Bundle bundle;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        fragment.performSaveInstanceState(this.mStateBundle);
        if (this.mStateBundle.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.mStateBundle;
            this.mStateBundle = null;
        }
        if (fragment.mView != null) {
            saveFragmentViewState(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(VIEW_STATE_TAG, fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(USER_VISIBLE_HINT_TAG, fragment.mUserVisibleHint);
        }
        return bundle;
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0187  */
    public android.os.Parcelable saveAllState() {
        /*
        r11 = this;
        r1 = 1;
        r3 = 0;
        r4 = 0;
        r11.execPendingActions();
        r0 = HONEYCOMB;
        if (r0 == 0) goto L_0x000c;
    L_0x000a:
        r11.mStateSaved = r1;
    L_0x000c:
        r0 = r11.mActive;
        if (r0 == 0) goto L_0x0018;
    L_0x0010:
        r0 = r11.mActive;
        r0 = r0.size();
        if (r0 > 0) goto L_0x0019;
    L_0x0018:
        return r3;
    L_0x0019:
        r0 = r11.mActive;
        r6 = r0.size();
        r7 = new android.support.v4.app.FragmentState[r6];
        r5 = r4;
        r2 = r4;
    L_0x0023:
        if (r5 >= r6) goto L_0x00f5;
    L_0x0025:
        r0 = r11.mActive;
        r0 = r0.get(r5);
        r0 = (android.support.v4.app.Fragment) r0;
        if (r0 == 0) goto L_0x01e1;
    L_0x002f:
        r2 = r0.mIndex;
        if (r2 >= 0) goto L_0x005a;
    L_0x0033:
        r2 = new java.lang.IllegalStateException;
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = "Failure saving state: active ";
        r8 = r8.append(r9);
        r8 = r8.append(r0);
        r9 = " has cleared index: ";
        r8 = r8.append(r9);
        r9 = r0.mIndex;
        r8 = r8.append(r9);
        r8 = r8.toString();
        r2.<init>(r8);
        r11.throwException(r2);
    L_0x005a:
        r2 = new android.support.v4.app.FragmentState;
        r2.<init>(r0);
        r7[r5] = r2;
        r8 = r0.mState;
        if (r8 <= 0) goto L_0x00f0;
    L_0x0065:
        r8 = r2.mSavedFragmentState;
        if (r8 != 0) goto L_0x00f0;
    L_0x0069:
        r8 = r11.saveFragmentBasicState(r0);
        r2.mSavedFragmentState = r8;
        r8 = r0.mTarget;
        if (r8 == 0) goto L_0x00c1;
    L_0x0073:
        r8 = r0.mTarget;
        r8 = r8.mIndex;
        if (r8 >= 0) goto L_0x00a0;
    L_0x0079:
        r8 = new java.lang.IllegalStateException;
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r10 = "Failure saving state: ";
        r9 = r9.append(r10);
        r9 = r9.append(r0);
        r10 = " has target not in fragment manager: ";
        r9 = r9.append(r10);
        r10 = r0.mTarget;
        r9 = r9.append(r10);
        r9 = r9.toString();
        r8.<init>(r9);
        r11.throwException(r8);
    L_0x00a0:
        r8 = r2.mSavedFragmentState;
        if (r8 != 0) goto L_0x00ab;
    L_0x00a4:
        r8 = new android.os.Bundle;
        r8.<init>();
        r2.mSavedFragmentState = r8;
    L_0x00ab:
        r8 = r2.mSavedFragmentState;
        r9 = "android:target_state";
        r10 = r0.mTarget;
        r11.putFragment(r8, r9, r10);
        r8 = r0.mTargetRequestCode;
        if (r8 == 0) goto L_0x00c1;
    L_0x00b8:
        r8 = r2.mSavedFragmentState;
        r9 = "android:target_req_state";
        r10 = r0.mTargetRequestCode;
        r8.putInt(r9, r10);
    L_0x00c1:
        r8 = DEBUG;
        if (r8 == 0) goto L_0x00e9;
    L_0x00c5:
        r8 = "FragmentManager";
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r10 = "Saved state of ";
        r9 = r9.append(r10);
        r0 = r9.append(r0);
        r9 = ": ";
        r0 = r0.append(r9);
        r2 = r2.mSavedFragmentState;
        r0 = r0.append(r2);
        r0 = r0.toString();
        android.util.Log.v(r8, r0);
    L_0x00e9:
        r0 = r1;
    L_0x00ea:
        r2 = r5 + 1;
        r5 = r2;
        r2 = r0;
        goto L_0x0023;
    L_0x00f0:
        r8 = r0.mSavedFragmentState;
        r2.mSavedFragmentState = r8;
        goto L_0x00c1;
    L_0x00f5:
        if (r2 != 0) goto L_0x0104;
    L_0x00f7:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x0018;
    L_0x00fb:
        r0 = "FragmentManager";
        r1 = "saveAllState: no fragments!";
        android.util.Log.v(r0, r1);
        goto L_0x0018;
    L_0x0104:
        r0 = r11.mAdded;
        if (r0 == 0) goto L_0x0182;
    L_0x0108:
        r0 = r11.mAdded;
        r5 = r0.size();
        if (r5 <= 0) goto L_0x0182;
    L_0x0110:
        r1 = new int[r5];
        r2 = r4;
    L_0x0113:
        if (r2 >= r5) goto L_0x0183;
    L_0x0115:
        r0 = r11.mAdded;
        r0 = r0.get(r2);
        r0 = (android.support.v4.app.Fragment) r0;
        r0 = r0.mIndex;
        r1[r2] = r0;
        r0 = r1[r2];
        if (r0 >= 0) goto L_0x0152;
    L_0x0125:
        r0 = new java.lang.IllegalStateException;
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r8 = "Failure saving state: active ";
        r6 = r6.append(r8);
        r8 = r11.mAdded;
        r8 = r8.get(r2);
        r6 = r6.append(r8);
        r8 = " has cleared index: ";
        r6 = r6.append(r8);
        r8 = r1[r2];
        r6 = r6.append(r8);
        r6 = r6.toString();
        r0.<init>(r6);
        r11.throwException(r0);
    L_0x0152:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x017e;
    L_0x0156:
        r0 = "FragmentManager";
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r8 = "saveAllState: adding fragment #";
        r6 = r6.append(r8);
        r6 = r6.append(r2);
        r8 = ": ";
        r6 = r6.append(r8);
        r8 = r11.mAdded;
        r8 = r8.get(r2);
        r6 = r6.append(r8);
        r6 = r6.toString();
        android.util.Log.v(r0, r6);
    L_0x017e:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x0113;
    L_0x0182:
        r1 = r3;
    L_0x0183:
        r0 = r11.mBackStack;
        if (r0 == 0) goto L_0x01d3;
    L_0x0187:
        r0 = r11.mBackStack;
        r5 = r0.size();
        if (r5 <= 0) goto L_0x01d3;
    L_0x018f:
        r3 = new android.support.v4.app.BackStackState[r5];
        r2 = r4;
    L_0x0192:
        if (r2 >= r5) goto L_0x01d3;
    L_0x0194:
        r4 = new android.support.v4.app.BackStackState;
        r0 = r11.mBackStack;
        r0 = r0.get(r2);
        r0 = (android.support.v4.app.BackStackRecord) r0;
        r4.<init>(r0);
        r3[r2] = r4;
        r0 = DEBUG;
        if (r0 == 0) goto L_0x01cf;
    L_0x01a7:
        r0 = "FragmentManager";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r6 = "saveAllState: adding back stack #";
        r4 = r4.append(r6);
        r4 = r4.append(r2);
        r6 = ": ";
        r4 = r4.append(r6);
        r6 = r11.mBackStack;
        r6 = r6.get(r2);
        r4 = r4.append(r6);
        r4 = r4.toString();
        android.util.Log.v(r0, r4);
    L_0x01cf:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x0192;
    L_0x01d3:
        r0 = new android.support.v4.app.FragmentManagerState;
        r0.<init>();
        r0.mActive = r7;
        r0.mAdded = r1;
        r0.mBackStack = r3;
        r3 = r0;
        goto L_0x0018;
    L_0x01e1:
        r0 = r2;
        goto L_0x00ea;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.saveAllState():android.os.Parcelable");
    }

    /* Access modifiers changed, original: 0000 */
    public void restoreAllState(Parcelable parcelable, List<Fragment> list) {
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.mActive != null) {
                int i;
                Fragment fragment;
                int i2;
                if (list != null) {
                    for (i = 0; i < list.size(); i++) {
                        fragment = (Fragment) list.get(i);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: re-attaching retained " + fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.mActive[fragment.mIndex];
                        fragmentState.mInstance = fragment;
                        fragment.mSavedViewState = null;
                        fragment.mBackStackNesting = 0;
                        fragment.mInLayout = false;
                        fragment.mAdded = false;
                        fragment.mTarget = null;
                        if (fragmentState.mSavedFragmentState != null) {
                            fragmentState.mSavedFragmentState.setClassLoader(this.mHost.getContext().getClassLoader());
                            fragment.mSavedViewState = fragmentState.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                            fragment.mSavedFragmentState = fragmentState.mSavedFragmentState;
                        }
                    }
                }
                this.mActive = new ArrayList(fragmentManagerState.mActive.length);
                if (this.mAvailIndices != null) {
                    this.mAvailIndices.clear();
                }
                for (i2 = 0; i2 < fragmentManagerState.mActive.length; i2++) {
                    FragmentState fragmentState2 = fragmentManagerState.mActive[i2];
                    if (fragmentState2 != null) {
                        Fragment instantiate = fragmentState2.instantiate(this.mHost, this.mParent);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: active #" + i2 + ": " + instantiate);
                        }
                        this.mActive.add(instantiate);
                        fragmentState2.mInstance = null;
                    } else {
                        this.mActive.add(null);
                        if (this.mAvailIndices == null) {
                            this.mAvailIndices = new ArrayList();
                        }
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: avail #" + i2);
                        }
                        this.mAvailIndices.add(Integer.valueOf(i2));
                    }
                }
                if (list != null) {
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        fragment = (Fragment) list.get(i3);
                        if (fragment.mTargetIndex >= 0) {
                            if (fragment.mTargetIndex < this.mActive.size()) {
                                fragment.mTarget = (Fragment) this.mActive.get(fragment.mTargetIndex);
                            } else {
                                Log.w(TAG, "Re-attaching retained fragment " + fragment + " target no longer exists: " + fragment.mTargetIndex);
                                fragment.mTarget = null;
                            }
                        }
                    }
                }
                if (fragmentManagerState.mAdded != null) {
                    this.mAdded = new ArrayList(fragmentManagerState.mAdded.length);
                    for (i = 0; i < fragmentManagerState.mAdded.length; i++) {
                        fragment = (Fragment) this.mActive.get(fragmentManagerState.mAdded[i]);
                        if (fragment == null) {
                            throwException(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.mAdded[i]));
                        }
                        fragment.mAdded = true;
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: added #" + i + ": " + fragment);
                        }
                        if (this.mAdded.contains(fragment)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.mAdded.add(fragment);
                    }
                } else {
                    this.mAdded = null;
                }
                if (fragmentManagerState.mBackStack != null) {
                    this.mBackStack = new ArrayList(fragmentManagerState.mBackStack.length);
                    for (i2 = 0; i2 < fragmentManagerState.mBackStack.length; i2++) {
                        BackStackRecord instantiate2 = fragmentManagerState.mBackStack[i2].instantiate(this);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: back stack #" + i2 + " (index " + instantiate2.mIndex + "): " + instantiate2);
                            instantiate2.dump("  ", new PrintWriter(new LogWriter(TAG)), false);
                        }
                        this.mBackStack.add(instantiate2);
                        if (instantiate2.mIndex >= 0) {
                            setBackStackIndex(instantiate2.mIndex, instantiate2);
                        }
                    }
                    return;
                }
                this.mBackStack = null;
            }
        }
    }

    public void attachController(FragmentHostCallback fragmentHostCallback, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.mHost != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mHost = fragmentHostCallback;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
    }

    public void noteStateNotSaved() {
        this.mStateSaved = false;
    }

    public void dispatchCreate() {
        this.mStateSaved = false;
        moveToState(1, false);
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = false;
        moveToState(2, false);
    }

    public void dispatchStart() {
        this.mStateSaved = false;
        moveToState(4, false);
    }

    public void dispatchResume() {
        this.mStateSaved = false;
        moveToState(5, false);
    }

    public void dispatchPause() {
        moveToState(4, false);
    }

    public void dispatchStop() {
        this.mStateSaved = true;
        moveToState(3, false);
    }

    public void dispatchReallyStop() {
        moveToState(2, false);
    }

    public void dispatchDestroyView() {
        moveToState(1, false);
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions();
        moveToState(0, false);
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = (Fragment) this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performConfigurationChanged(configuration);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void dispatchLowMemory() {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = (Fragment) this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performLowMemory();
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z;
        Fragment fragment;
        int i = 0;
        ArrayList arrayList = null;
        if (this.mAdded != null) {
            int i2 = 0;
            z = false;
            while (i2 < this.mAdded.size()) {
                fragment = (Fragment) this.mAdded.get(i2);
                if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                }
                i2++;
                z = z;
            }
        } else {
            z = false;
        }
        if (this.mCreatedMenus != null) {
            while (i < this.mCreatedMenus.size()) {
                fragment = (Fragment) this.mCreatedMenus.get(i);
                if (arrayList == null || !arrayList.contains(fragment)) {
                    fragment.onDestroyOptionsMenu();
                }
                i++;
            }
        }
        this.mCreatedMenus = arrayList;
        return z;
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        if (this.mAdded == null) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return false;
        }
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return false;
        }
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = (Fragment) this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performOptionsMenuClosed(menu);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public static int reverseTransit(int i) {
        switch (i) {
            case 4097:
                return 8194;
            case 4099:
                return 4099;
            case 8194:
                return 4097;
            default:
                return 0;
        }
    }

    public static int transitToStyleIndex(int i, boolean z) {
        switch (i) {
            case 4097:
                return z ? 1 : 2;
            case 4099:
                return z ? 5 : 6;
            case 8194:
                return z ? 3 : 4;
            default:
                return -1;
        }
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return null;
        }
        String string;
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentTag.Fragment);
        if (attributeValue == null) {
            string = obtainStyledAttributes.getString(0);
        } else {
            string = attributeValue;
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string2 = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this.mHost.getContext(), string)) {
            return null;
        }
        int id;
        if (view != null) {
            id = view.getId();
        } else {
            id = 0;
        }
        if (id == -1 && resourceId == -1 && string2 == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + string);
        }
        Fragment fragment;
        Fragment findFragmentById = resourceId != -1 ? findFragmentById(resourceId) : null;
        if (findFragmentById == null && string2 != null) {
            findFragmentById = findFragmentByTag(string2);
        }
        if (findFragmentById == null && id != -1) {
            findFragmentById = findFragmentById(id);
        }
        if (DEBUG) {
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + string + " existing=" + findFragmentById);
        }
        if (findFragmentById == null) {
            Fragment instantiate = Fragment.instantiate(context, string);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : id;
            instantiate.mContainerId = id;
            instantiate.mTag = string2;
            instantiate.mInLayout = true;
            instantiate.mFragmentManager = this;
            instantiate.mHost = this.mHost;
            instantiate.onInflate(this.mHost.getContext(), attributeSet, instantiate.mSavedFragmentState);
            addFragment(instantiate, true);
            fragment = instantiate;
        } else if (findFragmentById.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + string);
        } else {
            findFragmentById.mInLayout = true;
            if (!findFragmentById.mRetaining) {
                findFragmentById.onInflate(this.mHost.getContext(), attributeSet, findFragmentById.mSavedFragmentState);
            }
            fragment = findFragmentById;
        }
        if (this.mCurState >= 1 || !fragment.mFromLayout) {
            moveToState(fragment);
        } else {
            moveToState(fragment, 1, 0, 0, false);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + string + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string2);
        }
        return fragment.mView;
    }

    /* Access modifiers changed, original: 0000 */
    public LayoutInflaterFactory getLayoutInflaterFactory() {
        return this;
    }
}
