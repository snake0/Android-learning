package com.baidu.platform.base;

import com.baidu.mapapi.search.core.SearchResult;
import com.baidu.mapapi.search.core.SearchResult.ERRORNO;
import com.mqunar.hy.res.utils.ErrorCodeAndMessage;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class d {
    protected SearchType a;

    public abstract SearchResult a(String str);

    public SearchType a() {
        return this.a;
    }

    public abstract void a(SearchResult searchResult, Object obj);

    public void a(SearchType searchType) {
        this.a = searchType;
    }

    /* Access modifiers changed, original: protected */
    public boolean a(String str, SearchResult searchResult, boolean z) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject == null) {
                        searchResult.error = ERRORNO.RESULT_NOT_FOUND;
                        return true;
                    }
                    int optInt = z ? jSONObject.optInt("status") : jSONObject.optInt("status_sp");
                    if (optInt == 0) {
                        return false;
                    }
                    switch (optInt) {
                        case ErrorCodeAndMessage.FILE_MOVE_ERROR_CODE /*104*/:
                        case ErrorCodeAndMessage.QP_DOWNLOAD_QP_LESS_USED_ERROR_CODE /*105*/:
                        case ErrorCodeAndMessage.QP_DOWNLOAD_ERROR_CODE /*106*/:
                        case ErrorCodeAndMessage.QP_MANIFEST_PARSE_ERROR_CODE /*107*/:
                        case 108:
                            searchResult.error = ERRORNO.PERMISSION_UNFINISHED;
                            return true;
                        case 200:
                        case 230:
                            searchResult.error = ERRORNO.KEY_ERROR;
                            return true;
                        default:
                            searchResult.error = ERRORNO.RESULT_NOT_FOUND;
                            return true;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
                searchResult.error = ERRORNO.RESULT_NOT_FOUND;
                return true;
            }
        }
        searchResult.error = ERRORNO.SEARCH_SERVER_INTERNAL_ERROR;
        return true;
    }
}
