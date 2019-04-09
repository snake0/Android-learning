package com.baidu.techain.ac;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.baidu.techain.TechainReceiver;
import com.baidu.techain.a.a;
import com.baidu.techain.b;
import com.baidu.techain.b.m;
import com.baidu.techain.b.o;
import com.baidu.techain.c;
import com.baidu.techain.core.ApkInfo;
import com.baidu.techain.core.d;
import com.baidu.techain.e;
import com.baidu.techain.jni.Asc;
import com.mqunar.tools.DateTimeUtils;
import com.mqunar.yvideo.BuildConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class U extends Thread {
    public static final int FROM_DAILY_ALARM = 6;
    public static final int FROM_DEFAULT = 0;
    public static final int FROM_HANDLE_REMOVE = 4;
    public static final int FROM_INIT = 1;
    public static final int FROM_INIT_ALARM = 2;
    public static final int FROM_NET_CHANGE = 3;
    public static final int FROM_OUT_FLASH = 5;
    public static final int NETWORK_TYPE_2G = 1;
    public static final int NETWORK_TYPE_3G = 2;
    public static final int NETWORK_TYPE_4G = 3;
    public static final int NETWORK_TYPE_MOBILE = 5;
    public static final int NETWORK_TYPE_UNCONNECTED = -1;
    public static final int NETWORK_TYPE_UNKNOWN = -2;
    public static final int NETWORK_TYPE_WIFI = 4;
    public static final int OUT_AES_FAIL = 8;
    public static final int OUT_FINISH = 1;
    public static final int OUT_NO_INTERNET = 3;
    public static final int OUT_NULL_APPKEY = 5;
    public static final int OUT_NULL_HOST_PKGINFO = 6;
    public static final int OUT_NULL_PLUGIN_JSON = 10;
    public static final int OUT_NULL_RESPONSE_JSON = 9;
    public static final int OUT_OTHER_THROWABLE = 11;
    public static final int OUT_PING_FAIL = 4;
    public static final int OUT_RESPONSE_EMPTY = 7;
    public static final int OUT_TIME_TOO_CLOSE = 2;
    public static final int OUT_UNSET = 0;
    public static final int TYPE_END = 1;
    public static final int TYPE_START = 0;
    public static final int UPGRADE_DECRYPT_FAIL = 7;
    public static final int UPGRADE_DOWNLOAD_FAIL = 4;
    public static final int UPGRADE_ERROR_CRASH_TIMES = 6;
    public static final int UPGRADE_LOAD_FAIL = 5;
    public static final int UPGRADE_MD5_FAIL = 8;
    public static final int UPGRADE_NETWORK_CHECK_FAIL = 3;
    public static final int UPGRADE_RESULT_EXCEPTION = 2;
    public static final int UPGRADE_RESULT_SUCCESS = 1;
    private static long sLastCheckTime = 0;
    public static boolean sMonitorNetworkWhenUpgradeNoNet = false;
    private static volatile boolean sOutGoing = false;
    private static boolean sPidRegister = false;
    private static int sRetryDownoadHostCareApksTimesCount = 0;
    private static int sRetryPingTimesCount = 0;
    private static boolean sSetRetrmAlarm = false;
    private Context context;
    private d forHostAPP;
    private a loadedPluginDB;
    private Map<Integer, String> mCloudKeyMap = new HashMap();
    List<Integer> mDownloadPluginsList = new ArrayList();
    private int mEndReason = 0;
    private int mFrom = 0;
    private boolean mOut = false;
    private Map<Integer, String> mStartKeyMap;
    private int mStartNetwork = -2;
    List<Integer> mUnloadPluginsList = new ArrayList();
    private Map<Integer, UpgradeResult> mUpgradeResultMap = new HashMap();
    private e preference;
    private File tmpDir;

    class UpgradeResult {
        int networkId;
        int resultId;

        public UpgradeResult(int i, int i2) {
            this.networkId = i;
            this.resultId = i2;
        }
    }

    public U(Context context, int i, boolean z) {
        this.context = context;
        this.loadedPluginDB = a.a(context);
        this.preference = new e(context);
        this.forHostAPP = d.a(context);
        this.tmpDir = new File(context.getFilesDir(), ".tmp_techain");
        this.mFrom = i;
        this.mOut = z;
    }

    public void handleWork(Context context, Intent intent) {
        this.context = context;
        this.loadedPluginDB = a.a(context);
        this.preference = new e(context);
        this.tmpDir = new File(context.getFilesDir(), ".tmp_techain");
        this.forHostAPP = d.a(context);
        this.mFrom = intent.getIntExtra("from", 0);
        b.a();
        start();
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:29:0x0054, B:466:0x0bbe] */
    /* JADX WARNING: Missing block: B:37:?, code skipped:
            com.baidu.techain.b.e.a();
     */
    /* JADX WARNING: Missing block: B:486:?, code skipped:
            com.baidu.techain.b.e.a();
     */
    public synchronized void run() {
        /*
        r25 = this;
        monitor-enter(r25);
        r0 = r25;
        r2 = r0.mOut;	 Catch:{ Throwable -> 0x006a }
        if (r2 == 0) goto L_0x0010;
    L_0x0007:
        r2 = sOutGoing;	 Catch:{ Throwable -> 0x006a }
        if (r2 == 0) goto L_0x000d;
    L_0x000b:
        monitor-exit(r25);
        return;
    L_0x000d:
        r2 = 1;
        sOutGoing = r2;	 Catch:{ Throwable -> 0x006a }
    L_0x0010:
        r11 = com.baidu.techain.ac.U.class;
        monitor-enter(r11);	 Catch:{ Throwable -> 0x0152 }
        super.run();	 Catch:{ all -> 0x014f }
        r25.handleThreadStart();	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 1;
        if (r2 == r3) goto L_0x006f;
    L_0x0020:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 2;
        if (r2 == r3) goto L_0x006f;
    L_0x0027:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 3;
        if (r2 == r3) goto L_0x006f;
    L_0x002e:
        r0 = r25;
        r2 = r0.mOut;	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x006f;
    L_0x0034:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x014f }
        r4 = sLastCheckTime;	 Catch:{ all -> 0x014f }
        r2 = r2 - r4;
        r4 = 600000; // 0x927c0 float:8.40779E-40 double:2.964394E-318;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 >= 0) goto L_0x006f;
    L_0x0042:
        r0 = r25;
        r2 = r0.mEndReason;	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x0053;
    L_0x0048:
        r2 = 2;
        r0 = r25;
        r0.mEndReason = r2;	 Catch:{ all -> 0x014f }
        r2 = 0;
        r0 = r25;
        r0.handleThreadEnd(r2);	 Catch:{ all -> 0x014f }
    L_0x0053:
        monitor-exit(r11);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.mOut;	 Catch:{ Throwable -> 0x0062 }
        if (r2 == 0) goto L_0x000b;
    L_0x005a:
        r2 = sOutGoing;	 Catch:{ Throwable -> 0x0062 }
        if (r2 == 0) goto L_0x000b;
    L_0x005e:
        r2 = 0;
        sOutGoing = r2;	 Catch:{ Throwable -> 0x0062 }
        goto L_0x000b;
    L_0x0062:
        r2 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0067 }
        goto L_0x000b;
    L_0x0067:
        r2 = move-exception;
        monitor-exit(r25);
        throw r2;
    L_0x006a:
        r2 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0067 }
        goto L_0x0010;
    L_0x006f:
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r2 = com.baidu.techain.b.e.f(r2);	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x007f;
    L_0x0079:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x014f }
        sLastCheckTime = r2;	 Catch:{ all -> 0x014f }
    L_0x007f:
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r3 = 0;
        com.baidu.techain.b.b.a(r2, r3);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r3 = com.baidu.techain.a.a.a(r2);	 Catch:{ Throwable -> 0x00c6 }
        r4 = com.baidu.techain.core.d.a(r2);	 Catch:{ Throwable -> 0x00c6 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00c6 }
        r2 = r3.a();	 Catch:{ Throwable -> 0x00c6 }
        r3 = r2.iterator();	 Catch:{ Throwable -> 0x00c6 }
    L_0x009e:
        r2 = r3.hasNext();	 Catch:{ Throwable -> 0x00c6 }
        if (r2 == 0) goto L_0x00ca;
    L_0x00a4:
        r2 = r3.next();	 Catch:{ Throwable -> 0x00c6 }
        r2 = (com.baidu.techain.core.ApkInfo) r2;	 Catch:{ Throwable -> 0x00c6 }
        r5 = r2.duration;	 Catch:{ Throwable -> 0x00c6 }
        if (r5 == 0) goto L_0x009e;
    L_0x00ae:
        r5 = r2.startTime;	 Catch:{ Throwable -> 0x00c6 }
        r7 = r2.duration;	 Catch:{ Throwable -> 0x00c6 }
        r7 = r7 * 60;
        r7 = r7 * 1000;
        r7 = (long) r7;	 Catch:{ Throwable -> 0x00c6 }
        r5 = r5 + r7;
        r7 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x00c6 }
        r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r5 >= 0) goto L_0x009e;
    L_0x00c0:
        r2 = r2.packageName;	 Catch:{ Throwable -> 0x00c6 }
        r4.a(r2);	 Catch:{ Throwable -> 0x00c6 }
        goto L_0x009e;
    L_0x00c6:
        r2 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x014f }
    L_0x00ca:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 1;
        if (r2 == r3) goto L_0x00d8;
    L_0x00d1:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 3;
        if (r2 != r3) goto L_0x00ea;
    L_0x00d8:
        r2 = 0;
        sRetryPingTimesCount = r2;	 Catch:{ all -> 0x014f }
        r2 = 0;
        sRetryDownoadHostCareApksTimesCount = r2;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r3 = 0;
        r4 = 1;
        com.baidu.techain.b.b.a(r2, r3, r4);	 Catch:{ all -> 0x014f }
        r2 = 0;
        sSetRetrmAlarm = r2;	 Catch:{ all -> 0x014f }
    L_0x00ea:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 2;
        if (r2 != r3) goto L_0x00f4;
    L_0x00f1:
        r2 = 0;
        sSetRetrmAlarm = r2;	 Catch:{ all -> 0x014f }
    L_0x00f4:
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r2 = com.baidu.techain.b.e.f(r2);	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x0195;
    L_0x00fe:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 1;
        if (r2 == r3) goto L_0x0113;
    L_0x0105:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 2;
        if (r2 == r3) goto L_0x0113;
    L_0x010c:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 3;
        if (r2 != r3) goto L_0x013c;
    L_0x0113:
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r2 = 1;
        sMonitorNetworkWhenUpgradeNoNet = r2;	 Catch:{ all -> 0x014f }
        r2 = new android.content.IntentFilter;	 Catch:{ all -> 0x014f }
        r3 = "android.net.conn.CONNECTIVITY_CHANGE";
        r2.<init>(r3);	 Catch:{ all -> 0x014f }
        r3 = com.baidu.techain.b.e.d;	 Catch:{ all -> 0x014f }
        if (r3 != 0) goto L_0x012f;
    L_0x0124:
        r3 = new com.baidu.techain.TechainReceiver;	 Catch:{ all -> 0x014f }
        r3.<init>();	 Catch:{ all -> 0x014f }
        r3 = r3.a();	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.e.d = r3;	 Catch:{ all -> 0x014f }
    L_0x012f:
        r0 = r25;
        r3 = r0.context;	 Catch:{ all -> 0x014f }
        r3 = r3.getApplicationContext();	 Catch:{ all -> 0x014f }
        r4 = com.baidu.techain.b.e.d;	 Catch:{ all -> 0x014f }
        r3.registerReceiver(r4, r2);	 Catch:{ all -> 0x014f }
    L_0x013c:
        r0 = r25;
        r2 = r0.mEndReason;	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x0147;
    L_0x0142:
        r2 = 3;
        r0 = r25;
        r0.mEndReason = r2;	 Catch:{ all -> 0x014f }
    L_0x0147:
        r2 = new android.accounts.NetworkErrorException;	 Catch:{ all -> 0x014f }
        r3 = "no internet";
        r2.<init>(r3);	 Catch:{ all -> 0x014f }
        throw r2;	 Catch:{ all -> 0x014f }
    L_0x014f:
        r2 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x014f }
        throw r2;	 Catch:{ Throwable -> 0x0152 }
    L_0x0152:
        r2 = move-exception;
        r0 = r25;
        r3 = r0.forHostAPP;	 Catch:{ Throwable -> 0x0bb7 }
        r3.b();	 Catch:{ Throwable -> 0x0bb7 }
    L_0x015a:
        r0 = r25;
        r3 = r0.mEndReason;	 Catch:{ Throwable -> 0x0be0 }
        if (r3 != 0) goto L_0x0171;
    L_0x0160:
        r3 = r2.getMessage();	 Catch:{ Throwable -> 0x0be0 }
        r4 = "response is empty";
        r3 = r3.contains(r4);	 Catch:{ Throwable -> 0x0be0 }
        if (r3 == 0) goto L_0x0bcc;
    L_0x016c:
        r3 = 7;
        r0 = r25;
        r0.mEndReason = r3;	 Catch:{ Throwable -> 0x0be0 }
    L_0x0171:
        r3 = com.baidu.techain.b.a(r2);	 Catch:{ Throwable -> 0x0be0 }
        r0 = r25;
        r0.handleThreadEnd(r3);	 Catch:{ Throwable -> 0x0be0 }
    L_0x017a:
        r2.getMessage();	 Catch:{ all -> 0x0bbd }
        com.baidu.techain.b.b();	 Catch:{ all -> 0x0bbd }
        r0 = r25;
        r2 = r0.mOut;	 Catch:{ Throwable -> 0x018f }
        if (r2 == 0) goto L_0x000b;
    L_0x0186:
        r2 = sOutGoing;	 Catch:{ Throwable -> 0x018f }
        if (r2 == 0) goto L_0x000b;
    L_0x018a:
        r2 = 0;
        sOutGoing = r2;	 Catch:{ Throwable -> 0x018f }
        goto L_0x000b;
    L_0x018f:
        r2 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0067 }
        goto L_0x000b;
    L_0x0195:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x014f }
        sLastCheckTime = r2;	 Catch:{ all -> 0x014f }
        r2 = com.baidu.techain.b.e.d;	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x01b4;
    L_0x019f:
        r2 = sMonitorNetworkWhenUpgradeNoNet;	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x01a7;
    L_0x01a3:
        r2 = com.baidu.techain.b.e.a;	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x01b4;
    L_0x01a7:
        r0 = r25;
        r2 = r0.context;	 Catch:{ Throwable -> 0x026d }
        r2 = r2.getApplicationContext();	 Catch:{ Throwable -> 0x026d }
        r3 = com.baidu.techain.b.e.d;	 Catch:{ Throwable -> 0x026d }
        r2.unregisterReceiver(r3);	 Catch:{ Throwable -> 0x026d }
    L_0x01b4:
        r2 = 0;
        sMonitorNetworkWhenUpgradeNoNet = r2;	 Catch:{ all -> 0x014f }
        r2 = 0;
        com.baidu.techain.b.e.a = r2;	 Catch:{ all -> 0x014f }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r2.<init>();	 Catch:{ all -> 0x014f }
        r3 = com.baidu.techain.b.e.b();	 Catch:{ all -> 0x014f }
        r2 = r2.append(r3);	 Catch:{ all -> 0x014f }
        r3 = "opmon";
        r2 = r2.append(r3);	 Catch:{ all -> 0x014f }
        r3 = r2.toString();	 Catch:{ all -> 0x014f }
        r2 = 0;
        r4 = new com.baidu.techain.b.m;	 Catch:{ Throwable -> 0x0273 }
        r0 = r25;
        r5 = r0.context;	 Catch:{ Throwable -> 0x0273 }
        r6 = 0;
        r4.<init>(r5, r6);	 Catch:{ Throwable -> 0x0273 }
        r2 = r4.a(r3);	 Catch:{ Throwable -> 0x0273 }
    L_0x01e0:
        r4 = android.text.TextUtils.isEmpty(r2);	 Catch:{ all -> 0x014f }
        if (r4 == 0) goto L_0x0285;
    L_0x01e6:
        r4 = new com.baidu.techain.b.m;	 Catch:{ Throwable -> 0x0279 }
        r0 = r25;
        r5 = r0.context;	 Catch:{ Throwable -> 0x0279 }
        r6 = 0;
        r4.<init>(r5, r6);	 Catch:{ Throwable -> 0x0279 }
        r2 = r4.a(r3);	 Catch:{ Throwable -> 0x0279 }
    L_0x01f4:
        r2 = android.text.TextUtils.isEmpty(r2);	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x0285;
    L_0x01fa:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 1;
        if (r2 == r3) goto L_0x0213;
    L_0x0201:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 2;
        if (r2 == r3) goto L_0x0213;
    L_0x0208:
        r0 = r25;
        r2 = r0.mFrom;	 Catch:{ all -> 0x014f }
        r3 = 3;
        if (r2 != r3) goto L_0x0234;
    L_0x020f:
        r2 = sSetRetrmAlarm;	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x0234;
    L_0x0213:
        r0 = r25;
        r2 = r0.preference;	 Catch:{ all -> 0x014f }
        r2 = r2.p();	 Catch:{ all -> 0x014f }
        r2 = r2.size();	 Catch:{ all -> 0x014f }
        if (r2 <= 0) goto L_0x0234;
    L_0x0221:
        r2 = 1;
        sSetRetrmAlarm = r2;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r3 = sRetryPingTimesCount;	 Catch:{ all -> 0x014f }
        r4 = 0;
        com.baidu.techain.b.b.a(r2, r3, r4);	 Catch:{ all -> 0x014f }
        r2 = sRetryPingTimesCount;	 Catch:{ all -> 0x014f }
        r2 = r2 + 1;
        sRetryPingTimesCount = r2;	 Catch:{ all -> 0x014f }
    L_0x0234:
        r2 = new android.content.IntentFilter;	 Catch:{ all -> 0x014f }
        r3 = "android.net.conn.CONNECTIVITY_CHANGE";
        r2.<init>(r3);	 Catch:{ all -> 0x014f }
        r3 = com.baidu.techain.b.e.d;	 Catch:{ all -> 0x014f }
        if (r3 != 0) goto L_0x027f;
    L_0x023f:
        r3 = new com.baidu.techain.TechainReceiver;	 Catch:{ all -> 0x014f }
        r3.<init>();	 Catch:{ all -> 0x014f }
        r3 = r3.a();	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.e.d = r3;	 Catch:{ all -> 0x014f }
    L_0x024a:
        r0 = r25;
        r3 = r0.context;	 Catch:{ all -> 0x014f }
        r3 = r3.getApplicationContext();	 Catch:{ all -> 0x014f }
        r4 = com.baidu.techain.b.e.d;	 Catch:{ all -> 0x014f }
        r3.registerReceiver(r4, r2);	 Catch:{ all -> 0x014f }
        r2 = 1;
        sMonitorNetworkWhenUpgradeNoNet = r2;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.mEndReason;	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x0265;
    L_0x0260:
        r2 = 4;
        r0 = r25;
        r0.mEndReason = r2;	 Catch:{ all -> 0x014f }
    L_0x0265:
        r2 = new android.accounts.NetworkErrorException;	 Catch:{ all -> 0x014f }
        r3 = "ping faild";
        r2.<init>(r3);	 Catch:{ all -> 0x014f }
        throw r2;	 Catch:{ all -> 0x014f }
    L_0x026d:
        r2 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x014f }
        goto L_0x01b4;
    L_0x0273:
        r4 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x014f }
        goto L_0x01e0;
    L_0x0279:
        r3 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x014f }
        goto L_0x01f4;
    L_0x027f:
        r3 = com.baidu.techain.b.e.d;	 Catch:{ all -> 0x014f }
        r3.a();	 Catch:{ all -> 0x014f }
        goto L_0x024a;
    L_0x0285:
        r2 = 0;
        sRetryPingTimesCount = r2;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.preference;	 Catch:{ all -> 0x014f }
        r2 = r2.a;	 Catch:{ all -> 0x014f }
        r3 = "appplg_te";
        r4 = 360; // 0x168 float:5.04E-43 double:1.78E-321;
        r2 = r2.getInt(r3, r4);	 Catch:{ all -> 0x014f }
        r3 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x014f }
        r0 = r25;
        r5 = r0.preference;	 Catch:{ all -> 0x014f }
        r5 = r5.a;	 Catch:{ all -> 0x014f }
        r6 = "plla_tm";
        r7 = 0;
        r5 = r5.getLong(r6, r7);	 Catch:{ all -> 0x014f }
        r3 = r3 - r5;
        r2 = r2 * 60;
        r2 = r2 * 1000;
        r5 = (long) r2;	 Catch:{ all -> 0x014f }
        r2 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r2 <= 0) goto L_0x03b1;
    L_0x02b2:
        r2 = 0;
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r3.<init>();	 Catch:{ all -> 0x014f }
        r4 = com.baidu.techain.b.e.b();	 Catch:{ all -> 0x014f }
        r3 = r3.append(r4);	 Catch:{ all -> 0x014f }
        r4 = "p/1/stt";
        r3 = r3.append(r4);	 Catch:{ all -> 0x014f }
        r3 = r3.toString();	 Catch:{ all -> 0x014f }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r4.<init>();	 Catch:{ all -> 0x014f }
        r4.append(r3);	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r4 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x040b }
        r4.<init>();	 Catch:{ Throwable -> 0x040b }
        r5 = "a";
        r6 = "b";
        r4.put(r5, r6);	 Catch:{ Throwable -> 0x040b }
        r4 = r4.toString();	 Catch:{ Throwable -> 0x040b }
        r0 = r25;
        r5 = r0.context;	 Catch:{ Throwable -> 0x040b }
        r6 = 1;
        r3 = com.baidu.techain.b.h.a(r5, r3, r4, r6);	 Catch:{ Throwable -> 0x040b }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x040b }
        if (r3 == 0) goto L_0x0398;
    L_0x02f3:
        r4 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x040b }
        r4.<init>(r3);	 Catch:{ Throwable -> 0x040b }
        r3 = "app";
        r3 = r4.optInt(r3);	 Catch:{ Throwable -> 0x040b }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x040b }
        r6 = "App-";
        r5.<init>(r6);	 Catch:{ Throwable -> 0x040b }
        r6 = java.lang.Integer.toString(r3);	 Catch:{ Throwable -> 0x040b }
        r5.append(r6);	 Catch:{ Throwable -> 0x040b }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x040b }
        r0 = r25;
        r5 = r0.preference;	 Catch:{ Throwable -> 0x040b }
        r6 = r5.c;	 Catch:{ Throwable -> 0x040b }
        r7 = "appinv_t";
        r6.putInt(r7, r3);	 Catch:{ Throwable -> 0x040b }
        r3 = r5.c;	 Catch:{ Throwable -> 0x040b }
        r3.commit();	 Catch:{ Throwable -> 0x040b }
        r3 = "js";
        r3 = r4.optInt(r3);	 Catch:{ Throwable -> 0x040b }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x040b }
        r6 = "JS-";
        r5.<init>(r6);	 Catch:{ Throwable -> 0x040b }
        r6 = java.lang.Integer.toString(r3);	 Catch:{ Throwable -> 0x040b }
        r5.append(r6);	 Catch:{ Throwable -> 0x040b }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x040b }
        r0 = r25;
        r5 = r0.preference;	 Catch:{ Throwable -> 0x040b }
        r6 = r5.c;	 Catch:{ Throwable -> 0x040b }
        r7 = "appinv_js";
        r6.putInt(r7, r3);	 Catch:{ Throwable -> 0x040b }
        r3 = r5.c;	 Catch:{ Throwable -> 0x040b }
        r3.commit();	 Catch:{ Throwable -> 0x040b }
        r3 = "a";
        r5 = 1;
        r3 = r4.optInt(r3, r5);	 Catch:{ Throwable -> 0x040b }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x040b }
        r6 = "get key-";
        r5.<init>(r6);	 Catch:{ Throwable -> 0x040b }
        r6 = java.lang.Integer.toString(r3);	 Catch:{ Throwable -> 0x040b }
        r5.append(r6);	 Catch:{ Throwable -> 0x040b }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x040b }
        r0 = r25;
        r5 = r0.preference;	 Catch:{ Throwable -> 0x040b }
        r6 = r5.c;	 Catch:{ Throwable -> 0x040b }
        r7 = "appinv_ky";
        r6.putInt(r7, r3);	 Catch:{ Throwable -> 0x040b }
        r3 = r5.c;	 Catch:{ Throwable -> 0x040b }
        r3.commit();	 Catch:{ Throwable -> 0x040b }
        r3 = "pi";
        r5 = 360; // 0x168 float:5.04E-43 double:1.78E-321;
        r3 = r4.optInt(r3, r5);	 Catch:{ Throwable -> 0x040b }
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x040b }
        r5 = "net Interval-";
        r4.<init>(r5);	 Catch:{ Throwable -> 0x040b }
        r5 = java.lang.Integer.toString(r3);	 Catch:{ Throwable -> 0x040b }
        r4.append(r5);	 Catch:{ Throwable -> 0x040b }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x040b }
        r0 = r25;
        r4 = r0.preference;	 Catch:{ Throwable -> 0x040b }
        r5 = r4.c;	 Catch:{ Throwable -> 0x040b }
        r6 = "appplg_te";
        r5.putInt(r6, r3);	 Catch:{ Throwable -> 0x040b }
        r3 = r4.c;	 Catch:{ Throwable -> 0x040b }
        r3.commit();	 Catch:{ Throwable -> 0x040b }
        r2 = 1;
    L_0x0398:
        if (r2 == 0) goto L_0x03b1;
    L_0x039a:
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.preference;	 Catch:{ all -> 0x014f }
        r3 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x014f }
        r5 = r2.c;	 Catch:{ all -> 0x014f }
        r6 = "plla_tm";
        r5.putLong(r6, r3);	 Catch:{ all -> 0x014f }
        r2 = r2.c;	 Catch:{ all -> 0x014f }
        r2.commit();	 Catch:{ all -> 0x014f }
    L_0x03b1:
        r2 = 0;
        r0 = r25;
        r3 = r0.context;	 Catch:{ all -> 0x014f }
        r3 = com.baidu.techain.b.e.h(r3);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r4 = r0.preference;	 Catch:{ all -> 0x014f }
        r4 = r4.a;	 Catch:{ all -> 0x014f }
        r5 = "appinv_ky";
        r6 = 1;
        r4 = r4.getInt(r5, r6);	 Catch:{ all -> 0x014f }
        r5 = 1;
        if (r4 != r5) goto L_0x03e3;
    L_0x03ca:
        if (r3 == 0) goto L_0x03e2;
    L_0x03cc:
        r4 = r3.length;	 Catch:{ all -> 0x014f }
        r5 = 2;
        if (r4 != r5) goto L_0x03e2;
    L_0x03d0:
        r4 = 0;
        r4 = r3[r4];	 Catch:{ all -> 0x014f }
        r4 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x014f }
        if (r4 != 0) goto L_0x03e2;
    L_0x03d9:
        r4 = 1;
        r3 = r3[r4];	 Catch:{ all -> 0x014f }
        r3 = android.text.TextUtils.isEmpty(r3);	 Catch:{ all -> 0x014f }
        if (r3 == 0) goto L_0x03e3;
    L_0x03e2:
        r2 = 1;
    L_0x03e3:
        if (r2 == 0) goto L_0x0410;
    L_0x03e5:
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r2 = com.baidu.techain.b.h.a(r2);	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x0410;
    L_0x03f2:
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        monitor-exit(r11);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.mOut;	 Catch:{ Throwable -> 0x0405 }
        if (r2 == 0) goto L_0x000b;
    L_0x03fc:
        r2 = sOutGoing;	 Catch:{ Throwable -> 0x0405 }
        if (r2 == 0) goto L_0x000b;
    L_0x0400:
        r2 = 0;
        sOutGoing = r2;	 Catch:{ Throwable -> 0x0405 }
        goto L_0x000b;
    L_0x0405:
        r2 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0067 }
        goto L_0x000b;
    L_0x040b:
        r3 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x014f }
        goto L_0x0398;
    L_0x0410:
        r0 = r25;
        r2 = r0.forHostAPP;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r3 = r0.context;	 Catch:{ all -> 0x014f }
        r2.b(r3);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.preference;	 Catch:{ all -> 0x014f }
        r2 = r2.e();	 Catch:{ all -> 0x014f }
        r2 = android.text.TextUtils.isEmpty(r2);	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x0437;
    L_0x0429:
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.e.o(r2);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.preference;	 Catch:{ all -> 0x014f }
        r2.e();	 Catch:{ all -> 0x014f }
    L_0x0437:
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.preference;	 Catch:{ all -> 0x014f }
        r2 = r2.a;	 Catch:{ all -> 0x014f }
        r3 = "appinv_t";
        r4 = 0;
        r2 = r2.getInt(r3, r4);	 Catch:{ all -> 0x014f }
        r3 = 1;
        if (r2 != r3) goto L_0x0451;
    L_0x044a:
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.e.p(r2);	 Catch:{ all -> 0x014f }
    L_0x0451:
        r0 = r25;
        r2 = r0.loadedPluginDB;	 Catch:{ all -> 0x014f }
        r2.d();	 Catch:{ all -> 0x014f }
        r5 = new org.json.JSONObject;	 Catch:{ all -> 0x014f }
        r5.<init>();	 Catch:{ all -> 0x014f }
        r3 = new org.json.JSONObject;	 Catch:{ all -> 0x014f }
        r3.<init>();	 Catch:{ all -> 0x014f }
        r4 = new org.json.JSONObject;	 Catch:{ all -> 0x014f }
        r4.<init>();	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r6 = r2.getPackageName();	 Catch:{ all -> 0x014f }
        r2 = "pk";
        r4.put(r2, r6);	 Catch:{ all -> 0x014f }
        r2 = "pk";
        r3.put(r2, r6);	 Catch:{ all -> 0x014f }
        r2 = "dm";
        r7 = android.os.Build.MODEL;	 Catch:{ all -> 0x014f }
        r3.put(r2, r7);	 Catch:{ all -> 0x014f }
        r2 = "dm";
        r7 = android.os.Build.MODEL;	 Catch:{ all -> 0x014f }
        r4.put(r2, r7);	 Catch:{ all -> 0x014f }
        r2 = "cuid";
        r0 = r25;
        r7 = r0.context;	 Catch:{ all -> 0x014f }
        r7 = com.baidu.techain.b.g.a(r7);	 Catch:{ all -> 0x014f }
        r3.put(r2, r7);	 Catch:{ all -> 0x014f }
        r2 = "al";
        r7 = android.os.Build.VERSION.SDK_INT;	 Catch:{ all -> 0x014f }
        r7 = java.lang.String.valueOf(r7);	 Catch:{ all -> 0x014f }
        r3.put(r2, r7);	 Catch:{ all -> 0x014f }
        r2 = "al";
        r7 = android.os.Build.VERSION.SDK_INT;	 Catch:{ all -> 0x014f }
        r7 = java.lang.String.valueOf(r7);	 Catch:{ all -> 0x014f }
        r4.put(r2, r7);	 Catch:{ all -> 0x014f }
        r2 = "3.1.6.1";
        r7 = "ev";
        r3.put(r7, r2);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r7 = r2.getPackageManager();	 Catch:{ all -> 0x014f }
        r2 = 0;
        r8 = 64;
        r2 = r7.getPackageInfo(r6, r8);	 Catch:{ Throwable -> 0x0567 }
    L_0x04c0:
        if (r2 == 0) goto L_0x057c;
    L_0x04c2:
        r6 = "av";
        r7 = r2.versionName;	 Catch:{ all -> 0x014f }
        r3.put(r6, r7);	 Catch:{ all -> 0x014f }
        r6 = "av";
        r7 = r2.versionName;	 Catch:{ all -> 0x014f }
        r4.put(r6, r7);	 Catch:{ all -> 0x014f }
        r6 = r2.applicationInfo;	 Catch:{ all -> 0x014f }
        r6 = r6.sourceDir;	 Catch:{ all -> 0x014f }
        r2 = com.baidu.techain.b.e.a(r2, r6);	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x050a;
    L_0x04da:
        r2 = r2.getEncoded();	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x056d;
    L_0x04e0:
        r0 = r25;
        r6 = r0.context;	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.e.a(r6, r2);	 Catch:{ all -> 0x014f }
        r6 = 0;
        r2 = android.util.Base64.encodeToString(r2, r6);	 Catch:{ all -> 0x014f }
        r6 = "\n";
        r7 = "";
        r2 = r2.replace(r6, r7);	 Catch:{ all -> 0x014f }
        r6 = "\r";
        r7 = "";
        r2 = r2.replace(r6, r7);	 Catch:{ all -> 0x014f }
        r2 = com.baidu.techain.b.o.a(r2);	 Catch:{ all -> 0x014f }
        r6 = "sm";
        r3.put(r6, r2);	 Catch:{ all -> 0x014f }
        r6 = "sm";
        r4.put(r6, r2);	 Catch:{ all -> 0x014f }
    L_0x050a:
        r2 = "or";
        r0 = r25;
        r6 = r0.preference;	 Catch:{ all -> 0x014f }
        r6 = r6.a;	 Catch:{ all -> 0x014f }
        r7 = "opi";
        r8 = 0;
        r6 = r6.getInt(r7, r8);	 Catch:{ all -> 0x014f }
        r3.put(r2, r6);	 Catch:{ all -> 0x014f }
        r2 = "pt";
        r0 = r25;
        r6 = r0.preference;	 Catch:{ all -> 0x014f }
        r6 = r6.f();	 Catch:{ all -> 0x014f }
        r3.put(r2, r6);	 Catch:{ all -> 0x014f }
        r2 = "device";
        r5.put(r2, r3);	 Catch:{ all -> 0x014f }
        r6 = new org.json.JSONArray;	 Catch:{ all -> 0x014f }
        r6.<init>();	 Catch:{ all -> 0x014f }
        r6.put(r4);	 Catch:{ all -> 0x014f }
        r7 = new java.util.HashMap;	 Catch:{ all -> 0x014f }
        r7.<init>();	 Catch:{ all -> 0x014f }
        r2 = com.baidu.techain.b.e.e;	 Catch:{ all -> 0x014f }
        r7.putAll(r2);	 Catch:{ all -> 0x014f }
        r2 = r7.keySet();	 Catch:{ all -> 0x014f }
        r8 = r2.iterator();	 Catch:{ all -> 0x014f }
    L_0x0548:
        r2 = r8.hasNext();	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x0595;
    L_0x054e:
        r2 = r8.next();	 Catch:{ all -> 0x014f }
        r2 = (java.lang.String) r2;	 Catch:{ all -> 0x014f }
        r2 = r7.get(r2);	 Catch:{ all -> 0x014f }
        r2 = (java.lang.String) r2;	 Catch:{ all -> 0x014f }
        r4 = 0;
        r3 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x058f }
        r3.<init>(r2);	 Catch:{ Throwable -> 0x058f }
        r2 = r3;
    L_0x0561:
        if (r2 == 0) goto L_0x0548;
    L_0x0563:
        r6.put(r2);	 Catch:{ all -> 0x014f }
        goto L_0x0548;
    L_0x0567:
        r6 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x014f }
        goto L_0x04c0;
    L_0x056d:
        r2 = "sm";
        r6 = "";
        r3.put(r2, r6);	 Catch:{ all -> 0x014f }
        r2 = "sm";
        r6 = "";
        r4.put(r2, r6);	 Catch:{ all -> 0x014f }
        goto L_0x050a;
    L_0x057c:
        r0 = r25;
        r2 = r0.mEndReason;	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x0587;
    L_0x0582:
        r2 = 6;
        r0 = r25;
        r0.mEndReason = r2;	 Catch:{ all -> 0x014f }
    L_0x0587:
        r2 = new android.accounts.NetworkErrorException;	 Catch:{ all -> 0x014f }
        r3 = "hostPkgInfo is null";
        r2.<init>(r3);	 Catch:{ all -> 0x014f }
        throw r2;	 Catch:{ all -> 0x014f }
    L_0x058f:
        r2 = move-exception;
        r2 = r4;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x014f }
        goto L_0x0561;
    L_0x0595:
        r2 = "host_apps";
        r5.put(r2, r6);	 Catch:{ all -> 0x014f }
        r2 = r5.toString();	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r3.<init>();	 Catch:{ all -> 0x014f }
        r4 = com.baidu.techain.b.e.b();	 Catch:{ all -> 0x014f }
        r3 = r3.append(r4);	 Catch:{ all -> 0x014f }
        r4 = "p/1/pls";
        r3 = r3.append(r4);	 Catch:{ all -> 0x014f }
        r3 = r3.toString();	 Catch:{ all -> 0x014f }
        r4 = sPidRegister;	 Catch:{ all -> 0x014f }
        if (r4 != 0) goto L_0x05db;
    L_0x05bc:
        r0 = r25;
        r4 = r0.preference;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r5 = r0.preference;	 Catch:{ all -> 0x014f }
        r5 = r5.t();	 Catch:{ all -> 0x014f }
        r5 = r5 + 1;
        r4.e(r5);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r4 = r0.preference;	 Catch:{ all -> 0x014f }
        r5 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x014f }
        r4.b(r5);	 Catch:{ all -> 0x014f }
        r4 = 1;
        sPidRegister = r4;	 Catch:{ all -> 0x014f }
    L_0x05db:
        r0 = r25;
        r4 = r0.preference;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r5 = r0.preference;	 Catch:{ all -> 0x014f }
        r5 = r5.r();	 Catch:{ all -> 0x014f }
        r5 = r5 + 1;
        r4.d(r5);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r4 = r0.context;	 Catch:{ all -> 0x014f }
        r5 = 1;
        r4 = com.baidu.techain.b.h.a(r4, r3, r2, r5);	 Catch:{ all -> 0x014f }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r2.<init>();	 Catch:{ all -> 0x014f }
        r2.append(r4);	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r3 = 0;
        r2 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x061c }
        r2.<init>(r4);	 Catch:{ Throwable -> 0x061c }
    L_0x0606:
        if (r2 != 0) goto L_0x0622;
    L_0x0608:
        r0 = r25;
        r2 = r0.mEndReason;	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x0614;
    L_0x060e:
        r2 = 9;
        r0 = r25;
        r0.mEndReason = r2;	 Catch:{ all -> 0x014f }
    L_0x0614:
        r2 = new android.accounts.NetworkErrorException;	 Catch:{ all -> 0x014f }
        r3 = "response json is null";
        r2.<init>(r3);	 Catch:{ all -> 0x014f }
        throw r2;	 Catch:{ all -> 0x014f }
    L_0x061c:
        r2 = move-exception;
        r2 = r3;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x014f }
        goto L_0x0606;
    L_0x0622:
        r0 = r25;
        r3 = r0.loadedPluginDB;	 Catch:{ all -> 0x014f }
        r12 = r3.a();	 Catch:{ all -> 0x014f }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r4 = "a=";
        r3.<init>(r4);	 Catch:{ all -> 0x014f }
        r3.append(r12);	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r13 = new java.util.ArrayList;	 Catch:{ all -> 0x014f }
        r13.<init>();	 Catch:{ all -> 0x014f }
        r14 = new java.util.ArrayList;	 Catch:{ all -> 0x014f }
        r14.<init>();	 Catch:{ all -> 0x014f }
        r15 = new java.util.ArrayList;	 Catch:{ all -> 0x014f }
        r15.<init>();	 Catch:{ all -> 0x014f }
        r3 = "product";
        r3 = r2.optJSONArray(r3);	 Catch:{ all -> 0x014f }
        r4 = "pt";
        r4 = r2.optLong(r4);	 Catch:{ all -> 0x014f }
        if (r3 == 0) goto L_0x0672;
    L_0x0654:
        r6 = r3.length();	 Catch:{ all -> 0x014f }
        if (r6 <= 0) goto L_0x0672;
    L_0x065a:
        r6 = 0;
        r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r6 <= 0) goto L_0x0672;
    L_0x0660:
        r0 = r25;
        r6 = r0.preference;	 Catch:{ all -> 0x014f }
        r3 = r3.toString();	 Catch:{ all -> 0x014f }
        r6.a(r3, r4);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r3 = r0.context;	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.e.j(r3);	 Catch:{ all -> 0x014f }
    L_0x0672:
        r3 = "plugin";
        r16 = r2.optJSONObject(r3);	 Catch:{ all -> 0x014f }
        if (r16 != 0) goto L_0x068e;
    L_0x067a:
        r0 = r25;
        r2 = r0.mEndReason;	 Catch:{ all -> 0x014f }
        if (r2 != 0) goto L_0x0686;
    L_0x0680:
        r2 = 10;
        r0 = r25;
        r0.mEndReason = r2;	 Catch:{ all -> 0x014f }
    L_0x0686:
        r2 = new android.accounts.NetworkErrorException;	 Catch:{ all -> 0x014f }
        r3 = "plugin json is null";
        r2.<init>(r3);	 Catch:{ all -> 0x014f }
        throw r2;	 Catch:{ all -> 0x014f }
    L_0x068e:
        r0 = r16;
        r2 = r0 instanceof org.json.JSONObject;	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x09d9;
    L_0x0694:
        r17 = r16.keys();	 Catch:{ all -> 0x014f }
    L_0x0698:
        r2 = r17.hasNext();	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x09d9;
    L_0x069e:
        r4 = r17.next();	 Catch:{ all -> 0x014f }
        r4 = (java.lang.String) r4;	 Catch:{ all -> 0x014f }
        r0 = r16;
        r18 = r0.optJSONObject(r4);	 Catch:{ all -> 0x014f }
        r2 = "l";
        r0 = r18;
        r3 = r0.optInt(r2);	 Catch:{ all -> 0x014f }
        r2 = "v";
        r0 = r18;
        r5 = r0.optString(r2);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.mCloudKeyMap;	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x06cb;
    L_0x06c0:
        r0 = r25;
        r2 = r0.mCloudKeyMap;	 Catch:{ all -> 0x014f }
        r6 = java.lang.Integer.valueOf(r3);	 Catch:{ all -> 0x014f }
        r2.put(r6, r5);	 Catch:{ all -> 0x014f }
    L_0x06cb:
        r2 = "u";
        r0 = r18;
        r6 = r0.optString(r2);	 Catch:{ all -> 0x014f }
        r2 = "m";
        r0 = r18;
        r7 = r0.optString(r2);	 Catch:{ all -> 0x014f }
        r2 = "sm";
        r0 = r18;
        r2 = r0.optString(r2);	 Catch:{ all -> 0x014f }
        if (r7 == 0) goto L_0x06e9;
    L_0x06e5:
        r7 = r7.toLowerCase();	 Catch:{ all -> 0x014f }
    L_0x06e9:
        if (r2 == 0) goto L_0x0bf3;
    L_0x06eb:
        r2 = r2.toLowerCase();	 Catch:{ all -> 0x014f }
        r10 = r2;
    L_0x06f0:
        r2 = "o";
        r0 = r18;
        r2 = r0.optInt(r2);	 Catch:{ all -> 0x014f }
        r8 = 1;
        if (r2 != r8) goto L_0x074a;
    L_0x06fb:
        r2 = 1;
        r9 = r2;
    L_0x06fd:
        r2 = "d";
        r0 = r18;
        r2 = r0.optInt(r2);	 Catch:{ all -> 0x014f }
        r8 = 1;
        if (r2 != r8) goto L_0x074d;
    L_0x0708:
        r2 = 1;
    L_0x0709:
        r8 = "r";
        r0 = r18;
        r8 = r0.optInt(r8);	 Catch:{ all -> 0x014f }
        if (r9 == 0) goto L_0x0741;
    L_0x0713:
        r0 = r25;
        r0 = r0.preference;	 Catch:{ all -> 0x014f }
        r19 = r0;
        r0 = r19;
        r0 = r0.a;	 Catch:{ all -> 0x014f }
        r20 = r0;
        r21 = "opi";
        r22 = 0;
        r20 = r20.getInt(r21, r22);	 Catch:{ all -> 0x014f }
        r0 = r20;
        if (r8 <= r0) goto L_0x0741;
    L_0x072b:
        r0 = r19;
        r0 = r0.c;	 Catch:{ all -> 0x014f }
        r20 = r0;
        r21 = "opi";
        r0 = r20;
        r1 = r21;
        r0.putInt(r1, r8);	 Catch:{ all -> 0x014f }
        r0 = r19;
        r8 = r0.c;	 Catch:{ all -> 0x014f }
        r8.commit();	 Catch:{ all -> 0x014f }
    L_0x0741:
        if (r9 == 0) goto L_0x074f;
    L_0x0743:
        if (r2 == 0) goto L_0x074f;
    L_0x0745:
        r15.add(r4);	 Catch:{ all -> 0x014f }
        goto L_0x0698;
    L_0x074a:
        r2 = 0;
        r9 = r2;
        goto L_0x06fd;
    L_0x074d:
        r2 = 0;
        goto L_0x0709;
    L_0x074f:
        r8 = new android.content.pm.PackageInfo;	 Catch:{ Throwable -> 0x0868 }
        r8.<init>();	 Catch:{ Throwable -> 0x0868 }
        r2 = "p";
        r0 = r18;
        r2 = r0.optString(r2);	 Catch:{ Throwable -> 0x0868 }
        r8.packageName = r2;	 Catch:{ Throwable -> 0x0868 }
        r2 = "v";
        r0 = r18;
        r2 = r0.optString(r2);	 Catch:{ Throwable -> 0x0868 }
        r8.versionName = r2;	 Catch:{ Throwable -> 0x0868 }
        r2 = new android.content.pm.ApplicationInfo;	 Catch:{ Throwable -> 0x0868 }
        r2.<init>();	 Catch:{ Throwable -> 0x0868 }
        r19 = "n";
        r19 = r18.optString(r19);	 Catch:{ Throwable -> 0x0868 }
        r0 = r19;
        r2.className = r0;	 Catch:{ Throwable -> 0x0868 }
        r0 = r2.className;	 Catch:{ Throwable -> 0x0868 }
        r19 = r0;
        r19 = android.text.TextUtils.isEmpty(r19);	 Catch:{ Throwable -> 0x0868 }
        if (r19 != 0) goto L_0x07a8;
    L_0x0781:
        r0 = r2.className;	 Catch:{ Throwable -> 0x0868 }
        r19 = r0;
        r20 = ".";
        r19 = r19.startsWith(r20);	 Catch:{ Throwable -> 0x0868 }
        if (r19 == 0) goto L_0x07a8;
    L_0x078d:
        r19 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0868 }
        r19.<init>();	 Catch:{ Throwable -> 0x0868 }
        r0 = r19;
        r19 = r0.append(r4);	 Catch:{ Throwable -> 0x0868 }
        r0 = r2.className;	 Catch:{ Throwable -> 0x0868 }
        r20 = r0;
        r19 = r19.append(r20);	 Catch:{ Throwable -> 0x0868 }
        r19 = r19.toString();	 Catch:{ Throwable -> 0x0868 }
        r0 = r19;
        r2.className = r0;	 Catch:{ Throwable -> 0x0868 }
    L_0x07a8:
        r19 = "t";
        r19 = r18.optInt(r19);	 Catch:{ Throwable -> 0x0868 }
        r0 = r19;
        r2.theme = r0;	 Catch:{ Throwable -> 0x0868 }
        r8.applicationInfo = r2;	 Catch:{ Throwable -> 0x0868 }
        r2 = "a";
        r0 = r18;
        r19 = r0.optJSONArray(r2);	 Catch:{ Throwable -> 0x0868 }
        if (r19 == 0) goto L_0x086e;
    L_0x07be:
        r2 = r19.length();	 Catch:{ Throwable -> 0x0868 }
        if (r2 <= 0) goto L_0x086e;
    L_0x07c4:
        r20 = new java.util.ArrayList;	 Catch:{ Throwable -> 0x0868 }
        r20.<init>();	 Catch:{ Throwable -> 0x0868 }
        r2 = 0;
    L_0x07ca:
        r21 = r19.length();	 Catch:{ Throwable -> 0x0868 }
        r0 = r21;
        if (r2 >= r0) goto L_0x08fa;
    L_0x07d2:
        r0 = r19;
        r21 = r0.getJSONObject(r2);	 Catch:{ Throwable -> 0x0863 }
        if (r21 == 0) goto L_0x085f;
    L_0x07da:
        r22 = new android.content.pm.ActivityInfo;	 Catch:{ Throwable -> 0x0863 }
        r22.<init>();	 Catch:{ Throwable -> 0x0863 }
        r23 = "n";
        r0 = r21;
        r1 = r23;
        r23 = r0.optString(r1);	 Catch:{ Throwable -> 0x0863 }
        r0 = r23;
        r1 = r22;
        r1.name = r0;	 Catch:{ Throwable -> 0x0863 }
        r0 = r22;
        r0 = r0.name;	 Catch:{ Throwable -> 0x0863 }
        r23 = r0;
        r23 = android.text.TextUtils.isEmpty(r23);	 Catch:{ Throwable -> 0x0863 }
        if (r23 != 0) goto L_0x0828;
    L_0x07fb:
        r0 = r22;
        r0 = r0.name;	 Catch:{ Throwable -> 0x0863 }
        r23 = r0;
        r24 = ".";
        r23 = r23.startsWith(r24);	 Catch:{ Throwable -> 0x0863 }
        if (r23 == 0) goto L_0x0828;
    L_0x0809:
        r23 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0863 }
        r23.<init>();	 Catch:{ Throwable -> 0x0863 }
        r0 = r23;
        r23 = r0.append(r4);	 Catch:{ Throwable -> 0x0863 }
        r0 = r22;
        r0 = r0.name;	 Catch:{ Throwable -> 0x0863 }
        r24 = r0;
        r23 = r23.append(r24);	 Catch:{ Throwable -> 0x0863 }
        r23 = r23.toString();	 Catch:{ Throwable -> 0x0863 }
        r0 = r23;
        r1 = r22;
        r1.name = r0;	 Catch:{ Throwable -> 0x0863 }
    L_0x0828:
        r0 = r22;
        r0.packageName = r4;	 Catch:{ Throwable -> 0x0863 }
        r23 = "t";
        r0 = r21;
        r1 = r23;
        r23 = r0.optInt(r1);	 Catch:{ Throwable -> 0x0863 }
        r0 = r23;
        r1 = r22;
        r1.theme = r0;	 Catch:{ Throwable -> 0x0863 }
        r23 = "l";
        r0 = r21;
        r1 = r23;
        r21 = r0.optInt(r1);	 Catch:{ Throwable -> 0x0863 }
        r0 = r21;
        r1 = r22;
        r1.labelRes = r0;	 Catch:{ Throwable -> 0x0863 }
        r0 = r22;
        r0 = r0.name;	 Catch:{ Throwable -> 0x0863 }
        r21 = r0;
        r21 = android.text.TextUtils.isEmpty(r21);	 Catch:{ Throwable -> 0x0863 }
        if (r21 != 0) goto L_0x085f;
    L_0x0858:
        r0 = r20;
        r1 = r22;
        r0.add(r1);	 Catch:{ Throwable -> 0x0863 }
    L_0x085f:
        r2 = r2 + 1;
        goto L_0x07ca;
    L_0x0863:
        r21 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0868 }
        goto L_0x085f;
    L_0x0868:
        r2 = move-exception;
        r2 = 0;
        r8 = r2;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x014f }
    L_0x086e:
        r2 = new com.baidu.techain.core.ApkInfo;	 Catch:{ all -> 0x014f }
        r2.<init>(r3, r4, r5, r6, r7);	 Catch:{ all -> 0x014f }
        if (r9 == 0) goto L_0x0912;
    L_0x0875:
        r4 = 1;
    L_0x0876:
        r2.isOnce = r4;	 Catch:{ all -> 0x014f }
        r4 = "pr";
        r0 = r18;
        r4 = r0.getInt(r4);	 Catch:{ Throwable -> 0x0915 }
        r2.priority = r4;	 Catch:{ Throwable -> 0x0915 }
    L_0x0882:
        r4 = "mem";
        r0 = r18;
        r4 = r0.optInt(r4);	 Catch:{ all -> 0x014f }
        r5 = 1;
        if (r4 != r5) goto L_0x091b;
    L_0x088d:
        r4 = 1;
    L_0x088e:
        r2.isMem = r4;	 Catch:{ all -> 0x014f }
        if (r8 == 0) goto L_0x0894;
    L_0x0892:
        r2.cloudPkgInfo = r8;	 Catch:{ all -> 0x014f }
    L_0x0894:
        r4 = "e";
        r0 = r18;
        r4 = r0.optJSONObject(r4);	 Catch:{ all -> 0x014f }
        if (r4 == 0) goto L_0x08ae;
    L_0x089e:
        r5 = "d";
        r5 = r4.optInt(r5);	 Catch:{ all -> 0x014f }
        r6 = "n";
        r4 = r4.optInt(r6);	 Catch:{ all -> 0x014f }
        r2.duration = r5;	 Catch:{ all -> 0x014f }
        r2.network = r4;	 Catch:{ all -> 0x014f }
    L_0x08ae:
        r4 = "ext";
        r0 = r18;
        r4 = r0.optJSONObject(r4);	 Catch:{ all -> 0x014f }
        if (r4 == 0) goto L_0x0925;
    L_0x08b8:
        r5 = "a";
        r4 = r4.optInt(r5);	 Catch:{ all -> 0x014f }
        r5 = 1;
        if (r4 != r5) goto L_0x0925;
    L_0x08c1:
        r0 = r25;
        r4 = r0.preference;	 Catch:{ all -> 0x014f }
        r5 = r4.p();	 Catch:{ all -> 0x014f }
        if (r3 <= 0) goto L_0x0925;
    L_0x08cb:
        r4 = java.lang.Integer.valueOf(r3);	 Catch:{ all -> 0x014f }
        r4 = r5.contains(r4);	 Catch:{ all -> 0x014f }
        if (r4 != 0) goto L_0x0925;
    L_0x08d5:
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ all -> 0x014f }
        r5.add(r3);	 Catch:{ all -> 0x014f }
        r3 = r5.size();	 Catch:{ all -> 0x014f }
        r6 = new int[r3];	 Catch:{ all -> 0x014f }
        r3 = 0;
        r4 = r3;
    L_0x08e4:
        r3 = r5.size();	 Catch:{ all -> 0x014f }
        if (r4 >= r3) goto L_0x091e;
    L_0x08ea:
        r3 = r5.get(r4);	 Catch:{ all -> 0x014f }
        r3 = (java.lang.Integer) r3;	 Catch:{ all -> 0x014f }
        r3 = r3.intValue();	 Catch:{ all -> 0x014f }
        r6[r4] = r3;	 Catch:{ all -> 0x014f }
        r3 = r4 + 1;
        r4 = r3;
        goto L_0x08e4;
    L_0x08fa:
        r2 = r20.size();	 Catch:{ Throwable -> 0x0868 }
        if (r2 <= 0) goto L_0x086e;
    L_0x0900:
        r2 = r20.size();	 Catch:{ Throwable -> 0x0868 }
        r2 = new android.content.pm.ActivityInfo[r2];	 Catch:{ Throwable -> 0x0868 }
        r0 = r20;
        r2 = r0.toArray(r2);	 Catch:{ Throwable -> 0x0868 }
        r2 = (android.content.pm.ActivityInfo[]) r2;	 Catch:{ Throwable -> 0x0868 }
        r8.activities = r2;	 Catch:{ Throwable -> 0x0868 }
        goto L_0x086e;
    L_0x0912:
        r4 = 0;
        goto L_0x0876;
    L_0x0915:
        r4 = move-exception;
        r4 = -1;
        r2.priority = r4;	 Catch:{ all -> 0x014f }
        goto L_0x0882;
    L_0x091b:
        r4 = 0;
        goto L_0x088e;
    L_0x091e:
        r0 = r25;
        r3 = r0.preference;	 Catch:{ all -> 0x014f }
        r3.a(r6);	 Catch:{ all -> 0x014f }
    L_0x0925:
        r2.signMD5 = r10;	 Catch:{ all -> 0x014f }
        r3 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x014f }
        r2.startTime = r3;	 Catch:{ all -> 0x014f }
        r4 = r12.indexOf(r2);	 Catch:{ all -> 0x014f }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r5 = "t=";
        r3.<init>(r5);	 Catch:{ all -> 0x014f }
        r3 = r3.append(r2);	 Catch:{ all -> 0x014f }
        r5 = ", i=";
        r3 = r3.append(r5);	 Catch:{ all -> 0x014f }
        r3.append(r4);	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        if (r4 < 0) goto L_0x09c1;
    L_0x094a:
        r3 = r12.get(r4);	 Catch:{ all -> 0x014f }
        r3 = (com.baidu.techain.core.ApkInfo) r3;	 Catch:{ all -> 0x014f }
        r5 = r2.versionName;	 Catch:{ all -> 0x014f }
        r6 = r3.versionName;	 Catch:{ all -> 0x014f }
        r5 = com.baidu.techain.b.e.c(r5, r6);	 Catch:{ all -> 0x014f }
        if (r5 == 0) goto L_0x09a8;
    L_0x095a:
        r5 = com.baidu.techain.core.d.d;	 Catch:{ all -> 0x014f }
        if (r5 == 0) goto L_0x0970;
    L_0x095e:
        r5 = com.baidu.techain.core.d.d;	 Catch:{ all -> 0x014f }
        if (r5 == 0) goto L_0x09a8;
    L_0x0962:
        r5 = com.baidu.techain.core.d.d;	 Catch:{ all -> 0x014f }
        r6 = r2.key;	 Catch:{ all -> 0x014f }
        r6 = java.lang.Integer.valueOf(r6);	 Catch:{ all -> 0x014f }
        r5 = r5.contains(r6);	 Catch:{ all -> 0x014f }
        if (r5 != 0) goto L_0x09a8;
    L_0x0970:
        r5 = r3.priority;	 Catch:{ all -> 0x014f }
        r6 = r2.priority;	 Catch:{ all -> 0x014f }
        if (r5 == r6) goto L_0x0981;
    L_0x0976:
        r0 = r25;
        r5 = r0.loadedPluginDB;	 Catch:{ all -> 0x014f }
        r6 = r2.key;	 Catch:{ all -> 0x014f }
        r7 = r2.priority;	 Catch:{ all -> 0x014f }
        r5.c(r6, r7);	 Catch:{ all -> 0x014f }
    L_0x0981:
        r0 = r25;
        r5 = r0.loadedPluginDB;	 Catch:{ all -> 0x014f }
        r3 = r3.key;	 Catch:{ all -> 0x014f }
        r3 = r5.e(r3);	 Catch:{ all -> 0x014f }
        if (r3 != 0) goto L_0x09a3;
    L_0x098d:
        r14.add(r2);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r3 = r0.mDownloadPluginsList;	 Catch:{ all -> 0x014f }
        if (r3 == 0) goto L_0x09a3;
    L_0x0996:
        r0 = r25;
        r3 = r0.mDownloadPluginsList;	 Catch:{ all -> 0x014f }
        r2 = r2.key;	 Catch:{ all -> 0x014f }
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ all -> 0x014f }
        r3.add(r2);	 Catch:{ all -> 0x014f }
    L_0x09a3:
        r12.remove(r4);	 Catch:{ all -> 0x014f }
        goto L_0x0698;
    L_0x09a8:
        r5 = r3.priority;	 Catch:{ all -> 0x014f }
        r6 = r2.priority;	 Catch:{ all -> 0x014f }
        if (r5 == r6) goto L_0x09bd;
    L_0x09ae:
        r5 = r2.priority;	 Catch:{ all -> 0x014f }
        r3.priority = r5;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r5 = r0.loadedPluginDB;	 Catch:{ all -> 0x014f }
        r6 = r2.key;	 Catch:{ all -> 0x014f }
        r2 = r2.priority;	 Catch:{ all -> 0x014f }
        r5.c(r6, r2);	 Catch:{ all -> 0x014f }
    L_0x09bd:
        r13.add(r3);	 Catch:{ all -> 0x014f }
        goto L_0x09a3;
    L_0x09c1:
        r14.add(r2);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r3 = r0.mDownloadPluginsList;	 Catch:{ all -> 0x014f }
        if (r3 == 0) goto L_0x0698;
    L_0x09ca:
        r0 = r25;
        r3 = r0.mDownloadPluginsList;	 Catch:{ all -> 0x014f }
        r2 = r2.key;	 Catch:{ all -> 0x014f }
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ all -> 0x014f }
        r3.add(r2);	 Catch:{ all -> 0x014f }
        goto L_0x0698;
    L_0x09d9:
        r2 = com.baidu.techain.core.d.d;	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x09e2;
    L_0x09dd:
        r2 = com.baidu.techain.core.d.d;	 Catch:{ all -> 0x014f }
        r2.clear();	 Catch:{ all -> 0x014f }
    L_0x09e2:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r2.<init>();	 Catch:{ all -> 0x014f }
        r2.append(r12);	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r3 = r12.iterator();	 Catch:{ all -> 0x014f }
    L_0x09f1:
        r2 = r3.hasNext();	 Catch:{ all -> 0x014f }
        if (r2 == 0) goto L_0x0a22;
    L_0x09f7:
        r2 = r3.next();	 Catch:{ all -> 0x014f }
        r2 = (com.baidu.techain.core.ApkInfo) r2;	 Catch:{ all -> 0x014f }
        r4 = r2.packageName;	 Catch:{ all -> 0x014f }
        r4 = r15.contains(r4);	 Catch:{ all -> 0x014f }
        if (r4 != 0) goto L_0x09f1;
    L_0x0a05:
        r0 = r25;
        r4 = r0.mUnloadPluginsList;	 Catch:{ all -> 0x014f }
        if (r4 == 0) goto L_0x0a18;
    L_0x0a0b:
        r0 = r25;
        r4 = r0.mUnloadPluginsList;	 Catch:{ all -> 0x014f }
        r5 = r2.key;	 Catch:{ all -> 0x014f }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ all -> 0x014f }
        r4.add(r5);	 Catch:{ all -> 0x014f }
    L_0x0a18:
        r0 = r25;
        r4 = r0.forHostAPP;	 Catch:{ all -> 0x014f }
        r2 = r2.packageName;	 Catch:{ all -> 0x014f }
        r4.a(r2);	 Catch:{ all -> 0x014f }
        goto L_0x09f1;
    L_0x0a22:
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.e.c(r2);	 Catch:{ all -> 0x014f }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r2.<init>();	 Catch:{ all -> 0x014f }
        r2.append(r13);	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.context;	 Catch:{ all -> 0x014f }
        r2 = r2.getApplicationContext();	 Catch:{ all -> 0x014f }
        r5 = com.baidu.techain.core.g.a(r2);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.preference;	 Catch:{ all -> 0x014f }
        r3 = r2.q();	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.preference;	 Catch:{ all -> 0x014f }
        r4 = r2.p();	 Catch:{ all -> 0x014f }
        r2 = 0;
    L_0x0a51:
        r6 = r4.size();	 Catch:{ all -> 0x014f }
        if (r2 >= r6) goto L_0x0a6b;
    L_0x0a57:
        r6 = r4.get(r2);	 Catch:{ all -> 0x014f }
        r6 = r3.contains(r6);	 Catch:{ all -> 0x014f }
        if (r6 != 0) goto L_0x0a68;
    L_0x0a61:
        r6 = r4.get(r2);	 Catch:{ all -> 0x014f }
        r3.add(r6);	 Catch:{ all -> 0x014f }
    L_0x0a68:
        r2 = r2 + 1;
        goto L_0x0a51;
    L_0x0a6b:
        r6 = new java.util.ArrayList;	 Catch:{ all -> 0x014f }
        r6.<init>();	 Catch:{ all -> 0x014f }
        r6.addAll(r13);	 Catch:{ all -> 0x014f }
        r6.addAll(r14);	 Catch:{ all -> 0x014f }
        r2 = new com.baidu.techain.ac.U$1;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2.<init>(r3);	 Catch:{ all -> 0x014f }
        java.util.Collections.sort(r6, r2);	 Catch:{ all -> 0x014f }
        r2 = 0;
        r4 = r2;
    L_0x0a82:
        r2 = r6.size();	 Catch:{ all -> 0x014f }
        if (r4 >= r2) goto L_0x0b90;
    L_0x0a88:
        r2 = r6.get(r4);	 Catch:{ all -> 0x014f }
        r2 = (com.baidu.techain.core.ApkInfo) r2;	 Catch:{ all -> 0x014f }
        r3 = r13.contains(r2);	 Catch:{ all -> 0x014f }
        if (r3 == 0) goto L_0x0b78;
    L_0x0a94:
        r3 = r2.packageName;	 Catch:{ all -> 0x014f }
        r3 = r5.d(r3);	 Catch:{ all -> 0x014f }
        if (r3 != 0) goto L_0x0b17;
    L_0x0a9c:
        r0 = r25;
        r3 = r0.loadedPluginDB;	 Catch:{ all -> 0x014f }
        r7 = r2.key;	 Catch:{ all -> 0x014f }
        r7 = r3.g(r7);	 Catch:{ all -> 0x014f }
        r3 = 1;
        r8 = 3;
        if (r7 != r8) goto L_0x0aae;
    L_0x0aaa:
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        r3 = 0;
    L_0x0aae:
        r0 = r25;
        r7 = r0.preference;	 Catch:{ all -> 0x014f }
        r7 = r7.d();	 Catch:{ all -> 0x014f }
        if (r7 == 0) goto L_0x0b1c;
    L_0x0ab8:
        if (r3 == 0) goto L_0x0b1c;
    L_0x0aba:
        r3 = new java.io.File;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r7 = r0.context;	 Catch:{ all -> 0x014f }
        r7 = r7.getFilesDir();	 Catch:{ all -> 0x014f }
        r8 = ".b_techain";
        r3.<init>(r7, r8);	 Catch:{ all -> 0x014f }
        r7 = r3.exists();	 Catch:{ all -> 0x014f }
        if (r7 != 0) goto L_0x0ad2;
    L_0x0acf:
        r3.mkdir();	 Catch:{ all -> 0x014f }
    L_0x0ad2:
        r7 = new java.io.File;	 Catch:{ all -> 0x014f }
        r8 = r2.pkgPath;	 Catch:{ all -> 0x014f }
        r7.<init>(r8);	 Catch:{ all -> 0x014f }
        r8 = new java.io.File;	 Catch:{ all -> 0x014f }
        r9 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r9.<init>();	 Catch:{ all -> 0x014f }
        r10 = r2.key;	 Catch:{ all -> 0x014f }
        r9 = r9.append(r10);	 Catch:{ all -> 0x014f }
        r10 = "-";
        r9 = r9.append(r10);	 Catch:{ all -> 0x014f }
        r10 = r2.versionName;	 Catch:{ all -> 0x014f }
        r9 = r9.append(r10);	 Catch:{ all -> 0x014f }
        r9 = r9.toString();	 Catch:{ all -> 0x014f }
        r8.<init>(r3, r9);	 Catch:{ all -> 0x014f }
        r3 = com.baidu.techain.b.e.a(r8);	 Catch:{ all -> 0x014f }
        if (r3 != 0) goto L_0x0b02;
    L_0x0aff:
        com.baidu.techain.b.e.a(r7, r8);	 Catch:{ all -> 0x014f }
    L_0x0b02:
        r0 = r25;
        r3 = r0.context;	 Catch:{ all -> 0x014f }
        r9 = r2.key;	 Catch:{ all -> 0x014f }
        com.baidu.techain.c.a(r3, r9, r7, r8);	 Catch:{ all -> 0x014f }
    L_0x0b0b:
        r0 = r25;
        r3 = r0.forHostAPP;	 Catch:{ all -> 0x014f }
        r7 = r2.key;	 Catch:{ all -> 0x014f }
        r2 = r2.versionName;	 Catch:{ all -> 0x014f }
        r8 = 0;
        r3.a(r7, r2, r8);	 Catch:{ all -> 0x014f }
    L_0x0b17:
        r2 = r4 + 1;
        r4 = r2;
        goto L_0x0a82;
    L_0x0b1c:
        r3 = new java.io.File;	 Catch:{ all -> 0x014f }
        r0 = r25;
        r7 = r0.context;	 Catch:{ all -> 0x014f }
        r7 = r7.getFilesDir();	 Catch:{ all -> 0x014f }
        r8 = ".b_techain";
        r3.<init>(r7, r8);	 Catch:{ all -> 0x014f }
        r7 = r3.exists();	 Catch:{ all -> 0x014f }
        if (r7 == 0) goto L_0x0b0b;
    L_0x0b31:
        r7 = new java.io.File;	 Catch:{ all -> 0x014f }
        r8 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r8.<init>();	 Catch:{ all -> 0x014f }
        r9 = r2.key;	 Catch:{ all -> 0x014f }
        r8 = r8.append(r9);	 Catch:{ all -> 0x014f }
        r9 = "-";
        r8 = r8.append(r9);	 Catch:{ all -> 0x014f }
        r9 = r2.versionName;	 Catch:{ all -> 0x014f }
        r8 = r8.append(r9);	 Catch:{ all -> 0x014f }
        r8 = r8.toString();	 Catch:{ all -> 0x014f }
        r7.<init>(r3, r8);	 Catch:{ all -> 0x014f }
        r3 = com.baidu.techain.b.e.a(r7);	 Catch:{ all -> 0x014f }
        if (r3 == 0) goto L_0x0b0b;
    L_0x0b57:
        com.baidu.techain.c.a(r7);	 Catch:{ all -> 0x014f }
        r3 = r7.delete();	 Catch:{ all -> 0x014f }
        r8 = new java.lang.StringBuilder;	 Catch:{ all -> 0x014f }
        r8.<init>();	 Catch:{ all -> 0x014f }
        r7 = r7.getAbsolutePath();	 Catch:{ all -> 0x014f }
        r7 = r8.append(r7);	 Catch:{ all -> 0x014f }
        r8 = " s=";
        r7 = r7.append(r8);	 Catch:{ all -> 0x014f }
        r7.append(r3);	 Catch:{ all -> 0x014f }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x014f }
        goto L_0x0b0b;
    L_0x0b78:
        r3 = r14.contains(r2);	 Catch:{ all -> 0x014f }
        if (r3 == 0) goto L_0x0b17;
    L_0x0b7e:
        r0 = r25;
        r3 = r0.loadedPluginDB;	 Catch:{ all -> 0x014f }
        r7 = r2.key;	 Catch:{ all -> 0x014f }
        r3 = r3.e(r7);	 Catch:{ all -> 0x014f }
        if (r3 != 0) goto L_0x0b17;
    L_0x0b8a:
        r0 = r25;
        r0.handlePluginUpgrade(r2);	 Catch:{ all -> 0x014f }
        goto L_0x0b17;
    L_0x0b90:
        monitor-exit(r11);	 Catch:{ all -> 0x014f }
        r0 = r25;
        r2 = r0.mEndReason;	 Catch:{ Throwable -> 0x0152 }
        if (r2 != 0) goto L_0x0b9c;
    L_0x0b97:
        r2 = 1;
        r0 = r25;
        r0.mEndReason = r2;	 Catch:{ Throwable -> 0x0152 }
    L_0x0b9c:
        r2 = 0;
        r0 = r25;
        r0.handleThreadEnd(r2);	 Catch:{ Throwable -> 0x0152 }
        r0 = r25;
        r2 = r0.mOut;	 Catch:{ Throwable -> 0x0bb1 }
        if (r2 == 0) goto L_0x000b;
    L_0x0ba8:
        r2 = sOutGoing;	 Catch:{ Throwable -> 0x0bb1 }
        if (r2 == 0) goto L_0x000b;
    L_0x0bac:
        r2 = 0;
        sOutGoing = r2;	 Catch:{ Throwable -> 0x0bb1 }
        goto L_0x000b;
    L_0x0bb1:
        r2 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0067 }
        goto L_0x000b;
    L_0x0bb7:
        r3 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0bbd }
        goto L_0x015a;
    L_0x0bbd:
        r2 = move-exception;
        r0 = r25;
        r3 = r0.mOut;	 Catch:{ Throwable -> 0x0bee }
        if (r3 == 0) goto L_0x0bcb;
    L_0x0bc4:
        r3 = sOutGoing;	 Catch:{ Throwable -> 0x0bee }
        if (r3 == 0) goto L_0x0bcb;
    L_0x0bc8:
        r3 = 0;
        sOutGoing = r3;	 Catch:{ Throwable -> 0x0bee }
    L_0x0bcb:
        throw r2;	 Catch:{ all -> 0x0067 }
    L_0x0bcc:
        r3 = r2.getMessage();	 Catch:{ Throwable -> 0x0be0 }
        r4 = "aes is fail";
        r3 = r3.contains(r4);	 Catch:{ Throwable -> 0x0be0 }
        if (r3 == 0) goto L_0x0be6;
    L_0x0bd8:
        r3 = 8;
        r0 = r25;
        r0.mEndReason = r3;	 Catch:{ Throwable -> 0x0be0 }
        goto L_0x0171;
    L_0x0be0:
        r3 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0bbd }
        goto L_0x017a;
    L_0x0be6:
        r3 = 11;
        r0 = r25;
        r0.mEndReason = r3;	 Catch:{ Throwable -> 0x0be0 }
        goto L_0x0171;
    L_0x0bee:
        r3 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0067 }
        goto L_0x0bcb;
    L_0x0bf3:
        r10 = r2;
        goto L_0x06f0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.ac.U.run():void");
    }

    private void handleThreadEnd(String str) {
        try {
            this.preference.g(this.preference.v() + 1);
            if (this.mEndReason != 0) {
                this.preference.a(1, this.mEndReason, this.preference.a(1, this.mEndReason) + 1);
            }
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
        try {
            Map hashMap = new HashMap();
            if (this.mStartKeyMap != null) {
                hashMap.put(BuildConfig.VERSION_NAME, this.mStartKeyMap.keySet());
                hashMap.put("2", this.mStartKeyMap.values());
            }
            hashMap.put("3", Integer.valueOf(this.mFrom));
            if (this.mCloudKeyMap != null) {
                hashMap.put("4", this.mCloudKeyMap.keySet());
                hashMap.put("5", this.mCloudKeyMap.values());
            }
            if (this.mUnloadPluginsList != null) {
                hashMap.put("6", this.mUnloadPluginsList);
            }
            if (this.mDownloadPluginsList != null) {
                hashMap.put("7", this.mDownloadPluginsList);
            }
            if (this.mUpgradeResultMap != null) {
                JSONObject jSONObject = new JSONObject();
                for (Entry entry : this.mUpgradeResultMap.entrySet()) {
                    JSONObject jSONObject2 = new JSONObject();
                    int intValue = ((Integer) entry.getKey()).intValue();
                    UpgradeResult upgradeResult = (UpgradeResult) entry.getValue();
                    if (upgradeResult != null) {
                        jSONObject2.put(BuildConfig.VERSION_NAME, upgradeResult.networkId);
                        jSONObject2.put("0", upgradeResult.resultId);
                    }
                    jSONObject.put(String.valueOf(intValue), jSONObject2);
                }
                hashMap.put("8", jSONObject);
            }
            Map b = this.loadedPluginDB.b();
            hashMap.put("9", b.keySet());
            hashMap.put("10", b.values());
            hashMap.put("11", Integer.valueOf(this.mEndReason));
            if (!TextUtils.isEmpty(str)) {
                hashMap.put("12", str.replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\t", "").replace("\r", ""));
            }
            hashMap.put("13", Integer.valueOf(this.mStartNetwork));
            hashMap.put("14", Integer.valueOf(com.baidu.techain.b.e.l(this.context)));
            com.baidu.techain.b.e.a(this.context, "1003129", hashMap);
        } catch (Throwable th2) {
            com.baidu.techain.b.e.a();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x00c1 A:{Catch:{ Throwable -> 0x0115 }} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x00c1 A:{Catch:{ Throwable -> 0x0115 }} */
    private void handleThreadStart() {
        /*
        r13 = this;
        r12 = 11;
        r11 = 6;
        r9 = 0;
        r0 = 1;
        r1 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r1 = r1.a;	 Catch:{ Throwable -> 0x00e7 }
        r2 = "slruct";
        r3 = 0;
        r1 = r1.getLong(r2, r3);	 Catch:{ Throwable -> 0x00e7 }
        r3 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x00e7 }
        r5 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1));
        if (r5 <= 0) goto L_0x00dd;
    L_0x001a:
        r5 = r3 - r1;
        r7 = 86400000; // 0x5265c00 float:7.82218E-36 double:4.2687272E-316;
        r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r5 <= 0) goto L_0x00dd;
    L_0x0023:
        r2 = new java.util.HashMap;	 Catch:{ Throwable -> 0x00e7 }
        r2.<init>();	 Catch:{ Throwable -> 0x00e7 }
        r1 = "1";
        r5 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r5 = r5.u();	 Catch:{ Throwable -> 0x00e7 }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ Throwable -> 0x00e7 }
        r2.put(r1, r5);	 Catch:{ Throwable -> 0x00e7 }
        r1 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r5 = 0;
        r1.f(r5);	 Catch:{ Throwable -> 0x00e7 }
        r5 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x00e7 }
        r5.<init>();	 Catch:{ Throwable -> 0x00e7 }
        r1 = r0;
    L_0x0043:
        if (r1 > r11) goto L_0x005d;
    L_0x0045:
        r6 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r7 = 0;
        r6 = r6.a(r7, r1);	 Catch:{ Throwable -> 0x00e7 }
        r7 = java.lang.String.valueOf(r1);	 Catch:{ Throwable -> 0x00e7 }
        r5.put(r7, r6);	 Catch:{ Throwable -> 0x00e7 }
        r6 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r7 = 0;
        r8 = 0;
        r6.a(r7, r1, r8);	 Catch:{ Throwable -> 0x00e7 }
        r1 = r1 + 1;
        goto L_0x0043;
    L_0x005d:
        r1 = "2";
        r2.put(r1, r5);	 Catch:{ Throwable -> 0x00e7 }
        r1 = "3";
        r5 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r5 = r5.v();	 Catch:{ Throwable -> 0x00e7 }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ Throwable -> 0x00e7 }
        r2.put(r1, r5);	 Catch:{ Throwable -> 0x00e7 }
        r1 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r5 = 0;
        r1.g(r5);	 Catch:{ Throwable -> 0x00e7 }
        r5 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x00e7 }
        r5.<init>();	 Catch:{ Throwable -> 0x00e7 }
        r1 = r0;
    L_0x007d:
        if (r1 > r12) goto L_0x0097;
    L_0x007f:
        r6 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r7 = 1;
        r6 = r6.a(r7, r1);	 Catch:{ Throwable -> 0x00e7 }
        r7 = java.lang.String.valueOf(r1);	 Catch:{ Throwable -> 0x00e7 }
        r5.put(r7, r6);	 Catch:{ Throwable -> 0x00e7 }
        r6 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r7 = 1;
        r8 = 0;
        r6.a(r7, r1, r8);	 Catch:{ Throwable -> 0x00e7 }
        r1 = r1 + 1;
        goto L_0x007d;
    L_0x0097:
        r1 = "4";
        r2.put(r1, r5);	 Catch:{ Throwable -> 0x00e7 }
        r1 = r13.context;	 Catch:{ Throwable -> 0x00e7 }
        r5 = "1003128";
        com.baidu.techain.b.e.a(r1, r5, r2);	 Catch:{ Throwable -> 0x00e7 }
        r1 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r1.c(r3);	 Catch:{ Throwable -> 0x00e7 }
    L_0x00a8:
        r0 = r13.loadedPluginDB;	 Catch:{ Throwable -> 0x0115 }
        r0 = r0.b();	 Catch:{ Throwable -> 0x0115 }
        r13.mStartKeyMap = r0;	 Catch:{ Throwable -> 0x0115 }
        r0 = r13.preference;	 Catch:{ Throwable -> 0x0115 }
        r1 = r13.preference;	 Catch:{ Throwable -> 0x0115 }
        r1 = r1.u();	 Catch:{ Throwable -> 0x0115 }
        r1 = r1 + 1;
        r0.f(r1);	 Catch:{ Throwable -> 0x0115 }
        r0 = r13.mFrom;	 Catch:{ Throwable -> 0x0115 }
        if (r0 == 0) goto L_0x00d4;
    L_0x00c1:
        r0 = r13.preference;	 Catch:{ Throwable -> 0x0115 }
        r1 = 0;
        r2 = r13.mFrom;	 Catch:{ Throwable -> 0x0115 }
        r3 = r13.preference;	 Catch:{ Throwable -> 0x0115 }
        r4 = 0;
        r5 = r13.mFrom;	 Catch:{ Throwable -> 0x0115 }
        r3 = r3.a(r4, r5);	 Catch:{ Throwable -> 0x0115 }
        r3 = r3 + 1;
        r0.a(r1, r2, r3);	 Catch:{ Throwable -> 0x0115 }
    L_0x00d4:
        r0 = r13.context;	 Catch:{ Throwable -> 0x0115 }
        r0 = com.baidu.techain.b.e.l(r0);	 Catch:{ Throwable -> 0x0115 }
        r13.mStartNetwork = r0;	 Catch:{ Throwable -> 0x0115 }
    L_0x00dc:
        return;
    L_0x00dd:
        r1 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1));
        if (r1 != 0) goto L_0x00a8;
    L_0x00e1:
        r1 = r13.preference;	 Catch:{ Throwable -> 0x00e7 }
        r1.c(r3);	 Catch:{ Throwable -> 0x00e7 }
        goto L_0x00a8;
    L_0x00e7:
        r1 = move-exception;
        r1 = r13.preference;	 Catch:{ Throwable -> 0x010d }
        r2 = 0;
        r1.f(r2);	 Catch:{ Throwable -> 0x010d }
        r1 = r13.preference;	 Catch:{ Throwable -> 0x010d }
        r2 = 0;
        r1.g(r2);	 Catch:{ Throwable -> 0x010d }
        r1 = r0;
    L_0x00f5:
        if (r1 > r11) goto L_0x0101;
    L_0x00f7:
        r2 = r13.preference;	 Catch:{ Throwable -> 0x010d }
        r3 = 0;
        r4 = 0;
        r2.a(r3, r1, r4);	 Catch:{ Throwable -> 0x010d }
        r1 = r1 + 1;
        goto L_0x00f5;
    L_0x0101:
        if (r0 > r12) goto L_0x0111;
    L_0x0103:
        r1 = r13.preference;	 Catch:{ Throwable -> 0x010d }
        r2 = 1;
        r3 = 0;
        r1.a(r2, r0, r3);	 Catch:{ Throwable -> 0x010d }
        r0 = r0 + 1;
        goto L_0x0101;
    L_0x010d:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
    L_0x0111:
        com.baidu.techain.b.e.a();
        goto L_0x00a8;
    L_0x0115:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00dc;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.ac.U.handleThreadStart():void");
    }

    private void handlePluginUpgrade(ApkInfo apkInfo) {
        IntentFilter intentFilter;
        try {
            int l = com.baidu.techain.b.e.l(this.context);
            new StringBuilder("a=").append(apkInfo);
            b.a();
            List p = this.preference.p();
            if (p.contains(Integer.valueOf(apkInfo.key)) || com.baidu.techain.b.e.a(this.context, apkInfo.network)) {
                File file;
                if (!this.tmpDir.exists()) {
                    this.tmpDir.mkdir();
                }
                StringBuilder stringBuilder = new StringBuilder("before update, time=" + System.currentTimeMillis() + ", ");
                ApkInfo a = this.loadedPluginDB.a(apkInfo.key);
                if (a == null) {
                    stringBuilder.append("apkInDB == null");
                } else {
                    file = new File(a.pkgPath);
                    stringBuilder.append("origAPK path:" + file.getAbsolutePath() + ", exists=" + file.exists() + ", canRead=" + file.canRead() + ", isFile=" + file.isFile() + ",length" + file.length());
                }
                File file2 = new File(this.tmpDir, apkInfo.key + "-" + apkInfo.versionName + ".tmp");
                file = new File(this.tmpDir, apkInfo.key + "-" + apkInfo.versionName + ".zip");
                boolean a2 = new m(this.context).a(apkInfo.downloadURL, file2);
                b.a();
                if (a2) {
                    if (file.exists()) {
                        b.a();
                        file.delete();
                    }
                    Asc asc = new Asc();
                    byte[] bytes = apkInfo.signMD5.substring(0, apkInfo.signMD5.length() / 2).getBytes("utf-8");
                    b.a();
                    com.baidu.techain.b.e.f("12");
                    if (com.baidu.techain.b.a.a(file2, file, bytes) != 0) {
                        b.a();
                        if (file.exists()) {
                            file.delete();
                        }
                        com.baidu.techain.b.e.f("13");
                        if (asc.df(file2.getAbsolutePath(), file.getAbsolutePath(), bytes) != 0) {
                            com.baidu.techain.b.e.f("14");
                            b.a();
                            if (!(this.mUpgradeResultMap == null || this.mUpgradeResultMap.keySet().contains(Integer.valueOf(apkInfo.key)))) {
                                this.mUpgradeResultMap.put(Integer.valueOf(apkInfo.key), new UpgradeResult(l, 7));
                            }
                            a2 = false;
                        }
                    }
                } else if (!(this.mUpgradeResultMap == null || this.mUpgradeResultMap.keySet().contains(Integer.valueOf(apkInfo.key)))) {
                    this.mUpgradeResultMap.put(Integer.valueOf(apkInfo.key), new UpgradeResult(l, 4));
                }
                new StringBuilder().append(a2);
                b.a();
                String a3 = o.a(file);
                new StringBuilder("ds=").append(a2).append(", fm=").append(apkInfo.apkMD5).append(", am=").append(a3);
                b.a();
                file2.delete();
                if (a2 && apkInfo.apkMD5.equals(a3)) {
                    com.baidu.techain.b.e.a(file.getAbsolutePath(), true);
                    if (this.preference.d()) {
                        File file3 = new File(this.context.getFilesDir(), ".b_techain");
                        if (!file3.exists()) {
                            file3.mkdir();
                        }
                        File file4 = new File(file3, apkInfo.key + "-" + apkInfo.versionName);
                        com.baidu.techain.b.e.a(file, file4);
                        c.a(this.context, apkInfo.key, file, file4);
                    }
                    apkInfo.pkgPath = file.getAbsolutePath();
                    a2 = this.forHostAPP.a(apkInfo, "before update, time=" + System.currentTimeMillis() + ", downloadAPK path:" + file.getAbsolutePath() + ", exists=" + file.exists() + ", canRead=" + file.canRead() + ", isFile=" + file.isFile() + ",length" + file.length());
                    new StringBuilder().append(apkInfo.packageName).append(" s=").append(a2);
                    b.a();
                    if (a2) {
                        int g = this.loadedPluginDB.g(apkInfo.key);
                        new StringBuilder("new plugin now loadStatus :").append(apkInfo.key).append(" ").append(g);
                        b.a();
                        if (g < 3 && g != -1) {
                            this.loadedPluginDB.b(apkInfo.key, g + 1);
                        }
                        if (this.mUpgradeResultMap != null) {
                            this.mUpgradeResultMap.put(Integer.valueOf(apkInfo.key), new UpgradeResult(l, 1));
                            return;
                        }
                        return;
                    } else if (this.mUpgradeResultMap != null && !this.mUpgradeResultMap.keySet().contains(Integer.valueOf(apkInfo.key))) {
                        this.mUpgradeResultMap.put(Integer.valueOf(apkInfo.key), new UpgradeResult(l, 5));
                        return;
                    } else {
                        return;
                    }
                }
                if (!(this.mUpgradeResultMap == null || this.mUpgradeResultMap.keySet().contains(Integer.valueOf(apkInfo.key)))) {
                    this.mUpgradeResultMap.put(Integer.valueOf(apkInfo.key), new UpgradeResult(l, 8));
                }
                if (this.mFrom == 1 || this.mFrom == 2 || this.mFrom == 3) {
                    if (p.contains(Integer.valueOf(apkInfo.key)) && !sSetRetrmAlarm) {
                        sSetRetrmAlarm = true;
                        com.baidu.techain.b.b.a(this.context, sRetryDownoadHostCareApksTimesCount, false);
                        sRetryDownoadHostCareApksTimesCount++;
                    }
                    if (!sMonitorNetworkWhenUpgradeNoNet) {
                        intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
                        if (com.baidu.techain.b.e.d == null) {
                            com.baidu.techain.b.e.d = new TechainReceiver().a();
                        } else {
                            com.baidu.techain.b.e.d.a();
                        }
                        this.context.getApplicationContext().registerReceiver(com.baidu.techain.b.e.d, intentFilter);
                        sMonitorNetworkWhenUpgradeNoNet = true;
                    }
                }
                long currentTimeMillis = System.currentTimeMillis();
                e eVar = this.preference;
                long j = eVar.a.getLong("pu_ap_fd", 0);
                if (j == 0) {
                    j = System.currentTimeMillis();
                    eVar.g();
                }
                if (currentTimeMillis - j > DateTimeUtils.ONE_DAY) {
                    Map hashMap = new HashMap();
                    if (com.baidu.techain.b.e.e(this.context)) {
                        hashMap.put("0", Integer.valueOf(this.preference.h() + 1));
                        hashMap.put(BuildConfig.VERSION_NAME, Integer.valueOf(this.preference.i()));
                    } else {
                        hashMap.put("0", Integer.valueOf(this.preference.h()));
                        hashMap.put(BuildConfig.VERSION_NAME, Integer.valueOf(this.preference.i() + 1));
                    }
                    this.preference.a(0);
                    this.preference.b(0);
                    this.preference.g();
                    com.baidu.techain.b.e.a(this.context, "1003116", hashMap);
                } else if (com.baidu.techain.b.e.e(this.context)) {
                    this.preference.a(this.preference.h() + 1);
                } else {
                    this.preference.b(this.preference.i() + 1);
                }
                b.a();
                file.delete();
                return;
            } else if (this.mUpgradeResultMap != null && !this.mUpgradeResultMap.keySet().contains(Integer.valueOf(apkInfo.key))) {
                this.mUpgradeResultMap.put(Integer.valueOf(apkInfo.key), new UpgradeResult(l, 3));
                return;
            } else {
                return;
            }
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
            return;
        }
        List p2 = this.preference.p();
        if (this.mFrom == 1 || this.mFrom == 2 || this.mFrom == 3) {
            if (p2.contains(Integer.valueOf(apkInfo.key)) && !sSetRetrmAlarm) {
                sSetRetrmAlarm = true;
                com.baidu.techain.b.b.a(this.context, sRetryDownoadHostCareApksTimesCount, false);
                sRetryDownoadHostCareApksTimesCount++;
            }
            if (!sMonitorNetworkWhenUpgradeNoNet) {
                intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
                if (com.baidu.techain.b.e.d == null) {
                    com.baidu.techain.b.e.d = new TechainReceiver().a();
                } else {
                    com.baidu.techain.b.e.d.a();
                }
                this.context.getApplicationContext().registerReceiver(com.baidu.techain.b.e.d, intentFilter);
                sMonitorNetworkWhenUpgradeNoNet = true;
            }
        }
    }

    public static void handleUploadPidChange(Context context, Intent intent) {
        try {
            b.a();
            com.baidu.techain.b.b.a(context);
            e eVar = new e(context);
            JSONArray jSONArray = new JSONArray();
            String string = eVar.a.getString("pdcgts", "");
            com.baidu.techain.b.e.i(context);
            if (!TextUtils.isEmpty(string)) {
                for (CharSequence charSequence : string.split("_")) {
                    if (!TextUtils.isEmpty(charSequence)) {
                        jSONArray.put(Long.valueOf(charSequence));
                    }
                }
            }
            Map hashMap = new HashMap();
            hashMap.put("0", Integer.valueOf(eVar.r()));
            hashMap.put(BuildConfig.VERSION_NAME, Integer.valueOf(eVar.t()));
            hashMap.put("2", jSONArray);
            eVar.d(0);
            eVar.e(0);
            eVar.b(0);
            com.baidu.techain.b.e.a(context, "1003122", hashMap);
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }
}
