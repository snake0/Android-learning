package org.webrtc;

import java.util.ArrayList;
import java.util.List;
import org.webrtc.CameraEnumerationAndroid.CaptureFormat;
import org.webrtc.CameraEnumerationAndroid.Enumerator;

public class CameraEnumerator implements Enumerator {
    private static final String TAG = "CameraEnumerator";
    private List<List<CaptureFormat>> cachedSupportedFormats;

    public List<CaptureFormat> getSupportedFormats(int i) {
        synchronized (this) {
            if (this.cachedSupportedFormats == null) {
                this.cachedSupportedFormats = new ArrayList();
                for (int i2 = 0; i2 < CameraEnumerationAndroid.getDeviceCount(); i2++) {
                    this.cachedSupportedFormats.add(enumerateFormats(i2));
                }
            }
        }
        return (List) this.cachedSupportedFormats.get(i);
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    private java.util.List<org.webrtc.CameraEnumerationAndroid.CaptureFormat> enumerateFormats(int r10) {
        /*
        r9 = this;
        r0 = 0;
        r1 = "CameraEnumerator";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Get supported formats for camera index ";
        r2 = r2.append(r3);
        r2 = r2.append(r10);
        r3 = ".";
        r2 = r2.append(r3);
        r2 = r2.toString();
        org.webrtc.Logging.d(r1, r2);
        r4 = android.os.SystemClock.elapsedRealtime();
        r1 = 0;
        r2 = "CameraEnumerator";
        r3 = new java.lang.StringBuilder;	 Catch:{ RuntimeException -> 0x00d7 }
        r3.<init>();	 Catch:{ RuntimeException -> 0x00d7 }
        r6 = "Opening camera with index ";
        r3 = r3.append(r6);	 Catch:{ RuntimeException -> 0x00d7 }
        r3 = r3.append(r10);	 Catch:{ RuntimeException -> 0x00d7 }
        r3 = r3.toString();	 Catch:{ RuntimeException -> 0x00d7 }
        org.webrtc.Logging.d(r2, r3);	 Catch:{ RuntimeException -> 0x00d7 }
        r1 = android.hardware.Camera.open(r10);	 Catch:{ RuntimeException -> 0x00d7 }
        r6 = r1.getParameters();	 Catch:{ RuntimeException -> 0x00d7 }
        if (r1 == 0) goto L_0x0049;
    L_0x0046:
        r1.release();
    L_0x0049:
        r1 = new java.util.ArrayList;
        r1.<init>();
        r2 = r6.getSupportedPreviewFpsRange();	 Catch:{ Exception -> 0x0089 }
        if (r2 == 0) goto L_0x0102;
    L_0x0054:
        r0 = r2.size();	 Catch:{ Exception -> 0x0089 }
        r0 = r0 + -1;
        r0 = r2.get(r0);	 Catch:{ Exception -> 0x0089 }
        r0 = (int[]) r0;	 Catch:{ Exception -> 0x0089 }
        r2 = 0;
        r2 = r0[r2];	 Catch:{ Exception -> 0x0089 }
        r3 = 1;
        r0 = r0[r3];	 Catch:{ Exception -> 0x0089 }
        r3 = r2;
        r2 = r0;
    L_0x0068:
        r0 = r6.getSupportedPreviewSizes();	 Catch:{ Exception -> 0x0089 }
        r6 = r0.iterator();	 Catch:{ Exception -> 0x0089 }
    L_0x0070:
        r0 = r6.hasNext();	 Catch:{ Exception -> 0x0089 }
        if (r0 == 0) goto L_0x00a2;
    L_0x0076:
        r0 = r6.next();	 Catch:{ Exception -> 0x0089 }
        r0 = (android.hardware.Camera.Size) r0;	 Catch:{ Exception -> 0x0089 }
        r7 = new org.webrtc.CameraEnumerationAndroid$CaptureFormat;	 Catch:{ Exception -> 0x0089 }
        r8 = r0.width;	 Catch:{ Exception -> 0x0089 }
        r0 = r0.height;	 Catch:{ Exception -> 0x0089 }
        r7.<init>(r8, r0, r3, r2);	 Catch:{ Exception -> 0x0089 }
        r1.add(r7);	 Catch:{ Exception -> 0x0089 }
        goto L_0x0070;
    L_0x0089:
        r0 = move-exception;
        r2 = "CameraEnumerator";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "getSupportedFormats() failed on camera index ";
        r3 = r3.append(r6);
        r3 = r3.append(r10);
        r3 = r3.toString();
        org.webrtc.Logging.e(r2, r3, r0);
    L_0x00a2:
        r2 = android.os.SystemClock.elapsedRealtime();
        r0 = "CameraEnumerator";
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r7 = "Get supported formats for camera index ";
        r6 = r6.append(r7);
        r6 = r6.append(r10);
        r7 = " done.";
        r6 = r6.append(r7);
        r7 = " Time spent: ";
        r6 = r6.append(r7);
        r2 = r2 - r4;
        r2 = r6.append(r2);
        r3 = " ms.";
        r2 = r2.append(r3);
        r2 = r2.toString();
        org.webrtc.Logging.d(r0, r2);
        r0 = r1;
    L_0x00d6:
        return r0;
    L_0x00d7:
        r0 = move-exception;
        r2 = "CameraEnumerator";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00fb }
        r3.<init>();	 Catch:{ all -> 0x00fb }
        r4 = "Open camera failed on camera index ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x00fb }
        r3 = r3.append(r10);	 Catch:{ all -> 0x00fb }
        r3 = r3.toString();	 Catch:{ all -> 0x00fb }
        org.webrtc.Logging.e(r2, r3, r0);	 Catch:{ all -> 0x00fb }
        r0 = new java.util.ArrayList;	 Catch:{ all -> 0x00fb }
        r0.<init>();	 Catch:{ all -> 0x00fb }
        if (r1 == 0) goto L_0x00d6;
    L_0x00f7:
        r1.release();
        goto L_0x00d6;
    L_0x00fb:
        r0 = move-exception;
        if (r1 == 0) goto L_0x0101;
    L_0x00fe:
        r1.release();
    L_0x0101:
        throw r0;
    L_0x0102:
        r2 = r0;
        r3 = r0;
        goto L_0x0068;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.webrtc.CameraEnumerator.enumerateFormats(int):java.util.List");
    }
}
