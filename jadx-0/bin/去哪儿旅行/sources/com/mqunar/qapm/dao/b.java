package com.mqunar.qapm.dao;

class b implements Runnable {
    final /* synthetic */ Storage a;

    b(Storage storage) {
        this.a = storage;
    }

    public void run() {
        if (Storage.d != null && Storage.d.size() > 0) {
            this.a.saveData(null);
        }
    }
}
