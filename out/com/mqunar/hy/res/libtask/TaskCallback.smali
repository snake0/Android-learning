.class public interface abstract Lcom/mqunar/hy/res/libtask/TaskCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mqunar/hy/res/libtask/AbsConductor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onMsgCacheHit(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract onMsgCancel(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract onMsgEnd(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract onMsgError(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract onMsgProgress(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract onMsgRequest(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract onMsgResult(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract onMsgStart(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method
