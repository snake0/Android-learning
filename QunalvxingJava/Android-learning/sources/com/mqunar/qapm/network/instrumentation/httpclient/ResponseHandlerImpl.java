package com.mqunar.qapm.network.instrumentation.httpclient;

import com.mqunar.qapm.network.instrumentation.TransactionState;
import com.mqunar.qapm.network.instrumentation.TransactionStateUtil;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;

public class ResponseHandlerImpl<T> implements ResponseHandler<T> {
    private final ResponseHandler<T> a;
    private final TransactionState b;

    private ResponseHandlerImpl(ResponseHandler<T> responseHandler, TransactionState transactionState) {
        this.a = responseHandler;
        this.b = transactionState;
    }

    public T handleResponse(HttpResponse httpResponse) {
        TransactionStateUtil.inspectAndInstrument(this.b, httpResponse);
        return this.a.handleResponse(httpResponse);
    }

    public static <T> ResponseHandler<? extends T> wrap(ResponseHandler<? extends T> responseHandler, TransactionState transactionState) {
        return new ResponseHandlerImpl(responseHandler, transactionState);
    }
}
