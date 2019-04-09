package com.mqunar.qapm.pager;

import android.view.View;
import com.mqunar.qapm.domain.UIData;

public class QNetworkFailedContainer {
    public static void onVisibilityChanged(Object obj, View view, int i) {
        if (i == 0) {
            UIData popReportMessage = QLoadingReportHelper.newInstance().popReportMessage();
            if (popReportMessage != null) {
                popReportMessage.status = UIData.ERROR;
            }
        }
    }
}
