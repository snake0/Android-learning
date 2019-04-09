package com.mqunar.libtask;

import android.content.Context;

public class TaskTrain extends AsyncTask<Void, Integer, Void> {
    final AbsConductor a;
    private final Ticket b;
    private final Trumpet c;
    public final Context context;

    public TaskTrain(Context context, AbsConductor absConductor, Ticket ticket, Trumpet trumpet) {
        this.context = context;
        this.a = absConductor;
        this.b = ticket;
        this.c = trumpet;
        absConductor.setTaskTrain(this);
    }

    /* Access modifiers changed, original: protected|varargs */
    public Void doInBackground(Void... voidArr) {
        this.a.doingTask();
        publishProgress(Integer.valueOf(ProgressType.PRO_END));
        return null;
    }

    /* Access modifiers changed, original: protected|varargs */
    public void onProgressUpdate(Integer... numArr) {
        this.a.onProgressUpdate(numArr);
    }

    /* Access modifiers changed, original: final */
    public final boolean a() {
        if (!isCancelable()) {
            return false;
        }
        cancel(true);
        return true;
    }

    /* Access modifiers changed, original: protected */
    public void onCancelled(Void voidR) {
        if (this.c != null) {
            this.c.cancel(this);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onPostExecute(Void voidR) {
        if (this.c != null) {
            this.c.ok(this);
        }
    }

    public boolean isCancelable() {
        return this.b.cancelable;
    }

    public int cacheType() {
        return this.b.cacheType;
    }

    public Ticket getTicket() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TaskTrain taskTrain = (TaskTrain) obj;
        if (this.a != null) {
            if (this.a.equals(taskTrain.a)) {
                return true;
            }
        } else if (taskTrain.a == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.a != null ? this.a.hashCode() : 0;
    }
}
