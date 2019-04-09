package com.mqunar.qapm.dao;

import com.mqunar.qapm.domain.BaseData;

class a implements Runnable {
    final /* synthetic */ BaseData a;
    final /* synthetic */ Storage b;

    a(Storage storage, BaseData baseData) {
        this.b = storage;
        this.a = baseData;
    }

    public void run() {
        if (this.a != null) {
            if (Storage.d.size() < 9) {
                Storage.d.add(this.a);
            } else {
                this.b.saveData(this.a);
            }
        }
    }
}
