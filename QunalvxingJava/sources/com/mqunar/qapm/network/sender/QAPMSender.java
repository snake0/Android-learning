package com.mqunar.qapm.network.sender;

import android.content.Context;
import android.text.TextUtils;
import com.mqunar.qapm.QAPMConstant;
import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;
import com.mqunar.qapm.utils.IOUtils;
import com.mqunar.qapm.utils.NetWorkUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import org.apache.http.HttpStatus;
import qunar.lego.utils.FormPart;
import qunar.lego.utils.HttpHeader;
import qunar.lego.utils.Pitcher;
import qunar.lego.utils.PitcherResponse;

public class QAPMSender implements ISender {
    private static final AgentLog a = AgentLogManager.getAgentLog();
    private String b = "";
    private String c = "";
    private String d = "";
    private String e = "";
    private String f = null;

    public QAPMSender(String str, String str2, String str3, String str4) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public void send(Context context, String str, String str2) {
        if (NetWorkUtils.isNetworkConnected(context)) {
            String[] list = new File(str).list(new a(this));
            if (list != null && list.length > 0) {
                Arrays.sort(list, new b(this));
                for (String str3 : list) {
                    a.info("send apm data : " + str3);
                    a(context, str + "/" + str3);
                }
            }
        }
    }

    private void a(Context context, String str) {
        if (str != null) {
            this.f = IOUtils.file2Str(str);
            if (this.f != null) {
                a.info("发送 JSON数据：" + this.f);
                HttpHeader httpHeader = new HttpHeader();
                if (!TextUtils.isEmpty(this.e)) {
                    httpHeader.addHeader("qrid", this.e);
                }
                Pitcher pitcher = new Pitcher(context, this.b, a(this.f), httpHeader);
                if (!TextUtils.isEmpty(this.c)) {
                    pitcher.setProxyUrl(this.c);
                }
                PitcherResponse request = pitcher.request();
                if (request.e != null) {
                    a.info("send apm file error :  error : " + request.e);
                } else if (request.respcode > HttpStatus.SC_BAD_REQUEST) {
                    a.info("send apm file failed :   resCode is: " + request.respcode);
                } else {
                    a(new File(str));
                }
                this.f = null;
            }
        }
    }

    private ArrayList<FormPart> a(String str) {
        ArrayList arrayList = new ArrayList();
        FormPart formPart = new FormPart("p", QAPMConstant.PLATFORM);
        formPart.addHeader("X-ClientEncoding", "none");
        arrayList.add(formPart);
        formPart = new FormPart("logType", QAPMConstant.LOG_TYPE);
        formPart.addHeader("X-ClientEncoding", "none");
        arrayList.add(formPart);
        formPart = new FormPart("b", str);
        formPart.addHeader("X-ClientEncoding", "none");
        arrayList.add(formPart);
        formPart = new FormPart("c", this.d);
        formPart.addHeader("X-ClientEncoding", "none");
        arrayList.add(formPart);
        return arrayList;
    }

    private void a(File file) {
        if (file != null && file.exists() && !file.delete()) {
            a.info("delete file failed :" + file.getName());
        }
    }
}
