.class public interface abstract Lcom/mqunar/contacts/business/net/UploadContactsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailure(Lcom/mqunar/contacts/business/net/error/UploadError;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;)V"
        }
    .end annotation
.end method
