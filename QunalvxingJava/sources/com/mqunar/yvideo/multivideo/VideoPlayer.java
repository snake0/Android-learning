package com.mqunar.yvideo.multivideo;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Matrix;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.mqunar.yvideo.R;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.http.HttpStatus;

public abstract class VideoPlayer extends FrameLayout implements OnClickListener, OnTouchListener, OnSeekBarChangeListener {
    private static boolean ACTION_BAR_EXIST = true;
    private static long CLICK_QUIT_FULLSCREEN_TIME = 0;
    public static final int CURRENT_STATE_AUTO_COMPLETE = 6;
    public static final int CURRENT_STATE_ERROR = 7;
    public static final int CURRENT_STATE_NORMAL = 0;
    public static final int CURRENT_STATE_PAUSE = 5;
    public static final int CURRENT_STATE_PLAYING = 3;
    public static final int CURRENT_STATE_PREPARING = 1;
    public static final int CURRENT_STATE_PREPARING_CHANGING_URL = 2;
    public static int FULLSCREEN_ORIENTATION = 4;
    private static final int FULL_SCREEN_NORMAL_DELAY = 300;
    public static int NORMAL_ORIENTATION = 1;
    public static boolean SAVE_PROGRESS = false;
    public static final int SCREEN_WINDOW_FULLSCREEN = 2;
    public static final int SCREEN_WINDOW_LIST = 1;
    public static final int SCREEN_WINDOW_NORMAL = 0;
    public static final int SCREEN_WINDOW_TINY = 3;
    private static final String TAG = "VideoPlayer";
    private static final int THRESHOLD = 80;
    private static boolean TOOL_BAR_EXIST = true;
    protected static Timer UPDATE_PROGRESS_TIMER = null;
    protected static final String URL_KEY_DEFAULT = "URL_KEY_DEFAULT";
    protected static UserAction USER_EVENT;
    public static boolean WIFI_TIP_DIALOG_SHOWED = false;
    private static long lastAutoFullscreenTime = 0;
    private static OnAudioFocusChangeListener onAudioFocusChangeListener = new OnAudioFocusChangeListener() {
        public void onAudioFocusChange(int i) {
            switch (i) {
                case -2:
                    try {
                        if (VideoPlayerManager.getCurrentVP().currentState == 3) {
                            VideoPlayerManager.getCurrentVP().startButton.performClick();
                            return;
                        }
                        return;
                    } catch (IllegalStateException e) {
                        e.printStackTrace();
                        return;
                    }
                case -1:
                    VideoPlayer.releaseAllVideos();
                    return;
                default:
                    return;
            }
        }
    };
    private int _xDelta;
    private int _yDelta;
    public ViewGroup bottomContainer;
    public int currentScreen = -1;
    public int currentState = -1;
    public TextView currentTimeTextView;
    public DataSourceBean dataSourceObjects;
    public ImageView fullscreenButton;
    public int heightRatio = 0;
    private boolean isPrepare;
    protected AudioManager mAudioManager;
    protected boolean mChangeBrightness;
    protected boolean mChangePosition;
    protected boolean mChangeVolume;
    protected float mDownX;
    protected float mDownY;
    protected float mGestureDownBrightness;
    protected long mGestureDownPosition;
    protected int mGestureDownVolume;
    private final Runnable mLayoutRunnable = new Runnable() {
        public void run() {
            VideoPlayer.this.measure(MeasureSpec.makeMeasureSpec(VideoPlayer.this.getWidth(), 1073741824), MeasureSpec.makeMeasureSpec(VideoPlayer.this.getHeight(), 1073741824));
            VideoPlayer.this.layout(VideoPlayer.this.getLeft(), VideoPlayer.this.getTop(), VideoPlayer.this.getRight(), VideoPlayer.this.getBottom());
        }
    };
    protected boolean mMuted = false;
    protected boolean mPaused = false;
    protected ProgressTimerTask mProgressTimerTask;
    protected boolean mRepeat = false;
    protected ScalableType mResizeMode = ScalableType.FIT_CENTER;
    protected ScalableType mScalableType = ScalableType.NONE;
    protected int mScreenHeight;
    protected int mScreenWidth;
    protected long mSeekTimePosition;
    protected boolean mTouchingProgressBar;
    protected float mVolume = 1.0f;
    private MediaInterface mediaInterface = MediaManager.instance().mediaInterface;
    public int positionInList = -1;
    public SeekBar progressBar;
    private long seekToInAdvance = 0;
    public ImageView startButton;
    public ViewGroup textureViewContainer;
    boolean tmp_test_back = false;
    public ViewGroup topContainer;
    public TextView totalTimeTextView;
    public int videoRotation = 0;
    public int widthRatio = 0;

    public class AutoFullscreenListener implements SensorEventListener {
        public void onSensorChanged(SensorEvent sensorEvent) {
            float f = sensorEvent.values[0];
            float f2 = sensorEvent.values[1];
            f2 = sensorEvent.values[2];
            if ((f < -12.0f || f > 12.0f) && System.currentTimeMillis() - VideoPlayer.lastAutoFullscreenTime > 2000) {
                if (VideoPlayerManager.getCurrentVP() != null) {
                    VideoPlayerManager.getCurrentVP().autoFullscreen(f);
                }
                VideoPlayer.lastAutoFullscreenTime = System.currentTimeMillis();
            }
        }

