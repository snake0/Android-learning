package com.mqunar.hy.res.utils;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.mqunar.hy.res.HyResInitializer;
import com.mqunar.hy.res.logger.Timber;
import com.mqunar.hy.res.model.HybridInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class SpCahceUtil {
    private static final String SP_CACHE_INFO_NAME = "hybrid_cache_infos";
    private static final String SP_DELETE_INFO_NAME = "hybrid_delete_infos";
    private static SpCahceUtil spCahceUtil = new SpCahceUtil();
    private List<HybridInfo> deletList = new CopyOnWriteArrayList();
    private List<HybridInfo> mCacheList = new CopyOnWriteArrayList();
    private SharedPreferences sp = HyResInitializer.getContext().getSharedPreferences(HyResInitializer.SP_NAME, 0);

    private SpCahceUtil() {
    }

    public static SpCahceUtil getInstance() {
        return spCahceUtil;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0083  */
    public void saveCacheHyInfo(com.mqunar.hy.res.model.HybridInfo r8) {
        /*
        r7 = this;
        r2 = 0;
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "cache>添加离线包,filpath=";
        r0 = r0.append(r1);
        r1 = r8.path;
        r0 = r0.append(r1);
        r1 = ",hybridid=";
        r0 = r0.append(r1);
        r1 = r8.hybridId;
        r0 = r0.append(r1);
        r0 = r0.toString();
        r1 = new java.lang.Object[r2];
        com.mqunar.hy.res.logger.Timber.i(r0, r1);
        if (r8 != 0) goto L_0x002a;
    L_0x0029:
        return;
    L_0x002a:
        r0 = com.mqunar.hy.res.HybridManager.getInstance();
        r1 = r8.hybridId;
        r0 = r0.getHybridInfoById(r1);
        if (r0 == 0) goto L_0x0041;
    L_0x0036:
        r1 = r0.version;
        r3 = r8.version;
        if (r1 >= r3) goto L_0x009b;
    L_0x003c:
        r1 = r7.deletList;
        r1.add(r0);
    L_0x0041:
        r1 = 1;
        r0 = r7.mCacheList;
        r3 = r0.iterator();
    L_0x0048:
        r0 = r3.hasNext();
        if (r0 == 0) goto L_0x00da;
    L_0x004e:
        r0 = r3.next();
        r0 = (com.mqunar.hy.res.model.HybridInfo) r0;
        r4 = r0.hybridId;
        r5 = r8.hybridId;
        r4 = r4.equals(r5);
        if (r4 == 0) goto L_0x0048;
    L_0x005e:
        r3 = r0.version;
        r4 = r8.version;
        if (r3 >= r4) goto L_0x00d8;
    L_0x0064:
        r2 = new java.io.File;
        r3 = r0.path;
        r2.<init>(r3);
        r2 = r2.exists();
        if (r2 == 0) goto L_0x007b;
    L_0x0071:
        r2 = new java.io.File;
        r3 = r0.path;
        r2.<init>(r3);
        r2.delete();
    L_0x007b:
        r2 = r7.mCacheList;
        r2.remove(r0);
        r0 = r1;
    L_0x0081:
        if (r0 == 0) goto L_0x0088;
    L_0x0083:
        r0 = r7.mCacheList;
        r0.add(r8);
    L_0x0088:
        r0 = r7.mCacheList;
        r1 = r7.sp;
        r2 = "hybrid_cache_infos";
        r7.saveHyInfoList(r0, r1, r2);
        r0 = r7.deletList;
        r1 = r7.sp;
        r2 = "hybrid_delete_infos";
        r7.saveHyInfoList(r0, r1, r2);
        goto L_0x0029;
    L_0x009b:
        r1 = r0.version;
        r3 = r8.version;
        if (r1 <= r3) goto L_0x00c6;
    L_0x00a1:
        r1 = new java.io.File;
        r3 = r0.path;
        r1.<init>(r3);
        r3 = r1.exists();
        if (r3 == 0) goto L_0x00bf;
    L_0x00ae:
        r3 = r1.length();
        r5 = r0.length;
        r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r1 != 0) goto L_0x00bf;
    L_0x00b8:
        r0 = r7.deletList;
        r0.add(r8);
        goto L_0x0029;
    L_0x00bf:
        r1 = r7.deletList;
        r1.add(r0);
        goto L_0x0041;
    L_0x00c6:
        r0 = com.mqunar.hy.res.utils.HybridInfoParser.checkQPFile(r0);
        if (r0 == 0) goto L_0x0041;
    L_0x00cc:
        r0 = new java.io.File;
        r1 = r8.path;
        r0.<init>(r1);
        r0.delete();
        goto L_0x0029;
    L_0x00d8:
        r0 = r2;
        goto L_0x0081;
    L_0x00da:
        r0 = r1;
        goto L_0x0081;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.hy.res.utils.SpCahceUtil.saveCacheHyInfo(com.mqunar.hy.res.model.HybridInfo):void");
    }

    public void deleteCacheHyInfo(String str) {
        if (!TextUtils.isEmpty(str) && this.mCacheList != null) {
            for (HybridInfo hybridInfo : this.mCacheList) {
                if (hybridInfo != null && str.equals(hybridInfo.hybridId)) {
                    this.mCacheList.remove(hybridInfo);
                    break;
                }
            }
            if (this.deletList != null) {
                for (HybridInfo hybridInfo2 : this.deletList) {
                    if (hybridInfo2 != null && str.equals(hybridInfo2.hybridId)) {
                        this.deletList.remove(hybridInfo2);
                        break;
                    }
                }
                saveHyInfoList(this.mCacheList, this.sp, SP_CACHE_INFO_NAME);
                saveHyInfoList(this.deletList, this.sp, SP_DELETE_INFO_NAME);
            }
        }
    }

    public HybridInfo getCacheHybridInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.mCacheList == null) {
            return null;
        }
        for (HybridInfo hybridInfo : this.mCacheList) {
            if (hybridInfo != null && str.equals(hybridInfo.hybridId)) {
                return hybridInfo;
            }
        }
        return null;
    }

    public HybridInfo getdeletHybridInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.deletList == null) {
            return null;
        }
        for (HybridInfo hybridInfo : this.deletList) {
            if (hybridInfo != null && str.equals(hybridInfo.hybridId)) {
                return hybridInfo;
            }
        }
        return null;
    }

    private void saveHyInfoList(List<HybridInfo> list, SharedPreferences sharedPreferences, String str) {
        for (HybridInfo hybridInfo : list) {
            hybridInfo.QpRequestType = 0;
            if (TextUtils.isEmpty(hybridInfo.path) || !new File(hybridInfo.path).exists()) {
                list.remove(hybridInfo);
            }
        }
        try {
            Editor edit = sharedPreferences.edit();
            edit.putString(str, JSON.toJSONString(list));
            edit.apply();
        } catch (Exception e) {
            Timber.e(e, new Object[0]);
        }
    }

    private void deleteOldQp() {
        String string = this.sp.getString(SP_DELETE_INFO_NAME, null);
        Timber.i("deleteOldQp>sp>" + string, new Object[0]);
        List parseArray = JSON.parseArray(string, HybridInfo.class);
        if (parseArray != null && parseArray.size() > 0) {
            this.deletList.addAll(parseArray);
        }
        if (this.deletList != null && this.deletList.size() > 0) {
            for (HybridInfo hybridInfo : this.deletList) {
                File file = new File(hybridInfo.path);
                if (file.exists()) {
                    Timber.i("deleteOldQp>path>" + file.getAbsolutePath(), new Object[0]);
                    file.delete();
                }
            }
            this.deletList.clear();
            this.sp.edit().putString(SP_DELETE_INFO_NAME, JSON.toJSONString(this.deletList)).apply();
        }
    }

    public List<HybridInfo> getCacheList() {
        ArrayList arrayList = new ArrayList();
        String string = this.sp.getString(SP_CACHE_INFO_NAME, null);
        Timber.i("moveCacheList>chache>" + string, new Object[0]);
        try {
            return JSON.parseArray(string, HybridInfo.class);
        } catch (Exception e) {
            Throwable th = e;
            arrayList = new ArrayList();
            Timber.e(th, new Object[0]);
            return arrayList;
        }
    }

    public List<HybridInfo> moveCacheList() {
        List cacheList = getCacheList();
        this.mCacheList.clear();
        this.sp.edit().putString(SP_CACHE_INFO_NAME, JSON.toJSONString(this.mCacheList)).apply();
        deleteOldQp();
        return cacheList;
    }

    public boolean isToDownloadQp(HybridInfo hybridInfo) {
        for (HybridInfo hybridInfo2 : this.mCacheList) {
            if (hybridInfo2.hybridId.equals(hybridInfo.hybridId) && hybridInfo2.version >= hybridInfo.version && new File(hybridInfo2.path).exists()) {
                Timber.i("isToDownloadQp>CacheHybridid:false:" + hybridInfo2.hybridId + hybridInfo2.version + "now Hybridid:" + hybridInfo.hybridId + hybridInfo.version, new Object[0]);
                return false;
            }
        }
        return true;
    }
}
