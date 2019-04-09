package com.mqunar.qapm.pager;

import com.mqunar.qapm.domain.UIData;
import java.util.Iterator;
import java.util.Stack;

public class QLoadingReportHelper {
    private static QLoadingReportHelper b;
    private Stack<UIData> a = new Stack();

    private QLoadingReportHelper() {
    }

    public static QLoadingReportHelper newInstance() {
        if (b == null) {
            b = new QLoadingReportHelper();
        }
        return b;
    }

    public void addReportMessage(UIData uIData) {
        this.a.push(uIData);
    }

    public UIData popReportMessage() {
        if (this.a == null || this.a.size() <= 0) {
            return null;
        }
        return (UIData) this.a.pop();
    }

    public void saveReportMessage() {
        if (this.a != null && this.a.size() > 0) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                ((UIData) it.next()).status = UIData.SUCCESS;
            }
            this.a.clear();
        }
    }
}
