package com.qunar.qwifi;

import android.net.wifi.ScanResult;
import java.util.Comparator;

final class d implements Comparator<ScanResult> {
    d() {
    }

    /* renamed from: a */
    public int compare(ScanResult scanResult, ScanResult scanResult2) {
        return scanResult2.level - scanResult.level;
    }
}
