package qunar.sdk.location;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.http.Headers;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;

public class LocationFacade implements QunarGPSLocationListener {
    static final String LOC = "loc";
    private static final int REQUEST_LOCATION = 52;
    private static final LocSub SUBJECT = new LocSub();
    private static QLocation debugLoc = null;
    private static boolean isDebugModle = false;
    private Context context;
    private QunarGPSLocationListener eListener;
    private BDGPSCoorType gpsCoorType = BDGPSCoorType.JWDTYPE;
    private boolean hasRequestPermission = false;
    private QunarGPSLocationStrategy locationStrategy;
    protected boolean mDestroy = false;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    protected boolean mPause = true;
    protected boolean mResume = true;
    private int msgId;
    private boolean stopRequestMyLocOnGet = true;
    private long timeout = 15000;
    private QunarGPSLocationTimeoutCallback timeoutCallback;

    class LocSub {
        boolean changed = false;
        List<QunarGPSLocationListener> observers = new ArrayList();
        List<QunarGPSLocationStrategy> strategies = new ArrayList();

        public void addObserver(QunarGPSLocationListener qunarGPSLocationListener) {
            if (qunarGPSLocationListener == null) {
                throw new NullPointerException();
            }
            synchronized (this) {
                if (!this.observers.contains(qunarGPSLocationListener)) {
                    this.observers.add(qunarGPSLocationListener);
                }
            }
        }

        public void addObserver(QunarGPSLocationStrategy qunarGPSLocationStrategy) {
            synchronized (this) {
                if (!this.strategies.contains(qunarGPSLocationStrategy)) {
                    this.strategies.add(qunarGPSLocationStrategy);
                }
            }
        }

        /* Access modifiers changed, original: protected */
        public void clearChanged() {
            this.changed = false;
        }

        public int countObservers() {
            return this.observers.size();
        }

        public synchronized void deleteObserver(QunarGPSLocationListener qunarGPSLocationListener) {
            this.observers.remove(qunarGPSLocationListener);
        }

        public synchronized void deleteObserver(QunarGPSLocationListener qunarGPSLocationListener, QunarGPSLocationStrategy qunarGPSLocationStrategy) {
            this.observers.remove(qunarGPSLocationListener);
            if (qunarGPSLocationStrategy != null) {
                qunarGPSLocationStrategy.forceStopLocation();
            }
            this.strategies.remove(qunarGPSLocationStrategy);
        }

        public synchronized void deleteObservers() {
            if (!(this.observers == null || this.observers.isEmpty())) {
                this.observers.clear();
            }
            if (!(this.strategies == null || this.strategies.isEmpty())) {
                for (QunarGPSLocationStrategy qunarGPSLocationStrategy : this.strategies) {
                    if (qunarGPSLocationStrategy != null) {
                        qunarGPSLocationStrategy.forceStopLocation();
                    }
                }
                this.strategies.clear();
            }
        }

        public boolean hasChanged() {
            return this.changed;
        }

        public void notifyObservers() {
            notifyObservers(null);
        }

        public void notifyObservers(QLocation qLocation) {
            QunarGPSLocationListener[] qunarGPSLocationListenerArr;
            synchronized (this) {
                if (hasChanged()) {
                    clearChanged();
                    QunarGPSLocationListener[] qunarGPSLocationListenerArr2 = new QunarGPSLocationListener[this.observers.size()];
                    this.observers.toArray(qunarGPSLocationListenerArr2);
                    qunarGPSLocationListenerArr = qunarGPSLocationListenerArr2;
                } else {
                    qunarGPSLocationListenerArr = null;
                }
            }
            if (qunarGPSLocationListenerArr != null) {
                for (QunarGPSLocationListener onReceiveLocation : qunarGPSLocationListenerArr) {
                    onReceiveLocation.onReceiveLocation(qLocation);
                }
            }
        }

        /* Access modifiers changed, original: protected */
        public void setChanged() {
            this.changed = true;
        }
    }

    public void setGpsCoorType(BDGPSCoorType bDGPSCoorType) {
        this.gpsCoorType = bDGPSCoorType;
    }

    public static void initGPSCache(Context context) {
        QunarGPSLocationStrategy.newestGPS = GPSStorageUtils.getLastGPS(context);
    }

