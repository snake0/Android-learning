.class public Lcom/mqunar/contacts/basis/ContactsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "Contacts"

.field private static manager:Lcom/mqunar/contacts/basis/ContactsManager;


# instance fields
.field private executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

.field private mContext:Landroid/content/Context;

.field private unique:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mqunar/contacts/basis/ContactsManager;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/mqunar/contacts/basis/ContactsManager;->getExecutor(Landroid/content/Context;)Lcom/mqunar/contacts/basis/IContactsExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    .line 42
    return-void
.end method

.method private getExecutor(Landroid/content/Context;)Lcom/mqunar/contacts/basis/IContactsExecutor;
    .registers 4

    .prologue
    .line 46
    new-instance v0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    new-instance v1, Lcom/mqunar/contacts/business/net/Hotdog;

    invoke-direct {v1, p1}, Lcom/mqunar/contacts/business/net/Hotdog;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;-><init>(Landroid/content/Context;Lcom/mqunar/contacts/basis/upload/IUpload;)V

    return-object v0
.end method

.method public static declared-synchronized getManager(Landroid/content/Context;)Lcom/mqunar/contacts/basis/ContactsManager;
    .registers 3

    .prologue
    .line 29
    const-class v1, Lcom/mqunar/contacts/basis/ContactsManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mqunar/contacts/basis/ContactsManager;->manager:Lcom/mqunar/contacts/basis/ContactsManager;

    if-nez v0, :cond_e

    .line 30
    new-instance v0, Lcom/mqunar/contacts/basis/ContactsManager;

    invoke-direct {v0, p0}, Lcom/mqunar/contacts/basis/ContactsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mqunar/contacts/basis/ContactsManager;->manager:Lcom/mqunar/contacts/basis/ContactsManager;

    .line 32
    :cond_e
    sget-object v0, Lcom/mqunar/contacts/basis/ContactsManager;->manager:Lcom/mqunar/contacts/basis/ContactsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasLicenses(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0, p1}, Lcom/mqunar/contacts/basis/IContactsExecutor;->hasLicenses(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private uploadContacts(Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/contacts/basis/IContactsExecutor;->uploadContacts(Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getLocalContactsAsync(Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;)Z
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0, p1}, Lcom/mqunar/contacts/basis/IContactsExecutor;->getLocalContactsAsync(Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;)Z

    move-result v0

    return v0
.end method

.method public getLocalContactsFromDatabaseAsync(Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->userValidate()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 87
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->getUserid()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 89
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0, v1, p1}, Lcom/mqunar/contacts/basis/IContactsExecutor;->getLocalContactsFromDatabaseAsync(Ljava/lang/String;Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;)Z

    move-result v0

    .line 102
    :cond_20
    :goto_20
    return v0

    .line 91
    :cond_21
    const-string v1, "Contacts"

    const-string v2, "getLocalContactsFromDatabaseAsync userId is empty !"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    if-eqz p1, :cond_20

    .line 93
    new-instance v1, Lcom/mqunar/contacts/basis/db/ReadContactsError;

    const-string v2, "getLocalContactsFromDatabaseAsync userId is empty !"

    invoke-direct {v1, v4, v2}, Lcom/mqunar/contacts/basis/db/ReadContactsError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;->onFailure(Lcom/mqunar/contacts/basis/db/ReadContactsError;)V

    goto :goto_20

    .line 97
    :cond_37
    const-string v1, "Contacts"

    const-string v2, "getLocalContactsFromDatabaseAsync validate failure ! "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    if-eqz p1, :cond_20

    .line 99
    new-instance v1, Lcom/mqunar/contacts/basis/db/ReadContactsError;

    const-string v2, "getLocalContactsFromDatabaseAsync validate failure ! "

    invoke-direct {v1, v4, v2}, Lcom/mqunar/contacts/basis/db/ReadContactsError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;->onFailure(Lcom/mqunar/contacts/basis/db/ReadContactsError;)V

    goto :goto_20
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
    .line 78
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0}, Lcom/mqunar/contacts/basis/IContactsExecutor;->getLocalContactsSync()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasLicenses()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->userValidate()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 51
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->getUserid()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 53
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/basis/IContactsExecutor;->hasLicenses(Ljava/lang/String;)Z

    move-result v0

    .line 60
    :goto_1f
    return v0

    .line 55
    :cond_20
    const-string v1, "Contacts"

    const-string v2, " userId is empty !"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    .line 58
    :cond_2a
    const-string v1, "Contacts"

    const-string v2, "hasLicenses validate failure ! "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public setLicenses(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/contacts/basis/IContactsExecutor;->setLicenses(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setLicenses(Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->userValidate()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 65
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->getUserid()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 67
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0, v1, p1}, Lcom/mqunar/contacts/basis/IContactsExecutor;->setLicenses(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    :goto_1f
    return v0

    .line 69
    :cond_20
    const-string v1, "Contacts"

    const-string v2, " userId is empty !"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    .line 72
    :cond_2a
    const-string v1, "Contacts"

    const-string v2, " validate failure ! "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public syncWithUserId()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->userValidate()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 139
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->getUserid()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 141
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/basis/IContactsExecutor;->sync(Ljava/lang/String;)Z

    move-result v0

    .line 148
    :goto_1f
    return v0

    .line 143
    :cond_20
    const-string v1, "Contacts"

    const-string v2, "sync userId is empty !"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    .line 146
    :cond_2a
    const-string v1, "Contacts"

    const-string v2, "sync validate failure ! "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public uploadContactsWithUserID(Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->userValidate()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 119
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/patch/util/UCUtils;->getUserid()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 121
    iget-object v0, p0, Lcom/mqunar/contacts/basis/ContactsManager;->executor:Lcom/mqunar/contacts/basis/IContactsExecutor;

    invoke-interface {v0, v1, p1}, Lcom/mqunar/contacts/basis/IContactsExecutor;->uploadContacts(Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z

    move-result v0

    .line 134
    :cond_1f
    :goto_1f
    return v0

    .line 123
    :cond_20
    const-string v1, "Contacts"

    const-string v2, " userId is empty !"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    if-eqz p1, :cond_1f

    .line 125
    new-instance v1, Lcom/mqunar/contacts/business/net/error/UploadError;

    const/4 v2, 0x3

    const-string v3, "userId is empty!"

    invoke-direct {v1, v2, v3}, Lcom/mqunar/contacts/business/net/error/UploadError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/mqunar/contacts/business/net/UploadContactsCallback;->onFailure(Lcom/mqunar/contacts/business/net/error/UploadError;)V

    goto :goto_1f

    .line 129
    :cond_37
    const-string v1, "Contacts"

    const-string v2, " validate failure ! "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    if-eqz p1, :cond_1f

    .line 131
    new-instance v1, Lcom/mqunar/contacts/business/net/error/UploadError;

    const/4 v2, 0x2

    const-string v3, "validate failure!"

    invoke-direct {v1, v2, v3}, Lcom/mqunar/contacts/business/net/error/UploadError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/mqunar/contacts/business/net/UploadContactsCallback;->onFailure(Lcom/mqunar/contacts/business/net/error/UploadError;)V

    goto :goto_1f
.end method
