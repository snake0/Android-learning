package com.mqunar.yvideo.multivideo;

import android.view.Surface;

public abstract class MediaInterface {
    private String currentDataSource;
    private DataSourceBean dataSourceObjects;
    private boolean isPrepare;

    public abstract long getCurrentPosition();

    public abstract long getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract boolean isPlaying();

    public abstract void pause();

    public abstract void prepare();

    public abstract void reSet();

    public abstract void release();

    public abstract void seekTo(long j);

    public abstract void setLooping(boolean z);

    public abstract void setSurface(Surface surface);

    public abstract void setVolume(float f, float f2);

    public abstract void start();

    public String getCurrentDataSource() {
        return this.currentDataSource;
    }

    public void setCurrentDataSource(String str) {
        this.currentDataSource = str;
    }

    public DataSourceBean getDataSourceObjects() {
        return this.dataSourceObjects;
    }

    public void setDataSourceObjects(DataSourceBean dataSourceBean) {
        this.dataSourceObjects = dataSourceBean;
    }

    public boolean isPrepare() {
        return this.isPrepare;
    }

    public void setPrepare(boolean z) {
        this.isPrepare = z;
    }
}
