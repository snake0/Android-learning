.class Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;


# instance fields
.field final synthetic this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

.field final synthetic val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

.field final synthetic val$contacts:Ljava/util/List;

.field final synthetic val$uniqueKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mqunar/contacts/basis/impl/CommonExecutor;Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;Ljava/util/List;)V
    .registers 5

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    iput-object p2, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->val$uniqueKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    iput-object p4, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->val$contacts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/mqunar/contacts/basis/db/ReadContactsError;)V
    .registers 8

    .prologue
    .line 147
    const-string v0, "Contacts"

    const-string v1, "make diff failure! upload original!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    # getter for: Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadFunc:Lcom/mqunar/contacts/basis/upload/IUpload;
    invoke-static {v1}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->access$000(Lcom/mqunar/contacts/basis/impl/CommonExecutor;)Lcom/mqunar/contacts/basis/upload/IUpload;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    # getter for: Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->access$100(Lcom/mqunar/contacts/basis/impl/CommonExecutor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->val$uniqueKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->val$contacts:Ljava/util/List;

    iget-object v5, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadContacts(Lcom/mqunar/contacts/basis/upload/IUpload;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)V

    .line 149
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    const-string v2, "Contacts"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make diff ,after size : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v1

    :goto_15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    # getter for: Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadFunc:Lcom/mqunar/contacts/basis/upload/IUpload;
    invoke-static {v1}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->access$000(Lcom/mqunar/contacts/basis/impl/CommonExecutor;)Lcom/mqunar/contacts/basis/upload/IUpload;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    # getter for: Lcom/mqunar/contacts/basis/impl/CommonExecutor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->access$100(Lcom/mqunar/contacts/basis/impl/CommonExecutor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->val$uniqueKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$2;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadContacts(Lcom/mqunar/contacts/basis/upload/IUpload;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)V

    .line 143
    return-void

    .line 141
    :cond_39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_15
.end method
