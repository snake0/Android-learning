package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.ContactsContract.Contacts;

public class df extends dg {
    private static final String[] d = new String[]{"display_name", "_id"};
    private static final String[] e = new String[]{"display_name", "data1", "contact_id"};
    private static final String[] f = new String[]{"_id", "has_phone_number"};
    private static final String[] g = new String[]{"contact_id"};
    private static final String[] h = new String[]{"display_name"};
    private static final String[] i = new String[]{"data1", "data2", "display_name"};
    private static final String[] j = new String[]{"has_phone_number"};

    public df(Context context) {
        super(context);
        a(context);
    }

    public Uri a() {
        return Contacts.CONTENT_URI;
    }

    /* Access modifiers changed, original: protected */
    public String[] b() {
        return d;
    }

    /* Access modifiers changed, original: protected */
    public String c() {
        return Integer.parseInt(VERSION.SDK) >= 8 ? "sort_key" : "display_name";
    }
}
