package com.mqunar.yvideo.multivideo;

import android.annotation.TargetApi;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.view.Surface;
import java.lang.reflect.Method;
import java.util.Map;

public class MediaSystem extends MediaInterface implements OnBufferingUpdateListener, OnCompletionListener, OnErrorListener, OnInfoListener, OnPreparedListener, OnSeekCompleteListener, OnVideoSizeChangedListener {
    private MediaPlayer mediaPlayer;

    public int getVideoWidth() {
        if (this.mediaPlayer != null) {
            return this.mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    public int getVideoHeight() {
        if (this.mediaPlayer != null) {
            return this.mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    public void setLooping(boolean z) {
        if (this.mediaPlayer != null) {
            this.mediaPlayer.setLooping(z);
        }
    }

    public void start() {
        if (this.mediaPlayer != null) {
            this.mediaPlayer.start();
        }
    }

    public void prepare() {
        try {
            this.mediaPlayer = new MediaPlayer();
            this.mediaPlayer.setAudioStreamType(3);
            this.mediaPlayer.setLooping(getDataSourceObjects().isLoop());
            this.mediaPlayer.setOnPreparedListener(this);
            this.mediaPlayer.setOnCompletionListener(this);
            this.mediaPlayer.setOnBufferingUpdateListener(this);
            this.mediaPlayer.setScreenOnWhilePlaying(true);
            this.mediaPlayer.setOnSeekCompleteListener(this);
            this.mediaPlayer.setOnErrorListener(this);
            this.mediaPlayer.setOnInfoListener(this);
            this.mediaPlayer.setOnVideoSizeChangedListener(this);
            Method declaredMethod = MediaPlayer.class.getDeclaredMethod("setDataSource", new Class[]{String.class, Map.class});
            if (getDataSourceObjects().getHeader() != null) {
                declaredMethod.invoke(this.mediaPlayer, new Object[]{getCurrentDataSource(), getDataSourceObjects().getHeader()});
            } else {
                declaredMethod.invoke(this.mediaPlayer, new Object[]{getCurrentDataSource(), null});
            }
            this.mediaPlayer.prepareAsync();
            setPrepare(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void pause() {
        if (this.mediaPlayer != null) {
            this.mediaPlayer.pause();
        }
    }

    public boolean isPlaying() {
        if (this.mediaPlayer != null) {
            return this.mediaPlayer.isPlaying();
        }
        return false;
    }

    public void seekTo(long j) {
        try {
            this.mediaPlayer.seekTo((int) j);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public void release() {
        if (this.mediaPlayer != null) {
            this.mediaPlayer.release();
            this.mediaPlayer = null;
            setPrepare(false);
        }
    }

    public long getCurrentPosition() {
        if (this.mediaPlayer != null) {
            return (long) this.mediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    public long getDuration() {
        if (this.mediaPlayer != null) {
            return (long) this.mediaPlayer.getDuration();
        }
        return 0;
    }

    @TargetApi(14)
    public void setSurface(Surface surface) {
        this.mediaPlayer.setSurface(surface);
    }

    public void setVolume(float f, float f2) {
        if (this.mediaPlayer != null) {
            this.mediaPlayer.setVolume(f, f2);
        }
    }

    public void reSet() {
        if (this.mediaPlayer != null) {
            this.mediaPlayer.reset();
        }
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        mediaPlayer.start();
        if (getCurrentDataSource().toLowerCase().contains("mp3")) {
            MediaManager.instance().mainThreadHandler.post(new Runnable() {
                public void run() {
                    if (VideoPlayerManager.getCurrentVP() != null) {
                        VideoPlayerManager.getCurrentVP().onPrepared();
                    }
                }
            });
        }
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        MediaManager.instance().mainThreadHandler.post(new Runnable() {
            public void run() {
                if (VideoPlayerManager.getCurrentVP() != null) {
                    VideoPlayerManager.getCurrentVP().onAutoCompletion();
                }
            }
        });
    }

    public void onBufferingUpdate(MediaPlayer mediaPlayer, final int i) {
        MediaManager.instance().mainThreadHandler.post(new Runnable() {
            public void run() {
                if (VideoPlayerManager.getCurrentVP() != null) {
                    VideoPlayerManager.getCurrentVP().setBufferProgress(i);
                }
            }
        });
    }

    public void onSeekComplete(MediaPlayer mediaPlayer) {
        MediaManager.instance().mainThreadHandler.post(new Runnable() {
            public void run() {
                if (VideoPlayerManager.getCurrentVP() != null) {
                    VideoPlayerManager.getCurrentVP().onSeekComplete();
                }
            }
        });
    }

    public boolean onError(MediaPlayer mediaPlayer, final int i, final int i2) {
        MediaManager.instance().mainThreadHandler.post(new Runnable() {
            public void run() {
                if (VideoPlayerManager.getCurrentVP() != null) {
                    VideoPlayerManager.getCurrentVP().onError(i, i2);
                }
            }
        });
        return true;
    }

    public boolean onInfo(MediaPlayer mediaPlayer, final int i, final int i2) {
        MediaManager.instance().mainThreadHandler.post(new Runnable() {
            public void run() {
                if (VideoPlayerManager.getCurrentVP() == null) {
                    return;
                }
                if (i != 3) {
                    VideoPlayerManager.getCurrentVP().onInfo(i, i2);
                } else if (VideoPlayerManager.getCurrentVP().currentState == 1) {
                    VideoPlayerManager.getCurrentVP().onPrepared();
                }
            }
        });
        return false;
    }

    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        MediaManager.instance().currentVideoWidth = i;
        MediaManager.instance().currentVideoHeight = i2;
        MediaManager.instance().mainThreadHandler.post(new Runnable() {
            public void run() {
                if (VideoPlayerManager.getCurrentVP() != null) {
                    VideoPlayerManager.getCurrentVP().onVideoSizeChanged();
                }
            }
        });
    }
}
