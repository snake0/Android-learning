package com.mqunar.qapm.network.sender;

import java.io.File;
import java.io.FilenameFilter;

class a implements FilenameFilter {
    final /* synthetic */ QAPMSender a;

    a(QAPMSender qAPMSender) {
        this.a = qAPMSender;
    }

    public boolean accept(File file, String str) {
        return str.matches("[0-9]+");
    }
}
