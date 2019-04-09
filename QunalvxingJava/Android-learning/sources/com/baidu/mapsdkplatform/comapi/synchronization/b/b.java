package com.baidu.mapsdkplatform.comapi.synchronization.b;

class b extends a {
    final /* synthetic */ e a;
    final /* synthetic */ String b;
    final /* synthetic */ a c;

    b(a aVar, e eVar, String str) {
        this.c = aVar;
        this.a = eVar;
        this.b = str;
        super();
    }

    public void a() {
        c cVar = new c("GET", this.a);
        cVar.b(this.c.a);
        cVar.a(this.c.b);
        cVar.a(this.b);
    }
}