        public void onAccuracyChanged(Sensor sensor, int i) {
        }
    }

    public class ProgressTimerTask extends TimerTask {
        public void run() {
            if (VideoPlayer.this.currentState == 3 || VideoPlayer.this.currentState == 5) {
                VideoPlayer.this.post(new Runnable() {
                    public void run() {
                        long j;
                        long currentPositionWhenPlaying = VideoPlayer.this.getCurrentPositionWhenPlaying();
                        long duration = VideoPlayer.this.getDuration();
                        long j2 = currentPositionWhenPlaying * 100;
                        if (duration == 0) {
                            j = 1;
                        } else {
                            j = duration;
                        }
                        int i = (int) (j2 / j);
                        VideoPlayer.this.setProgressAndText(i, currentPositionWhenPlaying, duration);
                        VideoPlayer.this.handleProgress(i, currentPositionWhenPlaying, duration);
                    }
                });
            }
        }
    }

    public abstract int getLayoutId();

    public VideoPlayer(Context context) {
        super(context);
        init(context);
    }

    public VideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public static void releaseAllVideos() {
        if (System.currentTimeMillis() - CLICK_QUIT_FULLSCREEN_TIME > 300) {
            VideoPlayerManager.completeAll();
            MediaManager.instance().positionInList = -1;
            MediaManager.instance().releaseMediaPlayer();
        }
    }

    public static boolean backPress() {
        if (System.currentTimeMillis() - CLICK_QUIT_FULLSCREEN_TIME < 300) {
            return false;
        }
        if (VideoPlayerManager.getSecondFloor() != null) {
            CLICK_QUIT_FULLSCREEN_TIME = System.currentTimeMillis();
            if (VideoUtils.dataSourceObjectsContainsUri(VideoPlayerManager.getFirstFloor().dataSourceObjects, MediaManager.getCurrentDataSource())) {
                VideoPlayer secondFloor = VideoPlayerManager.getSecondFloor();
                secondFloor.onEvent(secondFloor.currentScreen == 2 ? 8 : 10);
                VideoPlayerManager.getFirstFloor().playOnThisVideoPlayer();
            } else {
                quitFullscreenOrTinyWindow();
            }
            return true;
        } else if (VideoPlayerManager.getFirstFloor() == null) {
            return false;
        } else {
            if (VideoPlayerManager.getFirstFloor().currentScreen != 2 && VideoPlayerManager.getFirstFloor().currentScreen != 3) {
                return false;
            }
            CLICK_QUIT_FULLSCREEN_TIME = System.currentTimeMillis();
            quitFullscreenOrTinyWindow();
            return true;
        }
    }

    public static void quitFullscreenOrTinyWindow() {
        VideoPlayerManager.getFirstFloor().clearFloatScreen();
        MediaManager.instance().releaseMediaPlayer();
        VideoPlayerManager.completeAll();
    }

    public static void clearSavedProgress(Context context, String str) {
        VideoUtils.clearSavedProgress(context, str);
    }

    public static void setUserAction(UserAction userAction) {
        USER_EVENT = userAction;
    }

    public static void goOnPlayOnResume() {
        if (VideoPlayerManager.getCurrentVP() != null) {
            VideoPlayer currentVP = VideoPlayerManager.getCurrentVP();
            if (currentVP.currentState == 5) {
                currentVP.onStatePlaying();
                MediaManager.start();
            }
        }
    }

    public static void goOnPlayOnPause() {
        if (VideoPlayerManager.getCurrentVP() != null) {
            VideoPlayer currentVP = VideoPlayerManager.getCurrentVP();
            if (currentVP.currentState != 6 && currentVP.currentState != 0 && currentVP.currentState != 7) {
                currentVP.onStatePause();
                MediaManager.pause();
            }
        }
    }

    public static void onScrollAutoTiny(AbsListView absListView, int i, int i2, int i3) {
        int i4 = i + i2;
        int i5 = MediaManager.instance().positionInList;
        if (i5 < 0) {
            return;
        }
        if (i5 < i || i5 > i4 - 1) {
            if (VideoPlayerManager.getCurrentVP() != null && VideoPlayerManager.getCurrentVP().currentScreen != 3 && VideoPlayerManager.getCurrentVP().currentScreen != 2) {
                if (VideoPlayerManager.getCurrentVP().currentState == 5) {
                    releaseAllVideos();
                } else {
                    VideoPlayerManager.getCurrentVP().startWindowTiny();
                }
            }
        } else if (VideoPlayerManager.getCurrentVP() != null && VideoPlayerManager.getCurrentVP().currentScreen == 3) {
            backPress();
        }
    }

    public static void onScrollReleaseAllVideos(AbsListView absListView, int i, int i2, int i3) {
        int i4 = i + i2;
        int i5 = MediaManager.instance().positionInList;
        if (i5 < 0) {
            return;
        }
        if ((i5 < i || i5 > i4 - 1) && VideoPlayerManager.getCurrentVP().currentScreen != 2) {
            releaseAllVideos();
        }
    }

