.class Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/contacts/basis/upload/UploadListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;


# direct methods
.method constructor <init>(Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask$1;->this$0:Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 126
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

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :goto_21
    return-void

    .line 128
    :cond_22
    const-string v0, "Contacts"

    const-string v1, "upload hotdog failure..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21
.end method

.method public onSuccess(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
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
    const/4 v3, 0x0

    .line 114
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 115
    const-string v0, "Contacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " upload hotdog success by tags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :goto_21
    sget-object v0, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask$1;->this$0:Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;

    # getter for: Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->access$000(Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask$1;->this$0:Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;

    # getter for: Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->uniqueKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->access$100(Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/mqunar/contacts/basis/db/DBHelper;->saveContacts(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 120
    return-void

    .line 117
    :cond_33
    const-string v0, "Contacts"

    const-string v1, " upload hotdog success..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21
.end method
