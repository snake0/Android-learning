.class public interface abstract Lcom/mqunar/contacts/basis/IContactsExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_LICENSES:Ljava/lang/String; = "__licenses"


# virtual methods
.method public abstract getLocalContactsAsync(Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;)Z
.end method

.method public abstract getLocalContactsFromDatabaseAsync(Ljava/lang/String;Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;)Z
.end method

.method public abstract getLocalContactsSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasLicenses(Ljava/lang/String;)Z
.end method

.method public abstract hasPermission(Ljava/lang/String;)Z
.end method

.method public abstract setLicenses(Ljava/lang/String;Z)Z
.end method

.method public abstract sync(Ljava/lang/String;)Z
.end method

.method public abstract uploadContacts(Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z
.end method
