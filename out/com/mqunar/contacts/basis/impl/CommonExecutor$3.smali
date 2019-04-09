.class Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/contacts/basis/upload/UploadListener;


# instance fields
.field private isAlreadyCallback:Z

.field final synthetic this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

.field final synthetic val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

.field final synthetic val$contacts:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uniqueKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mqunar/contacts/basis/impl/CommonExecutor;Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;Ljava/util/List;)V
    .registers 7

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    iput-object p2, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$uniqueKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    iput-object p5, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$contacts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->isAlreadyCallback:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized onFailure(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 208
    const-string v0, "Contacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload hotdog failure by tags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :goto_22
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    if-eqz v0, :cond_39

    .line 213
    iget-boolean v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->isAlreadyCallback:Z

    if-nez v0, :cond_49

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->isAlreadyCallback:Z

    .line 215
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    new-instance v1, Lcom/mqunar/contacts/business/net/error/UploadError;

    const-string v2, "upload failure..."

    invoke-direct {v1, v2}, Lcom/mqunar/contacts/business/net/error/UploadError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/business/net/UploadContactsCallback;->onFailure(Lcom/mqunar/contacts/business/net/error/UploadError;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_46

    .line 220
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 210
    :cond_3b
    :try_start_3b
    const-string v0, "Contacts"

    const-string v1, "upload hotdog failure..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_46

    goto :goto_22

    .line 207
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    .line 217
    :cond_49
    :try_start_49
    const-string v0, "Contacts"

    const-string v1, "upload hotdog failure...(already callback)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_46

    goto :goto_39
.end method

.method public declared-synchronized onSuccess(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 190
    const-string v0, "Contacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload hotdog success by tags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :goto_22
    sget-object v0, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mqunar/contacts/basis/db/DBHelper;->saveContacts(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    if-eqz v0, :cond_3d

    .line 196
    iget-boolean v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->isAlreadyCallback:Z

    if-nez v0, :cond_4d

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->isAlreadyCallback:Z

    .line 198
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$3;->val$contacts:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/business/net/UploadContactsCallback;->onSuccess(Ljava/util/List;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_4a

    .line 203
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-void

    .line 192
    :cond_3f
    :try_start_3f
    const-string v0, "Contacts"

    const-string v1, "upload hotdog success..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_4a

    goto :goto_22

    .line 189
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    :cond_4d
    :try_start_4d
    const-string v0, "Contacts"

    const-string v1, "upload hotdog success...(already callback)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_4a

    goto :goto_3d
.end method
