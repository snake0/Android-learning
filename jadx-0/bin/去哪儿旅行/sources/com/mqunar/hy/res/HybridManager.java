package com.mqunar.hy.res;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import android.net.Uri;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.mqunar.hy.res.logger.DevQPLog;
import com.mqunar.hy.res.logger.Timber;
import com.mqunar.hy.res.model.HybridFile;
import com.mqunar.hy.res.model.HybridInfo;
import com.mqunar.hy.res.model.QpPathInfo;
import com.mqunar.hy.res.utils.AssetUtils;
import com.mqunar.hy.res.utils.CheckQpCompetence;
import com.mqunar.hy.res.utils.DownloadManager;
import com.mqunar.hy.res.utils.ErrorCodeAndMessage;
import com.mqunar.hy.res.utils.HybridIdUtils;
import com.mqunar.hy.res.utils.HybridInfoParser;
import com.mqunar.hy.res.utils.QHepburnMimeTypeUtils;
import com.mqunar.hy.res.utils.QmpFileInputStream;
import com.mqunar.hy.res.utils.QunarUtils;
import com.mqunar.hy.res.utils.RsaDecodeUtil;
import com.mqunar.hy.res.utils.SpCahceUtil;
import com.mqunar.hy.res.utils.UpgradeInfoCache;
import com.mqunar.hy.res.utils.UriCodec;
import java.io.BufferedInputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import qunar.lego.utils.diffpatch.MD5;

public class HybridManager {
    public static final String QP_UPDATED_TO_CACHE_ACTION = "QP_UPDATED_TO_CACHE_ACTION";
    public static final String QP_UPDATED_TO_CACHE_DATA_KEY = "QP_UPDATED_TO_CACHE_DATA_KEY";
    public static final String QP_UPDATED_TO_CACHE_HYBRID_KEY = "QP_UPDATED_TO_CACHE_HYBRID_KEY";
    private static Set<String> mHybrididSet = new HashSet();
    private static boolean parseFlag = false;
    private static Thread parseThread;
    private String DATA_PATH;
    private List<HybridInfo> mList;
    private SharedPreferences preferences;

    class SingletonHolder {
        private static final HybridManager INSTANCE = new HybridManager();

        private SingletonHolder() {
        }
    }

    /* synthetic */ HybridManager(AnonymousClass1 anonymousClass1) {
        this();
    }

