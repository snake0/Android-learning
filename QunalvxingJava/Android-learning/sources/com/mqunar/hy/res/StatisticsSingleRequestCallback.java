package com.mqunar.hy.res;

import com.alibaba.fastjson.JSONObject;
import com.mqunar.hy.res.logger.DevQPLog;
import com.mqunar.hy.res.logger.Timber;
import com.mqunar.hy.res.model.HybridInfo;
import com.mqunar.hy.res.model.HybridResult;
import com.mqunar.hy.res.utils.NetworkUtil;
import com.mqunar.hy.res.utils.StatisticsUtil;
import java.util.Iterator;
import qunar.sdk.mapapi.utils.MapConstant.QUNAR_GPS_FIELD;

public class StatisticsSingleRequestCallback implements TaskResult<HybridResult> {
    private HybridInfo newInfo;
    private HybridInfo oldInfo;
    private long start = System.currentTimeMillis();
    private TaskResult<HybridResult> taskResult;

    public StatisticsSingleRequestCallback(TaskResult<HybridResult> taskResult, HybridInfo hybridInfo) {
        this.taskResult = taskResult;
        this.oldInfo = hybridInfo;
    }

    public void sucess(HybridResult hybridResult) {
        try {
            parseHybridInfo(hybridResult);
            qpSingleUpdateTime(getStatusByNewInfo(), parseOffline(hybridResult));
        } catch (Exception e) {
            Timber.e(e, new Object[0]);
        }
        this.taskResult.sucess(hybridResult);
    }

    public void error(int i, String str) {
        qpSingleUpdateTime(0, 2);
        this.taskResult.error(i, str);
    }

    private void parseHybridInfo(HybridResult hybridResult) {
        if (hybridResult != null && hybridResult.data != null && hybridResult.data.hlist != null && !hybridResult.data.hlist.isEmpty()) {
            this.newInfo = (HybridInfo) hybridResult.data.hlist.get(hybridResult.data.hlist.size() - 1);
        }
    }

    private int getStatusByNewInfo() {
        if (this.newInfo == null || this.newInfo.version == this.oldInfo.version) {
            return 1;
        }
        return this.newInfo.isForce() ? 3 : 2;
    }

    private int parseOffline(HybridResult hybridResult) {
        if (hybridResult == null || hybridResult.data == null || hybridResult.data.offline_hlist == null || hybridResult.data.offline_hlist.isEmpty()) {
            return 2;
        }
        Iterator it = hybridResult.data.offline_hlist.iterator();
        while (it.hasNext()) {
            HybridInfo hybridInfo = (HybridInfo) it.next();
            if (this.oldInfo.hybridId.equals(hybridInfo.hybridId)) {
                if (this.oldInfo.version == hybridInfo.version) {
                    return 1;
                }
                return 2;
            }
        }
        return 2;
    }

    private void qpSingleUpdateTime(int i, int i2) {
        long currentTimeMillis = System.currentTimeMillis() - this.start;
        DevQPLog.onUpdateLog(i != 0, currentTimeMillis, this.oldInfo, this.newInfo);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(QUNAR_GPS_FIELD.TIME_FIELD, Long.valueOf(currentTimeMillis));
        Object obj = this.oldInfo.version + "";
        jSONObject.put("oldver", obj);
        String str = "newver";
        if (this.newInfo != null) {
            obj = this.newInfo.version + "";
        }
        jSONObject.put(str, obj);
        jSONObject.put("hybridid", this.oldInfo.hybridId);
        jSONObject.put("status", Integer.valueOf(i));
        jSONObject.put("offline", Integer.valueOf(i2));
        jSONObject.put("network", Integer.valueOf(NetworkUtil.getNetworkType()));
        StatisticsUtil.qpSingleUpdateTime(jSONObject);
    }
}
