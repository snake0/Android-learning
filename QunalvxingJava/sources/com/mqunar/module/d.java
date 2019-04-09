package com.mqunar.module;

import android.content.Context;
import com.mqunar.core.dependency.AtomNode.DeleteSoCallback;

final class d implements DeleteSoCallback {
    final /* synthetic */ Context a;

    d(Context context) {
        this.a = context;
    }

    public void delete(ModuleInfo moduleInfo) {
        ModuleInfoController.deleteSo(this.a, moduleInfo);
    }
}
