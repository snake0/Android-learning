package com.mqunar.module;

import android.content.Context;
import com.mqunar.core.dependency.AtomNode.DeleteSoCallback;

class c implements DeleteSoCallback {
    final /* synthetic */ Context a;
    final /* synthetic */ a b;

    c(a aVar, Context context) {
        this.b = aVar;
        this.a = context;
    }

    public void delete(ModuleInfo moduleInfo) {
        ModuleInfoController.deleteSo(this.a, moduleInfo);
    }
}
