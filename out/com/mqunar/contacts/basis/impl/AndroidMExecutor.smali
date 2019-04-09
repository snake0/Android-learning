.class public Lcom/mqunar/contacts/basis/impl/AndroidMExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/contacts/basis/IContactsExecutor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalContactsAsync(Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;)Z
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalContactsFromDatabaseAsync(Ljava/lang/String;Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;)Z
    .registers 4

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalContactsSync()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasLicenses(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public setLicenses(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public sync(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public uploadContacts(Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z
    .registers 4

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
