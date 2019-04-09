package com.mqunar.hy.res.utils;

import android.text.TextUtils;
import com.mqunar.hy.res.HyResInitializer;
import com.mqunar.hy.res.HybridManager;
import com.mqunar.hy.res.logger.Timber;
import com.mqunar.hy.res.model.HybridInfo;
import java.io.File;
import java.util.List;
import qunar.lego.utils.diffpatch.MD5;

public class HybridInfoParser {
    public static synchronized HybridInfo parseAndCheck(String str, List<HybridInfo> list, String str2) {
        HybridInfo hybridInfo;
        synchronized (HybridInfoParser.class) {
            if (TextUtils.isEmpty(str)) {
                hybridInfo = null;
            } else {
                int i = 0;
                while (list != null) {
                    if (i >= list.size()) {
                        break;
                    }
                    hybridInfo = (HybridInfo) list.get(i);
                    if (str.equals(hybridInfo.path)) {
                        break;
                    }
                    i++;
                }
                hybridInfo = null;
                File file = new File(str);
                if (hybridInfo != null) {
                    hybridInfo.checked = false;
                    hybridInfo.errorChanged = false;
                    if (!checkQPFile(hybridInfo)) {
                        file.delete();
                        list.remove(hybridInfo);
                        hybridInfo = null;
                    }
                } else {
                    HybridInfo parserManifest = parserManifest(file, str2);
                    if (parserManifest == null) {
                        file.delete();
                        hybridInfo = null;
                    } else if (HyResInitializer.getInstance().getReplaceInterceptor().isInterceptor(parserManifest)) {
                        file.delete();
                        hybridInfo = null;
                    } else {
                        if (list != null) {
                            for (int size = list.size() - 1; size > -1; size--) {
                                hybridInfo = (HybridInfo) list.get(size);
                                if (!TextUtils.isEmpty(parserManifest.hybridId) && parserManifest.hybridId.equals(hybridInfo.hybridId)) {
                                    if (hybridInfo.version > parserManifest.version) {
                                        new File(parserManifest.path).delete();
                                        hybridInfo = null;
                                        break;
                                    }
                                    new File(hybridInfo.path).delete();
                                    list.remove(hybridInfo);
                                }
                            }
                        }
                        if (list != null) {
                            list.add(parserManifest);
                        }
                        hybridInfo = parserManifest;
                    }
                }
            }
        }
        return hybridInfo;
    }

