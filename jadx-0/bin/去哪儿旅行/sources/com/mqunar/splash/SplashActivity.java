package com.mqunar.splash;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.Toast;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.iflytek.aiui.AIUIConstant;
import com.mqunar.atomenv.GlobalEnv;
import com.mqunar.atomenv.OwnerConstant;
import com.mqunar.atomenv.SwitchEnv;
import com.mqunar.core.basectx.SchemeDispatcher;
import com.mqunar.core.basectx.application.QApplication;
import com.mqunar.network.NetRequestManager;
import com.mqunar.storage.Storage;
import com.mqunar.tools.ArrayUtils;
import com.mqunar.tools.log.QLog;
import com.mqunar.tools.log.UELog;
import java.util.ArrayList;
import java.util.Collection;
import org.apache.http.HttpHost;

public class SplashActivity extends Activity implements OnClickListener {
    private static long LAUNCHER_ACTIVITY_DELAY = 500;
    public static final int MESSAGE_FINISH = 4;
    public static final int MESSAGE_GO = 5;
    public static final int MESSAGE_GOTO_HOME = 1;
    public static final int MESSAGE_SHOW_LOADING = 6;
    public static final int MESSAGE_WEBVIEW_LOAD = 0;
    public static final int MESSAGE_WEBVIEW_LOAD_BY_CRASH = 2;
    public static final int MESSAGE_WEBVIEW_LOAD_BY_CRASH_FINISH = 3;
    private static final String TAG = "SplashActivity";
    private static long WELCOME_TIME_DELAY = 0;
    private static long WELCOME_TIME_DELAY_AD = 3000;
    public static boolean isDisplayed = false;
    private static boolean isShowNoticeOnce = false;
    private int currentMessage = -1;
    private ImageView imgWelcome;
    private boolean isGranted = false;
    private boolean isPreLoadDone = false;
    private AdSplash mAdSplash;
    private Handler mHandler = new Handler() {
        public void handleMessage(Message message) {
            if (message.what == 5) {
                if (SplashUtils.isLoadDone() && SplashActivity.this.isGranted) {
                    if (SplashActivity.this.splashLoadingView != null) {
                        SplashActivity.this.splashLoadingView.cancleAnimation();
                    }
                    QLog.e(SplashActivity.TAG, "time=" + System.currentTimeMillis(), new Object[0]);
                    SplashActivity.this.dealLogicForJump();
                    return;
                }
                SplashActivity.this.mHandler.sendEmptyMessageDelayed(5, 100);
            } else if (message.what == 0 || message.what == 2) {
                SplashActivity.this.webView.loadUrl((String) message.obj);
            } else if (message.what == 1) {
                SplashActivity.this.mHandler.removeMessages(1);
                SplashActivity.this.mHandler.removeMessages(0);
                try {
                    NetRequestManager.getInstance().requestIpList(SplashActivity.this.getApplicationContext());
                } catch (Throwable th) {
                }
                if (SplashActivity.this.splashMonitor != null) {
                    SplashActivity.this.splashMonitor.monitorPush(SplashActivity.this.getIntent(), SplashActivity.this.mHandler);
                }
                if (SplashActivity.this.isTransformForPush()) {
                    if (SplashActivity.this.splashMonitor != null) {
                        SplashActivity.this.splashMonitor.monitorPushMessage();
                    }
                    SplashActivity.this.mHandler.sendEmptyMessageDelayed(4, 1000);
                    return;
                }
                String homeScheme = SchemeDispatcher.getHomeScheme(SplashActivity.this);
                String access$700 = SplashActivity.this.getRouteUri(homeScheme);
                if (homeScheme.equals(access$700)) {
                    SplashActivity.isShowNoticeOnce = true;
                }
                SchemeDispatcher.sendScheme(SplashActivity.this, access$700, 603979776);
                if (SplashActivity.this.splashMonitor != null) {
                    SplashActivity.this.splashMonitor.monitorAppStartCostTime(SplashActivity.this.isPreLoadDone, SplashActivity.this.splashTime, SplashActivity.this.startDeatAdTime, System.currentTimeMillis());
                }
                QLog.i("OPT-TIMES", "跳转App=" + System.currentTimeMillis(), new Object[0]);
                SplashActivity.this.mHandler.sendEmptyMessageDelayed(4, 2000);
            } else if (message.what == 3) {
                SplashActivity.this.mHandler.removeMessages(3);
                SplashActivity.this.mHandler.removeMessages(2);
                Toast.makeText(SplashActivity.this, "文件发生异常，请重新下载安装", 0).show();
            } else if (message.what == 4) {
                SplashActivity.this.finish();
            } else if (message.what != 6) {
            } else {
                if (SplashUtils.isLoadDone()) {
                    SplashActivity.this.mHandler.sendEmptyMessage(5);
                    return;
                }
                SplashActivity.this.initSplashLoadingView();
                SplashActivity.this.splashLoadingView.showAnimation();
                SplashActivity.this.mHandler.sendEmptyMessageDelayed(5, 100);
            }
        }
    };
    private AlertDialog mNoticeDialog;
    private CountDownTimerFromAPI26 mTimer;
    private FrameLayout rootLayout;
    private SplashLoadingView splashLoadingView;
    private SplashMonitor splashMonitor;
    private long splashTime;
    private long startDeatAdTime;
    private QWebView webView;
    public IWebViewObserver webViewObserver = new IWebViewObserver() {
        public void onProgressChanged(WebView webView, int i) {
            if (i > 80) {
                if (SplashActivity.this.imgWelcome.getVisibility() != 8) {
                    SplashActivity.this.imgWelcome.startAnimation(AnimationUtils.loadAnimation(SplashActivity.this, 17432577));
                    SplashActivity.this.imgWelcome.setVisibility(8);
                }
            } else if (i > 40 && SplashActivity.this.currentMessage == 0) {
                SplashActivity.this.mHandler.removeMessages(1);
            }
        }

        public void onReceivedTitle(WebView webView, String str) {
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return false;
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (SplashActivity.this.currentMessage == 0) {
                SplashActivity.this.mHandler.sendEmptyMessageDelayed(1, SplashActivity.WELCOME_TIME_DELAY);
            } else if (SplashActivity.this.currentMessage == 2) {
                SplashActivity.this.mHandler.sendEmptyMessageDelayed(3, 4000);
            }
        }

        public void onPageFinished(WebView webView, String str) {
            if (SplashActivity.this.currentMessage == 0) {
                SplashActivity.this.mHandler.removeMessages(1);
                SplashActivity.this.mHandler.sendEmptyMessageDelayed(1, SplashActivity.WELCOME_TIME_DELAY);
            } else if (SplashActivity.this.currentMessage == 2) {
                SplashActivity.this.mHandler.removeMessages(3);
                SplashActivity.this.mHandler.sendEmptyMessageDelayed(3, 4000);
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback, String str) {
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback) {
        }
    };

    /* Access modifiers changed, original: protected */
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        QLog.d(TAG, "oncreate", new Object[0]);
        this.splashTime = System.currentTimeMillis();
        if (getIntent() == null || (getIntent().getFlags() & 4194304) == 0) {
            setContentView(R.layout.spider_splash_page);
            getWindow().setBackgroundDrawable(null);
            this.rootLayout = (FrameLayout) findViewById(R.id.spider_fl_splash_root);
            this.imgWelcome = new ImageView(this);
            this.imgWelcome.setLayoutParams(new LayoutParams(-1, -1));
            this.imgWelcome.setBackgroundResource(R.drawable.spider_home_welcome_bg);
            this.rootLayout.addView(this.imgWelcome);
            this.splashMonitor = SplashUtils.getSplashMonitor();
            loggerForSplashShowTime();
            this.isGranted = isGranterPermissionForApp();
            if (!TextUtils.isEmpty(getRouteUri(null)) || isTransformForPush()) {
                WELCOME_TIME_DELAY = 0;
                WELCOME_TIME_DELAY_AD = 0;
            } else {
                WELCOME_TIME_DELAY = 2000;
                WELCOME_TIME_DELAY_AD = 3000;
            }
            if (SplashUtils.isLoadDone()) {
                this.mHandler.sendEmptyMessageDelayed(5, 100);
            } else {
                this.mHandler.sendEmptyMessageDelayed(6, 100);
            }
            isDisplayed = true;
            return;
        }
        finish();
        QLog.d(TAG, "finish flag...", new Object[0]);
    }

