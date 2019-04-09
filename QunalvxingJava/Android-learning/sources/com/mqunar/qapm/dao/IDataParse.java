package com.mqunar.qapm.dao;

import com.mqunar.qapm.domain.BaseData;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public interface IDataParse {
    public static final String TAG = "DataParse";

    String convertBaseData2Json(List<BaseData> list);

    JSONObject convertImplData2Json(BaseData baseData);

    BaseData convertMap2BaseData(Map<String, String> map);
}
