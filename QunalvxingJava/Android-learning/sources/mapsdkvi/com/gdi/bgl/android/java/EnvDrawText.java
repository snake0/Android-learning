package mapsdkvi.com.gdi.bgl.android.java;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Cap;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.support.v4.view.ViewCompat;
import android.text.Layout;
import android.text.TextPaint;
import android.util.SparseArray;
import com.baidu.mapapi.common.SysOSUtil;
import java.nio.IntBuffer;

public class EnvDrawText {
    private static final String a = EnvDrawText.class.getSimpleName();
    public static boolean bBmpChange = false;
    public static Bitmap bmp = null;
    public static int[] buffer = null;
    public static SparseArray<a> fontCache = null;

    public static synchronized int[] drawText(String str, int i, int i2, int[] iArr, int i3, int i4, int i5, int i6, int i7) {
        int[] iArr2;
        synchronized (EnvDrawText.class) {
            int i8 = 0;
            int i9 = 0;
            Canvas canvas = new Canvas();
            TextPaint textPaint = new TextPaint();
            if (canvas == null || textPaint == null) {
                iArr2 = new int[0];
            } else {
                int desiredWidth;
                Bitmap bitmap;
                String phoneType = SysOSUtil.getPhoneType();
                if (phoneType != null && phoneType.equals("vivo X3L")) {
                    i2 = 0;
                }
                textPaint.reset();
                textPaint.setSubpixelText(true);
                textPaint.setAntiAlias(true);
                textPaint.setTextSize((float) i);
                textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                switch (i2) {
                    case 1:
                        textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                        break;
                    case 2:
                        textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 2));
                        break;
                    default:
                        textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
                        break;
                }
                if (i6 != 0) {
                    textPaint.setStrokeWidth((float) i6);
                    textPaint.setStrokeCap(Cap.ROUND);
                    textPaint.setStrokeJoin(Join.ROUND);
                    textPaint.setStyle(Style.STROKE);
                }
                textPaint.setSubpixelText(true);
                textPaint.setAntiAlias(true);
                if (!(i2 == 0 || fontCache == null)) {
                    a aVar = (a) fontCache.get(i2);
                    if (aVar != null) {
                        textPaint.setTypeface(aVar.a);
                    }
                }
                textPaint.setTextSize((float) i);
                int indexOf = str.indexOf(92, 0);
                if (indexOf == -1) {
                    Bitmap bitmap2;
                    FontMetrics fontMetrics = textPaint.getFontMetrics();
                    desiredWidth = (int) (((double) Layout.getDesiredWidth(str, 0, str.length(), textPaint)) + 0.5d);
                    indexOf = (int) Math.ceil((double) (fontMetrics.descent - fontMetrics.ascent));
                    iArr[0] = desiredWidth;
                    iArr[1] = indexOf;
                    if (iArr.length == 4) {
                        desiredWidth = (int) Math.pow(2.0d, (double) ((int) Math.ceil(Math.log((double) desiredWidth) / Math.log(2.0d))));
                        indexOf = (int) Math.pow(2.0d, (double) ((int) Math.ceil(Math.log((double) indexOf) / Math.log(2.0d))));
                    }
                    if (0 == desiredWidth && 0 == r2) {
                        indexOf = 0;
                        i9 = 0;
                    } else {
                        i9 = desiredWidth;
                    }
                    if (iArr.length == 4) {
                        iArr[2] = i9;
                        iArr[3] = indexOf;
                    }
                    if (i9 <= 0 || indexOf <= 0) {
                        bitmap2 = null;
                    } else {
                        Bitmap createBitmap = Bitmap.createBitmap(i9, indexOf, Config.ARGB_8888);
                        if (createBitmap == null) {
                            iArr2 = new int[0];
                        } else {
                            canvas.setBitmap(createBitmap);
                            bitmap2 = createBitmap;
                        }
                    }
                    if ((ViewCompat.MEASURED_STATE_MASK & i5) == 0) {
                        canvas.drawColor(ViewCompat.MEASURED_SIZE_MASK);
                    } else {
                        canvas.drawColor(i5);
                    }
                    if (!(i6 == 0 || canvas == null)) {
                        textPaint.setStrokeWidth((float) i6);
                        textPaint.setStrokeCap(Cap.ROUND);
                        textPaint.setStrokeJoin(Join.ROUND);
                        textPaint.setStyle(Style.STROKE);
                        textPaint.setColor(i4);
                        canvas.drawText(str, 0.0f, 0.0f - fontMetrics.ascent, textPaint);
                    }
                    textPaint.setStyle(Style.FILL);
                    textPaint.setColor(i3);
                    canvas.drawText(str, 0.0f, 0.0f - fontMetrics.ascent, textPaint);
                    Bitmap bitmap3 = bitmap2;
                    desiredWidth = indexOf;
                    bitmap = bitmap3;
                } else {
                    int i10 = indexOf + 1;
                    indexOf = (int) textPaint.measureText(str.substring(0, indexOf));
                    desiredWidth = i10;
                    i10 = 2;
                    while (true) {
                        int indexOf2 = str.indexOf(92, desiredWidth);
                        if (indexOf2 > 0) {
                            desiredWidth = (int) textPaint.measureText(str.substring(desiredWidth, indexOf2));
                            if (desiredWidth <= indexOf) {
                                desiredWidth = indexOf;
                            }
                            i10++;
                            indexOf = desiredWidth;
                            desiredWidth = indexOf2 + 1;
                        } else {
                            if (desiredWidth != str.length()) {
                                desiredWidth = (int) (((double) Layout.getDesiredWidth(str.substring(desiredWidth, str.length()), textPaint)) + 0.5d);
                                if (desiredWidth > indexOf) {
                                    indexOf = desiredWidth;
                                }
                            }
                            FontMetrics fontMetrics2 = textPaint.getFontMetrics();
                            int ceil = (int) Math.ceil((double) (fontMetrics2.descent - fontMetrics2.ascent));
                            desiredWidth = ceil * i10;
                            iArr[0] = indexOf;
                            iArr[1] = desiredWidth;
                            if (iArr.length == 4) {
                                indexOf = (int) Math.pow(2.0d, (double) ((int) Math.ceil(Math.log((double) indexOf) / Math.log(2.0d))));
                                desiredWidth = (int) Math.pow(2.0d, (double) ((int) Math.ceil(Math.log((double) desiredWidth) / Math.log(2.0d))));
                            }
                            if (!(0 == indexOf && 0 == desiredWidth)) {
                                i9 = desiredWidth;
                                i8 = indexOf;
                            }
                            if (iArr.length == 4) {
                                iArr[2] = i8;
                                iArr[3] = i9;
                            }
                            if (i8 <= 0 || i9 <= 0) {
                                bitmap = null;
                            } else {
                                bitmap = Bitmap.createBitmap(i8, i9, Config.ARGB_8888);
                                if (bitmap == null) {
                                    iArr2 = new int[0];
                                } else {
                                    canvas.setBitmap(bitmap);
                                }
                            }
                            if ((ViewCompat.MEASURED_STATE_MASK & i5) == 0) {
                                canvas.drawColor(ViewCompat.MEASURED_SIZE_MASK);
                            } else {
                                canvas.drawColor(i5);
                            }
                            textPaint.setTextAlign(getTextAlignedType(i7));
                            desiredWidth = i7 == 1 ? 0 : i7 == 2 ? iArr[0] : iArr[0] / 2;
                            i10 = 0;
                            int i11 = 0;
                            while (true) {
                                int indexOf3 = str.indexOf(92, i10);
                                if (indexOf3 > 0) {
                                    String substring = str.substring(i10, indexOf3);
                                    i10 = (int) textPaint.measureText(substring);
                                    i10 = indexOf3 + 1;
                                    if (!(i6 == 0 || canvas == null)) {
                                        textPaint.setStrokeWidth((float) i6);
                                        textPaint.setStrokeCap(Cap.ROUND);
                                        textPaint.setStrokeJoin(Join.ROUND);
                                        textPaint.setStyle(Style.STROKE);
                                        textPaint.setColor(i4);
                                        canvas.drawText(substring, (float) desiredWidth, ((float) (i11 * ceil)) - fontMetrics2.ascent, textPaint);
                                    }
                                    textPaint.setStyle(Style.FILL);
                                    textPaint.setColor(i3);
                                    if (canvas != null) {
                                        canvas.drawText(substring, (float) desiredWidth, ((float) (i11 * ceil)) - fontMetrics2.ascent, textPaint);
                                    }
                                    i11++;
                                } else {
                                    if (i10 != str.length()) {
                                        String substring2 = str.substring(i10, str.length());
                                        indexOf3 = (int) (((double) Layout.getDesiredWidth(substring2, textPaint)) + 0.5d);
                                        if (!(i6 == 0 || canvas == null)) {
                                            textPaint.setStrokeWidth((float) i6);
                                            textPaint.setStrokeCap(Cap.ROUND);
                                            textPaint.setStrokeJoin(Join.ROUND);
                                            textPaint.setStyle(Style.STROKE);
                                            textPaint.setColor(i4);
                                            canvas.drawText(substring2, (float) desiredWidth, ((float) (i11 * ceil)) - fontMetrics2.ascent, textPaint);
                                        }
                                        textPaint.setStyle(Style.FILL);
                                        textPaint.setColor(i3);
                                        if (canvas != null) {
                                            canvas.drawText(substring2, (float) desiredWidth, ((float) (i11 * ceil)) - fontMetrics2.ascent, textPaint);
                                        }
                                    }
                                    desiredWidth = i9;
                                    i9 = i8;
                                }
                            }
                        }
                    }
                }
                iArr2 = new int[(desiredWidth * i9)];
                if (bitmap != null) {
                    bitmap.copyPixelsToBuffer(IntBuffer.wrap(iArr2));
                }
                if (!(bitmap == null || bitmap.isRecycled())) {
                    bitmap.recycle();
                }
            }
        }
        return iArr2;
    }

    public static Bitmap drawTextAlpha(String str, int i, int i2, int i3) {
        Bitmap bitmap = null;
        Canvas canvas = new Canvas();
        TextPaint textPaint = new TextPaint();
        if (canvas == null || textPaint == null) {
            return null;
        }
        String phoneType = SysOSUtil.getPhoneType();
        if (phoneType != null && phoneType.equals("vivo X3L")) {
            i2 = 0;
        }
        textPaint.reset();
        textPaint.setSubpixelText(false);
        textPaint.setAntiAlias(false);
        textPaint.setTextSize((float) i);
        switch (i2) {
            case 1:
                textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                break;
            case 2:
                textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 2));
                break;
            default:
                textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
                break;
        }
        float f = (((float) i3) * 1.3f) + 0.5f;
        int indexOf = str.indexOf(92, 0);
        int desiredWidth;
        int ceil;
        if (indexOf == -1) {
            FontMetrics fontMetrics = textPaint.getFontMetrics();
            desiredWidth = (int) (Layout.getDesiredWidth(str, 0, str.length(), textPaint) + f);
            ceil = (int) Math.ceil((double) (fontMetrics.descent - fontMetrics.ascent));
            if (desiredWidth > 0 && ceil > 0) {
                bitmap = Bitmap.createBitmap(desiredWidth, ceil, Config.ALPHA_8);
                if (bitmap == null) {
                    return bitmap;
                }
                bitmap.eraseColor(0);
                canvas.setBitmap(bitmap);
            }
            textPaint.setStyle(Style.FILL);
            canvas.drawText(str, 0.5f * f, 0.0f - fontMetrics.ascent, textPaint);
            return bitmap;
        }
        ceil = indexOf + 1;
        desiredWidth = 2;
        indexOf = (int) (((double) Layout.getDesiredWidth(str.substring(0, indexOf), textPaint)) + 0.5d);
        while (true) {
            int indexOf2 = str.indexOf(92, ceil);
            if (indexOf2 > 0) {
                ceil = (int) (((double) Layout.getDesiredWidth(str.substring(ceil, indexOf2), textPaint)) + 0.5d);
                if (ceil > indexOf) {
                    indexOf = ceil;
                }
                ceil = indexOf2 + 1;
                desiredWidth++;
            } else {
                if (ceil != str.length()) {
                    ceil = (int) (((double) Layout.getDesiredWidth(str.substring(ceil, str.length()), textPaint)) + 0.5d);
                    if (ceil > indexOf) {
                        indexOf = ceil;
                    }
                }
                FontMetrics fontMetrics2 = textPaint.getFontMetrics();
                int ceil2 = (int) Math.ceil((double) (fontMetrics2.descent - fontMetrics2.ascent));
                indexOf += i3;
                desiredWidth *= ceil2;
                if (indexOf > 0 && desiredWidth > 0) {
                    bitmap = Bitmap.createBitmap(indexOf, desiredWidth, Config.ALPHA_8);
                    if (bitmap == null) {
                        return bitmap;
                    }
                    bitmap.eraseColor(0);
                    canvas.setBitmap(bitmap);
                }
                textPaint.setTextAlign(getTextAlignedType(3));
                float f2 = ((float) indexOf) - (0.5f * f);
                ceil = 0;
                desiredWidth = 0;
                while (true) {
                    int indexOf3 = str.indexOf(92, ceil);
                    if (indexOf3 > 0) {
                        String substring = str.substring(ceil, indexOf3);
                        ceil = (int) (((double) Layout.getDesiredWidth(substring, textPaint)) + 0.5d);
                        ceil = indexOf3 + 1;
                        textPaint.setStyle(Style.FILL);
                        if (canvas != null) {
                            canvas.drawText(substring, f2, ((float) (desiredWidth * ceil2)) - fontMetrics2.ascent, textPaint);
                        }
                        desiredWidth++;
                    } else if (ceil == str.length()) {
                        return bitmap;
                    } else {
                        String substring2 = str.substring(ceil, str.length());
                        indexOf3 = (int) (((double) Layout.getDesiredWidth(substring2, textPaint)) + 0.5d);
                        textPaint.setStyle(Style.FILL);
                        if (canvas == null) {
                            return bitmap;
                        }
                        canvas.drawText(substring2, f2, ((float) (desiredWidth * ceil2)) - fontMetrics2.ascent, textPaint);
                        return bitmap;
                    }
                }
            }
        }
    }

    public static synchronized Bitmap drawTextExt(String str, int i, int i2, int[] iArr, int i3, int i4, int i5, int i6, int i7) {
        Bitmap bitmap;
        synchronized (EnvDrawText.class) {
            int i8 = 0;
            int i9 = 0;
            Canvas canvas = new Canvas();
            TextPaint textPaint = new TextPaint();
            if (canvas == null || textPaint == null) {
                bitmap = null;
            } else {
                String phoneType = SysOSUtil.getPhoneType();
                if (phoneType != null && phoneType.equals("vivo X3L")) {
                    i2 = 0;
                }
                textPaint.reset();
                textPaint.setSubpixelText(true);
                textPaint.setAntiAlias(true);
                textPaint.setTextSize((float) i);
                textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                switch (i2) {
                    case 1:
                        textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                        break;
                    case 2:
                        textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 2));
                        break;
                    default:
                        textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
                        break;
                }
                if (i6 != 0) {
                    textPaint.setStrokeWidth((float) i6);
                    textPaint.setStrokeCap(Cap.ROUND);
                    textPaint.setStrokeJoin(Join.ROUND);
                    textPaint.setStyle(Style.STROKE);
                }
                int indexOf = str.indexOf(92, 0);
                int ceil;
                if (indexOf == -1) {
                    FontMetrics fontMetrics = textPaint.getFontMetrics();
                    indexOf = (int) (((double) Layout.getDesiredWidth(str, 0, str.length(), textPaint)) + 0.5d);
                    ceil = (int) Math.ceil((double) (fontMetrics.descent - fontMetrics.ascent));
                    iArr[0] = indexOf;
                    iArr[1] = ceil;
                    if (iArr.length == 4) {
                        indexOf = (int) Math.pow(2.0d, (double) ((int) Math.ceil(Math.log((double) indexOf) / Math.log(2.0d))));
                        ceil = (int) Math.pow(2.0d, (double) ((int) Math.ceil(Math.log((double) ceil) / Math.log(2.0d))));
                    }
                    if (!(0 == indexOf && 0 == ceil)) {
                        i9 = ceil;
                        i8 = indexOf;
                    }
                    if (iArr.length == 4) {
                        iArr[2] = i8;
                        iArr[3] = i9;
                    }
                    if (i8 <= 0 || i9 <= 0) {
                        bitmap = null;
                    } else {
                        bitmap = Bitmap.createBitmap(i8, i9, Config.ARGB_8888);
                        if (bitmap != null) {
                            canvas.setBitmap(bitmap);
                        }
                    }
                    if ((ViewCompat.MEASURED_STATE_MASK & i5) == 0) {
                        canvas.drawColor(ViewCompat.MEASURED_SIZE_MASK);
                    } else {
                        canvas.drawColor(i5);
                    }
                    if (!(i6 == 0 || canvas == null)) {
                        textPaint.setStrokeWidth((float) i6);
                        textPaint.setStrokeCap(Cap.ROUND);
                        textPaint.setStrokeJoin(Join.ROUND);
                        textPaint.setStyle(Style.STROKE);
                        textPaint.setColor(i4);
                        canvas.drawText(str, 0.0f, 0.0f - fontMetrics.ascent, textPaint);
                    }
                    textPaint.setStyle(Style.FILL);
                    textPaint.setColor(i3);
                    canvas.drawText(str, 0.0f, 0.0f - fontMetrics.ascent, textPaint);
                } else {
                    int i10 = indexOf + 1;
                    indexOf = (int) (((double) Layout.getDesiredWidth(str.substring(0, indexOf), textPaint)) + 0.5d);
                    ceil = i10;
                    i10 = 2;
                    while (true) {
                        int indexOf2 = str.indexOf(92, ceil);
                        if (indexOf2 > 0) {
                            ceil = (int) (((double) Layout.getDesiredWidth(str.substring(ceil, indexOf2), textPaint)) + 0.5d);
                            if (ceil <= indexOf) {
                                ceil = indexOf;
                            }
                            i10++;
                            indexOf = ceil;
                            ceil = indexOf2 + 1;
                        } else {
                            Bitmap bitmap2;
                            if (ceil != str.length()) {
                                ceil = (int) (((double) Layout.getDesiredWidth(str.substring(ceil, str.length()), textPaint)) + 0.5d);
                                if (ceil > indexOf) {
                                    indexOf = ceil;
                                }
                            }
                            FontMetrics fontMetrics2 = textPaint.getFontMetrics();
                            int ceil2 = (int) Math.ceil((double) (fontMetrics2.descent - fontMetrics2.ascent));
                            ceil = ceil2 * i10;
                            iArr[0] = indexOf;
                            iArr[1] = ceil;
                            if (iArr.length == 4) {
                                indexOf = (int) Math.pow(2.0d, (double) ((int) Math.ceil(Math.log((double) indexOf) / Math.log(2.0d))));
                                ceil = (int) Math.pow(2.0d, (double) ((int) Math.ceil(Math.log((double) ceil) / Math.log(2.0d))));
                            }
                            if (0 == indexOf && 0 == r1) {
                                ceil = 0;
                                indexOf = 0;
                            }
                            if (iArr.length == 4) {
                                iArr[2] = indexOf;
                                iArr[3] = ceil;
                            }
                            if (indexOf <= 0 || ceil <= 0) {
                                bitmap2 = null;
                            } else {
                                bitmap = Bitmap.createBitmap(indexOf, ceil, Config.ARGB_8888);
                                if (bitmap != null) {
                                    canvas.setBitmap(bitmap);
                                    bitmap2 = bitmap;
                                }
                            }
                            if ((ViewCompat.MEASURED_STATE_MASK & i5) == 0) {
                                canvas.drawColor(ViewCompat.MEASURED_SIZE_MASK);
                            } else {
                                canvas.drawColor(i5);
                            }
                            textPaint.setTextAlign(getTextAlignedType(i7));
                            ceil = i7 == 1 ? 0 : i7 == 2 ? iArr[0] : iArr[0] / 2;
                            i9 = 0;
                            int i11 = 0;
                            while (true) {
                                i8 = str.indexOf(92, i9);
                                if (i8 > 0) {
                                    String substring = str.substring(i9, i8);
                                    i9 = (int) (((double) Layout.getDesiredWidth(substring, textPaint)) + 0.5d);
                                    i9 = i8 + 1;
                                    if (!(i6 == 0 || canvas == null)) {
                                        textPaint.setStrokeWidth((float) i6);
                                        textPaint.setStrokeCap(Cap.ROUND);
                                        textPaint.setStrokeJoin(Join.ROUND);
                                        textPaint.setStyle(Style.STROKE);
                                        textPaint.setColor(i4);
                                        canvas.drawText(substring, (float) ceil, ((float) (i11 * ceil2)) - fontMetrics2.ascent, textPaint);
                                    }
                                    textPaint.setStyle(Style.FILL);
                                    textPaint.setColor(i3);
                                    if (canvas != null) {
                                        canvas.drawText(substring, (float) ceil, ((float) (i11 * ceil2)) - fontMetrics2.ascent, textPaint);
                                    }
                                    i11++;
                                } else {
                                    if (i9 != str.length()) {
                                        String substring2 = str.substring(i9, str.length());
                                        i8 = (int) (((double) Layout.getDesiredWidth(substring2, textPaint)) + 0.5d);
                                        if (!(i6 == 0 || canvas == null)) {
                                            textPaint.setStrokeWidth((float) i6);
                                            textPaint.setStrokeCap(Cap.ROUND);
                                            textPaint.setStrokeJoin(Join.ROUND);
                                            textPaint.setStyle(Style.STROKE);
                                            textPaint.setColor(i4);
                                            canvas.drawText(substring2, (float) ceil, ((float) (i11 * ceil2)) - fontMetrics2.ascent, textPaint);
                                        }
                                        textPaint.setStyle(Style.FILL);
                                        textPaint.setColor(i3);
                                        if (canvas != null) {
                                            canvas.drawText(substring2, (float) ceil, ((float) (i11 * ceil2)) - fontMetrics2.ascent, textPaint);
                                        }
                                    }
                                    bitmap = bitmap2;
                                }
                            }
                        }
                    }
                }
            }
        }
        return bitmap;
    }

    private static Align getTextAlignedType(int i) {
        return 1 == i ? Align.LEFT : 2 == i ? Align.RIGHT : Align.CENTER;
    }

    public static short[] getTextSize(String str, int i, int i2) {
        int length = str.length();
        if (length == 0) {
            return null;
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setSubpixelText(true);
        textPaint.setAntiAlias(true);
        textPaint.setTextSize((float) i);
        switch (i2) {
            case 1:
                textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                break;
            case 2:
                textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 2));
                break;
            default:
                textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
                break;
        }
        short[] sArr = new short[length];
        for (int i3 = 0; i3 < length; i3++) {
            sArr[i3] = (short) ((int) (((double) Layout.getDesiredWidth(str, 0, i3 + 1, textPaint)) + 0.5d));
        }
        return sArr;
    }

    public static float[] getTextSizeExt(String str, int i, int i2) {
        if (str.length() == 0) {
            return null;
        }
        Paint paint = new Paint();
        paint.setSubpixelText(true);
        paint.setAntiAlias(true);
        paint.setTextSize((float) i);
        switch (i2) {
            case 1:
                paint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                break;
            case 2:
                paint.setTypeface(Typeface.create(Typeface.DEFAULT, 2));
                break;
            default:
                paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
                break;
        }
        return new float[]{paint.measureText(str), paint.descent() - paint.ascent()};
    }

    public static synchronized void registFontCache(int i, Typeface typeface) {
        synchronized (EnvDrawText.class) {
            if (!(i == 0 || typeface == null)) {
                if (fontCache == null) {
                    fontCache = new SparseArray();
                }
                a aVar = (a) fontCache.get(i);
                if (aVar == null) {
                    aVar = new a();
                    aVar.a = typeface;
                    aVar.b++;
                    fontCache.put(i, aVar);
                } else {
                    aVar.b++;
                }
            }
        }
    }

    public static synchronized void removeFontCache(int i) {
        synchronized (EnvDrawText.class) {
            a aVar = (a) fontCache.get(i);
            if (aVar != null) {
                aVar.b--;
                if (aVar.b == 0) {
                    fontCache.remove(i);
                }
            }
        }
    }
}