    @TargetApi(12)
    public void setViewAttachedEvent() {
        addOnAttachStateChangeListener(new OnAttachStateChangeListener() {
            public void onViewAttachedToWindow(View view) {
                if (VideoPlayerManager.getCurrentVP() != null && VideoPlayerManager.getCurrentVP().currentScreen == 3 && VideoUtils.getCurrentFromDataSource(VideoPlayer.this.dataSourceObjects).equals(MediaManager.getCurrentDataSource())) {
                    VideoPlayer.backPress();
                }
            }

            public void onViewDetachedFromWindow(View view) {
                if (VideoPlayerManager.getCurrentVP() == VideoPlayer.this && VideoPlayerManager.getCurrentVP().currentScreen != 3) {
                    if (VideoPlayer.this.currentState == 5 || !VideoPlayer.this.dataSourceObjects.isSupportTingWindow()) {
                        VideoPlayer.releaseAllVideos();
                    } else {
                        VideoPlayer.this.startWindowTiny();
                    }
                }
            }
        });
    }

    public void onChildViewAttachedToWindow(View view, int i) {
        if (VideoPlayerManager.getCurrentVP() != null && VideoPlayerManager.getCurrentVP().currentScreen == 3) {
            VideoPlayer videoPlayer = (VideoPlayer) view.findViewById(i);
            if (videoPlayer != null && VideoUtils.getCurrentFromDataSource(videoPlayer.dataSourceObjects).equals(MediaManager.getCurrentDataSource())) {
                backPress();
            }
        }
    }

    public static void onChildViewDetachedFromWindow(View view) {
        if (VideoPlayerManager.getCurrentVP() != null && VideoPlayerManager.getCurrentVP().currentScreen != 3) {
            VideoPlayer currentVP = VideoPlayerManager.getCurrentVP();
            if (((ViewGroup) view).indexOfChild((View) currentVP.getParent()) == -1) {
                return;
            }
            if (currentVP.currentState == 5) {
                releaseAllVideos();
            } else {
                currentVP.startWindowTiny();
            }
        }
    }

    public static void setTextureViewRotation(int i) {
        if (MediaManager.textureView != null) {
            MediaManager.textureView.setRotation((float) i);
        }
    }

    public Object getCurrentUrl() {
        return VideoUtils.getCurrentFromDataSource(this.dataSourceObjects);
    }

    public void init(Context context) {
        View.inflate(context, getLayoutId(), this);
        this.startButton = (ImageView) findViewById(R.id.start);
        this.fullscreenButton = (ImageView) findViewById(R.id.fullscreen);
        this.progressBar = (SeekBar) findViewById(R.id.bottom_seek_progress);
        this.currentTimeTextView = (TextView) findViewById(R.id.current);
        this.totalTimeTextView = (TextView) findViewById(R.id.total);
        this.bottomContainer = (ViewGroup) findViewById(R.id.layout_bottom);
        this.textureViewContainer = (ViewGroup) findViewById(R.id.surface_container);
        this.topContainer = (ViewGroup) findViewById(R.id.layout_top);
        this.startButton.setOnClickListener(this);
        this.fullscreenButton.setOnClickListener(this);
        this.progressBar.setOnSeekBarChangeListener(this);
        this.bottomContainer.setOnClickListener(this);
        this.textureViewContainer.setOnClickListener(this);
        this.textureViewContainer.setOnTouchListener(this);
        this.mScreenWidth = getContext().getResources().getDisplayMetrics().widthPixels;
        this.mScreenHeight = getContext().getResources().getDisplayMetrics().heightPixels;
        this.mAudioManager = (AudioManager) getContext().getSystemService("audio");
    }

