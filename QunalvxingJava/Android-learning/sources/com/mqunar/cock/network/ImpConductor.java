package com.mqunar.cock.network;

import android.net.http.Headers;
import com.mqunar.cock.model.BaseParam;
import com.mqunar.imp.Imp;
import com.mqunar.json.JsonUtils;
import com.mqunar.libtask.AbsConductor;
import com.mqunar.libtask.CrossConductor;
import com.mqunar.libtask.TaskCallback;
import com.mqunar.tools.DateTimeUtils;
import com.mqunar.tools.log.QLog;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class ImpConductor extends CrossConductor {
    private String a;
    private BaseParam b;
    private HashMap<String, Object> c = new HashMap();
    private byte[] d;

    public ImpConductor(TaskCallback... taskCallbackArr) {
        super(taskCallbackArr);
        this.c.put(Headers.CONN_DIRECTIVE, "keep-alive");
        this.c.put("Content-Type", "application/octet-stream");
    }

    public void setParams(Object... objArr) {
        initParam(objArr);
        if (objArr != null) {
            int i = -1;
            while (true) {
                try {
                    int i2 = i + 1;
                    if (objArr.length > i2) {
                        Object obj = objArr[i2];
                        if (i2 == 0) {
                            this.a = (String) obj;
                        } else if (i2 == 1) {
                            this.b = (BaseParam) obj;
                        }
                        i = i2;
                    } else {
                        this.d = DateTimeUtils.printCalendarByPattern(DateTimeUtils.getCurrentDateTime(), DateTimeUtils.yyyyMMddHHmmss).getBytes();
                        return;
                    }
                } catch (Exception e) {
                    throw new IllegalArgumentException("input params must be url:String,req:QImBaseParam");
                }
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void prepareParams() {
        byte[] bArr = new byte[0];
        try {
            bArr = Imp.e(JsonUtils.toJsonString(this.b).getBytes("utf-8"), this.d);
            this.a += "/" + this.b.t;
            QLog.d("OneKeyCremation", this.a, new Object[0]);
        } catch (UnsupportedEncodingException e) {
        }
        setContent(bArr);
        setUrl(this.a);
        setReqHeader((Map) this.c);
    }

    /* Access modifiers changed, original: protected */
    public void buildResult(byte[] bArr, long j, int i) {
        if (bArr == null || ((long) bArr.length) != j) {
            throw new IllegalStateException("can not parse result");
        }
        try {
            this.result = Imp.d(bArr);
        } catch (Exception e) {
            throw new IllegalStateException("can not parse result");
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImpConductor) || !super.equals(obj)) {
            return false;
        }
        ImpConductor impConductor = (ImpConductor) obj;
        if (this.a != null) {
            if (!this.a.equals(impConductor.a)) {
                return false;
            }
        } else if (impConductor.a != null) {
            return false;
        }
        if (this.b != null) {
            if (!this.b.equals(impConductor.b)) {
                return false;
            }
        } else if (impConductor.b != null) {
            return false;
        }
        if (this.c == null ? impConductor.c != null : !this.c.equals(impConductor.c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = super.hashCode() * 31;
        if (this.a != null) {
            hashCode = this.a.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.b != null) {
            hashCode = this.b.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return hashCode + i;
    }

    public <T extends AbsConductor> boolean sameAs(T t) {
        if (this == t) {
            return true;
        }
        if (!(t instanceof ImpConductor)) {
            return false;
        }
        ImpConductor impConductor = (ImpConductor) t;
        if (!this.a.equals(impConductor.a)) {
            return false;
        }
        if (this.b.t != null) {
            return this.b.t.equals(impConductor.b.t);
        }
        if (impConductor.b.t != null) {
            return false;
        }
        return true;
    }

    public BaseParam getReqParam() {
        return this.b;
    }
}
