package com.mqunar.yvideo.multivideo;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.TextureView.SurfaceTextureListener;

@TargetApi(14)
public class MediaManager implements SurfaceTextureListener {
    public static final int HANDLER_PREPARE = 0;
    public static final int HANDLER_RELEASE = 2;
    public static final String TAG = "VideoPlayer";
    private static MediaManager mediaManager;
    public static SurfaceTexture savedSurfaceTexture;
    public static Surface surface;
    public static ResizeTextureView textureView;
    public int currentVideoHeight = 0;
    public int currentVideoWidth = 0;
    public MediaHandler mMediaHandler;
    public HandlerThread mMediaHandlerThread = new HandlerThread("VideoPlayer");
    public Handler mainThreadHandler;
    public MediaInterface mediaInterface;
    public int positionInList = -1;

    public class MediaHandler extends Handler {
        public MediaHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    MediaManager.this.currentVideoWidth = 0;
                    MediaManager.this.currentVideoHeight = 0;
                    MediaManager.this.mediaInterface.prepare();
                    if (MediaManager.savedSurfaceTexture != null) {
                        if (MediaManager.surface != null) {
                            MediaManager.surface.release();
                        }
                        MediaManager.surface = new Surface(MediaManager.savedSurfaceTexture);
                        MediaManager.this.mediaInterface.setSurface(MediaManager.surface);
                        return;
                    }
                    return;
                case 2:
                    MediaManager.this.mediaInterface.release();
                    return;
                default:
                    return;
            }
        }
    }

    class SingletonHolder {
        private static final MediaManager instance = new MediaManager();

        private SingletonHolder() {
        }
    }

    public MediaManager() {
        this.mMediaHandlerThread.start();
        this.mMediaHandler = new MediaHandler(this.mMediaHandlerThread.getLooper());
        this.mainThreadHandler = new Handler();
        if (this.mediaInterface == null) {
            this.mediaInterface = new MediaSystem();
        }
    }

    public static MediaManager instance() {
        if (mediaManager == null) {
            mediaManager = SingletonHolder.instance;
        }
        return mediaManager;
    }

    public static DataSourceBean getDataSource() {
        return instance().mediaInterface.getDataSourceObjects();
    }

    public static void setDataSource(DataSourceBean dataSourceBean) {
        instance().mediaInterface.setDataSourceObjects(dataSourceBean);
    }

    public static String getCurrentDataSource() {
        return instance().mediaInterface.getCurrentDataSource();
    }

    public static void setCurrentDataSource(String str) {
        instance().mediaInterface.setCurrentDataSource(str);
    }

    public static long getCurrentPosition() {
        return instance().mediaInterface.getCurrentPosition();
    }

    public static long getDuration() {
        return instance().mediaInterface.getDuration();
    }

    public static void seekTo(long j) {
        instance().mediaInterface.seekTo(j);
    }

    public static void pause() {
        instance().mediaInterface.pause();
    }

    public static void start() {
        instance().mediaInterface.start();
    }

    public static boolean isPlaying() {
        return instance().mediaInterface.isPlaying();
    }

    public void releaseMediaPlayer() {
        this.mMediaHandler.removeCallbacksAndMessages(null);
        Message message = new Message();
        message.what = 2;
        this.mMediaHandler.sendMessage(message);
    }

    public void prepare() {
        releaseMediaPlayer();
        Message message = new Message();
        message.what = 0;
        this.mMediaHandler.sendMessage(message);
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (savedSurfaceTexture == null) {
            savedSurfaceTexture = surfaceTexture;
            prepare();
        } else if (VERSION.SDK_INT >= 16) {
            textureView.setSurfaceTexture(savedSurfaceTexture);
        }
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return savedSurfaceTexture == null;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
