package com.taobao.android.runtime;

import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class d {
    static final boolean a = a(System.getProperty("java.vm.version"));
    private static final String b = d.class.getSimpleName();

    private d() {
    }

    static boolean a(String str) {
        boolean z = false;
        if (str != null) {
            Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(str);
            if (matcher.matches()) {
                try {
                    int parseInt = Integer.parseInt(matcher.group(1));
                    int parseInt2 = Integer.parseInt(matcher.group(2));
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException e) {
                }
            }
        }
        Log.i(b, "VM with version " + str + (z ? " has ART support" : " does not have ART support"));
        return z;
    }
}
