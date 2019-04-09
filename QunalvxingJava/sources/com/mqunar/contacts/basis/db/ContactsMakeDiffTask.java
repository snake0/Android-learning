package com.mqunar.contacts.basis.db;

import android.content.Context;
import com.mqunar.contacts.basis.async.ITask;
import com.mqunar.contacts.basis.model.Contact;
import com.mqunar.contacts.basis.utils.CrashUtils;
import com.mqunar.libtask.AsyncTask;
import com.mqunar.tools.CheckUtils;
import com.mqunar.tools.log.QLog;
import java.util.ArrayList;
import java.util.List;

public class ContactsMakeDiffTask extends AsyncTask<Void, Integer, List<Contact>> implements ITask {
    private static final String TAG = "ContactsMakeDiffTask";
    private Context mContext;
    public ContactsMakeDiffCallback mMakeDiffCallback;
    public List<Contact> mOtherContacts;
    private String uniqueKey;

    public ContactsMakeDiffTask(Context context, String str, List<Contact> list, ContactsMakeDiffCallback contactsMakeDiffCallback) {
        this.mContext = context;
        this.mOtherContacts = list;
        this.mMakeDiffCallback = contactsMakeDiffCallback;
        this.uniqueKey = str;
    }

    /* Access modifiers changed, original: protected|varargs */
    public List<Contact> doInBackground(Void... voidArr) {
        List contacts;
        List<Contact> list = null;
        try {
            contacts = DBHelper.INSTANCE.getContacts(this.mContext, this.uniqueKey);
        } catch (Exception e) {
            QLog.e("Contacts", CrashUtils.getStackTraceString(e), new Object[0]);
            List<Contact> contacts2 = list;
        }
        try {
            return getIncrement(contacts2, this.mOtherContacts);
        } catch (Throwable th) {
            return list;
        }
    }

    /* Access modifiers changed, original: protected */
    public void onPostExecute(List<Contact> list) {
        super.onPostExecute(list);
        if (this.mMakeDiffCallback == null) {
            QLog.d(TAG, "onPostExecute callback is empty!", new Object[0]);
        } else if (list == null) {
            this.mMakeDiffCallback.onFailure(new ReadContactsError(new RuntimeException("no result!")));
        } else {
            this.mMakeDiffCallback.onSuccess(list);
        }
    }

    public void run() {
        executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
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
}
