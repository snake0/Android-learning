package com.mqunar.spider;

import android.content.Context;
import com.mqunar.core.basectx.application.QApplication;
import com.mqunar.module.ModuleInfo;
import com.mqunar.storage.Storage;
import com.mqunar.tools.log.QLog;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ModuleMonitor {
    public static final String KEY_MODULE_INSTALL_MONITOR_LOG = "module_install_monitor_log";
    public static final String KEY_MODULE_MONITOR = "module_monitor";
    public static final String KEY_MODULE_SHOWTIME_MONITOR_LOG = "module_showtime_monitor_log";
    private static boolean a = false;
    public long appCreateTime;
    private Storage b;
    private boolean c;
    private List<c> d;
    private Object e;
    private Method f;

    /* synthetic */ ModuleMonitor(a aVar) {
        this();
    }

    private ModuleMonitor() {
        synchronized (ModuleMonitor.class) {
            if (a) {
                throw new RuntimeException("ModuleMonitor has one instance！");
            }
            a = !a;
            this.b = Storage.newStorage(QApplication.getContext(), KEY_MODULE_MONITOR);
        }
    }

    public static ModuleMonitor getInstance() {
        return b.a;
    }

    public void onQAVCreate() {
        if (!this.c) {
            this.c = true;
        }
        send();
    }

    public void monitorModule(ModuleInfo moduleInfo, long j, boolean z) {
        if (z) {
            getInstance().writeMonitorModule(moduleInfo, z);
        }
        a(KEY_MODULE_INSTALL_MONITOR_LOG, "moduleName=" + moduleInfo.dependency.packageName + "&loadTime=" + j + "&firstLoad=" + z);
    }

    public void writeMonitorModule(ModuleInfo moduleInfo, boolean z) {
        if (moduleInfo != null) {
            this.b.putSmoothBoolean(moduleInfo.dependency.packageName, z);
        }
    }

    public boolean readMonitorModule(ModuleInfo moduleInfo) {
        if (moduleInfo != null) {
            return this.b.getBoolean(moduleInfo.dependency.packageName, false);
        }
        return false;
    }

    public void writeShowTime(String str, long j) {
        a(KEY_MODULE_SHOWTIME_MONITOR_LOG, "page=" + str + "&loadTime=" + (j - getInstance().appCreateTime));
    }

    public void writeAppStartCostTime(String str, long j) {
        a(str, String.valueOf(j));
    }

    public void writeAppAdTime(String str, long j) {
        a(str, String.valueOf(j));
    }

    public void writeTaskRunTime(long j) {
        a("TaskRunTimeLog", String.valueOf(j));
    }

    private void a(String str, String str2) {
        if (this.d == null) {
            this.d = Collections.synchronizedList(new ArrayList());
        }
        this.d.add(new c(str, str2));
        send();
    }

    public void send() {
        if (this.c) {
            if (this.e == null) {
                String str = "newLogTrigger";
                try {
                    this.e = Class.forName("com.mqunar.qav.trigger.QTrigger").getMethod(str, new Class[]{Context.class}).invoke(null, new Object[]{QApplication.getContext()});
                } catch (Throwable th) {
                    QLog.w(th.getMessage(), new Object[0]);
                }
            }
            if (this.f == null) {
                try {
                    this.f = this.e.getClass().getMethod("log", new Class[]{String.class, String.class});
                } catch (Throwable th2) {
                    QLog.w(th2.getMessage(), new Object[0]);
                }
            }
            if (this.e != null && this.f != null && this.d != null) {
                synchronized (this.d) {
                    if (!this.d.isEmpty()) {
                        Iterator it = this.d.iterator();
                        while (it.hasNext()) {
                            c cVar = (c) it.next();
                            try {
                                this.f.invoke(this.e, new Object[]{cVar.a, cVar.b});
                            } catch (IllegalAccessException | InvocationTargetException th22) {
                                QLog.w(th22.getMessage(), new Object[0]);
                            }
                            it.remove();
                        }
                    }
                }
            }
        }
    }
}
