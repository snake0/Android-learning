package com.baidu.location;

class c extends Thread {
    final /* synthetic */ LocationClient a;

    c(LocationClient locationClient) {
        this.a = locationClient;
    }

    public void run() {
        if (this.a.C == null) {
            this.a.C = new com.baidu.location.a.c(this.a.f, this.a.d, this.a);
        }
        this.a.C.c();
    }
}