    public List<HybridInfo> getHybridInfos() {
        return this.mList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:60:0x009a A:{SYNTHETIC, Splitter:B:60:0x009a} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x009f A:{SYNTHETIC, Splitter:B:63:0x009f} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x009a A:{SYNTHETIC, Splitter:B:60:0x009a} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x009f A:{SYNTHETIC, Splitter:B:63:0x009f} */
    private java.lang.String copyAssertToSdcard(android.content.res.AssetManager r10, java.lang.String r11) {
        /*
        r9 = this;
        r0 = 0;
        r1 = android.text.TextUtils.isEmpty(r11);
        if (r1 != 0) goto L_0x0009;
    L_0x0007:
        if (r10 != 0) goto L_0x000a;
    L_0x0009:
        return r0;
    L_0x000a:
        r1 = 0;
        r2 = java.io.File.separator;	 Catch:{ IOException -> 0x00b3, all -> 0x0094 }
        r2 = r11.lastIndexOf(r2);	 Catch:{ IOException -> 0x00b3, all -> 0x0094 }
        r2 = r2 + 1;
        r2 = r11.substring(r2);	 Catch:{ IOException -> 0x00b3, all -> 0x0094 }
        r3 = r10.open(r11);	 Catch:{ IOException -> 0x00b3, all -> 0x0094 }
        r4 = new java.io.File;	 Catch:{ IOException -> 0x00b7, all -> 0x00ad }
        r5 = r9.DATA_PATH;	 Catch:{ IOException -> 0x00b7, all -> 0x00ad }
        r4.<init>(r5, r2);	 Catch:{ IOException -> 0x00b7, all -> 0x00ad }
        r2 = r4.exists();	 Catch:{ IOException -> 0x00b7, all -> 0x00ad }
        if (r2 == 0) goto L_0x004a;
    L_0x0028:
        r5 = r4.length();	 Catch:{ IOException -> 0x00b7, all -> 0x00ad }
        r2 = r3.available();	 Catch:{ IOException -> 0x00b7, all -> 0x00ad }
        r7 = (long) r2;
        r2 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r2 != 0) goto L_0x004a;
    L_0x0035:
        if (r3 == 0) goto L_0x003a;
    L_0x0037:
        r3.close();	 Catch:{ IOException -> 0x0045 }
    L_0x003a:
        if (r0 == 0) goto L_0x0009;
    L_0x003c:
        r1.close();	 Catch:{ IOException -> 0x0040 }
        goto L_0x0009;
    L_0x0040:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0009;
    L_0x0045:
        r2 = move-exception;
        r2.printStackTrace();
        goto L_0x003a;
    L_0x004a:
        r2 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x00b7, all -> 0x00ad }
        r2.<init>(r4);	 Catch:{ IOException -> 0x00b7, all -> 0x00ad }
        r1 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r1 = new byte[r1];	 Catch:{ IOException -> 0x005f }
    L_0x0053:
        r5 = r3.read(r1);	 Catch:{ IOException -> 0x005f }
        r6 = -1;
        if (r5 == r6) goto L_0x0073;
    L_0x005a:
        r6 = 0;
        r2.write(r1, r6, r5);	 Catch:{ IOException -> 0x005f }
        goto L_0x0053;
    L_0x005f:
        r1 = move-exception;
    L_0x0060:
        r1.printStackTrace();	 Catch:{ all -> 0x00b1 }
        if (r3 == 0) goto L_0x0068;
    L_0x0065:
        r3.close();	 Catch:{ IOException -> 0x008f }
    L_0x0068:
        if (r2 == 0) goto L_0x0009;
    L_0x006a:
        r2.close();	 Catch:{ IOException -> 0x006e }
        goto L_0x0009;
    L_0x006e:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0009;
    L_0x0073:
        r2.flush();	 Catch:{ IOException -> 0x005f }
        r0 = r4.getAbsolutePath();	 Catch:{ IOException -> 0x005f }
        if (r3 == 0) goto L_0x007f;
    L_0x007c:
        r3.close();	 Catch:{ IOException -> 0x008a }
    L_0x007f:
        if (r2 == 0) goto L_0x0009;
    L_0x0081:
        r2.close();	 Catch:{ IOException -> 0x0085 }
        goto L_0x0009;
    L_0x0085:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0009;
    L_0x008a:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x007f;
    L_0x008f:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0068;
    L_0x0094:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
        r0 = r1;
    L_0x0098:
        if (r3 == 0) goto L_0x009d;
    L_0x009a:
        r3.close();	 Catch:{ IOException -> 0x00a3 }
    L_0x009d:
        if (r2 == 0) goto L_0x00a2;
    L_0x009f:
        r2.close();	 Catch:{ IOException -> 0x00a8 }
    L_0x00a2:
        throw r0;
    L_0x00a3:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x009d;
    L_0x00a8:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x00a2;
    L_0x00ad:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x0098;
    L_0x00b1:
        r0 = move-exception;
        goto L_0x0098;
    L_0x00b3:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
        goto L_0x0060;
    L_0x00b7:
        r1 = move-exception;
        r2 = r0;
        goto L_0x0060;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.hy.res.HybridManager.copyAssertToSdcard(android.content.res.AssetManager, java.lang.String):java.lang.String");
    }

    public void addNewModule(HybridInfo hybridInfo, Set<DownloadTaskResult<HybridInfo>> set) {
        if (hybridInfo != null) {
            if (HyResInitializer.getInstance().getReplaceInterceptor().isInterceptor(hybridInfo)) {
                new File(hybridInfo.path).delete();
                synchronized (DownloadManager.getInstance()) {
                    for (DownloadTaskResult downloadTaskResult : set) {
                        if (downloadTaskResult != null) {
                            downloadTaskResult.error(hybridInfo, ErrorCodeAndMessage.QP_DOWNLOAD_QP_LESS_USED_ERROR_CODE, ErrorCodeAndMessage.QP_DOWNLOAD_QP_LESS_USED_ERROR_MESSAGE);
                        }
                    }
                }
                return;
            }
            Timber.d("HyRes 添加了离线资源包,filpath=" + hybridInfo.path + ",hybridid=" + hybridInfo.hybridId, new Object[0]);
            HybridInfo hybridInfoById = getHybridInfoById(hybridInfo.hybridId);
            if (hybridInfoById != null) {
                Timber.d("HyRes 新旧文件信息 oldInfo = " + hybridInfoById.toJsonString() + " <--> newInfo = " + hybridInfo.toJsonString(), new Object[0]);
                if (hybridInfoById.version < hybridInfo.version) {
                    new File(hybridInfoById.path).delete();
                    this.mList.remove(hybridInfoById);
                } else if (hybridInfoById.version > hybridInfo.version) {
                    File file = new File(hybridInfoById.path);
                    if (file.exists() && file.length() == hybridInfoById.length) {
                        new File(hybridInfo.path).delete();
                        synchronized (DownloadManager.getInstance()) {
                            for (DownloadTaskResult downloadTaskResult2 : set) {
                                if (downloadTaskResult2 != null) {
                                    downloadTaskResult2.error(hybridInfo, ErrorCodeAndMessage.QP_DOWNLOAD_QP_LESS_USED_ERROR_CODE, ErrorCodeAndMessage.QP_DOWNLOAD_QP_LESS_USED_ERROR_MESSAGE);
                                }
                            }
                        }
                        return;
                    }
                    new File(hybridInfoById.path).delete();
                    this.mList.remove(hybridInfoById);
                } else {
                    this.mList.remove(hybridInfoById);
                    if (!hybridInfoById.path.equals(hybridInfo.path)) {
                        new File(hybridInfoById.path).delete();
                    }
                }
            } else {
                Timber.d("HyRes 没有旧文件 info = " + hybridInfo.toJsonString(), new Object[0]);
            }
            this.mList.add(hybridInfo);
            if (HyResInitializer.isDebug() && !HyResInitializer.isOnline()) {
                for (int i = 0; i < this.mList.size(); i++) {
                    Timber.d("HyRes list[" + i + "] info = " + ((HybridInfo) this.mList.get(i)).toJsonString(), new Object[0]);
                }
            }
            saveDatas();
            Timber.d("HyRes 保存缓存文件 info = " + hybridInfo.toJsonString(), new Object[0]);
            synchronized (DownloadManager.getInstance()) {
                for (DownloadTaskResult downloadTaskResult22 : set) {
                    if (downloadTaskResult22 != null) {
                        downloadTaskResult22.sucess(hybridInfo);
                    }
                }
            }
        }
    }

    public void addNewModule(String str, String str2) {
        Timber.d("HyRes 添加了离线资源包,filpath=" + str, new Object[0]);
        parseHyRes(str, str2);
    }

    private void parseHyRes(String str, String str2) {
        parseHyRes(str, str2, true);
    }

    private void parseHyRes(String str, String str2, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            HybridInfoParser.parseAndCheck(str, this.mList, str2);
            if (z) {
                saveDatas();
            }
        }
    }

    public void removeModule(String str) {
        SpCahceUtil.getInstance().deleteCacheHyInfo(str);
        HybridInfo hybridInfoById = getHybridInfoById(str);
        if (hybridInfoById != null) {
            this.mList.remove(hybridInfoById);
            File file = new File(hybridInfoById.path);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public void addNewModuleFromAssert(AssetManager assetManager, String str, String str2) {
        addNewModuleFromAssert(assetManager, str, str2, true);
    }

    public void addNewModuleFromAssert(AssetManager assetManager, QpPathInfo... qpPathInfoArr) {
        if (qpPathInfoArr != null && qpPathInfoArr.length != 0) {
            for (QpPathInfo qpPathInfo : qpPathInfoArr) {
                addNewModuleFromAssert(assetManager, qpPathInfo.getQpPath(), qpPathInfo.getQpMd5Path(), false);
            }
            saveDatas();
        }
    }

    private void addNewModuleFromAssert(AssetManager assetManager, String str, String str2, boolean z) {
        Timber.d("HyRes 添加了离线资源包,assertname=" + str, new Object[0]);
        if (!TextUtils.isEmpty(str) && isCopyNewQp(str)) {
            long currentTimeMillis = System.currentTimeMillis();
            Timber.e(str + "begin:" + currentTimeMillis, new Object[0]);
            String copyAssertToSdcard = copyAssertToSdcard(assetManager, str);
            if (!TextUtils.isEmpty(copyAssertToSdcard)) {
                String assetFileToStr = AssetUtils.getAssetFileToStr(assetManager, str2);
                HybridInfo hybridInfoByFilePath = getHybridInfoByFilePath(copyAssertToSdcard);
                if (!(hybridInfoByFilePath != null && hybridInfoByFilePath.length == new File(copyAssertToSdcard).length() && RsaDecodeUtil.equals(MD5.getMD5(copyAssertToSdcard), hybridInfoByFilePath.getEncodedMd5()))) {
                    parseHyRes(copyAssertToSdcard, assetFileToStr, z);
                }
                Timber.e(str + "end:" + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            }
        }
    }

    private boolean isCopyNewQp(String str) {
        Throwable th;
        String substring;
        try {
            int lastIndexOf = str.lastIndexOf("_prod");
            if (lastIndexOf > -1) {
                substring = str.substring(0, lastIndexOf);
            } else {
                substring = str;
            }
            try {
                String substring2 = substring.substring(0, substring.lastIndexOf("_"));
                String substring3 = substring2.substring(0, substring2.lastIndexOf("_"));
                substring2 = substring2.substring(substring2.lastIndexOf("_") + 1, substring2.length());
                HybridInfo hybridInfoById = getHybridInfoById(substring3);
                if (hybridInfoById == null) {
                    Timber.e("IsCopyNewQp:true assertName:" + substring, new Object[0]);
                    return true;
                }
                if (hybridInfoById.version >= Integer.parseInt(substring2)) {
                    Timber.e("IsCopyNewQp:false assertName:" + substring + " version:" + hybridInfoById.version, new Object[0]);
                    return false;
                }
                Timber.e("IsCopyNewQp:" + true + " assertName:" + substring, new Object[0]);
                return true;
            } catch (Throwable th2) {
                th = th2;
                Timber.e("IsCopyNewQp Exception! QP name is illegal!" + th.getMessage(), new Object[0]);
                Timber.e("IsCopyNewQp:" + true + " assertName:" + substring, new Object[0]);
                return true;
            }
        } catch (Throwable th3) {
            th = th3;
            substring = str;
            Timber.e("IsCopyNewQp Exception! QP name is illegal!" + th.getMessage(), new Object[0]);
            Timber.e("IsCopyNewQp:" + true + " assertName:" + substring, new Object[0]);
            return true;
        }
    }

    private void saveDatas() {
        for (HybridInfo hybridInfo : this.mList) {
            hybridInfo.QpRequestType = 0;
            if (TextUtils.isEmpty(hybridInfo.path) || !new File(hybridInfo.path).exists()) {
                this.mList.remove(hybridInfo);
            }
        }
        try {
            Editor edit = this.preferences.edit();
            edit.putString("hybrid_infos", JSON.toJSONString(this.mList));
            edit.apply();
        } catch (Exception e) {
            Timber.e(e, "", new Object[0]);
        }
    }

    public boolean hasUsedHybridInfo(String str) {
        if (TextUtils.isEmpty(str) || mHybrididSet == null) {
            return true;
        }
        return mHybrididSet.contains(str);
    }

    public HybridInfo getHybridInfoById(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.mList == null || this.mList.size() == 0) {
            return null;
        }
        for (HybridInfo hybridInfo : this.mList) {
            if (str.equals(hybridInfo.hybridId)) {
                return hybridInfo;
            }
        }
        return null;
    }

    public HybridInfo getHybridInfoByFilePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.mList == null || this.mList.size() == 0) {
            return null;
        }
        for (HybridInfo hybridInfo : this.mList) {
            if (str.equals(hybridInfo.path)) {
                return hybridInfo;
            }
        }
        return null;
    }

    public static HybridManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    private HybridManager() {
        this.mList = new CopyOnWriteArrayList();
        Timber.i("HybridManager>new>begin>parserHybridInfos" + System.currentTimeMillis(), new Object[0]);
        initManager();
        Timber.i("HybridManager>new>end>parserHybridInfos" + System.currentTimeMillis(), new Object[0]);
    }

    private void initManager() {
        if (TextUtils.isEmpty(this.DATA_PATH)) {
            this.DATA_PATH = QunarUtils.getAppFileDir(HyResInitializer.getContext()) + "/hybrid/";
            File file = new File(this.DATA_PATH);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        this.preferences = HyResInitializer.getContext().getSharedPreferences(HyResInitializer.SP_NAME, 0);
        parserHybridInfos();
    }

    private void parserHybridInfos() {
        CheckQpCompetence instance = CheckQpCompetence.getInstance();
        mHybrididSet.clear();
        this.mList.clear();
        String string = this.preferences.getString("hybrid_infos", null);
        Timber.i("HyRes parserHybridInfos>old>" + string, new Object[0]);
        try {
            List parseArray = JSON.parseArray(string, HybridInfo.class);
        } catch (Exception e) {
            Object parseArray2 = new ArrayList();
        }
        List<HybridInfo> moveCacheList = SpCahceUtil.getInstance().moveCacheList();
        Timber.i("HyRes parserHybridInfos>rename>begin" + System.currentTimeMillis(), new Object[0]);
        if (moveCacheList != null && moveCacheList.size() > 0) {
            for (HybridInfo hybridInfo : moveCacheList) {
                if (moveToWorkspace(hybridInfo) != null) {
                    parseArray2.add(hybridInfo);
                }
            }
        }
        Timber.i("HyRes parserHybridInfos>rename>end" + System.currentTimeMillis(), new Object[0]);
        final ArrayList arrayList = new ArrayList();
        if (parseArray2 != null && parseArray2.size() > 0) {
            for (HybridInfo hybridInfo2 : parseArray2) {
                if (!(hybridInfo2 == null || TextUtils.isEmpty(hybridInfo2.path))) {
                    File file = new File(hybridInfo2.path);
                    if (file.exists()) {
                        int offlineHybridVersion = instance.getOfflineHybridVersion(hybridInfo2.hybridId);
                        if (offlineHybridVersion != 0 && offlineHybridVersion == hybridInfo2.version) {
                            file.delete();
                        } else if (hybridInfo2.length == file.length()) {
                            hybridInfo2.QpRequestType = 0;
                            hybridInfo2.checked = false;
                            arrayList.add(hybridInfo2);
                            this.mList.add(hybridInfo2);
                        } else {
                            file.delete();
                        }
                    }
                }
            }
        }
        saveDatas();
        parseThread = new Thread() {
            public void run() {
                super.run();
                long currentTimeMillis = System.currentTimeMillis();
                for (HybridInfo hybridInfo : arrayList) {
                    HybridInfo parserManifest = HybridInfoParser.parserManifest(new File(hybridInfo.path), hybridInfo.getEncodedMd5());
                    if (parserManifest != null) {
                        hybridInfo.setResource(parserManifest.getActualResource());
                        hybridInfo.extra = parserManifest.extra;
                        hybridInfo.setManifestJson(parserManifest.getManifestJson());
                    }
                    Timber.i("Hyres parserManifest:>hybrid>::" + hybridInfo.hybridId + " time>::" + System.currentTimeMillis(), new Object[0]);
                }
                HybridManager.this.saveDatas();
                Timber.i("Hyres parserManifest:all>time>" + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                HybridManager.parseFlag = true;
            }
        };
        parseFlag = false;
        parseThread.start();
    }

    public HybridInfo moveToWorkspace(HybridInfo hybridInfo) {
        File file = new File(hybridInfo.path);
        File file2 = new File(this.DATA_PATH, file.getName());
        if (file.exists()) {
            if (file.renameTo(file2)) {
                hybridInfo.path = file2.getAbsolutePath();
                hybridInfo.length = file2.length();
                return hybridInfo;
            } else if (file.exists()) {
                file.delete();
            }
        }
        return null;
    }

    public void addCacheList() {
        getInstance();
        List cacheList = SpCahceUtil.getInstance().getCacheList();
        if (cacheList == null || cacheList.size() <= 0) {
            Timber.i("HybridManager>addCacheList:no cache", new Object[0]);
            return;
        }
        Timber.i("HybridManager>begin>addCacheList" + System.currentTimeMillis(), new Object[0]);
        parserHybridInfos();
        Timber.i("HybridManager>end>addCacheList" + System.currentTimeMillis(), new Object[0]);
    }

    public String getHybrididByUrl(String str) {
        List hybridInfos = getHybridInfos();
        int i = 0;
        while (hybridInfos != null && i < hybridInfos.size()) {
            HybridInfo hybridInfo = (HybridInfo) hybridInfos.get(i);
            if (hybridInfo != null && hybridInfo.getActualResource().containsKey(UriCodec.getUrlWithOutQueryAndHash(str))) {
                return hybridInfo.hybridId;
            }
            i++;
        }
        return null;
    }

    public String getHybrididByUrlandParam(String str) {
        String queryParameter = QunarUtils.getQueryParameter(Uri.parse(str), "hybridid");
        if (!TextUtils.isEmpty(queryParameter)) {
            return queryParameter;
        }
        queryParameter = getHybrididByUrl(str);
        if (TextUtils.isEmpty(queryParameter)) {
            return HybridIdUtils.getHybrididByUrl(str);
        }
        return queryParameter;
    }

    public boolean isQPCanUse(String str) {
        HybridInfo hybridInfoById = getHybridInfoById(str);
        return hybridInfoById != null && CheckQpCompetence.getInstance().isQpCanUse(hybridInfoById);
    }

    public boolean isResCanUse(String str, String str2) {
        HybridInfo hybridInfoById = getHybridInfoById(str);
        return (hybridInfoById == null || !CheckQpCompetence.getInstance().isQpCanUse(hybridInfoById) || hybridInfoById.getHybridFileByUrl(str2) == null) ? false : true;
    }

    public WebResourceResponse getResByUrl(String str) {
        return getResByUrlAndHyId(str, null);
    }

    public WebResourceResponse getResByUrlAndHyId(String str, String str2) {
        waitParseThread();
        Uri parse = Uri.parse(str);
        if (parse.isOpaque()) {
            return null;
        }
        HybridInfo hybridInfo;
        HybridFile hybridFile;
        String obtainMimeType = QHepburnMimeTypeUtils.obtainMimeType(str);
        if (str2 == null) {
            str2 = QunarUtils.getQueryParameter(parse, "hybridid");
        }
        if (TextUtils.isEmpty(str2)) {
            HybridFile hybridFile2;
            List hybridInfos = getHybridInfos();
            int i = 0;
            HybridFile hybridFile3 = null;
            HybridInfo hybridInfo2 = null;
            while (hybridInfos != null && i < hybridInfos.size()) {
                hybridInfo2 = (HybridInfo) hybridInfos.get(i);
                if (hybridInfo2 != null) {
                    hybridFile3 = hybridInfo2.getHybridFileByUrl(str);
                    if (hybridFile3 != null) {
                        mHybrididSet.add(hybridInfo2.hybridId);
                        hybridFile2 = hybridFile3;
                        hybridInfo = hybridInfo2;
                        hybridFile = hybridFile2;
                        break;
                    }
                }
                i++;
            }
            hybridFile2 = hybridFile3;
            hybridInfo = hybridInfo2;
            hybridFile = hybridFile2;
            if (hybridInfo == null || r0 == null) {
                if ("text/html".equals(obtainMimeType) || TextUtils.isEmpty(obtainMimeType)) {
                    str2 = HybridIdUtils.getHybrididByUrl(str);
                    Timber.i("HybridIdUtils.getHybrididByUrl(url):url:" + str + "; hybridId:" + str2, new Object[0]);
                    if (!TextUtils.isEmpty(str2)) {
                        mHybrididSet.add(str2);
                        hybridInfo2 = getHybridInfoById(str2);
                        if (hybridInfo2 == null) {
                            hybridInfo2 = getDefaultHybridInfo(str2);
                            Timber.i("CURRENNT_NO_QP,本地无qp,url无hybridid,请求qp:" + str2 + "url:" + str, new Object[0]);
                        }
                        Timber.i("uppdate" + str2 + "url:" + str, new Object[0]);
                        HyResInitializer.getInstance().sendSingleUpdateRequest(hybridInfo2);
                    }
                }
                onLoadResFail(str2, null, str);
                return null;
            }
        }
        mHybrididSet.add(str2);
        hybridInfo = getHybridInfoById(str2);
        if (hybridInfo == null) {
            if ("text/html".equals(obtainMimeType) || TextUtils.isEmpty(obtainMimeType)) {
                Timber.i("CURRENNT_NO_QP,本地无qp,url有hybridid,请求qp:" + str2 + "url:" + str, new Object[0]);
                HyResInitializer.getInstance().sendSingleUpdateRequest(getDefaultHybridInfo(str2));
            }
            onLoadResFail(str2, hybridInfo, str);
            return null;
        }
        hybridFile = hybridInfo.getHybridFileByUrl(str);
        if (hybridFile == null) {
            if ("text/html".equals(obtainMimeType) || TextUtils.isEmpty(obtainMimeType)) {
                Timber.i("CURRENNT_HAS_QP,本地有当前的qp包，但是没有指定的url,请求qp:" + str2 + "url:" + str, new Object[0]);
                if (new File(hybridInfo.path).exists()) {
                    hybridInfo.QpRequestType = 2;
                    HyResInitializer.getInstance().sendSingleUpdateRequest(hybridInfo);
                }
            }
            onLoadResFail(str2, hybridInfo, str);
            return null;
        }
        File file = new File(hybridInfo.path);
        if (file.exists() && hybridInfo.length == file.length()) {
            if ("text/html".equals(hybridFile.mimeType) || TextUtils.isEmpty(hybridFile.mimeType)) {
                hybridInfo.QpRequestType = 2;
                Timber.i("CURRENNT_HAS_QP,本地有qp,检测更新,请求qp:" + hybridInfo.hybridId + "url:" + str, new Object[0]);
                HyResInitializer.getInstance().sendSingleUpdateRequest(hybridInfo);
            }
            try {
                Timber.v(String.format("HyRes 准备使用离线资源 url=%s,hybrid=%s", new Object[]{str, str2}), new Object[0]);
                if (CheckQpCompetence.getInstance().isQpCanUse(hybridInfo)) {
                    Timber.v("HyRes QP包" + hybridInfo.hybridId + " isQpCanUse = true", new Object[0]);
                    CheckQpCompetence.getInstance().setUsedHybridid(hybridInfo.hybridId);
                    onLoadResSucc(str2, hybridInfo, str);
                    return new WebResourceResponse(TextUtils.isEmpty(hybridFile.mimeType) ? "text/html" : hybridFile.mimeType, "utf-8", new BufferedInputStream(new QmpFileInputStream(hybridInfo.path, hybridFile.start, hybridFile.length), 32768));
                }
                Timber.v("HyRes QP包" + hybridInfo.hybridId + " isQpCanUse = false", new Object[0]);
                onLoadResFail(str2, hybridInfo, str);
                return null;
            } catch (Exception e) {
                Timber.e("HyRes hy_res getresponse", e);
                onLoadResFail(str2, hybridInfo, str);
                return null;
            }
        }
        hybridInfo.setMd5("***file deleted****");
        if (file.exists()) {
            file.delete();
        }
        this.mList.remove(hybridInfo);
        Timber.i("CURRENNT_NO_QP,本地无qp,文件被删除,请求qp:" + hybridInfo.hybridId + "url:" + str, new Object[0]);
        HyResInitializer.getInstance().sendSingleUpdateRequest(getDefaultHybridInfo(hybridInfo.hybridId));
        onLoadResFail(str2, hybridInfo, str);
        return null;
    }

    private void onLoadResFail(String str, HybridInfo hybridInfo, String str2) {
        onLoadLog(false, str, hybridInfo, str2);
    }

    private void onLoadResSucc(String str, HybridInfo hybridInfo, String str2) {
        onLoadLog(true, str, hybridInfo, str2);
    }

    private void onLoadLog(boolean z, String str, HybridInfo hybridInfo, String str2) {
        if (TextUtils.isEmpty(str) && hybridInfo != null) {
            str = hybridInfo.hybridId;
        }
        DevQPLog.onLoadLog(z, str, hybridInfo == null ? "" : hybridInfo.version + "", str2);
    }

    public HybridInfo getDefaultHybridInfo(String str) {
        HybridInfo hybridInfo = new HybridInfo();
        hybridInfo.hybridId = str;
        hybridInfo.QpRequestType = 1;
        hybridInfo.version = 0;
        hybridInfo.setMd5("");
        return hybridInfo;
    }

    public HybridInfo getHybridInfoAndStatus(String str) {
        HybridInfo hybridInfoById = getInstance().getHybridInfoById(str);
        if (hybridInfoById == null) {
            return getDefaultHybridInfo(str);
        }
        hybridInfoById.QpRequestType = 2;
        return hybridInfoById;
    }

    public HybridInfo getCustomerHybridInfo(String str) {
        HybridInfo hybridInfoById = getInstance().getHybridInfoById(str);
        HybridInfo hybridInfo = new HybridInfo();
        hybridInfo.hybridId = str;
        hybridInfo.QpRequestType = 5;
        if (hybridInfoById != null) {
            hybridInfo.version = hybridInfoById.version;
            hybridInfo.setMd5(hybridInfoById.getMd5());
        } else {
            hybridInfo.version = 0;
            hybridInfo.setMd5("");
        }
        return hybridInfo;
    }

    public List<String> getUrlsByHyId(String str) {
        HybridInfo hybridInfoById = getHybridInfoById(str);
        if (hybridInfoById == null) {
            return null;
        }
        List<String> arrayList = new ArrayList();
        if (hybridInfoById.errorChanged || hybridInfoById.getActualResource() == null) {
            return arrayList;
        }
        arrayList.addAll(hybridInfoById.getActualResource().keySet());
        return arrayList;
    }

    public JSONObject getExtraByHyId(String str) {
        HybridInfo hybridInfoById = getHybridInfoById(str);
        return hybridInfoById == null ? null : hybridInfoById.extra;
    }

    public void waitParseThread() {
        if (!parseFlag) {
            try {
                if (parseThread != null) {
                    parseThread.join();
                }
            } catch (InterruptedException e) {
                Timber.e(e, "", new Object[0]);
            }
        }
    }

    public boolean isForceUpgrade(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        HybridInfo hybridInfo = UpgradeInfoCache.getInstance().getHybridInfo(str);
        if (hybridInfo == null || !hybridInfo.isForce()) {
            return false;
        }
        HybridInfo hybridInfoById = getHybridInfoById(str);
        if (hybridInfoById == null) {
            return true;
        }
        if (hybridInfo.version > hybridInfoById.version) {
            return true;
        }
        return false;
    }

    public void sendQpUpdatedToCacheBroadCast(HybridInfo hybridInfo) {
        if (hybridInfo != null) {
            Intent intent = new Intent(QP_UPDATED_TO_CACHE_ACTION);
            intent.putExtra(QP_UPDATED_TO_CACHE_HYBRID_KEY, hybridInfo.hybridId);
            intent.putExtra(QP_UPDATED_TO_CACHE_DATA_KEY, JSON.toJSONString(hybridInfo));
            LocalBroadcastManager.getInstance(HyResInitializer.getContext()).sendBroadcast(intent);
        }
    }

    public HybridInfo getCacheHybridInfo(String str) {
        return SpCahceUtil.getInstance().getCacheHybridInfo(str);
    }

    public boolean danger_ForceReplaceFromCacheModule(String str) {
        return danger_ForceReplaceFromCacheModule(getCacheHybridInfo(str));
    }

    public boolean danger_ForceReplaceFromCacheModule(HybridInfo hybridInfo) {
        if (hybridInfo == null) {
            return false;
        }
        removeModule(hybridInfo.hybridId);
        moveToWorkspace(hybridInfo);
        parseHyRes(hybridInfo.path, hybridInfo.getMd5());
        if (getHybridInfoById(hybridInfo.hybridId) != null) {
            return true;
        }
        return false;
    }
}
