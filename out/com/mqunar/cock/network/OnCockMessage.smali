.class public interface abstract Lcom/mqunar/cock/network/OnCockMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onMessage(Lcom/mqunar/cock/model/TcpResponseHeader;[B)V
.end method

.method public abstract onNetEnd(Z)V
.end method

.method public abstract onRequest(ILcom/mqunar/cock/model/RequestHttpMessage;)V
.end method