    public void setUp(DataSourceBean dataSourceBean, int i) {
        if (this.dataSourceObjects == null || VideoUtils.getCurrentFromDataSource(dataSourceBean) == null || !VideoUtils.getCurrentFromDataSource(this.dataSourceObjects).equals(VideoUtils.getCurrentFromDataSource(dataSourceBean))) {
            if (isCurrentVideoPlayer() && VideoUtils.dataSourceObjectsContainsUri(dataSourceBean, MediaManager.getCurrentDataSource())) {
                long currentPosition;
                try {
                    currentPosition = MediaManager.getCurrentPosition();
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                    currentPosition = 0;
                }
                if (currentPosition != 0) {
                    VideoUtils.saveProgress(getContext(), MediaManager.getCurrentDataSource(), currentPosition);
                }
                MediaManager.instance().releaseMediaPlayer();
            } else if (isCurrentVideoPlayer() && !VideoUtils.dataSourceObjectsContainsUri(dataSourceBean, MediaManager.getCurrentDataSource())) {
                startWindowTiny();
            } else if (isCurrentVideoPlayer() || !VideoUtils.dataSourceObjectsContainsUri(dataSourceBean, MediaManager.getCurrentDataSource())) {
                if (isCurrentVideoPlayer() || VideoUtils.dataSourceObjectsContainsUri(dataSourceBean, MediaManager.getCurrentDataSource())) {
                }
            } else if (VideoPlayerManager.getCurrentVP() != null && VideoPlayerManager.getCurrentVP().currentScreen == 3) {
                this.tmp_test_back = true;
            }
            this.dataSourceObjects = dataSourceBean;
            this.currentScreen = i;
            onStateNormal();
            if (i == 0 || i == 1) {
                this.mediaInterface.setPrepare(false);
            }
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.start) {
            if (this.dataSourceObjects == null || VideoUtils.getCurrentFromDataSource(this.dataSourceObjects) == null) {
                Toast.makeText(getContext(), getResources().getString(R.string.pub_react_video_no_url), 0).show();
            } else if (this.currentState == 0) {
                if (VideoUtils.getCurrentFromDataSource(this.dataSourceObjects).toString().startsWith("file") || VideoUtils.getCurrentFromDataSource(this.dataSourceObjects).toString().startsWith("/") || VideoUtils.isWifiConnected(getContext()) || WIFI_TIP_DIALOG_SHOWED) {
                    startVideo();
                    onEvent(0);
                    return;
                }
                showWNoWifiWarning();
            } else if (this.currentState == 3) {
                onEvent(3);
                MediaManager.pause();
                onStatePause();
            } else if (this.currentState == 5) {
                onEvent(4);
                MediaManager.start();
                onStatePlaying();
            } else if (this.currentState == 6) {
                onEvent(2);
                startVideo();
            }
        } else if (id == R.id.fullscreen && this.currentState != 6) {
            if (this.currentScreen == 2) {
                backPress();
                return;
            }
            onEvent(7);
            startWindowFullscreen();
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        if (view.getId() == R.id.surface_container) {
            LayoutParams layoutParams;
            switch (motionEvent.getAction()) {
                case 0:
                    this.mTouchingProgressBar = true;
                    this.mDownX = x;
                    this.mDownY = y;
                    this.mChangeVolume = false;
                    this.mChangePosition = false;
                    this.mChangeBrightness = false;
                    if (VideoPlayerManager.getSecondFloor() != null) {
                        layoutParams = (LayoutParams) VideoPlayerManager.getSecondFloor().getLayoutParams();
                        this._xDelta = rawX - layoutParams.leftMargin;
                        this._yDelta = rawY - layoutParams.topMargin;
                        break;
                    }
                    break;
                case 1:
                    this.mTouchingProgressBar = false;
                    dismissProgressDialog();
                    dismissVolumeDialog();
                    dismissBrightnessDialog();
                    if (this.mChangePosition) {
                        onEvent(12);
                        MediaManager.seekTo(this.mSeekTimePosition);
                        long duration = getDuration();
                        long j = this.mSeekTimePosition * 100;
                        if (duration == 0) {
                            duration = 1;
                        }
                        this.progressBar.setProgress((int) (j / duration));
                    }
                    if (this.mChangeVolume) {
                        onEvent(11);
                    }
                    startProgressTimer();
                    break;
                case 2:
                    int streamMaxVolume;
                    float f = x - this.mDownX;
                    float f2 = y - this.mDownY;
                    x = Math.abs(f);
                    y = Math.abs(f2);
                    if (this.currentScreen == 2) {
                        if (!(this.mChangePosition || this.mChangeVolume || this.mChangeBrightness || (x <= 80.0f && y <= 80.0f))) {
                            cancelProgressTimer();
                            if (x >= 80.0f) {
                                if (this.currentState != 7) {
                                    this.mChangePosition = true;
                                    this.mGestureDownPosition = getCurrentPositionWhenPlaying();
                                }
                            } else if (this.mDownX < ((float) this.mScreenWidth) * 0.5f) {
                                this.mChangeBrightness = true;
                                WindowManager.LayoutParams attributes = VideoUtils.getWindow(getContext()).getAttributes();
                                if (attributes.screenBrightness < 0.0f) {
                                    try {
                                        this.mGestureDownBrightness = (float) System.getInt(getContext().getContentResolver(), "screen_brightness");
                                    } catch (SettingNotFoundException e) {
                                        e.printStackTrace();
                                    }
                                } else {
                                    this.mGestureDownBrightness = attributes.screenBrightness * 255.0f;
                                }
                            } else {
                                this.mChangeVolume = true;
                                this.mGestureDownVolume = this.mAudioManager.getStreamVolume(3);
                            }
                        }
                    } else if (this.currentScreen == 3) {
                        layoutParams = (LayoutParams) VideoPlayerManager.getSecondFloor().getLayoutParams();
                        layoutParams.leftMargin = rawX - this._xDelta;
                        layoutParams.topMargin = rawY - this._yDelta;
                        if (layoutParams.leftMargin <= 0) {
                            layoutParams.leftMargin = 0;
                        }
                        if (layoutParams.topMargin <= 0) {
                            layoutParams.topMargin = 0;
                        }
                        setLayoutParams(layoutParams);
                    }
                    if (this.mChangePosition) {
                        long duration2 = getDuration();
                        this.mSeekTimePosition = (long) ((int) (((float) this.mGestureDownPosition) + ((((float) duration2) * f) / ((float) this.mScreenWidth))));
                        if (this.mSeekTimePosition > duration2) {
                            this.mSeekTimePosition = duration2;
                        }
                        showProgressDialog(f, VideoUtils.stringForTime(this.mSeekTimePosition), this.mSeekTimePosition, VideoUtils.stringForTime(duration2), duration2);
                    }
                    if (this.mChangeVolume) {
                        x = -f2;
                        streamMaxVolume = this.mAudioManager.getStreamMaxVolume(3);
                        this.mAudioManager.setStreamVolume(3, ((int) (((((float) streamMaxVolume) * x) * 3.0f) / ((float) this.mScreenHeight))) + this.mGestureDownVolume, 0);
                        showVolumeDialog(-x, (int) (((float) ((this.mGestureDownVolume * 100) / streamMaxVolume)) + (((x * 3.0f) * 100.0f) / ((float) this.mScreenHeight))));
                    } else {
                        x = f2;
                    }
                    if (this.mChangeBrightness) {
                        x = -x;
                        streamMaxVolume = (int) (((255.0f * x) * 3.0f) / ((float) this.mScreenHeight));
                        WindowManager.LayoutParams attributes2 = VideoUtils.getWindow(getContext()).getAttributes();
                        if ((this.mGestureDownBrightness + ((float) streamMaxVolume)) / 255.0f >= 1.0f) {
                            attributes2.screenBrightness = 1.0f;
                        } else if ((this.mGestureDownBrightness + ((float) streamMaxVolume)) / 255.0f <= 0.0f) {
                            attributes2.screenBrightness = 0.01f;
                        } else {
                            attributes2.screenBrightness = (((float) streamMaxVolume) + this.mGestureDownBrightness) / 255.0f;
                        }
                        VideoUtils.getWindow(getContext()).setAttributes(attributes2);
                        showBrightnessDialog((int) ((((x * 3.0f) * 100.0f) / ((float) this.mScreenHeight)) + ((this.mGestureDownBrightness * 100.0f) / 255.0f)));
                        break;
                    }
                    break;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: protected */
    public void seekEvent(int i) {
    }

    public void startVideo() {
        VideoPlayerManager.completeAll();
        initTextureView();
        addTextureView();
        ((AudioManager) getContext().getSystemService("audio")).requestAudioFocus(onAudioFocusChangeListener, 3, 2);
        VideoUtils.scanForActivity(getContext()).getWindow().addFlags(128);
        MediaManager.setDataSource(this.dataSourceObjects);
        MediaManager.setCurrentDataSource(VideoUtils.getCurrentFromDataSource(this.dataSourceObjects));
        MediaManager.instance().positionInList = this.positionInList;
        onStatePreparing();
        VideoPlayerManager.setFirstFloor(this);
        requestLayout();
    }

    public void requestLayout() {
        super.requestLayout();
        post(this.mLayoutRunnable);
    }

    public void onPrepared() {
        onStatePrepared();
        onStatePlaying();
    }

    public void setState(int i) {
        setState(i, 0, 0);
    }

    private void setState(int i, int i2, int i3) {
        switch (i) {
            case 0:
                onStateNormal();
                return;
            case 1:
                onStatePreparing();
                return;
            case 2:
                onStatePreparingChangingUrl(i2, (long) i3);
                return;
            case 3:
                onStatePlaying();
                return;
            case 5:
                onStatePause();
                return;
            case 6:
                onStateAutoComplete();
                return;
            case 7:
                onStateError();
                return;
            default:
                return;
        }
    }

    public void onStateNormal() {
        this.currentState = 0;
        cancelProgressTimer();
    }

    public void onStatePreparing() {
        this.currentState = 1;
        resetProgressAndTime();
    }

    public void onStatePreparingChangingUrl(int i, long j) {
        this.currentState = 2;
        this.dataSourceObjects.setDefaultUrlMapIndex(i);
        this.seekToInAdvance = j;
        MediaManager.setDataSource(this.dataSourceObjects);
        MediaManager.setCurrentDataSource(VideoUtils.getCurrentFromDataSource(this.dataSourceObjects));
        MediaManager.instance().prepare();
    }

    public void onStatePrepared() {
        if (this.seekToInAdvance != 0) {
            MediaManager.seekTo(this.seekToInAdvance);
            this.seekToInAdvance = 0;
            return;
        }
        long savedProgress = VideoUtils.getSavedProgress(getContext(), VideoUtils.getCurrentFromDataSource(this.dataSourceObjects));
        if (savedProgress != 0) {
            MediaManager.seekTo(savedProgress);
        }
    }

    public void onStatePlaying() {
        this.currentState = 3;
        startProgressTimer();
    }

    public void onStatePause() {
        this.currentState = 5;
        startProgressTimer();
    }

    public void onStateError() {
        this.currentState = 7;
        cancelProgressTimer();
    }

    public void onStateAutoComplete() {
        this.currentState = 6;
        cancelProgressTimer();
        this.progressBar.setProgress(100);
        this.currentTimeTextView.setText(this.totalTimeTextView.getText());
    }

    public void onInfo(int i, int i2) {
    }

    public void onError(int i, int i2) {
        if (i != 38 && i2 != -38 && i != -38 && i2 != 38 && i2 != -19) {
            onStateError();
            if (isCurrentPlay()) {
                MediaManager.instance().releaseMediaPlayer();
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        if (this.dataSourceObjects == null || this.currentScreen == 2 || this.currentScreen == 3) {
            super.onMeasure(i, i2);
        } else if (this.widthRatio == 0 || this.heightRatio == 0) {
            super.onMeasure(i, i2);
        } else {
            int size = MeasureSpec.getSize(i);
            int i3 = (int) ((((float) size) * ((float) this.heightRatio)) / ((float) this.widthRatio));
            setMeasuredDimension(size, i3);
            getChildAt(0).measure(MeasureSpec.makeMeasureSpec(size, 1073741824), MeasureSpec.makeMeasureSpec(i3, 1073741824));
        }
    }

    public void onAutoCompletion() {
        Runtime.getRuntime().gc();
        onEvent(6);
        dismissVolumeDialog();
        dismissProgressDialog();
        dismissBrightnessDialog();
        onStateAutoComplete();
        if (this.currentScreen == 2 || this.currentScreen == 3) {
            backPress();
        }
        MediaManager.instance().releaseMediaPlayer();
        VideoUtils.saveProgress(getContext(), VideoUtils.getCurrentFromDataSource(this.dataSourceObjects), 0);
    }

    @TargetApi(14)
    public void onCompletion() {
        if (this.currentState == 3 || this.currentState == 5) {
            VideoUtils.saveProgress(getContext(), VideoUtils.getCurrentFromDataSource(this.dataSourceObjects), getCurrentPositionWhenPlaying());
        }
        cancelProgressTimer();
        dismissBrightnessDialog();
        dismissProgressDialog();
        dismissVolumeDialog();
        onStateNormal();
        this.textureViewContainer.removeView(MediaManager.textureView);
        MediaManager.instance().currentVideoWidth = 0;
        MediaManager.instance().currentVideoHeight = 0;
        ((AudioManager) getContext().getSystemService("audio")).abandonAudioFocus(onAudioFocusChangeListener);
        VideoUtils.scanForActivity(getContext()).getWindow().clearFlags(128);
        clearFullscreenLayout();
        VideoUtils.setRequestedOrientation(getContext(), NORMAL_ORIENTATION);
        if (MediaManager.surface != null) {
            MediaManager.surface.release();
        }
        if (MediaManager.savedSurfaceTexture != null) {
            MediaManager.savedSurfaceTexture.release();
        }
        MediaManager.textureView = null;
        MediaManager.savedSurfaceTexture = null;
    }

    public void release() {
        if (VideoUtils.getCurrentFromDataSource(this.dataSourceObjects).equals(MediaManager.getCurrentDataSource()) && System.currentTimeMillis() - CLICK_QUIT_FULLSCREEN_TIME > 300) {
            if (VideoPlayerManager.getSecondFloor() != null && VideoPlayerManager.getSecondFloor().currentScreen == 2) {
                return;
            }
            if (VideoPlayerManager.getSecondFloor() != null || VideoPlayerManager.getFirstFloor() == null || VideoPlayerManager.getFirstFloor().currentScreen != 2) {
                releaseAllVideos();
            }
        }
    }

    @TargetApi(14)
    public void initTextureView() {
        removeTextureView();
        MediaManager.textureView = new ResizeTextureView(getContext());
        MediaManager.textureView.setSurfaceTextureListener(MediaManager.instance());
    }

    public void addTextureView() {
        this.textureViewContainer.addView(MediaManager.textureView, new LayoutParams(-1, -1, 17));
    }

    public void removeTextureView() {
        MediaManager.savedSurfaceTexture = null;
        if (MediaManager.textureView != null && MediaManager.textureView.getParent() != null) {
            ((ViewGroup) MediaManager.textureView.getParent()).removeView(MediaManager.textureView);
        }
    }

    public void clearFullscreenLayout() {
        ViewGroup viewGroup = (ViewGroup) VideoUtils.scanForActivity(getContext()).findViewById(16908290);
        View findViewById = viewGroup.findViewById(R.id.pub_react_video_fullscreen_id);
        View findViewById2 = viewGroup.findViewById(R.id.pub_react_video_tiny_id);
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        if (findViewById2 != null) {
            viewGroup.removeView(findViewById2);
        }
    }

    public void clearFloatScreen() {
        VideoUtils.setRequestedOrientation(getContext(), NORMAL_ORIENTATION);
        ViewGroup viewGroup = (ViewGroup) VideoUtils.scanForActivity(getContext()).findViewById(16908290);
        VideoPlayer videoPlayer = (VideoPlayer) viewGroup.findViewById(R.id.pub_react_video_fullscreen_id);
        VideoPlayer videoPlayer2 = (VideoPlayer) viewGroup.findViewById(R.id.pub_react_video_tiny_id);
        if (videoPlayer != null) {
            viewGroup.removeView(videoPlayer);
            if (videoPlayer.textureViewContainer != null) {
                videoPlayer.textureViewContainer.removeView(MediaManager.textureView);
            }
        }
        if (videoPlayer2 != null) {
            viewGroup.removeView(videoPlayer2);
            if (videoPlayer2.textureViewContainer != null) {
                videoPlayer2.textureViewContainer.removeView(MediaManager.textureView);
            }
        }
        VideoPlayerManager.setSecondFloor(null);
    }

    public void onVideoSizeChanged() {
        if (MediaManager.textureView != null) {
            if (this.videoRotation != 0) {
                MediaManager.textureView.setRotation((float) this.videoRotation);
            }
            MediaManager.textureView.setVideoSize(MediaManager.instance().currentVideoWidth, MediaManager.instance().currentVideoHeight);
        }
    }

    public void startProgressTimer() {
        cancelProgressTimer();
        UPDATE_PROGRESS_TIMER = new Timer();
        this.mProgressTimerTask = new ProgressTimerTask();
        UPDATE_PROGRESS_TIMER.schedule(this.mProgressTimerTask, 0, 300);
    }

    public void cancelProgressTimer() {
        if (UPDATE_PROGRESS_TIMER != null) {
            UPDATE_PROGRESS_TIMER.cancel();
        }
        if (this.mProgressTimerTask != null) {
            this.mProgressTimerTask.cancel();
        }
    }

    public void setProgressAndText(int i, long j, long j2) {
        if (!(this.mTouchingProgressBar || i == 0)) {
            this.progressBar.setProgress(i);
        }
        if (j != 0) {
            this.currentTimeTextView.setText(VideoUtils.stringForTime(j));
        }
        this.totalTimeTextView.setText(VideoUtils.stringForTime(j2));
    }

    public void setBufferProgress(int i) {
        if (i != 0) {
            this.progressBar.setSecondaryProgress(i);
        }
    }

    public void resetProgressAndTime() {
        this.progressBar.setProgress(0);
        this.progressBar.setSecondaryProgress(0);
        this.currentTimeTextView.setText(VideoUtils.stringForTime(0));
        this.totalTimeTextView.setText(VideoUtils.stringForTime(0));
    }

    public long getCurrentPositionWhenPlaying() {
        long j = 0;
        if (this.currentState != 3 && this.currentState != 5) {
            return j;
        }
        try {
            return MediaManager.getCurrentPosition();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return j;
        }
    }

    public long getDuration() {
        long j = 0;
        try {
            return MediaManager.getDuration();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return j;
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        cancelProgressTimer();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        onEvent(5);
        startProgressTimer();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        if (this.currentState == 3 || this.currentState == 5) {
            MediaManager.seekTo((((long) seekBar.getProgress()) * getDuration()) / 100);
            seekEvent((int) ((((long) seekBar.getProgress()) * getDuration()) / 100));
        }
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            this.currentTimeTextView.setText(VideoUtils.stringForTime((getDuration() * ((long) i)) / 100));
        }
    }

    public void startWindowFullscreen() {
        ViewGroup viewGroup = (ViewGroup) VideoUtils.scanForActivity(getContext()).findViewById(16908290);
        View findViewById = viewGroup.findViewById(R.id.pub_react_video_fullscreen_id);
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        this.textureViewContainer.removeView(MediaManager.textureView);
        try {
            VideoPlayer videoPlayer = (VideoPlayer) getClass().getConstructor(new Class[]{Context.class}).newInstance(new Object[]{getContext()});
            videoPlayer.setId(R.id.pub_react_video_fullscreen_id);
            viewGroup.addView(videoPlayer, new LayoutParams(-1, -1));
            videoPlayer.setSystemUiVisibility(4102);
            videoPlayer.setUp(this.dataSourceObjects, 2);
            videoPlayer.setState(this.currentState);
            videoPlayer.addTextureView();
            VideoPlayerManager.setSecondFloor(videoPlayer);
            VideoUtils.setRequestedOrientation(getContext(), FULLSCREEN_ORIENTATION);
            onStateNormal();
            videoPlayer.progressBar.setSecondaryProgress(this.progressBar.getSecondaryProgress());
            videoPlayer.startProgressTimer();
            CLICK_QUIT_FULLSCREEN_TIME = System.currentTimeMillis();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void startWindowTiny() {
        onEvent(9);
        if (this.currentState != 0 && this.currentState != 7 && this.currentState != 6) {
            ViewGroup viewGroup = (ViewGroup) VideoUtils.scanForActivity(getContext()).findViewById(16908290);
            View findViewById = viewGroup.findViewById(R.id.pub_react_video_tiny_id);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            this.textureViewContainer.removeView(MediaManager.textureView);
            try {
                VideoPlayer videoPlayer = (VideoPlayer) getClass().getConstructor(new Class[]{Context.class}).newInstance(new Object[]{getContext()});
                videoPlayer.setId(R.id.pub_react_video_tiny_id);
                LayoutParams layoutParams = new LayoutParams(HttpStatus.SC_BAD_REQUEST, HttpStatus.SC_BAD_REQUEST);
                layoutParams.gravity = 85;
                viewGroup.addView(videoPlayer, layoutParams);
                videoPlayer.setUp(this.dataSourceObjects, 3);
                videoPlayer.setState(this.currentState);
                videoPlayer.addTextureView();
                VideoPlayerManager.setSecondFloor(videoPlayer);
                onStateNormal();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public boolean isCurrentPlay() {
        return isCurrentVideoPlayer() && VideoUtils.dataSourceObjectsContainsUri(this.dataSourceObjects, MediaManager.getCurrentDataSource());
    }

    public boolean isCurrentVideoPlayer() {
        return VideoPlayerManager.getCurrentVP() != null && VideoPlayerManager.getCurrentVP() == this;
    }

    public void playOnThisVideoPlayer() {
        this.currentState = VideoPlayerManager.getSecondFloor().currentState;
        this.dataSourceObjects.setDefaultUrlMapIndex(VideoPlayerManager.getSecondFloor().dataSourceObjects.getDefaultUrlMapIndex());
        clearFloatScreen();
        setState(this.currentState);
        addTextureView();
        scaleVideoSize(this.mediaInterface.getVideoWidth(), this.mediaInterface.getVideoHeight());
    }

    public void autoFullscreen(float f) {
        if (isCurrentPlay() && this.currentState == 3 && this.currentScreen != 2 && this.currentScreen != 3) {
            if (f > 0.0f) {
                VideoUtils.setRequestedOrientation(getContext(), 0);
            } else {
                VideoUtils.setRequestedOrientation(getContext(), 8);
            }
            onEvent(7);
            startWindowFullscreen();
        }
    }

    public void autoQuitFullscreen() {
        if (System.currentTimeMillis() - lastAutoFullscreenTime > 2000 && isCurrentPlay() && this.currentState == 3 && this.currentScreen == 2) {
            lastAutoFullscreenTime = System.currentTimeMillis();
            backPress();
        }
    }

    public void onEvent(int i) {
        if (USER_EVENT != null && isCurrentPlay() && this.dataSourceObjects != null) {
            USER_EVENT.onEvent(i, VideoUtils.getCurrentFromDataSource(this.dataSourceObjects), this.currentScreen);
        }
    }

    public static void setMediaInterface(MediaInterface mediaInterface) {
        MediaManager.instance().mediaInterface = mediaInterface;
    }

    public void onSeekComplete() {
    }

    public void showWNoWifiWarning() {
    }

    public void showProgressDialog(float f, String str, long j, String str2, long j2) {
    }

    public void dismissProgressDialog() {
    }

    public void showVolumeDialog(float f, int i) {
    }

    public void dismissVolumeDialog() {
    }

    public void showBrightnessDialog(int i) {
    }

    public void dismissBrightnessDialog() {
    }

    /* Access modifiers changed, original: protected */
    public void handleProgress(int i, long j, long j2) {
    }

    public void setResizeModeModifier(ScalableType scalableType) {
        this.mResizeMode = scalableType;
        if (MediaManager.textureView != null) {
            MediaManager.textureView.mResizeMode = scalableType;
        }
        if (this.mediaInterface.isPrepare()) {
            setScalableType(scalableType);
        }
    }

    private void setScalableType(ScalableType scalableType) {
        this.mScalableType = scalableType;
        scaleVideoSize(this.mediaInterface.getVideoWidth(), this.mediaInterface.getVideoHeight());
    }

    @TargetApi(14)
    private void scaleVideoSize(int i, int i2) {
        if (i != 0 && i2 != 0) {
            Matrix scaleMatrix = new ScaleManager(new Size(getWidth(), getHeight()), new Size(i, i2)).getScaleMatrix(this.mScalableType);
            if (scaleMatrix != null) {
                MediaManager.textureView.setTransform(scaleMatrix);
            }
            MediaManager.textureView.invalidate();
            requestLayout();
        }
    }

    public void setRepeatModifier(boolean z) {
        this.mRepeat = z;
        if (this.mediaInterface.isPrepare()) {
            this.mediaInterface.setLooping(z);
        }
    }

    public void setPausedModifier(boolean z) {
        this.mPaused = z;
        if (!this.mediaInterface.isPrepare()) {
            return;
        }
        if (this.mPaused) {
            if (this.mediaInterface.isPlaying()) {
                this.mediaInterface.pause();
                setState(5);
            }
        } else if (!this.mediaInterface.isPlaying()) {
            this.mediaInterface.start();
            setState(3);
        }
    }

    public void setMutedModifier(boolean z) {
        this.mMuted = z;
        if (!this.mediaInterface.isPrepare()) {
            return;
        }
        if (this.mMuted) {
            this.mediaInterface.setVolume(0.0f, 0.0f);
        } else {
            this.mediaInterface.setVolume(this.mVolume, this.mVolume);
        }
    }

    public void setVolumeModifier(float f) {
        this.mVolume = f;
        if (this.mediaInterface.isPrepare()) {
            setMutedModifier(this.mMuted);
        }
    }
}
