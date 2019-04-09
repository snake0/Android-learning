package com.mqunar.contacts.basis.db;

import android.content.Context;
import com.mqunar.contacts.basis.async.ITask;
import com.mqunar.contacts.basis.model.Contact;
import com.mqunar.contacts.basis.utils.ContactUtils;
import com.mqunar.contacts.basis.utils.CrashUtils;
import com.mqunar.libtask.AsyncTask;
import com.mqunar.tools.CheckUtils;
import com.mqunar.tools.log.QLog;
import com.mqunar.xutils.dbutils.DbUtils;
import java.util.List;

public class DBContactsReadTask extends AsyncTask<Void, Integer, List<Contact>> implements ITask {
    private static final String TAG = "Contacts";
    private DBContactsReadCallback callback;
    private Context context;
    private Exception exception;
    private String uniqueKey;

    public DBContactsReadTask(Context context, String str, DBContactsReadCallback dBContactsReadCallback) {
        this.context = context;
        this.uniqueKey = str;
        this.callback = dBContactsReadCallback;
    }

    /* Access modifiers changed, original: protected|varargs */
    public List<Contact> doInBackground(Void... voidArr) {
        Exception e;
        long currentTimeMillis = System.currentTimeMillis();
        List<Contact> list = null;
        if (CheckUtils.isEmpty(this.uniqueKey)) {
            QLog.e("Contacts", "uniqueKey is empty!", new Object[0]);
        } else {
            DbUtils contactsDatabaseByUser = DBHelper.INSTANCE.getContactsDatabaseByUser(this.context, this.uniqueKey);
            if (contactsDatabaseByUser == null) {
                QLog.e("Contacts", "databases is empty!", new Object[0]);
            } else {
                try {
                    List<Contact> findAll = contactsDatabaseByUser.findAll(Contact.class);
                    try {
                        if (!CheckUtils.isEmpty(findAll)) {
                            for (Contact contact : findAll) {
                                if (contact != null) {
                                    contact.setPrefix(ContactUtils.getPrefix(this.context, contact));
                                }
                            }
                        }
                        list = findAll;
                    } catch (Exception e2) {
                        Exception exception = e2;
                        list = findAll;
                        e = exception;
                        this.exception = e;
                        QLog.e("Contacts", CrashUtils.getStackTraceString(e), new Object[0]);
                        QLog.d("Contacts", "Database read contact waste " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                        return list;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            }
        }
        QLog.d("Contacts", "Database read contact waste " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
        return list;
    }

    /* Access modifiers changed, original: protected */
    public void onPostExecute(List<Contact> list) {
        super.onPostExecute(list);
        if (this.callback != null) {
            if (this.exception != null) {
                if (list == null) {
                    this.callback.onFailure(new ReadContactsError(new NullPointerException("contacts is empty!")));
                } else {
                    this.callback.onFailure(new ReadContactsError(this.exception));
                }
            } else if (list == null) {
                this.callback.onFailure(new ReadContactsError(2, "data is empty!"));
            } else {
                this.callback.onSuccess(list);
            }
        }
    }

    public void run() {
        executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
    }
}
