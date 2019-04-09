package com.mqunar.qapm;

import com.mqunar.qapm.dao.Storage;
import com.mqunar.qapm.utils.IOUtils;
import com.mqunar.qapm.utils.NetWorkUtils;
import java.io.File;

class a implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ QAPM b;

    a(QAPM qapm, boolean z) {
        this.b = qapm;
        this.a = z;
    }

    public void run() {
        if (NetWorkUtils.isNetworkConnected(QAPM.mContext)) {
            if (this.a) {
                Storage.newStorage(QAPM.mContext).popData();
            }
            String uploadDir = IOUtils.getUploadDir(QAPM.mContext);
            if (uploadDir != null) {
                String[] list = new File(uploadDir).list();
                if (list != null && list.length > 0) {
                    this.b.getSender().send(QAPM.mContext, uploadDir, this.b.e);
                }
            }
        }
    }
}
