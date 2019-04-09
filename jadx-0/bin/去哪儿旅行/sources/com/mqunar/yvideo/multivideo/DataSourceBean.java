package com.mqunar.yvideo.multivideo;

import android.content.Context;
import java.util.Map;

public class DataSourceBean {
    private Context context;
    private int defaultUrlMapIndex;
    private Map<String, String> header;
    private String imgUrl;
    private int initScreen = 0;
    private boolean isLoop;
    private boolean isSupportTingWindow;
    private String title;
    private Map<String, String> urlMap;

    public boolean isSupportTingWindow() {
        return this.isSupportTingWindow;
    }

    public void setSupportTingWindow(boolean z) {
        this.isSupportTingWindow = z;
    }

    public int getInitScreen() {
        return this.initScreen;
    }

    public void setInitScreen(int i) {
        this.initScreen = i;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public Map<String, String> getUrlMap() {
        return this.urlMap;
    }

    public void setUrlMap(Map<String, String> map) {
        this.urlMap = map;
    }

    public boolean isLoop() {
        return this.isLoop;
    }

    public void setLoop(boolean z) {
        this.isLoop = z;
    }

    public Map<String, String> getHeader() {
        return this.header;
    }

    public void setHeader(Map<String, String> map) {
        this.header = map;
    }

    public Context getContext() {
        return this.context;
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public int getDefaultUrlMapIndex() {
        return this.defaultUrlMapIndex;
    }

    public void setDefaultUrlMapIndex(int i) {
        this.defaultUrlMapIndex = i;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
