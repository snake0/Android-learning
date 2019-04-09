package com.megvii.livenessdetection;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import com.iflytek.cloud.SpeechUtility;
import com.megvii.livenessdeteciton.obf.c;
import com.megvii.livenessdeteciton.obf.d;
import com.megvii.livenessdeteciton.obf.e;
import com.megvii.livenessdetection.DetectionConfig.Builder;
import com.megvii.livenessdetection.DetectionFrame.FrameType;
import com.megvii.livenessdetection.bean.FaceIDDataStruct;
import com.megvii.livenessdetection.bean.FaceInfo;
import com.megvii.livenessdetection.impl.b;
import com.mqunar.tools.DateTimeUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Detector {
    public static final int DETECTOR_INIT_FAILED_BADCIPHER = 4;
    public static final int DETECTOR_INIT_FAILED_EXPIRE = 5;
    public static final int DETECTOR_INIT_FAILED_INVALIDMODEL = 1;
    public static final int DETECTOR_INIT_FAILED_NATIVEINITFAILED = 3;
    public static final int DETECTOR_INIT_FAILED_SHAREDLIBLOADFAILED = 2;
    public static final int DETECTOR_INIT_OK = 0;
    private static boolean c;
    private DetectionConfig a = null;
    private long b = 0;
    private Context d;
    private e e;
    private BlockingQueue<b> f;
    private a g;
    private DetectionListener h;
    private boolean i = false;
    private Handler j;
    private boolean k = true;
    private com.megvii.livenessdeteciton.obf.a l;
    private b m = null;
    private b n = null;
    private long o = -1;
    private DetectionType p = DetectionType.NONE;
    private ArrayList<DetectionFrame> q;

    public enum DetectionFailedType {
        ACTIONBLEND,
        NOTVIDEO,
        TIMEOUT,
        MASK,
        FACENOTCONTINUOUS,
        TOOMANYFACELOST,
        FACELOSTNOTCONTINUOUS
    }

    public interface DetectionListener {
        void onDetectionFailed(DetectionFailedType detectionFailedType);

        DetectionType onDetectionSuccess(DetectionFrame detectionFrame);

        void onFrameDetected(long j, DetectionFrame detectionFrame);
    }

    public enum DetectionType {
        NONE(0),
        BLINK(1),
        MOUTH(2),
        POS_YAW(3),
        POS_PITCH(4),
        POS_YAW_LEFT(7),
        POS_YAW_RIGHT(8),
        DONE(6),
        POS_PITCH_UP(9),
        POS_PITCH_DOWN(10),
        AIMLESS(-1);
        
        private int mInterVal;

        private DetectionType(int i) {
            this.mInterVal = -1;
            this.mInterVal = i;
        }
    }

    final class a extends Thread {
        private com.megvii.livenessdeteciton.obf.b b = new com.megvii.livenessdeteciton.obf.b();

        public a() {
            this.b.a(true);
        }

        public final void run() {
            while (true) {
                try {
                    final b bVar = (b) Detector.this.f.take();
                    if (!(bVar == null || Detector.this.b == 0 || Detector.this.p == DetectionType.DONE)) {
                        if (System.currentTimeMillis() <= Detector.this.o + Detector.this.a.timeout || Detector.this.p == DetectionType.NONE || Detector.this.p == DetectionType.AIMLESS) {
                            byte[] yUVData = bVar.getYUVData();
                            int imageWidth = bVar.getImageWidth();
                            int imageHeight = bVar.getImageHeight();
                            int rotation = bVar.getRotation();
                            DetectionType c = Detector.this.p;
                            final DetectionListener g = Detector.this.h;
                            if (!(c == null || Detector.this.b == 0 || g == null || Detector.this.i)) {
                                if (Detector.this.k) {
                                    Detector.this.k = false;
                                    Detector.this.waitNormal(Detector.this.b);
                                }
                                String a = Detector.this.nativeDetection(Detector.this.b, c.mInterVal, yUVData, imageWidth, imageHeight, rotation);
                                try {
                                    JSONObject jSONObject = new JSONObject(a);
                                    if (!Detector.this.i && c == bVar.a()) {
                                        bVar.a(a, Detector.this.a, this.b);
                                        if (c != DetectionType.NONE && c != DetectionType.AIMLESS) {
                                            if (bVar.hasFace()) {
                                                Detector.this.n = bVar;
                                            }
                                            switch (jSONObject.getInt(SpeechUtility.TAG_RESOURCE_RESULT)) {
                                                case 1:
                                                    Detector.this.q.add(Detector.this.n);
                                                    Detector.this.i = true;
                                                    bVar.setFrameType(FrameType.NONE);
                                                    Detector.this.j.post(new Runnable() {
                                                        public final void run() {
                                                            g.onFrameDetected((Detector.this.o + Detector.this.a.timeout) - System.currentTimeMillis(), bVar);
                                                            DetectionType onDetectionSuccess = g.onDetectionSuccess(bVar);
                                                            if (onDetectionSuccess == null || onDetectionSuccess == DetectionType.DONE) {
                                                                Detector.this.p = DetectionType.DONE;
                                                                Detector.this.f.clear();
                                                                if (Detector.this.l != null) {
                                                                    Detector.this.l.a(Detector.this.p);
                                                                    Detector.this.e.a("8cd0604ba33e2ba7f38a56f0aec08a54", Detector.this.l.toString());
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            Detector.this.changeDetectionType(onDetectionSuccess);
                                                        }
                                                    });
                                                    break;
                                                case 2:
                                                    bVar.setFrameType(FrameType.NONE);
                                                    a(bVar);
                                                    Detector.this.j.post(new Runnable() {
                                                        public final void run() {
                                                            g.onFrameDetected((Detector.this.o + Detector.this.a.timeout) - System.currentTimeMillis(), bVar);
                                                        }
                                                    });
                                                    break;
                                                case 3:
                                                    Detector.this.j.post(new Runnable() {
                                                        public final void run() {
                                                            g.onFrameDetected((Detector.this.o + Detector.this.a.timeout) - System.currentTimeMillis(), bVar);
                                                        }
                                                    });
                                                    break;
                                                case 4:
                                                    a(DetectionFailedType.NOTVIDEO, g, bVar);
                                                    break;
                                                case 5:
                                                    a(DetectionFailedType.ACTIONBLEND, g, bVar);
                                                    break;
                                                case 6:
                                                    d.a("LivenessDetection", "wait for normal success");
                                                    bVar.setFrameType(FrameType.WAITINGNORMAL);
                                                    a(bVar);
                                                    Detector.this.j.post(new Runnable() {
                                                        public final void run() {
                                                            g.onFrameDetected((Detector.this.o + Detector.this.a.timeout) - System.currentTimeMillis(), bVar);
                                                        }
                                                    });
                                                    break;
                                                case 7:
                                                    d.a("LivenessDetection", "is waiting for normal");
                                                    bVar.setFrameType(FrameType.WAITINGNORMAL);
                                                    a(bVar);
                                                    Detector.this.j.post(new Runnable() {
                                                        public final void run() {
                                                            g.onFrameDetected((Detector.this.o + Detector.this.a.timeout) - System.currentTimeMillis(), bVar);
                                                        }
                                                    });
                                                    break;
                                                case 8:
                                                    a(DetectionFailedType.MASK, g, bVar);
                                                    break;
                                                case 9:
                                                    a(DetectionFailedType.FACENOTCONTINUOUS, g, bVar);
                                                    break;
                                                case 10:
                                                    a(DetectionFailedType.TOOMANYFACELOST, g, bVar);
                                                    break;
                                                case 11:
                                                    a(DetectionFailedType.FACELOSTNOTCONTINUOUS, g, bVar);
                                                    break;
                                                default:
                                                    break;
                                            }
                                        }
                                        bVar.setFrameType(FrameType.NONE);
                                        Detector.this.j.post(new Runnable() {
                                            public final void run() {
                                                g.onFrameDetected(Detector.this.a.timeout, bVar);
                                            }
                                        });
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        } else if (!Detector.this.i) {
                            a(DetectionFailedType.TIMEOUT, Detector.this.h, bVar);
                        }
                    }
                } catch (InterruptedException e2) {
                    return;
                }
            }
        }

        private void a(final DetectionFailedType detectionFailedType, final DetectionListener detectionListener, final DetectionFrame detectionFrame) {
            Detector.this.l.a(detectionFailedType);
            if (!(Detector.this.l == null || Detector.this.e == null)) {
                Detector.this.e.a("8cd0604ba33e2ba7f38a56f0aec08a54", Detector.this.l.toString());
            }
            Detector.this.i = true;
            Detector.this.j.post(new Runnable() {
                public final void run() {
                    detectionListener.onFrameDetected((Detector.this.o + Detector.this.a.timeout) - System.currentTimeMillis(), detectionFrame);
                    detectionListener.onDetectionFailed(detectionFailedType);
                }
            });
        }

        private void a(b bVar) {
            if (Detector.this.m == null) {
                Detector.this.m = bVar;
            }
            if (bVar.a(Detector.this.m)) {
                Detector.this.m = bVar;
            }
        }
    }

    private native String nativeDetection(long j, int i, byte[] bArr, int i2, int i3, int i4);

    private native String nativeEncode(long j, byte[] bArr);

    private native String nativeFaceQuality(long j, byte[] bArr, int i, int i2);

    private static native String nativeGetVersion();

    private native long nativeRawInit(Context context, byte[] bArr, String str, String str2, String str3);

    private native void nativeRelease(long j);

    private native void nativeReset(long j);

    private native void waitNormal(long j);

    static {
        c = false;
        try {
            System.loadLibrary("livenessdetection_v2.4.2");
            c = true;
        } catch (UnsatisfiedLinkError e) {
            d.b("static load library error ");
            c = false;
        }
    }

    public Detector(Context context, DetectionConfig detectionConfig) {
        if (detectionConfig == null) {
            this.a = new Builder().build();
        }
        this.d = context.getApplicationContext();
        this.a = detectionConfig;
        this.b = 0;
        this.i = false;
        this.k = true;
        this.l = new com.megvii.livenessdeteciton.obf.a();
        this.e = new e(this.d);
    }

    public synchronized boolean init(Context context, String str) {
        return a(context, str, null, null, null) == 0;
    }

    public synchronized boolean init(Context context, byte[] bArr, String str) {
        return a(context, null, bArr, null, null) == 0;
    }

    public synchronized int init(Context context, byte[] bArr, String str, String str2) {
        return a(context, null, bArr, str, null);
    }

    public synchronized int init(Context context, byte[] bArr, String str, String str2, String str3) {
        return a(context, null, bArr, str, str2);
    }

    private synchronized int a(Context context, String str, byte[] bArr, String str2, String str3) {
        int i = 1;
        synchronized (this) {
            this.d = context;
            if (!(str == null && bArr == null)) {
                byte[] a;
                if (bArr == null) {
                    a = com.megvii.livenessdeteciton.obf.b.a(str);
                } else {
                    a = bArr;
                }
                if (a != null && "b3c61531d3a785d8af140218304940e5b24834d3".equalsIgnoreCase(com.megvii.livenessdeteciton.obf.b.a(a))) {
                    if (!c && !c.a(context.getApplicationContext()).a("livenessdetection", "v2.4.2") && (str3 == null || !com.megvii.livenessdeteciton.obf.b.b(str3))) {
                        i = 2;
                    } else if (new LivenessLicenseManager(this.d.getApplicationContext()).checkCachedLicense() == 0) {
                        i = 4;
                    } else {
                        release();
                        this.f = new LinkedBlockingDeque(3);
                        this.b = nativeRawInit(context, a, str2, this.e.a("cb072839e1e240a23baae123ca6cf165") + ":" + this.e.a("e2380b201325a8f252636350338aeae8"), this.a.toJsonString());
                        if (this.b == 0) {
                            i = 3;
                        } else {
                            this.g = new a();
                            this.g.start();
                            this.p = DetectionType.NONE;
                            this.j = new Handler(Looper.getMainLooper());
                            this.q = new ArrayList();
                            i = 0;
                        }
                    }
                }
            }
        }
        return i;
    }

    public synchronized void release() {
        if (this.g != null) {
            this.g.interrupt();
            try {
                this.g.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.g = null;
        }
        if (this.f != null) {
            this.f.clear();
            this.f = null;
        }
        if (this.q != null) {
            this.q.clear();
            this.q = null;
        }
        if (this.b != 0) {
            nativeRelease(this.b);
        }
        this.b = 0;
        return;
    }

    public void enableDebug(boolean z) {
        if (z) {
            d.a();
        } else {
            d.b();
        }
    }

    public String getLog() {
        return this.l == null ? null : this.l.toString();
    }

    public DetectionType getCurDetectType() {
        return this.p;
    }

    public boolean doDetection(byte[] bArr, int i, int i2, int i3) {
        boolean z = false;
        if (this.b == 0 || this.h == null || this.p == DetectionType.DONE || this.p == null || this.i) {
            boolean z2;
            String str = "detector inited:%b, detectionlistener is null:%b";
            Object[] objArr = new Object[2];
            objArr[z] = Boolean.valueOf(this.b != 0 ? true : z);
            if (this.h == null) {
                z2 = true;
            } else {
                z2 = z;
            }
            objArr[1] = Boolean.valueOf(z2);
            d.b(String.format(str, objArr));
            return z;
        }
        try {
            return this.f.offer(new b(bArr, i, i2, i3, this.p));
        } catch (Exception e) {
            return z;
        }
    }

    public synchronized void setDetectionListener(DetectionListener detectionListener) {
        this.h = detectionListener;
    }

    public synchronized void changeDetectionType(DetectionType detectionType) {
        if (this.b != 0) {
            if (detectionType == null) {
                throw new RuntimeException("DetectionType could not be null");
            }
            this.i = false;
            this.p = detectionType;
            nativeReset(this.b);
            this.o = System.currentTimeMillis();
            this.k = true;
            this.l.a(detectionType);
        }
    }

    public synchronized void reset() {
        if (this.b != 0) {
            this.m = null;
            this.n = null;
            this.q = new ArrayList();
            this.i = false;
            changeDetectionType(DetectionType.NONE);
            this.k = true;
            this.l.a();
        }
    }

    public synchronized void resetAction() {
        if (this.b != 0) {
            this.i = false;
            this.k = true;
            changeDetectionType(this.p);
        }
    }

    public synchronized ArrayList<DetectionFrame> getValidFrame() {
        ArrayList<DetectionFrame> arrayList;
        if (this.q == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(this.q);
            arrayList.add(0, this.m);
        }
        return arrayList;
    }

    public synchronized DetectionFrame faceQualityDetection(Bitmap bitmap) {
        DetectionFrame detectionFrame;
        DetectionFrame aVar = new com.megvii.livenessdetection.impl.a(bitmap);
        byte[] a = aVar.a();
        int imageWidth = aVar.getImageWidth();
        int imageHeight = aVar.getImageHeight();
        if (a == null || imageWidth == -1 || imageHeight == -1) {
            detectionFrame = null;
        } else {
            aVar.a(nativeFaceQuality(this.b, a, imageWidth, imageHeight), this.a, new com.megvii.livenessdeteciton.obf.b());
            detectionFrame = aVar;
        }
        return detectionFrame;
    }

    public static String getVersion() {
        try {
            return nativeGetVersion();
        } catch (UnsatisfiedLinkError e) {
            d.a("dynamic library does not load successfully, try to internalInit it with detector.init method");
            return "Could not read message from native method";
        }
    }

    public FaceIDDataStruct getFaceIDDataStruct(int i) {
        JSONObject jSONObject = new JSONObject();
        FaceIDDataStruct faceIDDataStruct = new FaceIDDataStruct();
        JSONObject jSONObject2 = new JSONObject();
        DetectionFrame detectionFrame = this.m;
        if (detectionFrame == null) {
            return null;
        }
        try {
            jSONObject2.put("image_best", a(detectionFrame, i, "image_best", faceIDDataStruct, true));
            for (int i2 = 0; i2 < this.q.size(); i2++) {
                jSONObject2.put("image_action" + (i2 + 1), a((DetectionFrame) this.q.get(i2), i, "image_action" + (i2 + 1), faceIDDataStruct, true));
            }
            jSONObject2.put("image_env", a(detectionFrame, i, "image_env", faceIDDataStruct, false));
            jSONObject.put("images", jSONObject2);
            jSONObject.put("datetime", new SimpleDateFormat(DateTimeUtils.yyyyMMddHHmmss, Locale.getDefault()).format(new Date()));
            jSONObject.put("sdk_version", getVersion());
            jSONObject.put("user_info", com.megvii.livenessdeteciton.obf.b.a());
            jSONObject.put("log", getLog());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        faceIDDataStruct.delta = nativeEncode(this.b, jSONObject.toString().getBytes());
        return faceIDDataStruct;
    }

    public FaceIDDataStruct getFaceIDDataStruct() {
        return getFaceIDDataStruct(-1);
    }

    private static JSONObject a(DetectionFrame detectionFrame, int i, String str, FaceIDDataStruct faceIDDataStruct, boolean z) {
        if (detectionFrame == null || !detectionFrame.hasFace()) {
            return null;
        }
        byte[] imageData;
        Rect rect = new Rect();
        if (z) {
            Object imageData2 = detectionFrame.getImageData(rect, true, 70, i, false, false, 0);
        } else {
            FaceInfo faceInfo = detectionFrame.getFaceInfo();
            imageData2 = detectionFrame.getImageData(rect, false, 70, (int) (150.0f / Math.min(faceInfo.position.width(), faceInfo.position.height())), false, false, 0);
        }
        if (imageData2 == null) {
            return null;
        }
        faceIDDataStruct.images.put(str, imageData2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("quality", (double) detectionFrame.getFaceInfo().faceQuality);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(rect.left);
            jSONArray.put(rect.top);
            jSONArray.put(rect.right);
            jSONArray.put(rect.bottom);
            jSONObject.put("rect", jSONArray);
            jSONObject.put("checksum", com.megvii.livenessdeteciton.obf.b.a(imageData2));
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }
}
