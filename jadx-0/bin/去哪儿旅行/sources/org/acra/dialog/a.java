package org.acra.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.b.c;
import org.acra.collector.CrashReportData;
import org.acra.config.ACRAConfiguration;
import org.acra.util.k;

public abstract class a extends Activity {
    private File a;
    private ACRAConfiguration b;
    private Throwable c;

    /* Access modifiers changed, original: protected|final */
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ACRA.f.b(ACRA.e, "CrashReportDialog extras=" + getIntent().getExtras());
        Serializable serializableExtra = getIntent().getSerializableExtra("REPORT_CONFIG");
        Serializable serializableExtra2 = getIntent().getSerializableExtra("REPORT_FILE");
        Serializable serializableExtra3 = getIntent().getSerializableExtra("REPORT_EXCEPTION");
        if (getIntent().getBooleanExtra("FORCE_CANCEL", false)) {
            ACRA.f.b(ACRA.e, "Forced reports deletion.");
            a();
            finish();
        } else if ((serializableExtra instanceof ACRAConfiguration) && (serializableExtra2 instanceof File) && ((serializableExtra3 instanceof Throwable) || serializableExtra3 == null)) {
            this.b = (ACRAConfiguration) serializableExtra;
            this.a = (File) serializableExtra2;
            this.c = (Throwable) serializableExtra3;
            a(bundle);
        } else {
            ACRA.f.d(ACRA.e, "Illegal or incomplete call of BaseCrashReportDialog.");
            finish();
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(@Nullable Bundle bundle) {
    }

    /* Access modifiers changed, original: protected|final */
    public final void a() {
        new org.acra.b.a(getApplicationContext()).a(false, 0);
    }

    /* Access modifiers changed, original: protected|final */
    public final void a(@Nullable String str, @Nullable String str2) {
        c cVar = new c();
        try {
            Object str3;
            Object str22;
            ACRA.f.b(ACRA.e, "Add user comment to " + this.a);
            CrashReportData a = cVar.a(this.a);
            ReportField reportField = ReportField.USER_COMMENT;
            if (str3 == null) {
                str3 = "";
            }
            a.put(reportField, str3);
            reportField = ReportField.USER_EMAIL;
            if (str22 == null) {
                str22 = "";
            }
            a.put(reportField, str22);
            cVar.a(a, this.a);
        } catch (IOException e) {
            ACRA.f.b(ACRA.e, "User comment not added: ", e);
        }
        new org.acra.sender.c(getApplicationContext(), this.b).a(false, true);
        int resDialogOkToast = this.b.resDialogOkToast();
        if (resDialogOkToast != 0) {
            k.a(getApplicationContext(), resDialogOkToast, 1);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final ACRAConfiguration b() {
        return this.b;
    }
}
