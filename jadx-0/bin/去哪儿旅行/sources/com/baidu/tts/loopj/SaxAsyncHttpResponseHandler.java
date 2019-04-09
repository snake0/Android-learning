package com.baidu.tts.loopj;

import org.apache.http.Header;
import org.xml.sax.helpers.DefaultHandler;

public abstract class SaxAsyncHttpResponseHandler<T extends DefaultHandler> extends AsyncHttpResponseHandler {
    private static final String LOG_TAG = "SaxAsyncHttpRH";
    private T handler = null;

    public abstract void onFailure(int i, Header[] headerArr, T t);

    public abstract void onSuccess(int i, Header[] headerArr, T t);

    public SaxAsyncHttpResponseHandler(T t) {
        if (t == null) {
            throw new Error("null instance of <T extends DefaultHandler> passed to constructor");
        }
        this.handler = t;
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:15:0x0036=Splitter:B:15:0x0036, B:24:0x004c=Splitter:B:24:0x004c} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0044 A:{SYNTHETIC, Splitter:B:19:0x0044} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x005a A:{SYNTHETIC, Splitter:B:28:0x005a} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0067 A:{SYNTHETIC, Splitter:B:35:0x0067} */
    public byte[] getResponseData(org.apache.http.HttpEntity r8) {
        /*
        r7 = this;
        r2 = 0;
        if (r8 == 0) goto L_0x0033;
    L_0x0003:
        r3 = r8.getContent();
        if (r3 == 0) goto L_0x0033;
    L_0x0009:
        r0 = javax.xml.parsers.SAXParserFactory.newInstance();	 Catch:{ SAXException -> 0x0034, ParserConfigurationException -> 0x004a, all -> 0x0060 }
        r0 = r0.newSAXParser();	 Catch:{ SAXException -> 0x0034, ParserConfigurationException -> 0x004a, all -> 0x0060 }
        r0 = r0.getXMLReader();	 Catch:{ SAXException -> 0x0034, ParserConfigurationException -> 0x004a, all -> 0x0060 }
        r1 = r7.handler;	 Catch:{ SAXException -> 0x0034, ParserConfigurationException -> 0x004a, all -> 0x0060 }
        r0.setContentHandler(r1);	 Catch:{ SAXException -> 0x0034, ParserConfigurationException -> 0x004a, all -> 0x0060 }
        r1 = new java.io.InputStreamReader;	 Catch:{ SAXException -> 0x0034, ParserConfigurationException -> 0x004a, all -> 0x0060 }
        r4 = r7.getCharset();	 Catch:{ SAXException -> 0x0034, ParserConfigurationException -> 0x004a, all -> 0x0060 }
        r1.<init>(r3, r4);	 Catch:{ SAXException -> 0x0034, ParserConfigurationException -> 0x004a, all -> 0x0060 }
        r4 = new org.xml.sax.InputSource;	 Catch:{ SAXException -> 0x0073, ParserConfigurationException -> 0x0071 }
        r4.<init>(r1);	 Catch:{ SAXException -> 0x0073, ParserConfigurationException -> 0x0071 }
        r0.parse(r4);	 Catch:{ SAXException -> 0x0073, ParserConfigurationException -> 0x0071 }
        com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r3);
        if (r1 == 0) goto L_0x0033;
    L_0x0030:
        r1.close();	 Catch:{ IOException -> 0x006b }
    L_0x0033:
        return r2;
    L_0x0034:
        r0 = move-exception;
        r1 = r2;
    L_0x0036:
        r4 = com.baidu.tts.loopj.AsyncHttpClient.log;	 Catch:{ all -> 0x006f }
        r5 = "SaxAsyncHttpRH";
        r6 = "getResponseData exception";
        r4.e(r5, r6, r0);	 Catch:{ all -> 0x006f }
        com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r3);
        if (r1 == 0) goto L_0x0033;
    L_0x0044:
        r1.close();	 Catch:{ IOException -> 0x0048 }
        goto L_0x0033;
    L_0x0048:
        r0 = move-exception;
        goto L_0x0033;
    L_0x004a:
        r0 = move-exception;
        r1 = r2;
    L_0x004c:
        r4 = com.baidu.tts.loopj.AsyncHttpClient.log;	 Catch:{ all -> 0x006f }
        r5 = "SaxAsyncHttpRH";
        r6 = "getResponseData exception";
        r4.e(r5, r6, r0);	 Catch:{ all -> 0x006f }
        com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r3);
        if (r1 == 0) goto L_0x0033;
    L_0x005a:
        r1.close();	 Catch:{ IOException -> 0x005e }
        goto L_0x0033;
    L_0x005e:
        r0 = move-exception;
        goto L_0x0033;
    L_0x0060:
        r0 = move-exception;
        r1 = r2;
    L_0x0062:
        com.baidu.tts.loopj.AsyncHttpClient.silentCloseInputStream(r3);
        if (r1 == 0) goto L_0x006a;
    L_0x0067:
        r1.close();	 Catch:{ IOException -> 0x006d }
    L_0x006a:
        throw r0;
    L_0x006b:
        r0 = move-exception;
        goto L_0x0033;
    L_0x006d:
        r1 = move-exception;
        goto L_0x006a;
    L_0x006f:
        r0 = move-exception;
        goto L_0x0062;
    L_0x0071:
        r0 = move-exception;
        goto L_0x004c;
    L_0x0073:
        r0 = move-exception;
        goto L_0x0036;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.loopj.SaxAsyncHttpResponseHandler.getResponseData(org.apache.http.HttpEntity):byte[]");
    }

    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        onSuccess(i, headerArr, this.handler);
    }

    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i, headerArr, this.handler);
    }
}
