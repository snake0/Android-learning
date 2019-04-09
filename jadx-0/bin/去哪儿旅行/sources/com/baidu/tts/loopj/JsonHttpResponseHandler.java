package com.baidu.tts.loopj;

import org.apache.http.Header;
import org.apache.http.HttpStatus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonHttpResponseHandler extends TextHttpResponseHandler {
    private static final String LOG_TAG = "JsonHttpRH";
    private boolean useRFC5179CompatibilityMode = true;

    public JsonHttpResponseHandler() {
        super("UTF-8");
    }

    public JsonHttpResponseHandler(String str) {
        super(str);
    }

    public JsonHttpResponseHandler(boolean z) {
        super("UTF-8");
        this.useRFC5179CompatibilityMode = z;
    }

    public JsonHttpResponseHandler(String str, boolean z) {
        super(str);
        this.useRFC5179CompatibilityMode = z;
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        AsyncHttpClient.log.w(LOG_TAG, "onSuccess(int, Header[], JSONObject) was not overriden, but callback was received");
    }

    public void onSuccess(int i, Header[] headerArr, JSONArray jSONArray) {
        AsyncHttpClient.log.w(LOG_TAG, "onSuccess(int, Header[], JSONArray) was not overriden, but callback was received");
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        AsyncHttpClient.log.w(LOG_TAG, "onFailure(int, Header[], Throwable, JSONObject) was not overriden, but callback was received", th);
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONArray jSONArray) {
        AsyncHttpClient.log.w(LOG_TAG, "onFailure(int, Header[], Throwable, JSONArray) was not overriden, but callback was received", th);
    }

    public void onFailure(int i, Header[] headerArr, String str, Throwable th) {
        AsyncHttpClient.log.w(LOG_TAG, "onFailure(int, Header[], String, Throwable) was not overriden, but callback was received", th);
    }

    public void onSuccess(int i, Header[] headerArr, String str) {
        AsyncHttpClient.log.w(LOG_TAG, "onSuccess(int, Header[], String) was not overriden, but callback was received");
    }

    public final void onSuccess(final int i, final Header[] headerArr, final byte[] bArr) {
        if (i != HttpStatus.SC_NO_CONTENT) {
            AnonymousClass1 anonymousClass1 = new Runnable() {
                public void run() {
                    try {
                        final Object parseResponse = JsonHttpResponseHandler.this.parseResponse(bArr);
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() {
                            public void run() {
                                if (!JsonHttpResponseHandler.this.useRFC5179CompatibilityMode && parseResponse == null) {
                                    JsonHttpResponseHandler.this.onSuccess(i, headerArr, (String) null);
                                } else if (parseResponse instanceof JSONObject) {
                                    JsonHttpResponseHandler.this.onSuccess(i, headerArr, (JSONObject) parseResponse);
                                } else if (parseResponse instanceof JSONArray) {
                                    JsonHttpResponseHandler.this.onSuccess(i, headerArr, (JSONArray) parseResponse);
                                } else if (!(parseResponse instanceof String)) {
                                    JsonHttpResponseHandler.this.onFailure(i, headerArr, new JSONException("Unexpected response type " + parseResponse.getClass().getName()), (JSONObject) null);
                                } else if (JsonHttpResponseHandler.this.useRFC5179CompatibilityMode) {
                                    JsonHttpResponseHandler.this.onFailure(i, headerArr, (String) parseResponse, new JSONException("Response cannot be parsed as JSON data"));
                                } else {
                                    JsonHttpResponseHandler.this.onSuccess(i, headerArr, (String) parseResponse);
                                }
                            }
                        });
                    } catch (JSONException e) {
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() {
                            public void run() {
                                JsonHttpResponseHandler.this.onFailure(i, headerArr, e, (JSONObject) null);
                            }
                        });
                    }
                }
            };
            if (getUseSynchronousMode() || getUsePoolThread()) {
                anonymousClass1.run();
                return;
            } else {
                new Thread(anonymousClass1).start();
                return;
            }
        }
        onSuccess(i, headerArr, new JSONObject());
    }

    public final void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        if (bArr != null) {
            final byte[] bArr2 = bArr;
            final int i2 = i;
            final Header[] headerArr2 = headerArr;
            final Throwable th2 = th;
            AnonymousClass2 anonymousClass2 = new Runnable() {
                public void run() {
                    try {
                        final Object parseResponse = JsonHttpResponseHandler.this.parseResponse(bArr2);
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() {
                            public void run() {
                                if (!JsonHttpResponseHandler.this.useRFC5179CompatibilityMode && parseResponse == null) {
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr2, (String) null, th2);
                                } else if (parseResponse instanceof JSONObject) {
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr2, th2, (JSONObject) parseResponse);
                                } else if (parseResponse instanceof JSONArray) {
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr2, th2, (JSONArray) parseResponse);
                                } else if (parseResponse instanceof String) {
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr2, (String) parseResponse, th2);
                                } else {
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr2, new JSONException("Unexpected response type " + parseResponse.getClass().getName()), (JSONObject) null);
                                }
                            }
                        });
                    } catch (JSONException e) {
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() {
                            public void run() {
                                JsonHttpResponseHandler.this.onFailure(i2, headerArr2, e, (JSONObject) null);
                            }
                        });
                    }
                }
            };
            if (getUseSynchronousMode() || getUsePoolThread()) {
                anonymousClass2.run();
                return;
            } else {
                new Thread(anonymousClass2).start();
                return;
            }
        }
        AsyncHttpClient.log.v(LOG_TAG, "response body is null, calling onFailure(Throwable, JSONObject)");
        onFailure(i, headerArr, th, (JSONObject) null);
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:29:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:29:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:29:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0034  */
    public java.lang.Object parseResponse(byte[] r5) {
        /*
        r4 = this;
        r0 = 0;
        if (r5 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = r4.getCharset();
        r1 = com.baidu.tts.loopj.TextHttpResponseHandler.getResponseString(r5, r1);
        if (r1 == 0) goto L_0x0082;
    L_0x000e:
        r1 = r1.trim();
        r2 = r4.useRFC5179CompatibilityMode;
        if (r2 == 0) goto L_0x0036;
    L_0x0016:
        r2 = "{";
        r2 = r1.startsWith(r2);
        if (r2 != 0) goto L_0x0026;
    L_0x001e:
        r2 = "[";
        r2 = r1.startsWith(r2);
        if (r2 == 0) goto L_0x0082;
    L_0x0026:
        r0 = new org.json.JSONTokener;
        r0.<init>(r1);
        r0 = r0.nextValue();
        r3 = r1;
        r1 = r0;
        r0 = r3;
    L_0x0032:
        if (r1 == 0) goto L_0x0003;
    L_0x0034:
        r0 = r1;
        goto L_0x0003;
    L_0x0036:
        r2 = "{";
        r2 = r1.startsWith(r2);
        if (r2 == 0) goto L_0x0046;
    L_0x003e:
        r2 = "}";
        r2 = r1.endsWith(r2);
        if (r2 != 0) goto L_0x0056;
    L_0x0046:
        r2 = "[";
        r2 = r1.startsWith(r2);
        if (r2 == 0) goto L_0x0063;
    L_0x004e:
        r2 = "]";
        r2 = r1.endsWith(r2);
        if (r2 == 0) goto L_0x0063;
    L_0x0056:
        r0 = new org.json.JSONTokener;
        r0.<init>(r1);
        r0 = r0.nextValue();
        r3 = r1;
        r1 = r0;
        r0 = r3;
        goto L_0x0032;
    L_0x0063:
        r2 = "\"";
        r2 = r1.startsWith(r2);
        if (r2 == 0) goto L_0x0082;
    L_0x006b:
        r2 = "\"";
        r2 = r1.endsWith(r2);
        if (r2 == 0) goto L_0x0082;
    L_0x0073:
        r0 = 1;
        r2 = r1.length();
        r2 = r2 + -1;
        r0 = r1.substring(r0, r2);
        r3 = r1;
        r1 = r0;
        r0 = r3;
        goto L_0x0032;
    L_0x0082:
        r3 = r1;
        r1 = r0;
        r0 = r3;
        goto L_0x0032;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.loopj.JsonHttpResponseHandler.parseResponse(byte[]):java.lang.Object");
    }

    public boolean isUseRFC5179CompatibilityMode() {
        return this.useRFC5179CompatibilityMode;
    }

    public void setUseRFC5179CompatibilityMode(boolean z) {
        this.useRFC5179CompatibilityMode = z;
    }
}
