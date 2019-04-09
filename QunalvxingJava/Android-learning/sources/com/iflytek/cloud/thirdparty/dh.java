package com.iflytek.cloud.thirdparty;

import com.baidu.tts.loopj.AsyncHttpClient;
import com.mqunar.necro.agent.instrumentation.HttpInstrumentation;
import com.mqunar.necro.agent.instrumentation.Instrumented;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;

@Instrumented
public class dh extends Thread {
    boolean a = true;
    private String b;
    private di c;

    public dh(String str, di diVar) {
        this.b = str;
        this.c = diVar;
    }

    private String a(byte[] bArr) {
        String str;
        Throwable e;
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            dr.a("HttpGetThread", "unzip len " + bArr.length);
            a(byteArrayInputStream, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            str = new String(byteArrayOutputStream.toByteArray());
            try {
                dr.a("HttpGetThread", "unzip str " + str);
                byteArrayOutputStream.close();
                byteArrayInputStream.close();
            } catch (Exception e2) {
                e = e2;
                dr.a("HttpGetThread", "unzip error ", e);
                return str;
            }
        } catch (Exception e3) {
            Throwable th = e3;
            str = null;
            e = th;
            dr.a("HttpGetThread", "unzip error ", e);
            return str;
        }
        return str;
    }

    private static void a(InputStream inputStream, OutputStream outputStream) {
        GZIPInputStream gZIPInputStream = new GZIPInputStream(inputStream);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = gZIPInputStream.read(bArr, 0, 1024);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                gZIPInputStream.close();
                return;
            }
        }
    }

    public void run() {
        try {
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            HttpGet httpGet = new HttpGet(this.b);
            httpGet.setHeader(AsyncHttpClient.HEADER_ACCEPT_ENCODING, "gzip, deflate");
            HttpResponse execute = !(defaultHttpClient instanceof HttpClient) ? defaultHttpClient.execute(httpGet) : HttpInstrumentation.execute(defaultHttpClient, httpGet);
            if (execute.getStatusLine().getStatusCode() == 200) {
                byte[] bArr;
                Header firstHeader = execute.getFirstHeader(HTTP.CONTENT_LEN);
                int parseInt = firstHeader != null ? Integer.parseInt(firstHeader.getValue()) : 0;
                byte[] bArr2;
                if (parseInt <= 0 || parseInt >= 1048576) {
                    bArr = new byte[1048576];
                    int read = execute.getEntity().getContent().read(bArr);
                    bArr2 = new byte[read];
                    System.arraycopy(bArr, 0, bArr2, 0, read);
                    bArr = bArr2;
                } else {
                    bArr2 = new byte[parseInt];
                    execute.getEntity().getContent().read(bArr2);
                    bArr = bArr2;
                }
                String a = this.a ? a(bArr) : null;
                if (a == null) {
                    a = new String(bArr);
                }
                if (this.c != null) {
                    this.c.a(a, 0);
                    return;
                }
                return;
            }
        } catch (Exception e) {
            dr.a("HttpGetThread", "Other Exception", e);
        }
        if (this.c != null) {
            this.c.a(null, -1);
        }
    }
}