    public static boolean checkQPFile(HybridInfo hybridInfo) {
        try {
            if (hybridInfo.errorChanged) {
                return false;
            }
            if (hybridInfo.checked) {
                return true;
            }
            File file = new File(hybridInfo.path);
            if (file.length() == hybridInfo.length) {
                long currentTimeMillis = System.currentTimeMillis();
                String md5 = MD5.getMD5(file);
                Timber.i("CheckQPFile>MD5>TIME:" + (System.currentTimeMillis() - currentTimeMillis) + " file:" + file.getAbsolutePath(), new Object[0]);
                if (RsaDecodeUtil.equals(md5, hybridInfo.getMd5())) {
                    hybridInfo.checked = true;
                    FileObserverManager.addHybridInfoObserver(hybridInfo);
                    return true;
                }
            }
            hybridInfo.errorChanged = true;
            if (file.exists()) {
                file.delete();
            }
            if (HybridManager.getInstance().getHybridInfos().contains(hybridInfo)) {
                HybridManager.getInstance().getHybridInfos().remove(hybridInfo);
            }
            HybridManager.getInstance().getDefaultHybridInfo(hybridInfo.hybridId).QpRequestType = 3;
            Timber.i("md5 error:sendSingleUpdateRequest" + hybridInfo.toJsonString(), new Object[0]);
            return false;
        } catch (Throwable th) {
            Timber.i("md5 error:exception no sendSingleUpdateRequest" + hybridInfo.toJsonString(), new Object[0]);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:0x00fd A:{SYNTHETIC, Splitter:B:59:0x00fd} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00fd A:{SYNTHETIC, Splitter:B:59:0x00fd} */
    public static com.mqunar.hy.res.model.HybridInfo parserManifest(java.io.File r11, java.lang.String r12) {
        /*
        r1 = 0;
        r4 = 6;
        if (r11 == 0) goto L_0x0013;
    L_0x0004:
        r0 = r11.exists();
        if (r0 == 0) goto L_0x0013;
    L_0x000a:
        r2 = r11.length();
        r5 = (long) r4;
        r0 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1));
        if (r0 >= 0) goto L_0x0015;
    L_0x0013:
        r0 = r1;
    L_0x0014:
        return r0;
    L_0x0015:
        r2 = new com.mqunar.hy.res.model.HybridInfo;
        r2.<init>();
        r0 = r11.getAbsolutePath();
        r2.path = r0;
        r5 = r11.length();
        r2.length = r5;
        r2.setMd5(r12);
        r3 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x010b, all -> 0x00f9 }
        r3.<init>(r11);	 Catch:{ Exception -> 0x010b, all -> 0x00f9 }
        r0 = new byte[r4];	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r5 = 0;
        r3.read(r0, r5, r4);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r5 = new java.lang.String;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r6 = 0;
        r7 = 2;
        r8 = "UTF-8";
        r5.<init>(r0, r6, r7, r8);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r6 = "QP";
        r5 = r6.equalsIgnoreCase(r5);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        if (r5 != 0) goto L_0x0051;
    L_0x0045:
        if (r3 == 0) goto L_0x004a;
    L_0x0047:
        r3.close();	 Catch:{ IOException -> 0x004c }
    L_0x004a:
        r0 = r1;
        goto L_0x0014;
    L_0x004c:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x004a;
    L_0x0051:
        r5 = 2;
        r5 = getInt(r0, r5);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r0 = new byte[r5];	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r6 = 0;
        r6 = r3.read(r0, r6, r5);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r7 = -1;
        if (r6 == r7) goto L_0x00e9;
    L_0x0060:
        r6 = new java.lang.String;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r6.<init>(r0);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r7 = 0;
        r7 = new java.lang.Object[r7];	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        com.mqunar.hy.res.logger.Timber.d(r6, r7);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r6 = new com.mqunar.hy.res.model.HybridManifest;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r7 = new java.lang.String;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r8 = 0;
        r9 = "UTF-8";
        r7.<init>(r0, r8, r5, r9);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r6.<init>(r7);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r0 = r6.getManifestJson();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r2.setManifestJson(r0);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r0 = r6.getVersion();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r2.version = r0;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r0 = r6.getHybridid();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r2.hybridId = r0;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r0 = r6.getExtra();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r2.extra = r0;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r0 = r6.getFiles();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        if (r0 == 0) goto L_0x00dc;
    L_0x0097:
        r6 = r0.size();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        if (r6 <= 0) goto L_0x00dc;
    L_0x009d:
        r6 = new java.util.HashMap;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r7 = r0.size();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r6.<init>(r7);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r7 = r0.iterator();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
    L_0x00aa:
        r0 = r7.hasNext();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        if (r0 == 0) goto L_0x00d9;
    L_0x00b0:
        r0 = r7.next();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r0 = (com.mqunar.hy.res.model.HybridManifest.ResItem) r0;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r8 = r0.getUrl();	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r8 = com.mqunar.hy.res.utils.UriCodec.getUrlWithOutQueryAndHash(r8);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r9 = new com.mqunar.hy.res.model.HybridFile;	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r10 = r4 + r5;
        r9.<init>(r0, r10);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        r6.put(r8, r9);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
        goto L_0x00aa;
    L_0x00c9:
        r0 = move-exception;
        r2 = r3;
    L_0x00cb:
        r3 = 0;
        r3 = new java.lang.Object[r3];	 Catch:{ all -> 0x0108 }
        com.mqunar.hy.res.logger.Timber.e(r0, r3);	 Catch:{ all -> 0x0108 }
        if (r2 == 0) goto L_0x00d6;
    L_0x00d3:
        r2.close();	 Catch:{ IOException -> 0x00f4 }
    L_0x00d6:
        r0 = r1;
        goto L_0x0014;
    L_0x00d9:
        r2.setResource(r6);	 Catch:{ Exception -> 0x00c9, all -> 0x0106 }
    L_0x00dc:
        if (r3 == 0) goto L_0x00e1;
    L_0x00de:
        r3.close();	 Catch:{ IOException -> 0x00e4 }
    L_0x00e1:
        r0 = r2;
        goto L_0x0014;
    L_0x00e4:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x00e1;
    L_0x00e9:
        if (r3 == 0) goto L_0x00d6;
    L_0x00eb:
        r3.close();	 Catch:{ IOException -> 0x00ef }
        goto L_0x00d6;
    L_0x00ef:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x00d6;
    L_0x00f4:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x00d6;
    L_0x00f9:
        r0 = move-exception;
        r3 = r1;
    L_0x00fb:
        if (r3 == 0) goto L_0x0100;
    L_0x00fd:
        r3.close();	 Catch:{ IOException -> 0x0101 }
    L_0x0100:
        throw r0;
    L_0x0101:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0100;
    L_0x0106:
        r0 = move-exception;
        goto L_0x00fb;
    L_0x0108:
        r0 = move-exception;
        r3 = r2;
        goto L_0x00fb;
    L_0x010b:
        r0 = move-exception;
        r2 = r1;
        goto L_0x00cb;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.hy.res.utils.HybridInfoParser.parserManifest(java.io.File, java.lang.String):com.mqunar.hy.res.model.HybridInfo");
    }

    public static int getInt(byte[] bArr, int i) {
        return (((convertbytetoint(bArr[i + 3]) << 24) + (convertbytetoint(bArr[i + 2]) << 16)) + (convertbytetoint(bArr[i + 1]) << 8)) + convertbytetoint(bArr[i]);
    }

    public static int convertbytetoint(byte b) {
        return b & 255;
    }
}
