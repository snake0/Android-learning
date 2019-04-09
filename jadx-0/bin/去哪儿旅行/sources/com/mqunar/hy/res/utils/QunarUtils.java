package com.mqunar.hy.res.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import com.mqunar.hy.res.logger.Timber;
import java.io.File;

public class QunarUtils {
    private static int canWriteFlag = 0;

    /* JADX WARNING: Removed duplicated region for block: B:58:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0084 A:{SYNTHETIC, Splitter:B:41:0x0084} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x006b A:{SYNTHETIC, Splitter:B:33:0x006b} */
    /* JADX WARNING: Removed duplicated region for block: B:58:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0084 A:{SYNTHETIC, Splitter:B:41:0x0084} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x006b A:{SYNTHETIC, Splitter:B:33:0x006b} */
    /* JADX WARNING: Removed duplicated region for block: B:58:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0084 A:{SYNTHETIC, Splitter:B:41:0x0084} */
    public static java.io.File getAppFileDir(android.content.Context r8) {
        /*
        r6 = 1;
        r1 = 0;
        r5 = 0;
        r0 = android.os.Environment.getExternalStorageState();	 Catch:{ Exception -> 0x0055 }
    L_0x0007:
        r2 = "mounted";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0099;
    L_0x000f:
        r0 = getExternalFilesDir(r8);
        r2 = canWriteFlag;
        if (r2 != 0) goto L_0x0050;
    L_0x0017:
        r2 = java.util.UUID.randomUUID();	 Catch:{ Throwable -> 0x0064, all -> 0x0080 }
        r3 = r2.toString();	 Catch:{ Throwable -> 0x0064, all -> 0x0080 }
        r4 = new java.io.File;	 Catch:{ Throwable -> 0x0064, all -> 0x0080 }
        r4.<init>(r0, r3);	 Catch:{ Throwable -> 0x0064, all -> 0x0080 }
        r2 = r4.exists();	 Catch:{ Throwable -> 0x0064, all -> 0x0080 }
        if (r2 != 0) goto L_0x002d;
    L_0x002a:
        r4.mkdirs();	 Catch:{ Throwable -> 0x0064, all -> 0x0080 }
    L_0x002d:
        r2 = new java.io.File;	 Catch:{ Throwable -> 0x0064, all -> 0x0080 }
        r2.<init>(r4, r3);	 Catch:{ Throwable -> 0x0064, all -> 0x0080 }
        r3 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x00a8, all -> 0x009e }
        r3.<init>(r2);	 Catch:{ Throwable -> 0x00a8, all -> 0x009e }
        r1 = 0;
        r3.write(r1);	 Catch:{ Throwable -> 0x00ad, all -> 0x00a2 }
        r3.flush();	 Catch:{ Throwable -> 0x00ad, all -> 0x00a2 }
        r1 = 1;
        canWriteFlag = r1;	 Catch:{ Throwable -> 0x00ad, all -> 0x00a2 }
        if (r3 == 0) goto L_0x0050;
    L_0x0043:
        r3.close();	 Catch:{ IOException -> 0x005d }
    L_0x0046:
        r2.delete();
        r1 = r2.getParentFile();
        r1.delete();
    L_0x0050:
        r1 = canWriteFlag;
        if (r1 != r6) goto L_0x0099;
    L_0x0054:
        return r0;
    L_0x0055:
        r0 = move-exception;
        r2 = new java.lang.Object[r5];
        com.mqunar.hy.res.logger.Timber.e(r0, r2);
        r0 = r1;
        goto L_0x0007;
    L_0x005d:
        r1 = move-exception;
        r3 = new java.lang.Object[r5];
        com.mqunar.hy.res.logger.Timber.e(r1, r3);
        goto L_0x0046;
    L_0x0064:
        r2 = move-exception;
        r2 = r1;
    L_0x0066:
        r3 = 2;
        canWriteFlag = r3;	 Catch:{ all -> 0x00a5 }
        if (r2 == 0) goto L_0x0050;
    L_0x006b:
        r2.close();	 Catch:{ IOException -> 0x0079 }
    L_0x006e:
        r1.delete();
        r1 = r1.getParentFile();
        r1.delete();
        goto L_0x0050;
    L_0x0079:
        r2 = move-exception;
        r3 = new java.lang.Object[r5];
        com.mqunar.hy.res.logger.Timber.e(r2, r3);
        goto L_0x006e;
    L_0x0080:
        r0 = move-exception;
        r3 = r1;
    L_0x0082:
        if (r3 == 0) goto L_0x0091;
    L_0x0084:
        r3.close();	 Catch:{ IOException -> 0x0092 }
    L_0x0087:
        r1.delete();
        r1 = r1.getParentFile();
        r1.delete();
    L_0x0091:
        throw r0;
    L_0x0092:
        r2 = move-exception;
        r3 = new java.lang.Object[r5];
        com.mqunar.hy.res.logger.Timber.e(r2, r3);
        goto L_0x0087;
    L_0x0099:
        r0 = r8.getFilesDir();
        goto L_0x0054;
    L_0x009e:
        r0 = move-exception;
        r3 = r1;
        r1 = r2;
        goto L_0x0082;
    L_0x00a2:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0082;
    L_0x00a5:
        r0 = move-exception;
        r3 = r2;
        goto L_0x0082;
    L_0x00a8:
        r3 = move-exception;
        r7 = r2;
        r2 = r1;
        r1 = r7;
        goto L_0x0066;
    L_0x00ad:
        r1 = move-exception;
        r1 = r2;
        r2 = r3;
        goto L_0x0066;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.hy.res.utils.QunarUtils.getAppFileDir(android.content.Context):java.io.File");
    }

    @TargetApi(8)
    private static File getExternalFilesDir(Context context) {
        if (VERSION.SDK_INT >= 8) {
            try {
                File externalFilesDir = context.getExternalFilesDir(null);
                if (externalFilesDir != null) {
                    return externalFilesDir;
                }
            } catch (Exception e) {
                Timber.e(e, new Object[0]);
            }
        }
        return new File(Environment.getExternalStorageDirectory(), "/Android/data/" + context.getPackageName() + "/files");
    }

    public static File getAppDir(Context context) {
        return getAppFileDir(context).getParentFile();
    }

    public static String getQueryParameter(Uri uri, String str) {
        if (uri.isOpaque()) {
            throw new UnsupportedOperationException("This isn't a hierarchical URI.");
        } else if (str == null) {
            throw new NullPointerException("key");
        } else {
            String encodedQuery = uri.getEncodedQuery();
            if (encodedQuery == null) {
                return null;
            }
            String encode = Uri.encode(str, null);
            int length = encodedQuery.length();
            int i = 0;
            while (true) {
                int indexOf = encodedQuery.indexOf(38, i);
                int i2 = indexOf != -1 ? indexOf : length;
                int indexOf2 = encodedQuery.indexOf(61, i);
                if (indexOf2 > i2 || indexOf2 == -1) {
                    indexOf2 = i2;
                }
                if (indexOf2 - i == encode.length() && encodedQuery.regionMatches(i, encode, 0, encode.length())) {
                    if (indexOf2 == i2) {
                        return "";
                    }
                    return UriCodec.decode(encodedQuery.substring(indexOf2 + 1, i2), true, UriCodec.UTF_8, false);
                } else if (indexOf == -1) {
                    return null;
                } else {
                    i = indexOf + 1;
                }
            }
        }
    }
}
