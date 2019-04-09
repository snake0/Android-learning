package com.baidu.location.b;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Handler;
import com.baidu.location.f;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.util.List;
import org.apache.commons.io.FilenameUtils;

public class h {
    public static long a = 0;
    private static h b = null;
    private WifiManager c = null;
    private a d = null;
    private g e = null;
    private long f = 0;
    private long g = 0;
    private boolean h = false;
    private Handler i = new Handler();
    private long j = 0;
    private long k = 0;

    class a extends BroadcastReceiver {
        private long b;
        private boolean c;

        private a() {
            this.b = 0;
            this.c = false;
        }

        public void onReceive(Context context, Intent intent) {
            if (context != null) {
                String action = intent.getAction();
                if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                    h.a = System.currentTimeMillis() / 1000;
                    h.this.i.post(new i(this));
                } else if (action.equals("android.net.wifi.STATE_CHANGE") && ((NetworkInfo) intent.getParcelableExtra("networkInfo")).getState().equals(State.CONNECTED) && System.currentTimeMillis() - this.b >= 5000) {
                    this.b = System.currentTimeMillis();
                    if (!this.c) {
                        this.c = true;
                    }
                }
            }
        }
    }

    private h() {
    }

    public static synchronized h a() {
        h hVar;
        synchronized (h.class) {
            if (b == null) {
                b = new h();
            }
            hVar = b;
        }
        return hVar;
    }

    private String a(long j) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(String.valueOf((int) (j & 255)));
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        stringBuffer.append(String.valueOf((int) ((j >> 8) & 255)));
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        stringBuffer.append(String.valueOf((int) ((j >> 16) & 255)));
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        stringBuffer.append(String.valueOf((int) ((j >> 24) & 255)));
        return stringBuffer.toString();
    }

    public static boolean a(g gVar, g gVar2) {
        boolean a = a(gVar, gVar2, 0.7f);
        long currentTimeMillis = System.currentTimeMillis() - com.baidu.location.a.a.c;
        return (currentTimeMillis <= 0 || currentTimeMillis >= 30000 || !a || gVar2.f() - gVar.f() <= 30) ? a : false;
    }

    public static boolean a(g gVar, g gVar2, float f) {
        if (gVar == null || gVar2 == null) {
            return false;
        }
        List list = gVar.a;
        List list2 = gVar2.a;
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null) {
            return false;
        }
        int size = list.size();
        int size2 = list2.size();
        if (size == 0 && size2 == 0) {
            return true;
        }
        if (size == 0 || size2 == 0) {
            return false;
        }
        int i = 0;
        int i2 = 0;
        while (i < size) {
            int i3;
            String str = ((ScanResult) list.get(i)).BSSID;
            if (str == null) {
                i3 = i2;
            } else {
                for (int i4 = 0; i4 < size2; i4++) {
                    if (str.equals(((ScanResult) list2.get(i4)).BSSID)) {
                        i3 = i2 + 1;
                        break;
                    }
                }
                i3 = i2;
            }
            i++;
            i2 = i3;
        }
        return ((float) i2) >= ((float) size) * f;
    }

    public static boolean i() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) f.getServiceContext().getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
        } catch (Exception e) {
            return false;
        }
    }

    private void r() {
        if (this.c != null) {
            try {
                List scanResults = this.c.getScanResults();
                if (scanResults != null) {
                    g gVar = new g(scanResults, System.currentTimeMillis());
                    if (this.e == null || !gVar.a(this.e)) {
                        this.e = gVar;
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    public void b() {
        this.j = 0;
    }

    public synchronized void c() {
        if (!this.h) {
            if (f.isServing) {
                this.c = (WifiManager) f.getServiceContext().getApplicationContext().getSystemService("wifi");
                this.d = new a();
                try {
                    f.getServiceContext().registerReceiver(this.d, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
                } catch (Exception e) {
                }
                this.h = true;
            }
        }
    }

    public synchronized void d() {
        if (this.h) {
            try {
                f.getServiceContext().unregisterReceiver(this.d);
                a = 0;
            } catch (Exception e) {
            }
            this.d = null;
            this.c = null;
            this.h = false;
        }
    }

    public boolean e() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.g > 0 && currentTimeMillis - this.g <= 5000) {
            return false;
        }
        this.g = currentTimeMillis;
        b();
        return f();
    }

    public boolean f() {
        if (this.c == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f > 0) {
            if (currentTimeMillis - this.f <= this.j + 5000 || currentTimeMillis - (a * 1000) <= this.j + 5000) {
                return false;
            }
            if (i() && currentTimeMillis - this.f <= 10000 + this.j) {
                return false;
            }
        }
        return h();
    }

    @SuppressLint({"NewApi"})
    public String g() {
        String str = "";
        if (this.c == null) {
            return str;
        }
        try {
            return (this.c.isWifiEnabled() || (VERSION.SDK_INT > 17 && this.c.isScanAlwaysAvailable())) ? "&wifio=1" : str;
        } catch (Exception | NoSuchMethodError e) {
            return str;
        }
    }

    @SuppressLint({"NewApi"})
    public boolean h() {
        long currentTimeMillis = System.currentTimeMillis() - this.k;
        if (currentTimeMillis >= 0 && currentTimeMillis <= 2000) {
            return false;
        }
        this.k = System.currentTimeMillis();
        try {
            if (!this.c.isWifiEnabled() && (VERSION.SDK_INT <= 17 || !this.c.isScanAlwaysAvailable())) {
                return false;
            }
            this.c.startScan();
            this.f = System.currentTimeMillis();
            return true;
        } catch (Exception | NoSuchMethodError e) {
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    public boolean j() {
        try {
            if ((!this.c.isWifiEnabled() && (VERSION.SDK_INT <= 17 || !this.c.isScanAlwaysAvailable())) || i()) {
                return false;
            }
            g gVar = new g(this.c.getScanResults(), 0);
            return gVar != null && gVar.e();
        } catch (Exception | NoSuchMethodError e) {
            return false;
        }
    }

    public WifiInfo k() {
        if (this.c == null) {
            return null;
        }
        try {
            WifiInfo connectionInfo = this.c.getConnectionInfo();
            if (connectionInfo == null || connectionInfo.getBSSID() == null || connectionInfo.getRssi() <= -100) {
                return null;
            }
            String bssid = connectionInfo.getBSSID();
            if (bssid != null) {
                bssid = bssid.replace(":", "");
                if ("000000000000".equals(bssid) || "".equals(bssid)) {
                    return null;
                }
            }
            return connectionInfo;
        } catch (Error | Exception e) {
            return null;
        }
    }

    public String l() {
        StringBuffer stringBuffer = new StringBuffer();
        WifiInfo k = a().k();
        if (k == null || k.getBSSID() == null) {
            return null;
        }
        String replace = k.getBSSID().replace(":", "");
        int rssi = k.getRssi();
        String m = a().m();
        if (rssi < 0) {
            rssi = -rssi;
        }
        if (replace == null || rssi >= 100) {
            return null;
        }
        stringBuffer.append("&wf=");
        stringBuffer.append(replace);
        stringBuffer.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
        stringBuffer.append("" + rssi + VoiceWakeuperAidl.PARAMS_SEPARATE);
        String ssid = k.getSSID();
        if (ssid != null && (ssid.contains("&") || ssid.contains(VoiceWakeuperAidl.PARAMS_SEPARATE))) {
            ssid = ssid.replace("&", "_");
        }
        stringBuffer.append(ssid);
        stringBuffer.append("&wf_n=1");
        if (m != null) {
            stringBuffer.append("&wf_gw=");
            stringBuffer.append(m);
        }
        return stringBuffer.toString();
    }

    public String m() {
        if (this.c == null) {
            return null;
        }
        DhcpInfo dhcpInfo = this.c.getDhcpInfo();
        return dhcpInfo != null ? a((long) dhcpInfo.gateway) : null;
    }

    public g n() {
        return (this.e == null || !this.e.i()) ? p() : this.e;
    }

    public g o() {
        return (this.e == null || !this.e.j()) ? p() : this.e;
    }

    public g p() {
        if (this.c != null) {
            try {
                return new g(this.c.getScanResults(), this.f);
            } catch (Exception e) {
            }
        }
        return new g(null, 0);
    }

    public String q() {
        try {
            WifiInfo connectionInfo = this.c.getConnectionInfo();
            return connectionInfo != null ? connectionInfo.getMacAddress() : null;
        } catch (Error | Exception e) {
            return null;
        }
    }
}
