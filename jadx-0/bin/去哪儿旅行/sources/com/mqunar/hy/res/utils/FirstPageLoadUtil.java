package com.mqunar.hy.res.utils;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mqunar.hy.res.HybridManager;
import com.mqunar.hy.res.Listener.QpDownloadListener;
import com.mqunar.hy.res.ManualDownloadControler;
import com.mqunar.hy.res.logger.Timber;
import com.mqunar.hy.res.model.HybridInfo;
import java.util.concurrent.atomic.AtomicBoolean;

public class FirstPageLoadUtil {
    private Handler handler;

    public interface QPCallBack {
        void fail();

        void success();
    }

    public interface CallBack {
        void end();
    }

    class FirstPageLoadUtilHolder {
        private static final FirstPageLoadUtil INSTANCE = new FirstPageLoadUtil();

        private FirstPageLoadUtilHolder() {
        }
    }

    class PageLoadParams {
        public static final int MUST_UPDATE_TIMEOUT = 60000;
        public static final int NORMAL_UPDATE_TIMEOUT = 5000;
        private String hybridId;
        private boolean isNeedTimeout = true;
        private QPCallBack qpCallBack;
        private long startTime;
        private long timeout = 5000;

        PageLoadParams() {
        }

        public PageLoadParams setHybridId(String str) {
            this.hybridId = str;
            return this;
        }

        public PageLoadParams setTimeout(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("HyRes PageLoadParams setTimeout timeout must be >=0");
            }
            this.timeout = j;
            return this;
        }

        public PageLoadParams setNeedTimeout(boolean z) {
            this.isNeedTimeout = z;
            return this;
        }

        public PageLoadParams setQpCallBack(QPCallBack qPCallBack) {
            this.qpCallBack = qPCallBack;
            return this;
        }

        public QPCallBack getQpCallBack() {
            return this.qpCallBack;
        }

        public long getTimeout() {
            return this.timeout;
        }

        public String getHybridId() {
            return this.hybridId;
        }

        public boolean isNeedTimeout() {
            return this.isNeedTimeout;
        }

        /* Access modifiers changed, original: 0000 */
        public void setStartTime(long j) {
            this.startTime = j;
        }

