package com.mqunar.idscan.activity;

import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mqunar.idscan.R;
import com.mqunar.idscan.a;
import com.mqunar.idscan.a.f;
import com.mqunar.idscan.model.ScanPassportParam;
import com.mqunar.idscan.model.ScanPassportResultData;
import com.mqunar.idscan.utils.Constants;
import com.mqunar.idscan.utils.UploadUtils;
import com.mqunar.idscan.view.ViewfinderView;
import com.mqunar.qav.uelog.QAVLog;
import com.mqunar.qav.uelog.QAVOpenApi;
import com.mqunar.tools.log.QLog;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

public class QrScanPassportActivity extends a implements OnClickListener {
    private String d = "QrScanPassportActivity";
    private LinearLayout e;
    private ImageView f;
    private Bundle g;
    private String h;
    private boolean i = false;

    private static Bitmap a(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f = 700.0f / ((float) width);
        float f2 = 131.0f / ((float) height);
        Matrix matrix = new Matrix();
        matrix.postScale(f, f2);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        bitmap.recycle();
        return createBitmap;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x008d A:{SYNTHETIC, Splitter:B:34:0x008d} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0092 A:{SYNTHETIC, Splitter:B:37:0x0092} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00b0 A:{SYNTHETIC, Splitter:B:50:0x00b0} */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00b5 A:{SYNTHETIC, Splitter:B:53:0x00b5} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x004d A:{SYNTHETIC, Splitter:B:23:0x004d} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0052 A:{SYNTHETIC, Splitter:B:26:0x0052} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00b0 A:{SYNTHETIC, Splitter:B:50:0x00b0} */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00b5 A:{SYNTHETIC, Splitter:B:53:0x00b5} */
    private java.lang.String a(java.lang.String r12, int r13) {
        /*
        r11 = this;
        r0 = 0;
        r10 = 0;
        r4 = android.os.SystemClock.elapsedRealtime();
        r1 = r11.getBaseContext();	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
        r2 = "passport";
        r3 = 0;
        r1 = r1.getDir(r2, r3);	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
        r2 = r1.exists();	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
        if (r2 != 0) goto L_0x001a;
    L_0x0017:
        r1.mkdirs();	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
    L_0x001a:
        r6 = new java.io.File;	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
        r6.<init>(r1, r12);	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
        r1 = r6.exists();	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
        if (r1 != 0) goto L_0x0076;
    L_0x0025:
        r1 = r6.createNewFile();	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
        if (r1 == 0) goto L_0x0076;
    L_0x002b:
        r1 = r11.getResources();	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
        r3 = r1.openRawResource(r13);	 Catch:{ IOException -> 0x00c9, all -> 0x00aa }
        r2 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x00ce, all -> 0x00c3 }
        r2.<init>(r6);	 Catch:{ IOException -> 0x00ce, all -> 0x00c3 }
        r1 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r1 = new byte[r1];	 Catch:{ IOException -> 0x0047 }
    L_0x003c:
        r7 = r3.read(r1);	 Catch:{ IOException -> 0x0047 }
        if (r7 <= 0) goto L_0x0078;
    L_0x0042:
        r8 = 0;
        r2.write(r1, r8, r7);	 Catch:{ IOException -> 0x0047 }
        goto L_0x003c;
    L_0x0047:
        r1 = move-exception;
    L_0x0048:
        com.mqunar.tools.log.QLog.e(r1);	 Catch:{ all -> 0x00c7 }
        if (r3 == 0) goto L_0x0050;
    L_0x004d:
        r3.close();	 Catch:{ IOException -> 0x00a0 }
    L_0x0050:
        if (r2 == 0) goto L_0x0055;
    L_0x0052:
        r2.close();	 Catch:{ IOException -> 0x00a5 }
    L_0x0055:
        r1 = "passport";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r6 = android.os.SystemClock.elapsedRealtime();
        r3 = r6 - r4;
        r2 = r2.append(r3);
        r3 = "ms";
        r2 = r2.append(r3);
        r2 = r2.toString();
        r3 = new java.lang.Object[r10];
        com.mqunar.tools.log.QLog.e(r1, r2, r3);
    L_0x0075:
        return r0;
    L_0x0076:
        r2 = r0;
        r3 = r0;
    L_0x0078:
        r1 = "passport :";
        r7 = 1;
        r7 = new java.lang.Object[r7];	 Catch:{ IOException -> 0x0047 }
        r8 = 0;
        r9 = r6.getAbsoluteFile();	 Catch:{ IOException -> 0x0047 }
        r7[r8] = r9;	 Catch:{ IOException -> 0x0047 }
        com.mqunar.tools.log.QLog.d(r1, r7);	 Catch:{ IOException -> 0x0047 }
        r0 = r6.getAbsolutePath();	 Catch:{ IOException -> 0x0047 }
        if (r3 == 0) goto L_0x0090;
    L_0x008d:
        r3.close();	 Catch:{ IOException -> 0x009b }
    L_0x0090:
        if (r2 == 0) goto L_0x0075;
    L_0x0092:
        r2.close();	 Catch:{ IOException -> 0x0096 }
        goto L_0x0075;
    L_0x0096:
        r1 = move-exception;
        com.mqunar.tools.log.QLog.e(r1);
        goto L_0x0075;
    L_0x009b:
        r1 = move-exception;
        com.mqunar.tools.log.QLog.e(r1);
        goto L_0x0090;
    L_0x00a0:
        r1 = move-exception;
        com.mqunar.tools.log.QLog.e(r1);
        goto L_0x0050;
    L_0x00a5:
        r1 = move-exception;
        com.mqunar.tools.log.QLog.e(r1);
        goto L_0x0055;
    L_0x00aa:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
        r0 = r1;
    L_0x00ae:
        if (r3 == 0) goto L_0x00b3;
    L_0x00b0:
        r3.close();	 Catch:{ IOException -> 0x00b9 }
    L_0x00b3:
        if (r2 == 0) goto L_0x00b8;
    L_0x00b5:
        r2.close();	 Catch:{ IOException -> 0x00be }
    L_0x00b8:
        throw r0;
    L_0x00b9:
        r1 = move-exception;
        com.mqunar.tools.log.QLog.e(r1);
        goto L_0x00b3;
    L_0x00be:
        r1 = move-exception;
        com.mqunar.tools.log.QLog.e(r1);
        goto L_0x00b8;
    L_0x00c3:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x00ae;
    L_0x00c7:
        r0 = move-exception;
        goto L_0x00ae;
    L_0x00c9:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
        goto L_0x0048;
    L_0x00ce:
        r1 = move-exception;
        r2 = r0;
        goto L_0x0048;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.idscan.activity.QrScanPassportActivity.a(java.lang.String, int):java.lang.String");
    }

    private void f() {
        if (isInMultiWindowMode() && !this.i) {
            this.i = true;
            new Builder(this).setMessage("分屏模式下无法使用该功能！").setPositiveButton(R.string.idscan_sure, new d(this)).setCancelable(false).show();
        }
    }

    public final void b(ScanPassportResultData scanPassportResultData) {
        YuvImage yuvImage;
        OutputStream outputStream;
        Point a = d().h().a();
        int i = a.x;
        int i2 = a.y;
        YuvImage yuvImage2;
        OutputStream byteArrayOutputStream;
        if (f.c == 0) {
            yuvImage2 = new YuvImage(f.b, 17, i, i2, null);
            byteArrayOutputStream = new ByteArrayOutputStream(f.b.length);
            yuvImage = yuvImage2;
            outputStream = byteArrayOutputStream;
        } else if (f.c == 1) {
            yuvImage2 = new YuvImage(f.a, 17, i, i2, null);
            byteArrayOutputStream = new ByteArrayOutputStream(f.a.length);
            yuvImage = yuvImage2;
            outputStream = byteArrayOutputStream;
        } else {
            outputStream = null;
            yuvImage = null;
        }
        if (yuvImage.compressToJpeg(new Rect(0, 0, i, i2), 100, outputStream)) {
            byte[] toByteArray = outputStream.toByteArray();
            try {
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(toByteArray, 0, toByteArray.length);
                Rect g = d().g();
                if (g != null) {
                    Bitmap createBitmap = Bitmap.createBitmap(decodeByteArray, g.left, g.top, g.right - g.left, g.bottom - g.top);
                    decodeByteArray.recycle();
                    createBitmap = a(createBitmap);
                    File file = new File(getExternalFilesDir(null), "successedOcrImage.jpg");
                    try {
                        if (!file.exists()) {
                            file.createNewFile();
                        }
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                        createBitmap.compress(CompressFormat.JPEG, 100, bufferedOutputStream);
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                    } catch (Exception e) {
                        QLog.e(e);
                    } finally {
                        createBitmap.recycle();
                        f.a = null;
                        f.b = null;
                    }
                }
                Bundle bundle = new Bundle();
                bundle.putSerializable(Constants.TAG_SCAN_RESULT, scanPassportResultData);
                Intent intent = new Intent();
                intent.putExtras(bundle);
                setResult(-1, intent);
                finish();
            } catch (Exception e2) {
                QLog.e("isUsable", "图片不可用", new Object[0]);
            }
        }
    }

    public void onBackPressed() {
        super.onBackPressed();
        QAVLog.getInstance(getApplicationContext()).log(this.d + "-" + this.h, "scan passport failed");
        Point a = d().h().a();
        if (a != null) {
            YuvImage yuvImage;
            OutputStream outputStream;
            int i = a.x;
            int i2 = a.y;
            YuvImage yuvImage2;
            OutputStream byteArrayOutputStream;
            if (f.c == 0) {
                yuvImage2 = new YuvImage(f.a, 17, i, i2, null);
                byteArrayOutputStream = new ByteArrayOutputStream(f.a.length);
                yuvImage = yuvImage2;
                outputStream = byteArrayOutputStream;
            } else if (f.c == 1) {
                yuvImage2 = new YuvImage(f.b, 17, i, i2, null);
                byteArrayOutputStream = new ByteArrayOutputStream(f.b.length);
                yuvImage = yuvImage2;
                outputStream = byteArrayOutputStream;
            } else {
                outputStream = null;
                yuvImage = null;
            }
            if (yuvImage != null && yuvImage.compressToJpeg(new Rect(0, 0, i, i2), 100, outputStream)) {
                byte[] toByteArray = outputStream.toByteArray();
                try {
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(toByteArray, 0, toByteArray.length);
                    Rect g = d().g();
                    if (g != null) {
                        Bitmap createBitmap = Bitmap.createBitmap(decodeByteArray, g.left, g.top, g.right - g.left, g.bottom - g.top);
                        decodeByteArray.recycle();
                        createBitmap = a(createBitmap);
                        File file = new File(getExternalFilesDir(null), "failedOcrImage.jpg");
                        try {
                            if (!file.exists()) {
                                file.createNewFile();
                            }
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                            createBitmap.compress(CompressFormat.JPEG, 100, bufferedOutputStream);
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                        } catch (Exception e) {
                            QLog.e(e);
                        } finally {
                            createBitmap.recycle();
                            f.a = null;
                            f.b = null;
                        }
                        if (file.exists()) {
                            ScanPassportParam scanPassportParam = new ScanPassportParam();
                            scanPassportParam.airCode = d().h().b;
                            scanPassportParam.cat = this.h;
                            UploadUtils.a(scanPassportParam, Uri.fromFile(file).getPath());
                        }
                    }
                } catch (Exception e2) {
                    QLog.e("isUsable", "图片不可用", e2);
                }
            }
        }
    }

    public void onClick(View view) {
        if (view != null && view == this.f) {
            onBackPressed();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a.a(getApplicationContext());
        com.mqunar.idscan.algo.f.a = a("idscan_passport.weights", R.raw.idscan_passport);
        if (bundle == null) {
            bundle = getIntent().getExtras();
        }
        this.g = bundle;
        if (this.g == null) {
            this.g = new Bundle();
        }
        setContentView(R.layout.idscan_layout_activity_passport_scan);
        this.h = this.g.getString(Constants.CAT_KEY);
        QAVOpenApi.setPageName(this, this.h);
        this.f = (ImageView) findViewById(R.id.idscan_iv_scan_back);
        this.e = (LinearLayout) findViewById(R.id.idscan_ll_qrcode_progress);
        this.a = (ViewfinderView) findViewById(R.id.idscan_viewfinder_view);
        this.b = (SurfaceView) findViewById(R.id.idscan_preview_view);
        this.f.setOnClickListener(this);
        if (this.c) {
            this.e.setVisibility(0);
            new Handler().postDelayed(new c(this), 1000);
        } else {
            this.e.setVisibility(8);
        }
        if (VERSION.SDK_INT >= 24) {
            QLog.d("------", "oncreate_show dialog", new Object[0]);
            f();
        }
    }

    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        QLog.d("------", "onMultiWindowModeChanged show dialog:" + z, new Object[0]);
        if (z && !this.i) {
            f();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        super.onResume();
        e();
    }

    /* Access modifiers changed, original: protected */
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putAll(this.g);
        super.onSaveInstanceState(bundle);
    }
}
