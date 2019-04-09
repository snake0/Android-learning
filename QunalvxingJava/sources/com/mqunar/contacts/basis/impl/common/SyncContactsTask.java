package com.mqunar.contacts.basis.impl.common;

import android.content.Context;
import android.text.TextUtils;
import com.mqunar.contacts.basis.async.ITask;
import com.mqunar.contacts.basis.db.DBHelper;
import com.mqunar.contacts.basis.model.Contact;
import com.mqunar.contacts.basis.upload.IUpload;
import com.mqunar.contacts.basis.upload.UploadListener;
import com.mqunar.contacts.basis.utils.ContactUtils;
import com.mqunar.contacts.basis.utils.CrashUtils;
import com.mqunar.libtask.AsyncTask;
import com.mqunar.tools.CheckUtils;
import com.mqunar.tools.log.QLog;
import java.util.ArrayList;
import java.util.List;

public class SyncContactsTask extends AsyncTask<Void, Integer, List<Contact>> implements ITask {
    private Context context;
    private IUpload func;
    private boolean isRunningEnd = false;
    private List<Contact> mLocalContacts;
    private String uniqueKey;

    public SyncContactsTask(Context context, String str, IUpload iUpload) {
        this.context = context;
        this.func = iUpload;
        this.uniqueKey = str;
    }

    /* Access modifiers changed, original: protected|varargs */
    public List<Contact> doInBackground(Void... voidArr) {
        List contacts;
        List decrement;
        List<Contact> list = null;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            this.mLocalContacts = ContactUtils.getContacts(this.context);
        } catch (Exception e) {
            QLog.e("Contacts", CrashUtils.getStackTraceString(e), new Object[0]);
        }
        try {
            contacts = DBHelper.INSTANCE.getContacts(this.context, this.uniqueKey);
        } catch (Exception e2) {
            QLog.e("Contacts", CrashUtils.getStackTraceString(e2), new Object[0]);
            List<Contact> contacts2 = list;
        }
        try {
            decrement = getDecrement(this.mLocalContacts, contacts2);
        } catch (Exception e3) {
            QLog.e("Contacts", "decrement failure!", new Object[0]);
            QLog.e("Contacts", CrashUtils.getStackTraceString(e3), new Object[0]);
            List<Contact> decrement2 = list;
        }
        if (!CheckUtils.isEmpty(decrement2)) {
            QLog.d("Contacts", "make decrement... size " + decrement2.size(), new Object[0]);
            try {
                DBHelper.INSTANCE.getContactsDatabaseByUser(this.context, this.uniqueKey).deleteAll(decrement2);
            } catch (Exception e32) {
                QLog.e("Contacts", "decrement delete failure!", new Object[0]);
                QLog.e("Contacts", CrashUtils.getStackTraceString(e32), new Object[0]);
            }
        }
        try {
            list = getIncrement(contacts2, this.mLocalContacts);
        } catch (Exception e22) {
            QLog.e("Contacts", "increment failure!", new Object[0]);
            QLog.e("Contacts", CrashUtils.getStackTraceString(e22), new Object[0]);
        }
        QLog.d("Contacts", "sync time waste --> " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
        return list;
    }

    /* Access modifiers changed, original: protected */
    public void onPostExecute(List<Contact> list) {
        super.onPostExecute(list);
        if (this.func == null) {
            this.isRunningEnd = true;
        } else if (CheckUtils.isEmpty(list)) {
            QLog.d("Contacts", "upload contacts but contact is empty!", new Object[0]);
        } else {
            this.func.uploadContacts(list, this.uniqueKey, new UploadListener() {
                public void onSuccess(List<Contact> list, String str) {
                    if (TextUtils.isEmpty(str)) {
                        QLog.d("Contacts", " upload hotdog success...", new Object[0]);
                    } else {
                        QLog.d("Contacts", " upload hotdog success by tags " + str, new Object[0]);
                    }
                    DBHelper.INSTANCE.saveContacts(SyncContactsTask.this.context, list, SyncContactsTask.this.uniqueKey);
                }

                public void onFailure(String str) {
                    if (TextUtils.isEmpty(str)) {
                        QLog.d("Contacts", "upload hotdog failure...", new Object[0]);
                    } else {
                        QLog.d("Contacts", "upload hotdog failure by tags " + str, new Object[0]);
                    }
                }
            });
            this.isRunningEnd = true;
        }
    }

    public void run() {
        executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
    }

    public boolean isOver() {
        return this.isRunningEnd;
    }

    public List<Contact> getIncrement(List<Contact> list, List<Contact> list2) {
        if (CheckUtils.isEmpty(list2)) {
            return null;
        }
        if (CheckUtils.isEmpty(list)) {
            return list2;
        }
        ArrayList arrayList = new ArrayList();
        for (Contact contact : list2) {
            if (!list.contains(contact)) {
                arrayList.add(contact);
            }
        }
        return arrayList;
    }

    public List<Contact> getDecrement(List<Contact> list, List<Contact> list2) {
        if (CheckUtils.isEmpty(list2)) {
            return null;
        }
        if (CheckUtils.isEmpty(list)) {
            return list2;
        }
        ArrayList arrayList = new ArrayList();
        for (Contact contact : list2) {
            if (!list.contains(contact)) {
                arrayList.add(contact);
            }
        }
        return arrayList;
    }
}
