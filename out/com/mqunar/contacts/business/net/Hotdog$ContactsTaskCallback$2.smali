.class Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;


# direct methods
.method constructor <init>(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;->this$0:Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;->this$0:Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;

    # getter for: Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;
    invoke-static {v0}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->access$000(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)Lcom/mqunar/contacts/basis/upload/UploadListener;

    move-result-object v0

    instance-of v0, v0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;

    if-eqz v0, :cond_3d

    .line 191
    iget-object v0, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;->this$0:Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;

    # getter for: Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;
    invoke-static {v0}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->access$000(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)Lcom/mqunar/contacts/basis/upload/UploadListener;

    move-result-object v0

    check-cast v0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;

    .line 193
    const-string v1, "Task[%d]-Total[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;->curIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v0, v0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;->total:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;->this$0:Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;

    # getter for: Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;
    invoke-static {v1}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->access$000(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)Lcom/mqunar/contacts/basis/upload/UploadListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;->this$0:Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;

    # getter for: Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->contacts:Ljava/util/List;
    invoke-static {v2}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->access$100(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/mqunar/contacts/basis/upload/UploadListener;->onSuccess(Ljava/util/List;Ljava/lang/String;)V

    .line 198
    :goto_3c
    return-void

    .line 196
    :cond_3d
    iget-object v0, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;->this$0:Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;

    # getter for: Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;
    invoke-static {v0}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->access$000(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)Lcom/mqunar/contacts/basis/upload/UploadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;->this$0:Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;

    # getter for: Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->contacts:Ljava/util/List;
    invoke-static {v1}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->access$100(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mqunar/contacts/basis/upload/UploadListener;->onSuccess(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3c
.end method
