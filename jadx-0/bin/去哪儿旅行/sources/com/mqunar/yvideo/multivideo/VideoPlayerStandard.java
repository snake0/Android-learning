package com.mqunar.yvideo.multivideo;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.common.executors.CallerThreadExecutor;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.BaseDataSubscriber;
import com.facebook.datasource.DataSource;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.image.CloseableBitmap;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.mqunar.tools.DateTimeUtils;
import com.mqunar.yvideo.R;
import com.mqunar.yvideo.ffmpeg.FFMpegCmdHelper;
import com.mqunar.yvideo.utils.FileUtils;
import com.mqunar.yvideo.utils.StringUtils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

public class VideoPlayerStandard extends VideoPlayer {
    protected static Timer DISMISS_CONTROL_VIEW_TIMER;
    public static int LAST_GET_BATTERYLEVEL_PERCENT = 70;
    public static long LAST_GET_BATTERYLEVEL_TIME = 0;
    public ImageView backButton;
    private BroadcastReceiver battertReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                VideoPlayerStandard.LAST_GET_BATTERYLEVEL_PERCENT = (intent.getIntExtra("level", 0) * 100) / intent.getIntExtra("scale", 100);
                VideoPlayerStandard.this.setBatteryLevel();
                VideoPlayerStandard.this.getContext().unregisterReceiver(VideoPlayerStandard.this.battertReceiver);
            }
        }
    };
    public ImageView batteryLevel;
    public LinearLayout batteryTimeLayout;
    public ProgressBar bottomProgressBar;
    public TextView clarity;
    public PopupWindow clarityPopWindow;
    public ProgressBar loadingProgressBar;
    protected Dialog mBrightnessDialog;
    protected boolean mCloseBtnIsShow = true;
    protected ProgressBar mDialogBrightnessProgressBar;
    protected TextView mDialogBrightnessTextView;
    protected ImageView mDialogIcon;
    protected ProgressBar mDialogProgressBar;
    protected TextView mDialogSeekTime;
    protected TextView mDialogTotalTime;
    protected ImageView mDialogVolumeImageView;
    protected ProgressBar mDialogVolumeProgressBar;
    protected TextView mDialogVolumeTextView;
    protected DismissControlViewTimerTask mDismissControlViewTimerTask;
    protected ImageView mMuteIV;
    protected LinearLayout mMuteLayout;
    protected RadioButton mMuteRB;
    protected TextView mNoWifiBtn;
    protected LinearLayout mNoWifiLayout;
    protected Dialog mProgressDialog;
    public TextView mRetryBtn;
    public LinearLayout mRetryLayout;
    protected Dialog mVolumeDialog;
    public TextView replayTextView;
    public ImageView thumbImageView;
    public ImageView tinyBackImageView;
    public TextView titleTextView;
    public TextView videoCurrentTime;

    public class DismissControlViewTimerTask extends TimerTask {
        public void run() {
            VideoPlayerStandard.this.dismissControlView();
        }
    }

    public VideoPlayerStandard(Context context) {
        super(context);
    }

    public VideoPlayerStandard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void init(Context context) {
        super.init(context);
        this.batteryTimeLayout = (LinearLayout) findViewById(R.id.battery_time_layout);
        this.bottomProgressBar = (ProgressBar) findViewById(R.id.bottom_progress);
        this.titleTextView = (TextView) findViewById(R.id.title);
        this.backButton = (ImageView) findViewById(R.id.back);
        this.thumbImageView = (ImageView) findViewById(R.id.thumb);
        this.loadingProgressBar = (ProgressBar) findViewById(R.id.loading);
        this.tinyBackImageView = (ImageView) findViewById(R.id.back_tiny);
        this.batteryLevel = (ImageView) findViewById(R.id.battery_level);
        this.videoCurrentTime = (TextView) findViewById(R.id.video_current_time);
        this.replayTextView = (TextView) findViewById(R.id.replay_text);
        this.clarity = (TextView) findViewById(R.id.clarity);
        this.mRetryBtn = (TextView) findViewById(R.id.retry_btn);
        this.mRetryLayout = (LinearLayout) findViewById(R.id.retry_layout);
        this.mNoWifiLayout = (LinearLayout) findViewById(R.id.no_wifi_layout);
        this.mNoWifiBtn = (TextView) findViewById(R.id.continue_btn);
        this.mMuteLayout = (LinearLayout) findViewById(R.id.mute_layout);
        this.mMuteIV = (ImageView) findViewById(R.id.mute_iv);
        this.mMuteRB = (RadioButton) findViewById(R.id.mute_rb);
        this.backButton.setVisibility(this.mCloseBtnIsShow ? 0 : 8);
        this.thumbImageView.setOnClickListener(this);
        this.backButton.setOnClickListener(this);
        this.tinyBackImageView.setOnClickListener(this);
        this.clarity.setOnClickListener(this);
        this.mRetryBtn.setOnClickListener(this);
        this.mNoWifiBtn.setOnClickListener(this);
        this.mMuteLayout.setOnClickListener(this);
    }

    public void setUp(DataSourceBean dataSourceBean, int i) {
        loadImg(dataSourceBean);
        super.setUp(dataSourceBean, i);
        if (!TextUtils.isEmpty(dataSourceBean.getTitle())) {
            this.titleTextView.setText(dataSourceBean.getTitle());
        }
        if (this.currentScreen == 2) {
            this.fullscreenButton.setImageResource(R.drawable.video_shrink);
            this.backButton.setVisibility(0);
            this.tinyBackImageView.setVisibility(4);
            this.batteryTimeLayout.setVisibility(8);
            this.mMuteLayout.setVisibility(0);
            if (dataSourceBean.getUrlMap().size() == 1) {
                this.clarity.setVisibility(8);
            } else {
                this.clarity.setText(VideoUtils.getKeyFromDataSource(dataSourceBean));
                this.clarity.setVisibility(0);
            }
            changeStartButtonSize((int) getResources().getDimension(R.dimen.pub_react_video_start_button_w_h_fullscreen));
        } else if (this.currentScreen == 0 || this.currentScreen == 1) {
            int i2;
            this.fullscreenButton.setImageResource(R.drawable.video_enlarge);
            this.tinyBackImageView.setVisibility(4);
            changeStartButtonSize((int) getResources().getDimension(R.dimen.pub_react_video_start_button_w_h_normal));
            this.batteryTimeLayout.setVisibility(8);
            this.clarity.setVisibility(8);
            ImageView imageView = this.backButton;
            if (this.mCloseBtnIsShow) {
                i2 = 0;
            } else {
                i2 = 8;
            }
            imageView.setVisibility(i2);
            this.mMuteLayout.setVisibility(0);
        } else if (this.currentScreen == 3) {
            this.tinyBackImageView.setVisibility(0);
            setAllControlsVisiblity(4, 4, 4, 4, 4, 4, 4);
            this.batteryTimeLayout.setVisibility(8);
            this.clarity.setVisibility(8);
        }
        setSystemTimeAndBattery();
        if (this.tmp_test_back) {
            this.tmp_test_back = false;
            VideoPlayerManager.setFirstFloor(this);
            VideoPlayer.backPress();
        }
    }

    public void setUp(DataSourceBean dataSourceBean) {
        setUp(dataSourceBean, dataSourceBean.getInitScreen());
    }

    private void loadImg(final DataSourceBean dataSourceBean) {
        final String str = getContext().getCacheDir().getAbsolutePath() + File.separator + StringUtils.md5((String) dataSourceBean.getUrlMap().get("URL_KEY_DEFAULT")) + ".jpg";
        if (FileUtils.fileIsExists(str)) {
            downloadBitmap("file://" + str);
        } else {
            new Thread(new Runnable() {
                public void run() {
                    FFMpegCmdHelper fFMpegCmdHelper = new FFMpegCmdHelper();
                    fFMpegCmdHelper.addInputPath((String) dataSourceBean.getUrlMap().get("URL_KEY_DEFAULT"));
                    fFMpegCmdHelper.addOutputPath(str);
                    fFMpegCmdHelper.addParam("-y");
                    fFMpegCmdHelper.addParam("-f", "image2");
                    fFMpegCmdHelper.addParam("-t", "0.001");
                    if (fFMpegCmdHelper.execute()) {
                        VideoPlayerStandard.this.post(new Runnable() {
                            public void run() {
                                VideoPlayerStandard.this.downloadBitmap("file://" + str);
                            }
                        });
                    }
                }
            }).start();
        }
    }

    private void downloadBitmap(String str) {
        Fresco.getImagePipeline().fetchDecodedImage(ImageRequest.fromUri(str), null).subscribe(new BaseDataSubscriber<CloseableReference<CloseableImage>>() {
            /* Access modifiers changed, original: protected */
            public void onNewResultImpl(DataSource<CloseableReference<CloseableImage>> dataSource) {
                CloseableReference closeableReference = (CloseableReference) dataSource.getResult();
                if (closeableReference != null) {
                    try {
                        CloseableImage closeableImage = (CloseableImage) closeableReference.get();
                        if (closeableImage instanceof CloseableBitmap) {
                            final Bitmap underlyingBitmap = ((CloseableBitmap) closeableImage).getUnderlyingBitmap();
                            VideoPlayerStandard.this.thumbImageView.post(new Runnable() {
                                public void run() {
                                    VideoPlayerStandard.this.thumbImageView.setImageBitmap(underlyingBitmap);
                                }
                            });
                            return;
                        }
                        closeableReference.close();
                    } finally {
                        closeableReference.close();
                    }
                }
            }

            /* Access modifiers changed, original: protected */
            public void onFailureImpl(DataSource<CloseableReference<CloseableImage>> dataSource) {
            }
        }, CallerThreadExecutor.getInstance());
    }

    public void changeStartButtonSize(int i) {
        LayoutParams layoutParams = this.startButton.getLayoutParams();
        layoutParams.height = i;
        layoutParams.width = i;
        layoutParams = this.loadingProgressBar.getLayoutParams();
        layoutParams.height = i;
        layoutParams.width = i;
    }

    public int getLayoutId() {
        return R.layout.layout_video_standard;
    }

    public void onStateNormal() {
        super.onStateNormal();
        changeUiToNormal();
    }

    public void onStatePreparing() {
        super.onStatePreparing();
        changeUiToPreparing();
    }

    public void onStatePreparingChangingUrl(int i, long j) {
        super.onStatePreparingChangingUrl(i, j);
        this.loadingProgressBar.setVisibility(0);
        this.startButton.setVisibility(4);
    }

    public void onStatePlaying() {
        super.onStatePlaying();
        changeUiToPlayingClear();
    }

    public void onStatePause() {
        super.onStatePause();
        changeUiToPauseShow();
        cancelDismissControlViewTimer();
    }

    public void onStateError() {
        super.onStateError();
        changeUiToError();
    }

    public void onStateAutoComplete() {
        super.onStateAutoComplete();
        changeUiToComplete();
        cancelDismissControlViewTimer();
        this.bottomProgressBar.setProgress(100);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int id = view.getId();
        if (id != R.id.surface_container) {
            if (id == R.id.bottom_seek_progress) {
                switch (motionEvent.getAction()) {
                    case 0:
                        cancelDismissControlViewTimer();
                        break;
                    case 1:
                        startDismissControlViewTimer();
                        break;
                }
            }
        }
        switch (motionEvent.getAction()) {
            case 1:
                startDismissControlViewTimer();
                if (this.mChangePosition) {
                    long duration = getDuration();
                    long j = this.mSeekTimePosition * 100;
                    if (duration == 0) {
                        duration = 1;
                    }
                    this.bottomProgressBar.setProgress((int) (j / duration));
                }
                if (!(this.mChangePosition || this.mChangeVolume)) {
                    onEvent(102);
                    onClickUiToggle();
                    break;
                }
        }
        return super.onTouch(view, motionEvent);
    }

    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id == R.id.thumb) {
            if (this.dataSourceObjects == null || VideoUtils.getCurrentFromDataSource(this.dataSourceObjects) == null) {
                Toast.makeText(getContext(), getResources().getString(R.string.pub_react_video_no_url), 0).show();
            } else if (this.currentState == 0) {
                if (VideoUtils.getCurrentFromDataSource(this.dataSourceObjects).toString().startsWith("file") || VideoUtils.getCurrentFromDataSource(this.dataSourceObjects).toString().startsWith("/") || VideoUtils.isWifiConnected(getContext()) || WIFI_TIP_DIALOG_SHOWED) {
                    onEvent(101);
                    startVideo();
                    return;
                }
                showWNoWifiWarning();
            } else if (this.currentState == 6) {
                onClickUiToggle();
            }
        } else if (id == R.id.surface_container) {
            startDismissControlViewTimer();
        } else if (id == R.id.back) {
            VideoPlayer.backPress();
            if (this.currentScreen == 0) {
                clickCloseOnNormalScreen();
            }
        } else if (id == R.id.back_tiny) {
            if (VideoPlayerManager.getFirstFloor().currentScreen == 1) {
                VideoPlayer.quitFullscreenOrTinyWindow();
            } else {
                VideoPlayer.backPress();
            }
        } else if (id == R.id.clarity) {
            final LinearLayout linearLayout = (LinearLayout) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.layout_video_clarity, null);
            AnonymousClass4 anonymousClass4 = new OnClickListener() {
                public void onClick(View view) {
                    VideoPlayerStandard.this.onStatePreparingChangingUrl(((Integer) view.getTag()).intValue(), VideoPlayerStandard.this.getCurrentPositionWhenPlaying());
                    VideoPlayerStandard.this.clarity.setText(VideoUtils.getKeyFromDataSource(VideoPlayerStandard.this.dataSourceObjects));
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= linearLayout.getChildCount()) {
                            break;
                        }
                        if (i2 == VideoPlayerStandard.this.dataSourceObjects.getDefaultUrlMapIndex()) {
                            ((TextView) linearLayout.getChildAt(i2)).setTextColor(Color.parseColor("#fff85959"));
                        } else {
                            ((TextView) linearLayout.getChildAt(i2)).setTextColor(Color.parseColor("#ffffff"));
                        }
                        i = i2 + 1;
                    }
                    if (VideoPlayerStandard.this.clarityPopWindow != null) {
                        VideoPlayerStandard.this.clarityPopWindow.dismiss();
                    }
                }
            };
            for (int i = 0; i < this.dataSourceObjects.getUrlMap().size(); i++) {
                TextView textView = (TextView) View.inflate(getContext(), R.layout.layout_video_clarity_item, null);
                textView.setText(VideoUtils.getKeyFromDataSource(this.dataSourceObjects));
                textView.setTag(Integer.valueOf(i));
                linearLayout.addView(textView, i);
                textView.setOnClickListener(anonymousClass4);
                if (i == this.dataSourceObjects.getDefaultUrlMapIndex()) {
                    textView.setTextColor(Color.parseColor("#fff85959"));
                }
            }
            this.clarityPopWindow = new PopupWindow(linearLayout, -2, -2, true);
            this.clarityPopWindow.setContentView(linearLayout);
            this.clarityPopWindow.showAsDropDown(this.clarity);
            linearLayout.measure(0, 0);
            this.clarityPopWindow.update(this.clarity, -(this.clarity.getMeasuredWidth() / 3), -(this.clarity.getMeasuredHeight() / 3), Math.round((float) (linearLayout.getMeasuredWidth() * 2)), linearLayout.getMeasuredHeight());
        } else if (id == R.id.retry_btn) {
            if (this.dataSourceObjects == null || VideoUtils.getCurrentFromDataSource(this.dataSourceObjects) == null) {
                Toast.makeText(getContext(), getResources().getString(R.string.pub_react_video_no_url), 0).show();
            } else if (VideoUtils.getCurrentFromDataSource(this.dataSourceObjects).toString().startsWith("file") || VideoUtils.getCurrentFromDataSource(this.dataSourceObjects).toString().startsWith("/") || VideoUtils.isWifiConnected(getContext()) || WIFI_TIP_DIALOG_SHOWED) {
                initTextureView();
                addTextureView();
                MediaManager.setDataSource(this.dataSourceObjects);
                MediaManager.setCurrentDataSource(VideoUtils.getCurrentFromDataSource(this.dataSourceObjects));
                onStatePreparing();
                onEvent(1);
            } else {
                showWNoWifiWarning();
            }
        } else if (id == R.id.continue_btn) {
            onEvent(103);
            this.mNoWifiLayout.setVisibility(8);
            startVideo();
            WIFI_TIP_DIALOG_SHOWED = true;
        } else if (id == R.id.mute_layout) {
            handleMute();
        }
    }

    /* Access modifiers changed, original: protected */
    public void clickCloseOnNormalScreen() {
    }

    private void handleMute() {
        if (this.mMuteRB.isChecked()) {
            this.mMuteRB.setChecked(false);
            this.mMuteRB.setText("打开声音");
            this.mMuteIV.setBackgroundResource(R.drawable.video_close_volume);
            this.mVolume = 0.0f;
        } else {
            this.mMuteRB.setChecked(true);
            this.mMuteRB.setText("关闭声音");
            this.mMuteIV.setBackgroundResource(R.drawable.video_add_volume);
            this.mVolume = 1.0f;
        }
        MediaManager.instance().mediaInterface.setVolume(this.mVolume, this.mVolume);
    }

    public void showWNoWifiWarning() {
        super.showWNoWifiWarning();
        this.mNoWifiLayout.setVisibility(0);
        this.startButton.setVisibility(4);
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        super.onStartTrackingTouch(seekBar);
        cancelDismissControlViewTimer();
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        if (this.currentState == 3) {
            dismissControlView();
        } else {
            startDismissControlViewTimer();
        }
    }

    public void onClickUiToggle() {
        if (this.bottomContainer.getVisibility() != 0) {
            setSystemTimeAndBattery();
            this.clarity.setText(VideoUtils.getKeyFromDataSource(this.dataSourceObjects));
        }
        if (this.currentState == 1) {
            changeUiToPreparing();
            if (this.bottomContainer.getVisibility() != 0) {
                setSystemTimeAndBattery();
            }
        } else if (this.currentState == 3) {
            if (this.bottomContainer.getVisibility() == 0) {
                changeUiToPlayingClear();
            } else {
                changeUiToPlayingShow();
            }
        } else if (this.currentState != 5) {
        } else {
            if (this.bottomContainer.getVisibility() == 0) {
                changeUiToPauseClear();
            } else {
                changeUiToPauseShow();
            }
        }
    }

    public void setSystemTimeAndBattery() {
        this.videoCurrentTime.setText(new SimpleDateFormat(DateTimeUtils.HH_mm).format(new Date()));
        if (System.currentTimeMillis() - LAST_GET_BATTERYLEVEL_TIME > 30000) {
            LAST_GET_BATTERYLEVEL_TIME = System.currentTimeMillis();
            getContext().registerReceiver(this.battertReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            return;
        }
        setBatteryLevel();
    }

    public void setBatteryLevel() {
        int i = LAST_GET_BATTERYLEVEL_PERCENT;
        if (i < 15) {
            this.batteryLevel.setBackgroundResource(R.drawable.video_battery_level_10);
        } else if (i >= 15 && i < 40) {
            this.batteryLevel.setBackgroundResource(R.drawable.video_battery_level_30);
        } else if (i >= 40 && i < 60) {
            this.batteryLevel.setBackgroundResource(R.drawable.video_battery_level_50);
        } else if (i >= 60 && i < 80) {
            this.batteryLevel.setBackgroundResource(R.drawable.video_battery_level_70);
        } else if (i >= 80 && i < 95) {
            this.batteryLevel.setBackgroundResource(R.drawable.video_battery_level_90);
        } else if (i >= 95 && i <= 100) {
            this.batteryLevel.setBackgroundResource(R.drawable.video_battery_level_100);
        }
    }

    public void onCLickUiToggleToClear() {
        if (this.currentState == 1) {
            if (this.bottomContainer.getVisibility() == 0) {
                changeUiToPreparing();
            }
        } else if (this.currentState == 3) {
            if (this.bottomContainer.getVisibility() == 0) {
                changeUiToPlayingClear();
            }
        } else if (this.currentState == 5) {
            if (this.bottomContainer.getVisibility() == 0) {
                changeUiToPauseClear();
            }
        } else if (this.currentState == 6 && this.bottomContainer.getVisibility() == 0) {
            changeUiToComplete();
        }
    }

    public void setProgressAndText(int i, long j, long j2) {
        super.setProgressAndText(i, j, j2);
        if (i != 0) {
            this.bottomProgressBar.setProgress(i);
        }
    }

    public void setBufferProgress(int i) {
        super.setBufferProgress(i);
        if (i != 0) {
            this.bottomProgressBar.setSecondaryProgress(i);
        }
    }

    public void resetProgressAndTime() {
        super.resetProgressAndTime();
        this.bottomProgressBar.setProgress(0);
        this.bottomProgressBar.setSecondaryProgress(0);
    }

    public void changeUiToNormal() {
        switch (this.currentScreen) {
            case 0:
            case 1:
                setAllControlsVisiblity(0, 4, 0, 4, 0, 4, 4);
                updateStartImage();
                return;
            case 2:
                setAllControlsVisiblity(0, 4, 0, 4, 0, 4, 4);
                updateStartImage();
                return;
            default:
                return;
        }
    }

    public void changeUiToPreparing() {
        switch (this.currentScreen) {
            case 0:
            case 1:
                setAllControlsVisiblity(4, 4, 4, 0, 0, 4, 4);
                updateStartImage();
                return;
            case 2:
                setAllControlsVisiblity(4, 4, 4, 0, 0, 4, 4);
                updateStartImage();
                return;
            default:
                return;
        }
    }

    public void changeUiToPlayingShow() {
        switch (this.currentScreen) {
            case 0:
            case 1:
                setAllControlsVisiblity(0, 0, 0, 4, 4, 4, 4);
                updateStartImage();
                return;
            case 2:
                setAllControlsVisiblity(0, 0, 0, 4, 4, 4, 4);
                updateStartImage();
                return;
            default:
                return;
        }
    }

    public void changeUiToPlayingClear() {
        switch (this.currentScreen) {
            case 0:
            case 1:
                setAllControlsVisiblity(4, 4, 4, 4, 4, 0, 4);
                return;
            case 2:
                setAllControlsVisiblity(4, 4, 4, 4, 4, 0, 4);
                return;
            default:
                return;
        }
    }

    public void changeUiToPauseShow() {
        switch (this.currentScreen) {
            case 0:
            case 1:
                setAllControlsVisiblity(0, 0, 0, 4, 4, 4, 4);
                updateStartImage();
                return;
            case 2:
                setAllControlsVisiblity(0, 0, 0, 4, 4, 4, 4);
                updateStartImage();
                return;
            default:
                return;
        }
    }

    public void changeUiToPauseClear() {
        switch (this.currentScreen) {
            case 0:
            case 1:
                setAllControlsVisiblity(4, 4, 4, 4, 4, 0, 4);
                return;
            case 2:
                setAllControlsVisiblity(4, 4, 4, 4, 4, 0, 4);
                return;
            default:
                return;
        }
    }

    public void changeUiToComplete() {
        switch (this.currentScreen) {
            case 0:
            case 1:
                setAllControlsVisiblity(0, 4, 0, 4, 0, 4, 4);
                updateStartImage();
                return;
            case 2:
                setAllControlsVisiblity(0, 4, 0, 4, 0, 4, 4);
                updateStartImage();
                return;
            default:
                return;
        }
    }

    public void changeUiToError() {
        switch (this.currentScreen) {
            case 0:
            case 1:
                setAllControlsVisiblity(4, 4, 0, 4, 4, 4, 0);
                updateStartImage();
                return;
            case 2:
                setAllControlsVisiblity(0, 4, 0, 4, 4, 4, 0);
                updateStartImage();
                return;
            default:
                return;
        }
    }

    private void setAllControlsVisiblity(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.topContainer.setVisibility(i);
        this.bottomContainer.setVisibility(i2);
        this.startButton.setVisibility(i3);
        this.loadingProgressBar.setVisibility(i4);
        this.thumbImageView.setVisibility(i5);
        this.bottomProgressBar.setVisibility(i6);
        this.mRetryLayout.setVisibility(i7);
    }

    public void updateStartImage() {
        if (this.currentState == 3) {
            this.startButton.setVisibility(0);
            this.startButton.setImageResource(R.drawable.video_click_pause_selector);
            this.replayTextView.setVisibility(4);
        } else if (this.currentState == 7) {
            this.startButton.setVisibility(4);
            this.replayTextView.setVisibility(4);
        } else if (this.currentState == 6) {
            this.startButton.setVisibility(0);
            this.startButton.setImageResource(R.drawable.video_click_replay_selector);
            this.replayTextView.setVisibility(0);
        } else {
            this.startButton.setImageResource(R.drawable.video_click_play_selector);
            this.replayTextView.setVisibility(4);
        }
    }

    public void showProgressDialog(float f, String str, long j, String str2, long j2) {
        super.showProgressDialog(f, str, j, str2, j2);
        if (this.mProgressDialog == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_video_dialog_progress, null);
            this.mDialogProgressBar = (ProgressBar) inflate.findViewById(R.id.duration_progressbar);
            this.mDialogSeekTime = (TextView) inflate.findViewById(R.id.tv_current);
            this.mDialogTotalTime = (TextView) inflate.findViewById(R.id.tv_duration);
            this.mDialogIcon = (ImageView) inflate.findViewById(R.id.duration_image_tip);
            this.mProgressDialog = createDialogWithView(inflate);
        }
        if (!this.mProgressDialog.isShowing()) {
            this.mProgressDialog.show();
        }
        this.mDialogSeekTime.setText(str);
        this.mDialogTotalTime.setText(" / " + str2);
        this.mDialogProgressBar.setProgress(j2 <= 0 ? 0 : (int) ((100 * j) / j2));
        if (f > 0.0f) {
            this.mDialogIcon.setBackgroundResource(R.drawable.video_forward_icon);
        } else {
            this.mDialogIcon.setBackgroundResource(R.drawable.video_backward_icon);
        }
        onCLickUiToggleToClear();
    }

    public void dismissProgressDialog() {
        super.dismissProgressDialog();
        if (this.mProgressDialog != null) {
            this.mProgressDialog.dismiss();
        }
    }

    public void showVolumeDialog(float f, int i) {
        super.showVolumeDialog(f, i);
        if (this.mVolumeDialog == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_video_dialog_volume, null);
            this.mDialogVolumeImageView = (ImageView) inflate.findViewById(R.id.volume_image_tip);
            this.mDialogVolumeTextView = (TextView) inflate.findViewById(R.id.tv_volume);
            this.mDialogVolumeProgressBar = (ProgressBar) inflate.findViewById(R.id.volume_progressbar);
            this.mVolumeDialog = createDialogWithView(inflate);
        }
        if (!this.mVolumeDialog.isShowing()) {
            this.mVolumeDialog.show();
        }
        if (i <= 0) {
            this.mDialogVolumeImageView.setBackgroundResource(R.drawable.video_close_volume);
        } else {
            this.mDialogVolumeImageView.setBackgroundResource(R.drawable.video_add_volume);
        }
        if (i > 100) {
            i = 100;
        } else if (i < 0) {
            i = 0;
        }
        this.mDialogVolumeTextView.setText(i + "%");
        this.mDialogVolumeProgressBar.setProgress(i);
        onCLickUiToggleToClear();
    }

    public void dismissVolumeDialog() {
        super.dismissVolumeDialog();
        if (this.mVolumeDialog != null) {
            this.mVolumeDialog.dismiss();
        }
    }

    public void showBrightnessDialog(int i) {
        super.showBrightnessDialog(i);
        if (this.mBrightnessDialog == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_video_dialog_brightness, null);
            this.mDialogBrightnessTextView = (TextView) inflate.findViewById(R.id.tv_brightness);
            this.mDialogBrightnessProgressBar = (ProgressBar) inflate.findViewById(R.id.brightness_progressbar);
            this.mBrightnessDialog = createDialogWithView(inflate);
        }
        if (!this.mBrightnessDialog.isShowing()) {
            this.mBrightnessDialog.show();
        }
        if (i > 100) {
            i = 100;
        } else if (i < 0) {
            i = 0;
        }
        this.mDialogBrightnessTextView.setText(i + "%");
        this.mDialogBrightnessProgressBar.setProgress(i);
        onCLickUiToggleToClear();
    }

    public void dismissBrightnessDialog() {
        super.dismissBrightnessDialog();
        if (this.mBrightnessDialog != null) {
            this.mBrightnessDialog.dismiss();
        }
    }

    public Dialog createDialogWithView(View view) {
        Dialog dialog = new Dialog(getContext(), R.style.pub_react_video_style_dialog_progress);
        dialog.setContentView(view);
        Window window = dialog.getWindow();
        window.addFlags(8);
        window.addFlags(32);
        window.addFlags(16);
        window.setLayout(-2, -2);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 17;
        window.setAttributes(attributes);
        return dialog;
    }

    public void startDismissControlViewTimer() {
        cancelDismissControlViewTimer();
        DISMISS_CONTROL_VIEW_TIMER = new Timer();
        this.mDismissControlViewTimerTask = new DismissControlViewTimerTask();
        DISMISS_CONTROL_VIEW_TIMER.schedule(this.mDismissControlViewTimerTask, 2500);
    }

    public void cancelDismissControlViewTimer() {
        if (DISMISS_CONTROL_VIEW_TIMER != null) {
            DISMISS_CONTROL_VIEW_TIMER.cancel();
        }
        if (this.mDismissControlViewTimerTask != null) {
            this.mDismissControlViewTimerTask.cancel();
        }
    }

    public void onAutoCompletion() {
        super.onAutoCompletion();
        cancelDismissControlViewTimer();
    }

    public void onCompletion() {
        super.onCompletion();
        cancelDismissControlViewTimer();
        if (this.clarityPopWindow != null) {
            this.clarityPopWindow.dismiss();
        }
    }

    public void dismissControlView() {
        if (this.currentState != 0 && this.currentState != 7 && this.currentState != 6) {
            post(new Runnable() {
                public void run() {
                    VideoPlayerStandard.this.bottomContainer.setVisibility(4);
                    VideoPlayerStandard.this.topContainer.setVisibility(4);
                    VideoPlayerStandard.this.startButton.setVisibility(4);
                    if (VideoPlayerStandard.this.clarityPopWindow != null) {
                        VideoPlayerStandard.this.clarityPopWindow.dismiss();
                    }
                    if (VideoPlayerStandard.this.currentScreen != 3) {
                        VideoPlayerStandard.this.bottomProgressBar.setVisibility(0);
                    }
                }
            });
        }
    }

    public void setCloseBtnIsShow(boolean z) {
        this.mCloseBtnIsShow = z;
        if (this.backButton != null) {
            this.backButton.setVisibility(z ? 0 : 8);
        }
    }
}
