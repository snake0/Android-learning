package com.mqunar.qapm.network.sender;

import java.util.Comparator;

class b implements Comparator<String> {
    final /* synthetic */ QAPMSender a;

    b(QAPMSender qAPMSender) {
        this.a = qAPMSender;
    }

    /* renamed from: a */
    public int compare(String str, String str2) {
        return str.compareTo(str2);
    }
}
