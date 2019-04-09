package com.mqunar.xutils.dbutils.table;

import android.text.TextUtils;
import com.mqunar.yvideo.BuildConfig;
import java.util.Date;
import java.util.HashMap;

public class DbModel {
    private HashMap<String, String> dataMap = new HashMap();

    public String getString(String str) {
        return (String) this.dataMap.get(str);
    }

    public int getInt(String str) {
        return Integer.valueOf((String) this.dataMap.get(str)).intValue();
    }

    public boolean getBoolean(String str) {
        String str2 = (String) this.dataMap.get(str);
        if (str2 != null) {
            return str2.length() == 1 ? BuildConfig.VERSION_NAME.equals(str2) : Boolean.valueOf(str2).booleanValue();
        } else {
            return false;
        }
    }

    public double getDouble(String str) {
        return Double.valueOf((String) this.dataMap.get(str)).doubleValue();
    }

    public float getFloat(String str) {
        return Float.valueOf((String) this.dataMap.get(str)).floatValue();
    }

    public long getLong(String str) {
        return Long.valueOf((String) this.dataMap.get(str)).longValue();
    }

    public Date getDate(String str) {
        return new Date(Long.valueOf((String) this.dataMap.get(str)).longValue());
    }

    public java.sql.Date getSqlDate(String str) {
        return new java.sql.Date(Long.valueOf((String) this.dataMap.get(str)).longValue());
    }

    public void add(String str, String str2) {
        this.dataMap.put(str, str2);
    }

    public HashMap<String, String> getDataMap() {
        return this.dataMap;
    }

    public boolean isEmpty(String str) {
        return TextUtils.isEmpty((CharSequence) this.dataMap.get(str));
    }
}
