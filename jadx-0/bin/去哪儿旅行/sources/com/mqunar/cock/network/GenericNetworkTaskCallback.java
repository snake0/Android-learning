package com.mqunar.cock.network;

import com.mqunar.cock.model.BaseResult;
import com.mqunar.libtask.AbsConductor;

public abstract class GenericNetworkTaskCallback<T extends BaseResult> extends TaskCallbackAdapter {
    private static final String a = GenericNetworkTaskCallback.class.getSimpleName();
    protected final RemoteSvcProxy remoteSvcProxy;
    protected Class<T> responseClazz;

    public abstract void onDataArrive(T t);

    public abstract void onNetError(AbsConductor absConductor);

    public GenericNetworkTaskCallback(Class<T> cls, RemoteSvcProxy remoteSvcProxy) {
        this.responseClazz = cls;
        this.remoteSvcProxy = remoteSvcProxy;
    }

    public void onMsgResult(AbsConductor absConductor, boolean z) {
        BaseResult baseResult = (BaseResult) this.remoteSvcProxy.parseFrom(this.responseClazz, (byte[]) absConductor.getResult());
        if (baseResult == null || baseResult.bstatus == null || -2 == baseResult.bstatus.code) {
        }
        if (isBizError(baseResult)) {
            if (handleBizError(absConductor, baseResult)) {
            }
        } else {
            this.remoteSvcProxy.postDelay(new e(this, baseResult), 0);
        }
    }

    public void onMsgError(AbsConductor absConductor, boolean z) {
        super.onMsgError(absConductor, z);
        this.remoteSvcProxy.postDelay(new f(this, absConductor), 0);
    }

    /* Access modifiers changed, original: protected */
    public boolean handleBizError(AbsConductor absConductor, BaseResult baseResult) {
        return false;
    }

    /* Access modifiers changed, original: protected */
    public boolean isBizError(T t) {
        if (t == null || t.bstatus == null) {
            return true;
        }
        if (t.bstatus.code == 100) {
            OneKeyCremation.getInstance().setState(OneKeyCremation.getInstance().yaccaListUnavailableState);
        }
        if (t.bstatus.code == 0) {
            return false;
        }
        return true;
    }
}
