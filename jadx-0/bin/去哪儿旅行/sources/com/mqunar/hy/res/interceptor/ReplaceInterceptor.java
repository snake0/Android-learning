package com.mqunar.hy.res.interceptor;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.mqunar.hy.res.HyResInitializer;
import com.mqunar.hy.res.model.HybridInfo;
import com.mqunar.necro.agent.bean.NecroParam;
import java.util.ArrayList;
import java.util.List;

public class ReplaceInterceptor {
    public static final String KEY_REPLACE_INTERCEPTOR_LIST = "key_replace_interceptor_list";
    private List<HybridInfo> hybridInfoList;
    private SharedPreferences sp;

    private List<HybridInfo> initHybridInfoList() {
        this.sp = HyResInitializer.getContext().getSharedPreferences(HyResInitializer.SP_NAME, 0);
        try {
            return JSON.parseArray(this.sp.getString(KEY_REPLACE_INTERCEPTOR_LIST, NecroParam.NECRO_EMPTY_ARRAY), HybridInfo.class);
        } catch (Exception e) {
            this.sp.edit().putString(KEY_REPLACE_INTERCEPTOR_LIST, NecroParam.NECRO_EMPTY_ARRAY).apply();
            return new ArrayList();
        }
    }

    public boolean isInterceptor(HybridInfo hybridInfo) {
        if (!HyResInitializer.isDebug() || HyResInitializer.isOnline()) {
            return false;
        }
        for (HybridInfo hybridInfo2 : getInterceptorList()) {
            if (hybridInfo2.hybridId.equals(hybridInfo.hybridId) && !hybridInfo2.getMd5().equals(hybridInfo.getMd5())) {
                return true;
            }
        }
        return false;
    }

    public List<HybridInfo> getInterceptorList() {
        if (this.hybridInfoList == null) {
            this.hybridInfoList = initHybridInfoList();
        }
        return this.hybridInfoList;
    }

    public void addInterceptor(HybridInfo hybridInfo) {
        if (!isContainsInfo(hybridInfo)) {
            getInterceptorList().add(hybridInfo);
            saveHybridInfoList(getInterceptorList());
        }
    }

    public void removeInterceptor(String str) {
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList();
            for (HybridInfo hybridInfo : getInterceptorList()) {
                if (str.equals(hybridInfo.hybridId)) {
                    arrayList.add(hybridInfo);
                }
            }
            getInterceptorList().removeAll(arrayList);
            saveHybridInfoList(getInterceptorList());
        }
    }

    public void clearInterceptor() {
        getInterceptorList().clear();
        saveHybridInfoList(getInterceptorList());
    }

    public HybridInfo buildInterceptorInfo(String str, String str2) {
        HybridInfo hybridInfo = new HybridInfo();
        hybridInfo.hybridId = str;
        hybridInfo.setMd5(str2);
        return hybridInfo;
    }

    private boolean isContainsInfo(HybridInfo hybridInfo) {
        return getContainsInfo(hybridInfo) != null;
    }

    private HybridInfo getContainsInfo(HybridInfo hybridInfo) {
        for (HybridInfo hybridInfo2 : getInterceptorList()) {
            if (isHybridInfoEquals(hybridInfo2, hybridInfo)) {
                return hybridInfo2;
            }
        }
        return null;
    }

    private boolean isHybridInfoEquals(HybridInfo hybridInfo, HybridInfo hybridInfo2) {
        if (hybridInfo == null || hybridInfo2 == null) {
            if (hybridInfo == hybridInfo2) {
                return true;
            }
            return false;
        } else if (hybridInfo.hybridId.equals(hybridInfo2.hybridId) && hybridInfo.getMd5().equals(hybridInfo2.getMd5())) {
            return true;
        } else {
            return false;
        }
    }

    private void saveHybridInfoList(List<HybridInfo> list) {
        this.sp.edit().putString(KEY_REPLACE_INTERCEPTOR_LIST, JSON.toJSON(list).toString()).apply();
    }
}