    private boolean isTransformForPush() {
        Intent intent = getIntent();
        if (intent == null) {
            return false;
        }
        return intent.getBooleanExtra("isTransformForPush", false);
    }

    private String getRouteUri(String str) {
        Intent intent = getIntent();
        if (intent == null) {
            return str;
        }
        String stringExtra = intent.getStringExtra("route_uri");
        if (TextUtils.isEmpty(stringExtra)) {
            return str;
        }
        return stringExtra;
    }

    private void intentToHome() {
        String homeScheme = SchemeDispatcher.getHomeScheme(this);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(homeScheme));
        intent.setPackage(getPackageName());
        intent.setFlags(536870912);
        startActivity(intent);
    }

    private void dealLogicForJump() {
        AlertDialog buildDialogForShortcut;
        final String splashAdUrl;
        this.mHandler.removeMessages(5);
        if (this.splashLoadingView != null) {
            this.splashLoadingView.cancleAnimation();
        }
        try {
            buildDialogForShortcut = buildDialogForShortcut();
            splashAdUrl = GlobalEnv.getInstance().getSplashAdUrl();
            this.startDeatAdTime = System.currentTimeMillis();
            if (!(TextUtils.isEmpty(splashAdUrl) || SwitchEnv.getInstance().isCloseAd())) {
                this.mAdSplash = new AdSplash(this, splashAdUrl);
                this.mAdSplash.setLayoutParams(new LayoutParams(-1, -1));
                this.rootLayout.addView(this.mAdSplash);
            }
        } catch (Throwable th) {
            QLog.e(SplashActivity.class.getSimpleName(), th.toString(), new Object[0]);
        }
        final Storage newStorage = Storage.newStorage(this, OwnerConstant.STORAGE_OWNER_SYS);
        if (buildDialogForShortcut != null) {
            buildDialogForShortcut.setOnDismissListener(new OnDismissListener() {
                public void onDismiss(DialogInterface dialogInterface) {
                    if (newStorage.getBoolean("isPrivacyShow", true)) {
                        new PrivacyDialogFragment(new AgreeListener() {
                            public void agreeClick() {
                                if (TextUtils.isEmpty(splashAdUrl) || SwitchEnv.getInstance().isCloseAd()) {
                                    SplashActivity.this.showQunarWelcome();
                                    return;
                                }
                                SplashActivity.this.mHandler.sendEmptyMessageDelayed(1, SplashActivity.WELCOME_TIME_DELAY_AD);
                                SplashActivity.this.initCountdownTimer(SplashActivity.WELCOME_TIME_DELAY_AD);
                                SplashActivity.this.sendBroadcast();
                            }
                        }).show(SplashActivity.this.getFragmentManager(), "Privacy");
                    } else if (TextUtils.isEmpty(splashAdUrl) || SwitchEnv.getInstance().isCloseAd()) {
                        SplashActivity.this.showQunarWelcome();
                    } else {
                        SplashActivity.this.mHandler.sendEmptyMessageDelayed(1, SplashActivity.WELCOME_TIME_DELAY_AD);
                        SplashActivity.this.initCountdownTimer(SplashActivity.WELCOME_TIME_DELAY_AD);
                        SplashActivity.this.sendBroadcast();
                    }
                }
            });
            buildDialogForShortcut.show();
        } else if (newStorage.getBoolean("isPrivacyShow", true)) {
            new PrivacyDialogFragment(new AgreeListener() {
                public void agreeClick() {
                    if (TextUtils.isEmpty(splashAdUrl) || SwitchEnv.getInstance().isCloseAd()) {
                        SplashActivity.this.showQunarWelcome();
                        return;
                    }
                    SplashActivity.this.mHandler.sendEmptyMessageDelayed(1, SplashActivity.WELCOME_TIME_DELAY_AD);
                    SplashActivity.this.initCountdownTimer(SplashActivity.WELCOME_TIME_DELAY_AD);
                    SplashActivity.this.sendBroadcast();
                }
            }).show(getFragmentManager(), "Privacy");
        } else if (TextUtils.isEmpty(splashAdUrl) || SwitchEnv.getInstance().isCloseAd()) {
            showQunarWelcome();
        } else {
            this.mHandler.sendEmptyMessageDelayed(1, WELCOME_TIME_DELAY_AD);
            initCountdownTimer(WELCOME_TIME_DELAY_AD);
            sendBroadcast();
        }
        sendGoIntentEvent(getIntent());
    }

    private void initCountdownTimer(long j) {
        if (this.mAdSplash != null && j != 0) {
            this.mTimer = new CountDownTimerFromAPI26(j + LAUNCHER_ACTIVITY_DELAY, 1000) {
                public void onTick(long j) {
                    SplashActivity.this.mAdSplash.setSkipText((float) j);
                }

                public void onFinish() {
                }
            };
            this.mTimer.start();
        }
    }

    private void sendGoIntentEvent(Intent intent) {
        try {
            Intent intent2 = new Intent("GO_INTENT_EVENT_FROM_" + getPackageName());
            intent.setData(Uri.parse(getRouteUri(null)));
            intent2.putExtra(AIUIConstant.WORK_MODE_INTENT, intent);
            LocalBroadcastManager.getInstance(this).sendBroadcast(intent2);
        } catch (Throwable th) {
            QLog.e(th);
        }
    }

    private void showQunarWelcome() {
        this.mHandler.post(new Runnable() {
            public void run() {
                long j = 0;
                try {
                    AdSplash.deleteAllCache(SplashActivity.this);
                } catch (Throwable th) {
                }
                String crashTouchUrl = SplashUtils.getCrashTouchUrl();
                String splashWebUrl = GlobalEnv.getInstance().getSplashWebUrl();
                final Message obtain = Message.obtain();
                if (!TextUtils.isEmpty(crashTouchUrl) && ((crashTouchUrl.startsWith(HttpHost.DEFAULT_SCHEME_NAME) || crashTouchUrl.startsWith("https")) && crashTouchUrl.indexOf("qunar.com") > 0)) {
                    SplashActivity.this.webView = new QWebView(SplashActivity.this);
                    SplashActivity.this.webView.setLayoutParams(new LayoutParams(-1, -1));
                    SplashActivity.this.rootLayout.addView(SplashActivity.this.webView);
                    SplashActivity.this.webView.addJavascriptInterface(new SplashJavascriptObject(SplashActivity.this, SplashActivity.this.mHandler), "qunarJsBridge");
                    SplashActivity.this.webView.setObserver(SplashActivity.this.webViewObserver);
                    obtain.obj = crashTouchUrl;
                    SplashActivity.this.currentMessage = 2;
                    obtain.what = SplashActivity.this.currentMessage;
                } else if (TextUtils.isEmpty(splashWebUrl) || (!(splashWebUrl.startsWith(HttpHost.DEFAULT_SCHEME_NAME) || splashWebUrl.startsWith("https")) || splashWebUrl.indexOf("qunar.com") <= 0)) {
                    obtain.what = SplashActivity.this.currentMessage = 1;
                } else {
                    SplashActivity.this.webView = new QWebView(SplashActivity.this);
                    SplashActivity.this.webView.setLayoutParams(new LayoutParams(-1, -1));
                    SplashActivity.this.rootLayout.addView(SplashActivity.this.webView);
                    SplashActivity.this.webView.addJavascriptInterface(new SplashJavascriptObject(SplashActivity.this, SplashActivity.this.mHandler), "qunarJsBridge");
                    SplashActivity.this.webView.setObserver(SplashActivity.this.webViewObserver);
                    obtain.obj = splashWebUrl;
                    SplashActivity.this.currentMessage = 0;
                    obtain.what = SplashActivity.this.currentMessage;
                    j = 500;
                }
                final Storage newStorage = Storage.newStorage(SplashActivity.this, OwnerConstant.STORAGE_OWNER_SYS);
                boolean z = newStorage.getBoolean("isNotice", SwitchEnv.getInstance().isShowNetTips());
                if (SplashActivity.isShowNoticeOnce) {
                    SplashActivity.this.sendBroadcast();
                    SplashActivity.this.mHandler.sendMessageDelayed(obtain, j);
                } else if (z) {
                    ScrollView scrollView = (ScrollView) SplashActivity.this.getLayoutInflater().inflate(R.layout.spider_splash_dialog, null);
                    final CheckBox checkBox = (CheckBox) scrollView.findViewById(R.id.spider_checkbox);
                    SplashActivity.this.mNoticeDialog = new Builder(SplashActivity.this, R.style.spider_AppSplash).setTitle("提示").setView(scrollView).setPositiveButton("退出", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                            SplashActivity.this.mNoticeDialog = null;
                            SplashActivity.this.absolutelyFinish();
                        }
                    }).setNegativeButton(17039370, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            newStorage.putBoolean("isNotice", !checkBox.isChecked());
                            dialogInterface.dismiss();
                            SplashActivity.this.mNoticeDialog = null;
                            SplashActivity.this.sendBroadcast();
                            SplashActivity.this.mHandler.sendMessageDelayed(obtain, j);
                        }
                    }).create();
                    SplashActivity.this.mNoticeDialog.setOnKeyListener(new OnKeyListener() {
                        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                            switch (i) {
                                case 4:
                                    dialogInterface.dismiss();
                                    SplashActivity.this.absolutelyFinish();
                                    return false;
                                default:
                                    return true;
                            }
                        }
                    });
                    Window window = SplashActivity.this.mNoticeDialog.getWindow();
                    if (!(SplashActivity.this.mNoticeDialog == null || window == null)) {
                        WindowManager.LayoutParams attributes = window.getAttributes();
                        if (attributes != null) {
                            attributes.height = -2;
                            attributes.width = -2;
                            attributes.gravity = 17;
                        }
                    }
                    SplashActivity.this.mNoticeDialog.setCancelable(false);
                    SplashActivity.this.mNoticeDialog.setCanceledOnTouchOutside(false);
                    SplashActivity.this.mNoticeDialog.show();
                } else {
                    SplashActivity.this.sendBroadcast();
                    SplashActivity.this.mHandler.sendMessageDelayed(obtain, j);
                }
            }
        });
    }

    private void absolutelyFinish() {
        new Handler().postDelayed(new Runnable() {
            public void run() {
                SplashActivity.this.finish();
                Runtime.getRuntime().exit(0);
                System.exit(0);
                Process.killProcess(Process.myPid());
            }
        }, 100);
    }

    @Nullable
    private AlertDialog buildDialogForShortcut() {
        Storage newStorage = Storage.newStorage(this, OwnerConstant.STORAGE_OWNER_SYS);
        if (SwitchEnv.getInstance().isNoShortCut() || newStorage.getBoolean("is_create_shortcut", false)) {
            return null;
        }
        newStorage.putBoolean("is_create_shortcut", true);
        return new Builder(this).setTitle("提示").setMessage("是否创建桌面快捷方式？").setPositiveButton("是", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                SplashActivity.this.createShortCut();
            }
        }).setNegativeButton("否", null).create();
    }

    public void createShortCut() {
        Intent intent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        intent.putExtra("duplicate", false);
        try {
            intent.putExtra("android.intent.extra.shortcut.NAME", getString(getResources().getIdentifier("spider_app_name", "string", getPackageName())));
            intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", ShortcutIconResource.fromContext(getApplicationContext(), getResources().getIdentifier("spider_ic_launcher", "drawable", getPackageName())));
        } catch (Exception e) {
        }
        Intent intent2 = new Intent();
        intent2.setClass(getApplicationContext(), getClass());
        intent2.setAction("android.intent.action.MAIN");
        intent2.addCategory("android.intent.category.LAUNCHER");
        intent.putExtra("android.intent.extra.shortcut.INTENT", intent2);
        sendBroadcast(intent);
    }

    /* Access modifiers changed, original: protected */
    public boolean needOnCreateSendBroadcast() {
        return false;
    }

    private void sendBroadcast() {
        sendNoticeBroadcast();
        if (this.splashMonitor != null) {
            this.splashMonitor.initMonitor();
        }
    }

    private void sendNoticeBroadcast() {
        LocalBroadcastManager.getInstance(QApplication.getContext()).sendBroadcast(new Intent("com.mqunar.spider.MESSAGE_USER_NOTICE_CONFIRMED"));
    }

    private void initSplashLoadingView() {
        this.splashLoadingView = new SplashLoadingView(this);
        this.rootLayout.addView(this.splashLoadingView);
        LayoutParams layoutParams = (LayoutParams) this.splashLoadingView.getLayoutParams();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        layoutParams.topMargin = (displayMetrics.heightPixels * 1100) / 1319;
        layoutParams.leftMargin = (displayMetrics.widthPixels - ((displayMetrics.widthPixels * 534) / 1242)) / 2;
    }

    private void loggerForSplashShowTime() {
        new Handler().post(new Runnable() {
            public void run() {
                if (SplashActivity.this.splashMonitor != null) {
                    SplashActivity.this.splashMonitor.monitorShowTime();
                }
            }
        });
    }

    private boolean isGranterPermissionForApp() {
        try {
            Collection arrayList = new ArrayList();
            if (!isGrantedPermission(this, "android.permission.ACCESS_FINE_LOCATION")) {
                arrayList.add("android.permission.ACCESS_FINE_LOCATION");
            }
            if (!isGrantedPermission(this, "android.permission.READ_PHONE_STATE")) {
                arrayList.add("android.permission.READ_PHONE_STATE");
            }
            if (!isGrantedPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
            }
            if (ArrayUtils.isEmpty(arrayList)) {
                return true;
            }
            ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[arrayList.size()]), 1);
            return false;
        } catch (Throwable th) {
            QLog.e("splash", "meet exception when permission check.", new Object[0]);
            return true;
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        this.isGranted = true;
    }

    private boolean isGrantedPermission(Context context, String str) {
        return ContextCompat.checkSelfPermission(context, str) == 0;
    }

    public void removeGoHomeMessage() {
        this.mHandler.removeMessages(1);
    }

    public void onClick(View view) {
        Throwable th;
        if (view.getId() == R.id.ll_splash_ignore) {
            this.mHandler.sendEmptyMessage(1);
            try {
                String str = "";
                String str2 = "";
                String splashAdUrl = GlobalEnv.getInstance().getSplashAdUrl();
                if (TextUtils.isEmpty(splashAdUrl)) {
                    splashAdUrl = str;
                } else {
                    try {
                        JSONObject parseObject = JSON.parseObject(splashAdUrl);
                        str = parseObject.getString("gifUrl");
                        if (TextUtils.isEmpty(str)) {
                            splashAdUrl = parseObject.getString("imgUrl");
                        } else {
                            splashAdUrl = str;
                        }
                        try {
                            str2 = parseObject.getString("activityName");
                            if (TextUtils.isEmpty(str2)) {
                                str2 = "null";
                            }
                            if (TextUtils.isEmpty(splashAdUrl)) {
                                splashAdUrl = "null";
                            }
                        } catch (Throwable th2) {
                            Throwable th3 = th2;
                            str = str2;
                            str2 = splashAdUrl;
                            th = th3;
                            QLog.e("AdSplash", th.toString(), new Object[0]);
                            splashAdUrl = str2;
                            str2 = str;
                            new UELog(this).log("AdSplash", "cancelAd_" + splashAdUrl + ",activityname_" + str2);
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        String str3 = str2;
                        str2 = str;
                        str = str3;
                        QLog.e("AdSplash", th.toString(), new Object[0]);
                        splashAdUrl = str2;
                        str2 = str;
                        new UELog(this).log("AdSplash", "cancelAd_" + splashAdUrl + ",activityname_" + str2);
                    }
                }
                new UELog(this).log("AdSplash", "cancelAd_" + splashAdUrl + ",activityname_" + str2);
            } catch (Exception e) {
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        if (this.mNoticeDialog != null && this.mNoticeDialog.isShowing()) {
            this.mNoticeDialog.dismiss();
            this.mNoticeDialog = null;
        }
        if (this.mHandler != null) {
            if (this.webView != null) {
                this.webView.setObserver(null);
                this.webView.destroy();
            }
            this.mHandler.removeMessages(0);
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mHandler.removeMessages(4);
            this.mHandler.removeMessages(5);
            this.mHandler.removeMessages(6);
            this.mHandler = null;
        }
        if (this.mTimer != null) {
            this.mTimer.cancel();
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.currentMessage != 2) {
            return true;
        }
        if (this.webView.canGoBack()) {
            this.webView.goBack();
            return true;
        }
        absolutelyFinish();
        return true;
    }

    private static boolean getNetTipSwitch() {
        try {
            return Storage.newStorage(QApplication.getContext(), OwnerConstant.STORAGE_OWNER_SYS).getBoolean("isNotice", SwitchEnv.getInstance().isShowNetTips());
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean hasNetworkPermission() {
        return !getNetTipSwitch();
    }

    private static boolean setNetTipSwitch(Boolean bool) {
        try {
            Storage.newStorage(QApplication.getContext(), OwnerConstant.STORAGE_OWNER_SYS).putBoolean("isNotice", bool.booleanValue());
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