    public LocationFacade(Context context, QunarGPSLocationListener qunarGPSLocationListener, Bundle bundle) {
        this.context = context;
        this.eListener = qunarGPSLocationListener;
        if (bundle == null || !bundle.containsKey(LOC)) {
            QunarGPSLocationStrategy.newestGPS = GPSStorageUtils.getLastGPS(context);
            return;
        }
        Location location = (Location) bundle.getParcelable(LOC);
        if (location != null) {
            try {
                QunarGPSLocationStrategy.newestGPS = new QLocation(location.getLatitude(), location.getLongitude());
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
    }

    public void stopAfterLocationChanged(boolean z) {
        this.stopRequestMyLocOnGet = z;
    }

    public void setResumeAndPause(boolean z, boolean z2) {
        this.mResume = z;
        this.mPause = z2;
    }

    /* Access modifiers changed, original: protected */
    public boolean stopPaused() {
        return this.mPause;
    }

    /* Access modifiers changed, original: protected */
    public boolean startResumed() {
        return this.mResume;
    }

    public static void setDebug(boolean z, QLocation qLocation) {
        isDebugModle = z;
        debugLoc = qLocation;
        QunarGPSLocationStrategy.newestGPS = null;
    }

    public void createLocStrategy(QunarGPSLocationType qunarGPSLocationType, QunarGPSOption qunarGPSOption) {
        if (this.locationStrategy == null) {
            this.locationStrategy = createLocStrategy(qunarGPSLocationType);
        }
        this.locationStrategy.setELocationListener(this);
        this.locationStrategy.setOption(qunarGPSOption);
        SUBJECT.addObserver(this.locationStrategy);
    }

    private QunarGPSLocationStrategy createLocStrategy(QunarGPSLocationType qunarGPSLocationType) {
        switch (qunarGPSLocationType) {
            case BAIDU:
                return new BDLocationStrategy(this.context);
            default:
                return null;
        }
    }

    /* JADX WARNING: Missing block: B:7:0x001f, code skipped:
            r0 = new qunar.sdk.location.BDGPSOption(true, qunar.sdk.location.BDGPSCoorType.JWDTYPE, qunar.sdk.location.BDGPSLocationMode.Hight_Accuracy, 5000, r5);
     */
    /* JADX WARNING: Missing block: B:8:0x0028, code skipped:
            createLocStrategy(qunar.sdk.location.QunarGPSLocationType.BAIDU, r0);
     */
    private boolean startLoc(boolean r7, boolean r8, int r9) {
        /*
        r6 = this;
        r4 = 5000; // 0x1388 float:7.006E-42 double:2.4703E-320;
        r1 = 1;
        r0 = SUBJECT;
        r2 = r6.eListener;
        r0.addObserver(r2);
        if (r7 == 0) goto L_0x002d;
    L_0x000c:
        if (r9 < 0) goto L_0x0010;
    L_0x000e:
        if (r9 != 0) goto L_0x002e;
    L_0x0010:
        r5 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
    L_0x0012:
        r0 = qunar.sdk.location.LocationFacade.AnonymousClass2.$SwitchMap$qunar$sdk$location$BDGPSCoorType;
        r2 = r6.gpsCoorType;
        r2 = r2.ordinal();
        r0 = r0[r2];
        switch(r0) {
            case 1: goto L_0x0030;
            case 2: goto L_0x003a;
            case 3: goto L_0x0044;
            default: goto L_0x001f;
        };
    L_0x001f:
        r0 = new qunar.sdk.location.BDGPSOption;
        r2 = qunar.sdk.location.BDGPSCoorType.JWDTYPE;
        r3 = qunar.sdk.location.BDGPSLocationMode.Hight_Accuracy;
        r0.<init>(r1, r2, r3, r4, r5);
    L_0x0028:
        r2 = qunar.sdk.location.QunarGPSLocationType.BAIDU;
        r6.createLocStrategy(r2, r0);
    L_0x002d:
        return r1;
    L_0x002e:
        r5 = r9;
        goto L_0x0012;
    L_0x0030:
        r0 = new qunar.sdk.location.BDGPSOption;
        r2 = qunar.sdk.location.BDGPSCoorType.JWDTYPE;
        r3 = qunar.sdk.location.BDGPSLocationMode.Hight_Accuracy;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0028;
    L_0x003a:
        r0 = new qunar.sdk.location.BDGPSOption;
        r2 = qunar.sdk.location.BDGPSCoorType.GCJTYPE;
        r3 = qunar.sdk.location.BDGPSLocationMode.Hight_Accuracy;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x0028;
    L_0x0044:
        r0 = new qunar.sdk.location.BDGPSOption;
        r2 = qunar.sdk.location.BDGPSCoorType.MKTTYPE;
        r3 = qunar.sdk.location.BDGPSLocationMode.Hight_Accuracy;
        r0.<init>(r1, r2, r3, r4, r5);
        goto L_0x001f;
        */
        throw new UnsupportedOperationException("Method not decompiled: qunar.sdk.location.LocationFacade.startLoc(boolean, boolean, int):boolean");
    }

    public void startQunarGPSLocation() {
        startQunarGPSLocation(15000, null);
    }

    public void startQunarGPSLocation(long j, QunarGPSLocationTimeoutCallback qunarGPSLocationTimeoutCallback) {
        int i = (int) j;
        this.timeout = j;
        this.timeoutCallback = qunarGPSLocationTimeoutCallback;
        this.mDestroy = false;
        boolean startLoc = startLoc(true, true, i);
        if (this.locationStrategy != null && startLoc) {
            try {
                if (ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_FINE_LOCATION") != 0) {
                    requestPermission(new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 52);
                    return;
                }
                startGPSLoation(j, qunarGPSLocationTimeoutCallback);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void requestPermission(@NonNull String[] strArr, int i) {
        if (VERSION.SDK_INT >= 23 && this.eListener != null && !this.hasRequestPermission) {
            this.hasRequestPermission = true;
            this.eListener.requestPermission(strArr, i);
        }
    }

    public void onRequestPermissionResult(int i, String[] strArr, int[] iArr) {
        if (i != 52) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            startQunarGPSLocation(this.timeout, this.timeoutCallback);
        } else if (this.context != null) {
            Toast.makeText(this.context, "请您开启定位权限，否则无法使用定位功能", 0).show();
            if (this.timeoutCallback != null) {
                this.timeoutCallback.locationTimeOutCallback();
            }
        }
    }

    private void startGPSLoation(long j, final QunarGPSLocationTimeoutCallback qunarGPSLocationTimeoutCallback) {
        this.locationStrategy.startGPSLoction();
        this.mDestroy = false;
        Message obtain = Message.obtain(this.mHandler, new Runnable() {
            public void run() {
                if (LocationFacade.SUBJECT.observers.contains(LocationFacade.this.eListener)) {
                    if (LocationFacade.this.locationStrategy.eLoc == null) {
                        LocationFacade.this.locationStrategy.eLoc = null;
                        if (qunarGPSLocationTimeoutCallback != null) {
                            qunarGPSLocationTimeoutCallback.locationTimeOutCallback();
                        }
                    }
                    LocationFacade.this.stopLoc();
                }
            }
        });
        int hashCode = this.locationStrategy.hashCode();
        obtain.what = hashCode;
        this.msgId = hashCode;
        this.mHandler.sendMessageDelayed(obtain, j);
    }

    public void pauseLoc() {
        SUBJECT.deleteObserver(this.eListener);
        if (SUBJECT.countObservers() == 0 && this.locationStrategy != null) {
            this.locationStrategy.pauseLocation();
        }
    }

    public void stopLoc() {
        this.mDestroy = true;
        SUBJECT.deleteObserver(this.eListener, this.locationStrategy);
        if (this.locationStrategy != null) {
            this.locationStrategy.stopLocation();
        }
        if (this.mHandler != null) {
            this.mHandler.removeMessages(this.msgId);
        }
        this.timeoutCallback = null;
    }

    /* Access modifiers changed, original: 0000 */
    public List<QLocation> getCacheLocation(int i) {
        if (this.locationStrategy != null) {
            return this.locationStrategy.getCacheLocation(i);
        }
        return null;
    }

    public static boolean gpsIsOpen(Context context) {
        try {
            return ((LocationManager) context.getSystemService(Headers.LOCATION)).isProviderEnabled("gps");
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isLocationEnabled(Context context) {
        boolean isProviderEnabled;
        LocationManager locationManager = (LocationManager) context.getSystemService(Headers.LOCATION);
        try {
            isProviderEnabled = locationManager.isProviderEnabled("gps");
        } catch (Exception e) {
            isProviderEnabled = false;
        }
        boolean isProviderEnabled2;
        try {
            isProviderEnabled2 = locationManager.isProviderEnabled("network");
        } catch (Exception e2) {
            isProviderEnabled2 = false;
        }
        if (isProviderEnabled || isProviderEnabled2) {
            return true;
        }
        return false;
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (QunarGPSLocationStrategy.newestGPS != null) {
            bundle.putParcelable(LOC, QunarGPSLocationStrategy.newestGPS);
        }
    }

    public void onPause() {
        if (stopPaused()) {
            pauseLoc();
        }
    }

    public void onResume() {
        if (startResumed()) {
            startQunarGPSLocation();
        }
    }

    public static QLocation getNewestCacheLocation() {
        return QunarGPSLocationStrategy.newestGPS;
    }

    public void onReceiveLocation(QLocation qLocation) {
        if (isDebugModle) {
            if (debugLoc.getLatitude() == 999.0d && debugLoc.getLongitude() == 999.0d) {
                QunarGPSLocationStrategy.newestGPS = null;
                this.locationStrategy.eLoc = null;
                return;
            }
            qLocation = new QLocation(debugLoc.getLatitude(), debugLoc.getLongitude());
            this.locationStrategy.eLoc = qLocation;
        }
        QunarGPSLocationStrategy.newestGPS = qLocation;
        if (qLocation != null && qLocation.getLatitude() != 0.0d && qLocation.getLongitude() != 0.0d) {
            SUBJECT.deleteObserver(this.eListener);
            if (!(this.eListener == null || this.mDestroy)) {
                this.eListener.onReceiveLocation(qLocation);
            }
            SUBJECT.setChanged();
            SUBJECT.notifyObservers(qLocation);
            if (this.stopRequestMyLocOnGet) {
                stopLoc();
            }
        }
    }

    public static void clearGPSLocationListener() {
        SUBJECT.deleteObservers();
    }
}
