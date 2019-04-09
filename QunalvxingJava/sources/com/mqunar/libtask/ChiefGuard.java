package com.mqunar.libtask;

import android.annotation.TargetApi;
import android.content.Context;
import com.mqunar.libtask.Ticket.RequestFeature;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.LinkedBlockingDeque;

@TargetApi(9)
public final class ChiefGuard {
    private static ChiefGuard d;
    final Trumpet a = new j(this);
    final BlockingDeque<TaskTrain> b = new LinkedBlockingDeque(ProgressType.PRO_END);
    final List<TaskTrain> c = new LinkedList();

    public static ChiefGuard getInstance() {
        if (d == null) {
            synchronized (ChiefGuard.class) {
                if (d == null) {
                    d = new ChiefGuard();
                }
            }
        }
        return d;
    }

    private ChiefGuard() {
    }

    public void addTask(Context context, AbsConductor absConductor, RequestFeature... requestFeatureArr) {
        addTask(context, absConductor, new Ticket(requestFeatureArr));
    }

    /* JADX WARNING: Missing block: B:17:0x0036, code skipped:
            r2 = r7.c;
     */
    /* JADX WARNING: Missing block: B:18:0x0038, code skipped:
            monitor-enter(r2);
     */
    /* JADX WARNING: Missing block: B:21:0x003f, code skipped:
            if (r7.c.contains(r1) == false) goto L_0x0046;
     */
    /* JADX WARNING: Missing block: B:22:0x0041, code skipped:
            monitor-exit(r2);
     */
    /* JADX WARNING: Missing block: B:28:?, code skipped:
            monitor-exit(r2);
     */
    /* JADX WARNING: Missing block: B:29:0x0047, code skipped:
            r9.beforeAdd();
            r9.status.set(com.mqunar.libtask.TaskCode.TASK_PENDING);
            r9.progress = Integer.MIN_VALUE;
            r9.msgd.onMessage(com.mqunar.libtask.TaskCode.TASK_PENDING, r9);
     */
    /* JADX WARNING: Missing block: B:30:0x005e, code skipped:
            switch(r10.addType) {
                case 0: goto L_0x0065;
                case 1: goto L_0x0072;
                case 2: goto L_0x0061;
                case 3: goto L_0x007f;
                default: goto L_0x0061;
            };
     */
    /* JADX WARNING: Missing block: B:31:0x0061, code skipped:
            checkTasks();
     */
    /* JADX WARNING: Missing block: B:32:0x0065, code skipped:
            r2 = r7.b;
     */
    /* JADX WARNING: Missing block: B:33:0x0067, code skipped:
            monitor-enter(r2);
     */
    /* JADX WARNING: Missing block: B:35:?, code skipped:
            r7.b.add(r1);
     */
    /* JADX WARNING: Missing block: B:36:0x006d, code skipped:
            monitor-exit(r2);
     */
    /* JADX WARNING: Missing block: B:41:0x0072, code skipped:
            r2 = r7.b;
     */
    /* JADX WARNING: Missing block: B:42:0x0074, code skipped:
            monitor-enter(r2);
     */
    /* JADX WARNING: Missing block: B:44:?, code skipped:
            r7.b.addFirst(r1);
     */
    /* JADX WARNING: Missing block: B:45:0x007a, code skipped:
            monitor-exit(r2);
     */
    /* JADX WARNING: Missing block: B:50:0x007f, code skipped:
            r2 = r7.c;
     */
    /* JADX WARNING: Missing block: B:51:0x0081, code skipped:
            monitor-enter(r2);
     */
    /* JADX WARNING: Missing block: B:53:?, code skipped:
            r3 = new java.util.ArrayList();
            r4 = r7.c.iterator();
     */
    /* JADX WARNING: Missing block: B:55:0x0091, code skipped:
            if (r4.hasNext() == false) goto L_0x00b0;
     */
    /* JADX WARNING: Missing block: B:56:0x0093, code skipped:
            r0 = (com.mqunar.libtask.TaskTrain) r4.next();
     */
    /* JADX WARNING: Missing block: B:57:0x00a1, code skipped:
            if (r0.a.sameAs(r1.a) == false) goto L_0x008d;
     */
    /* JADX WARNING: Missing block: B:59:0x00a7, code skipped:
            if (r0.isCancelable() == false) goto L_0x008d;
     */
    /* JADX WARNING: Missing block: B:60:0x00a9, code skipped:
            r3.add(r0);
     */
    /* JADX WARNING: Missing block: B:65:?, code skipped:
            r7.c.removeAll(r3);
            r3 = r3.iterator();
     */
    /* JADX WARNING: Missing block: B:67:0x00bd, code skipped:
            if (r3.hasNext() == false) goto L_0x00cc;
     */
    /* JADX WARNING: Missing block: B:68:0x00bf, code skipped:
            ((com.mqunar.libtask.TaskTrain) r3.next()).a.cancel(false);
     */
    /* JADX WARNING: Missing block: B:69:0x00cc, code skipped:
            monitor-exit(r2);
     */
    /* JADX WARNING: Missing block: B:70:0x00cd, code skipped:
            r2 = r7.b;
     */
    /* JADX WARNING: Missing block: B:71:0x00cf, code skipped:
            monitor-enter(r2);
     */
    /* JADX WARNING: Missing block: B:73:?, code skipped:
            r3 = new java.util.ArrayList();
            r4 = r7.b.iterator();
     */
    /* JADX WARNING: Missing block: B:75:0x00df, code skipped:
            if (r4.hasNext() == false) goto L_0x00fe;
     */
    /* JADX WARNING: Missing block: B:76:0x00e1, code skipped:
            r0 = (com.mqunar.libtask.TaskTrain) r4.next();
     */
    /* JADX WARNING: Missing block: B:77:0x00eb, code skipped:
            if (r0.isCancelable() == false) goto L_0x00db;
     */
    /* JADX WARNING: Missing block: B:79:0x00f5, code skipped:
            if (r0.a.sameAs(r1.a) == false) goto L_0x00db;
     */
    /* JADX WARNING: Missing block: B:80:0x00f7, code skipped:
            r3.add(r0);
     */
    /* JADX WARNING: Missing block: B:85:?, code skipped:
            r7.b.removeAll(r3);
            r7.b.add(r1);
     */
    /* JADX WARNING: Missing block: B:86:0x0108, code skipped:
            monitor-exit(r2);
     */
    /* JADX WARNING: Missing block: B:98:?, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:99:?, code skipped:
            return;
     */
    public void addTask(android.content.Context r8, com.mqunar.libtask.AbsConductor r9, com.mqunar.libtask.Ticket r10) {
        /*
        r7 = this;
        r0 = r9.getStatus();
        r1 = com.mqunar.libtask.TaskCode.TASK_NONE;
        if (r0 == r1) goto L_0x0009;
    L_0x0008:
        return;
    L_0x0009:
        r0 = "statistics_TaskAdd";
        r0 = r9.getExtraData(r0);
        if (r0 != 0) goto L_0x001e;
    L_0x0011:
        r0 = "statistics_TaskAdd";
        r1 = java.lang.System.currentTimeMillis();
        r1 = java.lang.Long.valueOf(r1);
        r9.putExtraData(r0, r1);
    L_0x001e:
        r1 = new com.mqunar.libtask.TaskTrain;
        r0 = r7.a;
        r1.<init>(r8, r9, r10, r0);
        r2 = r7.b;
        monitor-enter(r2);
        r0 = r7.b;	 Catch:{ all -> 0x0032 }
        r0 = r0.contains(r1);	 Catch:{ all -> 0x0032 }
        if (r0 == 0) goto L_0x0035;
    L_0x0030:
        monitor-exit(r2);	 Catch:{ all -> 0x0032 }
        goto L_0x0008;
    L_0x0032:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0032 }
        throw r0;
    L_0x0035:
        monitor-exit(r2);	 Catch:{ all -> 0x0032 }
        r2 = r7.c;
        monitor-enter(r2);
        r0 = r7.c;	 Catch:{ all -> 0x0043 }
        r0 = r0.contains(r1);	 Catch:{ all -> 0x0043 }
        if (r0 == 0) goto L_0x0046;
    L_0x0041:
        monitor-exit(r2);	 Catch:{ all -> 0x0043 }
        goto L_0x0008;
    L_0x0043:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0043 }
        throw r0;
    L_0x0046:
        monitor-exit(r2);	 Catch:{ all -> 0x0043 }
        r9.beforeAdd();
        r0 = r9.status;
        r2 = com.mqunar.libtask.TaskCode.TASK_PENDING;
        r0.set(r2);
        r0 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r9.progress = r0;
        r0 = r9.msgd;
        r2 = com.mqunar.libtask.TaskCode.TASK_PENDING;
        r0.onMessage(r2, r9);
        r0 = r10.addType;
        switch(r0) {
            case 0: goto L_0x0065;
            case 1: goto L_0x0072;
            case 2: goto L_0x0061;
            case 3: goto L_0x007f;
            default: goto L_0x0061;
        };
    L_0x0061:
        r7.checkTasks();
        goto L_0x0008;
    L_0x0065:
        r2 = r7.b;
        monitor-enter(r2);
        r0 = r7.b;	 Catch:{ all -> 0x006f }
        r0.add(r1);	 Catch:{ all -> 0x006f }
        monitor-exit(r2);	 Catch:{ all -> 0x006f }
        goto L_0x0061;
    L_0x006f:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x006f }
        throw r0;
    L_0x0072:
        r2 = r7.b;
        monitor-enter(r2);
        r0 = r7.b;	 Catch:{ all -> 0x007c }
        r0.addFirst(r1);	 Catch:{ all -> 0x007c }
        monitor-exit(r2);	 Catch:{ all -> 0x007c }
        goto L_0x0061;
    L_0x007c:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x007c }
        throw r0;
    L_0x007f:
        r2 = r7.c;
        monitor-enter(r2);
        r3 = new java.util.ArrayList;	 Catch:{ all -> 0x00ad }
        r3.<init>();	 Catch:{ all -> 0x00ad }
        r0 = r7.c;	 Catch:{ all -> 0x00ad }
        r4 = r0.iterator();	 Catch:{ all -> 0x00ad }
    L_0x008d:
        r0 = r4.hasNext();	 Catch:{ all -> 0x00ad }
        if (r0 == 0) goto L_0x00b0;
    L_0x0093:
        r0 = r4.next();	 Catch:{ all -> 0x00ad }
        r0 = (com.mqunar.libtask.TaskTrain) r0;	 Catch:{ all -> 0x00ad }
        r5 = r0.a;	 Catch:{ all -> 0x00ad }
        r6 = r1.a;	 Catch:{ all -> 0x00ad }
        r5 = r5.sameAs(r6);	 Catch:{ all -> 0x00ad }
        if (r5 == 0) goto L_0x008d;
    L_0x00a3:
        r5 = r0.isCancelable();	 Catch:{ all -> 0x00ad }
        if (r5 == 0) goto L_0x008d;
    L_0x00a9:
        r3.add(r0);	 Catch:{ all -> 0x00ad }
        goto L_0x008d;
    L_0x00ad:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x00ad }
        throw r0;
    L_0x00b0:
        r0 = r7.c;	 Catch:{ all -> 0x00ad }
        r0.removeAll(r3);	 Catch:{ all -> 0x00ad }
        r3 = r3.iterator();	 Catch:{ all -> 0x00ad }
    L_0x00b9:
        r0 = r3.hasNext();	 Catch:{ all -> 0x00ad }
        if (r0 == 0) goto L_0x00cc;
    L_0x00bf:
        r0 = r3.next();	 Catch:{ all -> 0x00ad }
        r0 = (com.mqunar.libtask.TaskTrain) r0;	 Catch:{ all -> 0x00ad }
        r0 = r0.a;	 Catch:{ all -> 0x00ad }
        r4 = 0;
        r0.cancel(r4);	 Catch:{ all -> 0x00ad }
        goto L_0x00b9;
    L_0x00cc:
        monitor-exit(r2);	 Catch:{ all -> 0x00ad }
        r2 = r7.b;
        monitor-enter(r2);
        r3 = new java.util.ArrayList;	 Catch:{ all -> 0x00fb }
        r3.<init>();	 Catch:{ all -> 0x00fb }
        r0 = r7.b;	 Catch:{ all -> 0x00fb }
        r4 = r0.iterator();	 Catch:{ all -> 0x00fb }
    L_0x00db:
        r0 = r4.hasNext();	 Catch:{ all -> 0x00fb }
        if (r0 == 0) goto L_0x00fe;
    L_0x00e1:
        r0 = r4.next();	 Catch:{ all -> 0x00fb }
        r0 = (com.mqunar.libtask.TaskTrain) r0;	 Catch:{ all -> 0x00fb }
        r5 = r0.isCancelable();	 Catch:{ all -> 0x00fb }
        if (r5 == 0) goto L_0x00db;
    L_0x00ed:
        r5 = r0.a;	 Catch:{ all -> 0x00fb }
        r6 = r1.a;	 Catch:{ all -> 0x00fb }
        r5 = r5.sameAs(r6);	 Catch:{ all -> 0x00fb }
        if (r5 == 0) goto L_0x00db;
    L_0x00f7:
        r3.add(r0);	 Catch:{ all -> 0x00fb }
        goto L_0x00db;
    L_0x00fb:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x00fb }
        throw r0;
    L_0x00fe:
        r0 = r7.b;	 Catch:{ all -> 0x00fb }
        r0.removeAll(r3);	 Catch:{ all -> 0x00fb }
        r0 = r7.b;	 Catch:{ all -> 0x00fb }
        r0.add(r1);	 Catch:{ all -> 0x00fb }
        monitor-exit(r2);	 Catch:{ all -> 0x00fb }
        goto L_0x0061;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.libtask.ChiefGuard.addTask(android.content.Context, com.mqunar.libtask.AbsConductor, com.mqunar.libtask.Ticket):void");
    }

    public void checkTasks() {
        if (this.b.size() != 0) {
            synchronized (this.b) {
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    TaskTrain taskTrain = (TaskTrain) it.next();
                    synchronized (this.c) {
                        this.c.add(taskTrain);
                    }
                    it.remove();
                    if (!taskTrain.isCancelled()) {
                        switch (taskTrain.cacheType()) {
                            case 0:
                            case 2:
                                taskTrain.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                                break;
                            case 1:
                                AsyncTask.CACHE_THREAD_EXECUTOR.execute(new l(this, taskTrain));
                                taskTrain.a.progress = ProgressType.PRO_END;
                                taskTrain.a.msgd.onMessage(TaskCode.TASK_PENDING, taskTrain.a);
                                this.a.ok(taskTrain);
                                break;
                            case 3:
                                AsyncTask.CACHE_THREAD_EXECUTOR.execute(new k(this, taskTrain));
                                taskTrain.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                                break;
                            default:
                                break;
                        }
                    }
                    this.a.cancel(taskTrain);
                }
            }
        }
    }

    public void cancelTaskByCallback(TaskCallback taskCallback) {
        cancelTaskByCallback(taskCallback, false);
    }

    public void cancelTaskByCallback(TaskCallback taskCallback, boolean z) {
        Iterator it;
        TaskTrain taskTrain;
        synchronized (this.b) {
            it = this.b.iterator();
            while (it.hasNext()) {
                taskTrain = (TaskTrain) it.next();
                if (taskTrain.a.msgd.hasCallback(taskCallback) && taskTrain.isCancelable()) {
                    it.remove();
                }
            }
        }
        synchronized (this.c) {
            ArrayList arrayList = new ArrayList();
            for (TaskTrain taskTrain2 : this.c) {
                if (taskTrain2.a.msgd.hasCallback(taskCallback) && (z || taskTrain2.isCancelable())) {
                    arrayList.add(taskTrain2);
                }
            }
            this.c.removeAll(arrayList);
            it = arrayList.iterator();
            while (it.hasNext()) {
                ((TaskTrain) it.next()).a.cancel(z);
            }
        }
    }

    public static void destroy() {
        if (d != null) {
            d.a();
        }
        d = null;
    }

    private void a() {
        synchronized (this.b) {
            this.b.clear();
        }
        synchronized (this.c) {
            for (TaskTrain taskTrain : this.c) {
                taskTrain.a.cancel(true);
            }
            this.c.clear();
        }
    }
}
