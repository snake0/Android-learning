.class public Lcom/mqunar/contacts/basis/impl/CommonExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/contacts/basis/IContactsExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Contacts"

.field private static final USERID_FORMAT:Ljava/lang/String; = "user_id_%s"


# instance fields
.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mStorage:Lcom/mqunar/storage/Storage;

.field private mSyncTask:Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;

.field private uploadFunc:Lcom/mqunar/contacts/basis/upload/IUpload;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mqunar/contacts/basis/upload/IUpload;)V
    .registers 4

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContext:Landroid/content/Context;

    .line 50
    const-string v0, "contacts"

    invoke-static {p1, v0}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mStorage:Lcom/mqunar/storage/Storage;

    .line 51
    iput-object p2, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadFunc:Lcom/mqunar/contacts/basis/upload/IUpload;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/contacts/basis/impl/CommonExecutor;)Lcom/mqunar/contacts/basis/upload/IUpload;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadFunc:Lcom/mqunar/contacts/basis/upload/IUpload;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mqunar/contacts/basis/impl/CommonExecutor;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public formatKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_id_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__licenses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalContactsAsync(Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;)Z
    .registers 4

    .prologue
    .line 83
    new-instance v0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;-><init>(Landroid/content/Context;Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;)V

    invoke-virtual {v0}, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->run()V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public getLocalContactsFromDatabaseAsync(Ljava/lang/String;Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;)Z
    .registers 5

    .prologue
    .line 89
    sget-object v0, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mqunar/contacts/basis/db/DBHelper;->getContacts(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public getLocalContactsSync()Ljava/util/List;
    .registers 4
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
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/ContactUtils;->getContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContacts:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContacts:Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 77
    :goto_a
    return-object v0

    .line 75
    :catch_b
    move-exception v0

    .line 76
    const-string v1, "Contacts"

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasLicenses(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mStorage:Lcom/mqunar/storage/Storage;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public setLicenses(Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mStorage:Lcom/mqunar/storage/Storage;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mqunar/storage/Storage;->putBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public sync(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 163
    const-string v1, "Contacts"

    const-string v2, "sync but context or contacts is empty! "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :goto_10
    return v0

    .line 167
    :cond_11
    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mSyncTask:Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mSyncTask:Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;

    invoke-virtual {v1}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->isOver()Z

    move-result v1

    if-nez v1, :cond_27

    .line 169
    const-string v1, "Contacts"

    const-string v2, "sync but already running! "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 173
    :cond_27
    new-instance v0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadFunc:Lcom/mqunar/contacts/basis/upload/IUpload;

    invoke-direct {v0, v1, p1, v2}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/contacts/basis/upload/IUpload;)V

    iput-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mSyncTask:Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;

    .line 174
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mSyncTask:Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;

    invoke-virtual {v0}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->run()V

    .line 175
    const/4 v0, 0x1

    goto :goto_10
.end method

.method uploadContacts(Lcom/mqunar/contacts/basis/upload/IUpload;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/contacts/basis/upload/IUpload;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Lcom/mqunar/contacts/business/net/UploadContactsCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;-><init>(Lcom/mqunar/contacts/basis/impl/CommonExecutor;Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;Ljava/util/List;)V

    invoke-interface {p1, p4, p3, v0}, Lcom/mqunar/contacts/basis/upload/IUpload;->uploadContacts(Ljava/util/List;Ljava/lang/String;Lcom/mqunar/contacts/basis/upload/UploadListener;)V

    .line 222
    return-void
.end method

.method public uploadContacts(Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->hasLicenses(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 98
    if-eqz p2, :cond_13

    .line 99
    new-instance v1, Lcom/mqunar/contacts/business/net/error/UploadError;

    const-string v2, "licenses_failure"

    invoke-direct {v1, v0, v2}, Lcom/mqunar/contacts/business/net/error/UploadError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/mqunar/contacts/business/net/UploadContactsCallback;->onFailure(Lcom/mqunar/contacts/business/net/error/UploadError;)V

    .line 101
    :cond_13
    const/4 v0, 0x0

    .line 121
    :goto_14
    return v0

    .line 104
    :cond_15
    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContacts:Ljava/util/List;

    invoke-static {v1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 106
    new-instance v1, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;-><init>(Lcom/mqunar/contacts/basis/impl/CommonExecutor;Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)V

    invoke-virtual {p0, v1}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->getLocalContactsAsync(Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;)Z

    goto :goto_14

    .line 121
    :cond_26
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContacts:Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadContacts(Ljava/util/List;Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z

    move-result v0

    goto :goto_14
.end method

.method public uploadContacts(Ljava/util/List;Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mqunar/contacts/business/net/UploadContactsCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 127
    const-string v1, "Contacts"

    const-string v2, "uploadContacts ,but contacts is empty ! "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    if-eqz p3, :cond_1c

    .line 129
    new-instance v1, Lcom/mqunar/contacts/business/net/error/UploadError;

    const-string v2, "uploadContacts ,but contacts is empty ! "

    invoke-direct {v1, v2}, Lcom/mqunar/contacts/business/net/error/UploadError;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/mqunar/contacts/business/net/UploadContactsCallback;->onFailure(Lcom/mqunar/contacts/business/net/error/UploadError;)V

    .line 157
    :cond_1c
    :goto_1c
    return v0

    .line 134
    :cond_1d
    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadFunc:Lcom/mqunar/contacts/basis/upload/IUpload;

    if-eqz v1, :cond_50

    .line 136
    const-string v1, "Contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make diff ,original size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance v0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;-><init>(Lcom/mqunar/contacts/basis/impl/CommonExecutor;Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;Ljava/util/List;)V

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;)V

    invoke-virtual {v0}, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->run()V

    .line 157
    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    goto :goto_1c

    .line 152
    :cond_50
    if-eqz p3, :cond_4e

    .line 153
    new-instance v0, Lcom/mqunar/contacts/business/net/error/UploadError;

    const-string v1, "uploadFunc is empty ! "

    invoke-direct {v0, v1}, Lcom/mqunar/contacts/business/net/error/UploadError;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/mqunar/contacts/business/net/UploadContactsCallback;->onFailure(Lcom/mqunar/contacts/business/net/error/UploadError;)V

    goto :goto_4e
.end method