        /* Access modifiers changed, original: 0000 */
        public long getStartTime() {
            return this.startTime;
        }
    }

    class QpDownloadImpl implements QpDownloadListener {
        private AtomicBoolean hasCallback = new AtomicBoolean(false);
        private ManualDownloadControler manualDownloadControler = null;
        private PageLoadParams params;
        private Runnable runnable;

        public QpDownloadImpl(ManualDownloadControler manualDownloadControler, PageLoadParams pageLoadParams) {
            this.params = pageLoadParams;
            this.manualDownloadControler = manualDownloadControler;
            if (pageLoadParams.isNeedTimeout()) {
                initTimeout();
            }
        }

        private void initTimeout() {
            this.runnable = new Runnable() {
                public void run() {
                    QpDownloadImpl.this.manualDownloadControler.unregister();
                    QpDownloadImpl.this.callback(QpDownloadImpl.this.params.getQpCallBack(), false);
                    String hybridId = QpDownloadImpl.this.params.getHybridId();
                    Timber.i("hyres FirstPage 请求超时 hybridid = " + hybridId, new Object[0]);
                    HybridInfo hybridInfo = UpgradeInfoCache.getInstance().getHybridInfo(hybridId);
                    StatisticsUtil.qpForceDownloadTimeout(hybridId, hybridInfo != null ? hybridInfo.version + "" : "0");
                }
            };
            FirstPageLoadUtil.this.handler.postDelayed(this.runnable, this.params.getTimeout());
        }

        public void requestResultNoQp() {
            Timber.i("hyres FirstPage 没有qp包 hybridid = " + this.params.getHybridId(), new Object[0]);
            removeDelayCallback();
            callback(this.params.getQpCallBack(), false);
        }

        private void removeDelayCallback() {
            if (this.runnable != null) {
                FirstPageLoadUtil.this.handler.removeCallbacks(this.runnable);
            }
        }

        public void requestResultHasQp() {
            Timber.i("hyres FirstPage 有qp包 hybridid = " + this.params.getHybridId(), new Object[0]);
            this.manualDownloadControler.startDownload();
        }

        public void onMessageError() {
            removeDelayCallback();
            callback(this.params.getQpCallBack(), false);
            Timber.i("hyres FirstPage 请求失败 hybridid = " + this.params.getHybridId(), new Object[0]);
        }

        public void onQpDownLoaded() {
            removeDelayCallback();
            callback(this.params.getQpCallBack(), true);
            Timber.i("hyres FirstPage 下载成功 hybridid = " + this.params.getHybridId(), new Object[0]);
        }

        private void callback(QPCallBack qPCallBack, boolean z) {
            if (!this.hasCallback.get()) {
                this.hasCallback.set(true);
                FirstPageLoadUtil.this.callbackOnMain(this.params, z);
            }
        }
    }

    /* synthetic */ FirstPageLoadUtil(AnonymousClass1 anonymousClass1) {
        this();
    }

    private FirstPageLoadUtil() {
        this.handler = new Handler(Looper.getMainLooper());
    }

    public static FirstPageLoadUtil getInstance() {
        return FirstPageLoadUtilHolder.INSTANCE;
    }

    @Deprecated
    public void start(String str, final CallBack callBack) {
        if (callBack == null) {
            throw new NullPointerException("CallBack is null");
        }
        start(str, new QPCallBack() {
            public void success() {
                callBack.end();
            }

            public void fail() {
                callBack.end();
            }
        });
    }

    public void start(String str, QPCallBack qPCallBack) {
        PageLoadParams pageLoadParams = new PageLoadParams();
        pageLoadParams.setHybridId(str).setTimeout(5000).setQpCallBack(qPCallBack);
        start(pageLoadParams);
    }

    public void startForYis(String str, QPCallBack qPCallBack) {
        PageLoadParams pageLoadParams = new PageLoadParams();
        pageLoadParams.setHybridId(str).setNeedTimeout(false).setQpCallBack(qPCallBack);
        start(pageLoadParams);
    }

    public void start(PageLoadParams pageLoadParams) {
        if (pageLoadParams.getQpCallBack() == null) {
            throw new NullPointerException("QPCallBack is null");
        } else if (TextUtils.isEmpty(pageLoadParams.getHybridId())) {
            pageLoadParams.getQpCallBack().fail();
        } else {
            startUpdate(pageLoadParams);
        }
    }

    private void startMustUpdate(PageLoadParams pageLoadParams) {
        startManualDownload(pageLoadParams);
    }

    private void startUpdate(PageLoadParams pageLoadParams) {
        String hybridId = pageLoadParams.getHybridId();
        HybridInfo hybridInfoById = HybridManager.getInstance().getHybridInfoById(hybridId);
        if (hybridInfoById == null) {
            Timber.i("hyres FirstPage 没有qp包，进行单个请求 hybridid = " + hybridId, new Object[0]);
            startManualDownload(pageLoadParams);
        } else if (isQPOffline(hybridInfoById)) {
            Timber.i("hyres FirstPage QP已经下线 hybridid = " + hybridId, new Object[0]);
            startManualDownload(pageLoadParams);
        } else if (HybridManager.getInstance().isForceUpgrade(hybridId)) {
            Timber.i("hyres FirstPage 进行强制更新 hybridid = " + hybridId, new Object[0]);
            startManualDownload(pageLoadParams);
        } else {
            callbackOnMain(pageLoadParams, true);
            Timber.i("hyres FirstPage 直接开启页面 hybridid = " + hybridId, new Object[0]);
        }
    }

    private void startManualDownload(PageLoadParams pageLoadParams) {
        ManualDownloadControler manualDownloadControler = new ManualDownloadControler();
        manualDownloadControler.startUpdateRequest(pageLoadParams.getHybridId(), new QpDownloadImpl(manualDownloadControler, pageLoadParams));
    }

    private boolean isQPOffline(HybridInfo hybridInfo) {
        return CheckQpCompetence.getInstance().getOfflineHybridVersion(hybridInfo.hybridId) == hybridInfo.version;
    }

    private void callbackOnMain(final PageLoadParams pageLoadParams, final boolean z) {
        if (isMainThread()) {
            QPCallBack qpCallBack = pageLoadParams.getQpCallBack();
            if (z) {
                qpCallBack.success();
                return;
            } else {
                qpCallBack.fail();
                return;
            }
        }
        this.handler.post(new Runnable() {
            public void run() {
                FirstPageLoadUtil.this.callbackOnMain(pageLoadParams, z);
            }
        });
    }

    private boolean isMainThread() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }
}
