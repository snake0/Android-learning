package org.webrtc;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.camera2.CameraManager;
import android.os.Build.VERSION;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.webrtc.CameraEnumerationAndroid.CaptureFormat;
import org.webrtc.CameraEnumerationAndroid.Enumerator;

@TargetApi(21)
public class Camera2Enumerator implements Enumerator {
    private static final double NANO_SECONDS_PER_SECOND = 1.0E9d;
    private static final String TAG = "Camera2Enumerator";
    private final Map<Integer, List<CaptureFormat>> cachedSupportedFormats = new HashMap();
    private final CameraManager cameraManager;

    public static boolean isSupported() {
        return VERSION.SDK_INT >= 21;
    }

    public Camera2Enumerator(Context context) {
        this.cameraManager = (CameraManager) context.getSystemService("camera");
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public java.util.List<org.webrtc.CameraEnumerationAndroid.CaptureFormat> getSupportedFormats(int r17) {
        /*
        r16 = this;
        r0 = r16;
        r8 = r0.cachedSupportedFormats;
        monitor-enter(r8);
        r0 = r16;
        r1 = r0.cachedSupportedFormats;	 Catch:{ all -> 0x0095 }
        r2 = java.lang.Integer.valueOf(r17);	 Catch:{ all -> 0x0095 }
        r1 = r1.containsKey(r2);	 Catch:{ all -> 0x0095 }
        if (r1 == 0) goto L_0x0023;
    L_0x0013:
        r0 = r16;
        r1 = r0.cachedSupportedFormats;	 Catch:{ all -> 0x0095 }
        r2 = java.lang.Integer.valueOf(r17);	 Catch:{ all -> 0x0095 }
        r1 = r1.get(r2);	 Catch:{ all -> 0x0095 }
        r1 = (java.util.List) r1;	 Catch:{ all -> 0x0095 }
        monitor-exit(r8);	 Catch:{ all -> 0x0095 }
    L_0x0022:
        return r1;
    L_0x0023:
        r1 = "Camera2Enumerator";
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0095 }
        r2.<init>();	 Catch:{ all -> 0x0095 }
        r3 = "Get supported formats for camera index ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0095 }
        r0 = r17;
        r2 = r2.append(r0);	 Catch:{ all -> 0x0095 }
        r3 = ".";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0095 }
        r2 = r2.toString();	 Catch:{ all -> 0x0095 }
        org.webrtc.Logging.d(r1, r2);	 Catch:{ all -> 0x0095 }
        r9 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x0095 }
        r0 = r16;
        r1 = r0.cameraManager;	 Catch:{ Exception -> 0x0075 }
        r2 = java.lang.Integer.toString(r17);	 Catch:{ Exception -> 0x0075 }
        r5 = r1.getCameraCharacteristics(r2);	 Catch:{ Exception -> 0x0075 }
        r1 = android.hardware.camera2.CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES;	 Catch:{ all -> 0x0095 }
        r1 = r5.get(r1);	 Catch:{ all -> 0x0095 }
        r1 = (android.util.Range[]) r1;	 Catch:{ all -> 0x0095 }
        r4 = 0;
        r6 = r1.length;	 Catch:{ all -> 0x0095 }
        r2 = 0;
        r3 = r2;
    L_0x005f:
        if (r3 >= r6) goto L_0x0098;
    L_0x0061:
        r2 = r1[r3];	 Catch:{ all -> 0x0095 }
        r2 = r2.getUpper();	 Catch:{ all -> 0x0095 }
        r2 = (java.lang.Integer) r2;	 Catch:{ all -> 0x0095 }
        r2 = r2.intValue();	 Catch:{ all -> 0x0095 }
        r4 = java.lang.Math.max(r4, r2);	 Catch:{ all -> 0x0095 }
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x005f;
    L_0x0075:
        r1 = move-exception;
        r2 = "Camera2Enumerator";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0095 }
        r3.<init>();	 Catch:{ all -> 0x0095 }
        r4 = "getCameraCharacteristics(): ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x0095 }
        r1 = r3.append(r1);	 Catch:{ all -> 0x0095 }
        r1 = r1.toString();	 Catch:{ all -> 0x0095 }
        org.webrtc.Logging.e(r2, r1);	 Catch:{ all -> 0x0095 }
        r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0095 }
        r1.<init>();	 Catch:{ all -> 0x0095 }
        monitor-exit(r8);	 Catch:{ all -> 0x0095 }
        goto L_0x0022;
    L_0x0095:
        r1 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x0095 }
        throw r1;
    L_0x0098:
        r1 = android.hardware.camera2.CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;	 Catch:{ all -> 0x0095 }
        r1 = r5.get(r1);	 Catch:{ all -> 0x0095 }
        r1 = (android.hardware.camera2.params.StreamConfigurationMap) r1;	 Catch:{ all -> 0x0095 }
        r2 = 35;
        r11 = r1.getOutputSizes(r2);	 Catch:{ all -> 0x0095 }
        if (r11 != 0) goto L_0x00b0;
    L_0x00a8:
        r1 = new java.lang.RuntimeException;	 Catch:{ all -> 0x0095 }
        r2 = "ImageFormat.YUV_420_888 not supported.";
        r1.<init>(r2);	 Catch:{ all -> 0x0095 }
        throw r1;	 Catch:{ all -> 0x0095 }
    L_0x00b0:
        r2 = new java.util.ArrayList;	 Catch:{ all -> 0x0095 }
        r2.<init>();	 Catch:{ all -> 0x0095 }
        r12 = r11.length;	 Catch:{ all -> 0x0095 }
        r3 = 0;
        r7 = r3;
    L_0x00b8:
        if (r7 >= r12) goto L_0x00f0;
    L_0x00ba:
        r13 = r11[r7];	 Catch:{ all -> 0x0095 }
        r5 = 0;
        r3 = 35;
        r5 = r1.getOutputMinFrameDuration(r3, r13);	 Catch:{ Exception -> 0x0134 }
    L_0x00c4:
        r14 = 0;
        r3 = (r5 > r14 ? 1 : (r5 == r14 ? 0 : -1));
        if (r3 != 0) goto L_0x00e2;
    L_0x00ca:
        r3 = r4;
    L_0x00cb:
        r5 = new org.webrtc.CameraEnumerationAndroid$CaptureFormat;	 Catch:{ all -> 0x0095 }
        r6 = r13.getWidth();	 Catch:{ all -> 0x0095 }
        r13 = r13.getHeight();	 Catch:{ all -> 0x0095 }
        r14 = 0;
        r3 = r3 * 1000;
        r5.<init>(r6, r13, r14, r3);	 Catch:{ all -> 0x0095 }
        r2.add(r5);	 Catch:{ all -> 0x0095 }
        r3 = r7 + 1;
        r7 = r3;
        goto L_0x00b8;
    L_0x00e2:
        r14 = 4741671816366391296; // 0x41cdcd6500000000 float:0.0 double:1.0E9;
        r5 = (double) r5;	 Catch:{ all -> 0x0095 }
        r5 = r14 / r5;
        r5 = java.lang.Math.round(r5);	 Catch:{ all -> 0x0095 }
        r3 = (int) r5;	 Catch:{ all -> 0x0095 }
        goto L_0x00cb;
    L_0x00f0:
        r0 = r16;
        r1 = r0.cachedSupportedFormats;	 Catch:{ all -> 0x0095 }
        r3 = java.lang.Integer.valueOf(r17);	 Catch:{ all -> 0x0095 }
        r1.put(r3, r2);	 Catch:{ all -> 0x0095 }
        r3 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x0095 }
        r1 = "Camera2Enumerator";
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0095 }
        r5.<init>();	 Catch:{ all -> 0x0095 }
        r6 = "Get supported formats for camera index ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x0095 }
        r0 = r17;
        r5 = r5.append(r0);	 Catch:{ all -> 0x0095 }
        r6 = " done.";
        r5 = r5.append(r6);	 Catch:{ all -> 0x0095 }
        r6 = " Time spent: ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x0095 }
        r3 = r3 - r9;
        r3 = r5.append(r3);	 Catch:{ all -> 0x0095 }
        r4 = " ms.";
        r3 = r3.append(r4);	 Catch:{ all -> 0x0095 }
        r3 = r3.toString();	 Catch:{ all -> 0x0095 }
        org.webrtc.Logging.d(r1, r3);	 Catch:{ all -> 0x0095 }
        monitor-exit(r8);	 Catch:{ all -> 0x0095 }
        r1 = r2;
        goto L_0x0022;
    L_0x0134:
        r3 = move-exception;
        goto L_0x00c4;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.webrtc.Camera2Enumerator.getSupportedFormats(int):java.util.List");
    }
}
