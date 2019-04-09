package com.mqunar.tools;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class QPreExecuteTaskUtils {
    private static List<QPreExecuteTask> a = new ArrayList(10);

    public interface QPreExecuteTask {
        void execute();
    }

    public static synchronized void addTask(QPreExecuteTask qPreExecuteTask) {
        synchronized (QPreExecuteTaskUtils.class) {
            a.add(qPreExecuteTask);
        }
    }

    public static synchronized void runAllTask() {
        synchronized (QPreExecuteTaskUtils.class) {
            if (!ArrayUtils.isEmpty(a)) {
                Iterator it = a.iterator();
                while (it.hasNext()) {
                    try {
                        ((QPreExecuteTask) it.next()).execute();
                    } finally {
                        it.remove();
                    }
                }
            }
        }
    }
}
