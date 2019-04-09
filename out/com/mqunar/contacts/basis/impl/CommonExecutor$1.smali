.class Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;


# instance fields
.field final synthetic this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

.field final synthetic val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

.field final synthetic val$uniqueKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mqunar/contacts/basis/impl/CommonExecutor;Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)V
    .registers 4

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    iput-object p2, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;->val$uniqueKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/mqunar/contacts/basis/impl/common/CollectContactsError;)V
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    if-eqz v0, :cond_10

    .line 115
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    new-instance v1, Lcom/mqunar/contacts/business/net/error/UploadError;

    const-string v2, "upload failure..."

    invoke-direct {v1, v2}, Lcom/mqunar/contacts/business/net/error/UploadError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/business/net/UploadContactsCallback;->onFailure(Lcom/mqunar/contacts/business/net/error/UploadError;)V

    .line 117
    :cond_10
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 5
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
    .line 109
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;->this$0:Lcom/mqunar/contacts/basis/impl/CommonExecutor;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;->val$uniqueKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/CommonExecutor$1;->val$callback:Lcom/mqunar/contacts/business/net/UploadContactsCallback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mqunar/contacts/basis/impl/CommonExecutor;->uploadContacts(Ljava/util/List;Ljava/lang/String;Lcom/mqunar/contacts/business/net/UploadContactsCallback;)Z

    .line 110
    return-void
.end method
