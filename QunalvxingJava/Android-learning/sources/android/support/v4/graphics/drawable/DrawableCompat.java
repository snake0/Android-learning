package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;

public class DrawableCompat {
    static final DrawableImpl IMPL;

    interface DrawableImpl {
        int getLayoutDirection(Drawable drawable);

        boolean isAutoMirrored(Drawable drawable);

        void jumpToCurrentState(Drawable drawable);

        void setAutoMirrored(Drawable drawable, boolean z);

        void setHotspot(Drawable drawable, float f, float f2);

        void setHotspotBounds(Drawable drawable, int i, int i2, int i3, int i4);

        void setLayoutDirection(Drawable drawable, int i);

        void setTint(Drawable drawable, int i);

        void setTintList(Drawable drawable, ColorStateList colorStateList);

        void setTintMode(Drawable drawable, Mode mode);

        Drawable wrap(Drawable drawable);
    }

    class BaseDrawableImpl implements DrawableImpl {
        BaseDrawableImpl() {
        }

        public void jumpToCurrentState(Drawable drawable) {
        }

        public void setAutoMirrored(Drawable drawable, boolean z) {
        }

        public boolean isAutoMirrored(Drawable drawable) {
            return false;
        }

        public void setHotspot(Drawable drawable, float f, float f2) {
        }

        public void setHotspotBounds(Drawable drawable, int i, int i2, int i3, int i4) {
        }

        public void setTint(Drawable drawable, int i) {
            DrawableCompatBase.setTint(drawable, i);
        }

        public void setTintList(Drawable drawable, ColorStateList colorStateList) {
            DrawableCompatBase.setTintList(drawable, colorStateList);
        }

        public void setTintMode(Drawable drawable, Mode mode) {
            DrawableCompatBase.setTintMode(drawable, mode);
        }

        public Drawable wrap(Drawable drawable) {
            return DrawableCompatBase.wrapForTinting(drawable);
        }

        public void setLayoutDirection(Drawable drawable, int i) {
        }

        public int getLayoutDirection(Drawable drawable) {
            return 0;
        }
    }

    class HoneycombDrawableImpl extends BaseDrawableImpl {
        HoneycombDrawableImpl() {
        }

        public void jumpToCurrentState(Drawable drawable) {
            DrawableCompatHoneycomb.jumpToCurrentState(drawable);
        }

        public Drawable wrap(Drawable drawable) {
            return DrawableCompatHoneycomb.wrapForTinting(drawable);
        }
    }

    class JellybeanMr1DrawableImpl extends HoneycombDrawableImpl {
        JellybeanMr1DrawableImpl() {
        }

        public void setLayoutDirection(Drawable drawable, int i) {
            DrawableCompatJellybeanMr1.setLayoutDirection(drawable, i);
        }

        public int getLayoutDirection(Drawable drawable) {
            int layoutDirection = DrawableCompatJellybeanMr1.getLayoutDirection(drawable);
            return layoutDirection < 0 ? layoutDirection : 0;
        }
    }

    class KitKatDrawableImpl extends JellybeanMr1DrawableImpl {
        KitKatDrawableImpl() {
        }

        public void setAutoMirrored(Drawable drawable, boolean z) {
            DrawableCompatKitKat.setAutoMirrored(drawable, z);
        }

        public boolean isAutoMirrored(Drawable drawable) {
            return DrawableCompatKitKat.isAutoMirrored(drawable);
        }

        public Drawable wrap(Drawable drawable) {
            return DrawableCompatKitKat.wrapForTinting(drawable);
        }
    }

    class LollipopDrawableImpl extends KitKatDrawableImpl {
        LollipopDrawableImpl() {
        }

        public void setHotspot(Drawable drawable, float f, float f2) {
            DrawableCompatLollipop.setHotspot(drawable, f, f2);
        }

        public void setHotspotBounds(Drawable drawable, int i, int i2, int i3, int i4) {
            DrawableCompatLollipop.setHotspotBounds(drawable, i, i2, i3, i4);
        }

        public void setTint(Drawable drawable, int i) {
            DrawableCompatLollipop.setTint(drawable, i);
        }

        public void setTintList(Drawable drawable, ColorStateList colorStateList) {
            DrawableCompatLollipop.setTintList(drawable, colorStateList);
        }

        public void setTintMode(Drawable drawable, Mode mode) {
            DrawableCompatLollipop.setTintMode(drawable, mode);
        }

        public Drawable wrap(Drawable drawable) {
            return DrawableCompatLollipop.wrapForTinting(drawable);
        }
    }

    class LollipopMr1DrawableImpl extends LollipopDrawableImpl {
        LollipopMr1DrawableImpl() {
        }

        public Drawable wrap(Drawable drawable) {
            return DrawableCompatApi22.wrapForTinting(drawable);
        }
    }

    class MDrawableImpl extends LollipopMr1DrawableImpl {
        MDrawableImpl() {
        }

        public void setLayoutDirection(Drawable drawable, int i) {
            DrawableCompatApi23.setLayoutDirection(drawable, i);
        }

        public int getLayoutDirection(Drawable drawable) {
            return DrawableCompatApi23.getLayoutDirection(drawable);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 23) {
            IMPL = new MDrawableImpl();
        } else if (i >= 22) {
            IMPL = new LollipopMr1DrawableImpl();
        } else if (i >= 21) {
            IMPL = new LollipopDrawableImpl();
        } else if (i >= 19) {
            IMPL = new KitKatDrawableImpl();
        } else if (i >= 17) {
            IMPL = new JellybeanMr1DrawableImpl();
        } else if (i >= 11) {
            IMPL = new HoneycombDrawableImpl();
        } else {
            IMPL = new BaseDrawableImpl();
        }
    }

    public static void jumpToCurrentState(Drawable drawable) {
        IMPL.jumpToCurrentState(drawable);
    }

    public static void setAutoMirrored(Drawable drawable, boolean z) {
        IMPL.setAutoMirrored(drawable, z);
    }

    public static boolean isAutoMirrored(Drawable drawable) {
        return IMPL.isAutoMirrored(drawable);
    }

    public static void setHotspot(Drawable drawable, float f, float f2) {
        IMPL.setHotspot(drawable, f, f2);
    }

    public static void setHotspotBounds(Drawable drawable, int i, int i2, int i3, int i4) {
        IMPL.setHotspotBounds(drawable, i, i2, i3, i4);
    }

    public static void setTint(Drawable drawable, int i) {
        IMPL.setTint(drawable, i);
    }

    public static void setTintList(Drawable drawable, ColorStateList colorStateList) {
        IMPL.setTintList(drawable, colorStateList);
    }

    public static void setTintMode(Drawable drawable, Mode mode) {
        IMPL.setTintMode(drawable, mode);
    }

    public static Drawable wrap(Drawable drawable) {
        return IMPL.wrap(drawable);
    }

    public static <T extends Drawable> T unwrap(Drawable drawable) {
        if (drawable instanceof DrawableWrapper) {
            return ((DrawableWrapper) drawable).getWrappedDrawable();
        }
        return drawable;
    }

    public static void setLayoutDirection(Drawable drawable, int i) {
        IMPL.setLayoutDirection(drawable, i);
    }

    public static int getLayoutDirection(Drawable drawable) {
        return IMPL.getLayoutDirection(drawable);
    }
}
