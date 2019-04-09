.class public Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/libtask/TaskCallback;


# instance fields
.field private contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/mqunar/contacts/basis/upload/UploadListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/mqunar/contacts/basis/upload/UploadListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Lcom/mqunar/contacts/basis/upload/UploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;

    .line 101
    iput-object p1, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->contacts:Ljava/util/List;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)Lcom/mqunar/contacts/basis/upload/UploadListener;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)Ljava/util/List;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->contacts:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method callError()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;

    if-eqz v0, :cond_15

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$1;

    invoke-direct {v1, p0}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$1;-><init>(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    :cond_15
    return-void
.end method

.method callSuccess()V
    .registers 3

    .prologue
    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;

    invoke-direct {v1, p0}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback$2;-><init>(Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method public onMsgCacheHit(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 166
    return-void
.end method

.method public onMsgCancel(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 161
    return-void
.end method

.method public onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 156
    return-void
.end method

.method public onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->callError()V

    .line 141
    return-void
.end method

.method public onMsgProgress(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 146
    return-void
.end method

.method public onMsgRequest(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 107
    return-void
.end method

.method public onMsgResult(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;

    if-eqz v0, :cond_2b

    .line 115
    :try_start_6
    invoke-virtual {p1}, Lcom/mqunar/libtask/AbsConductor;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 116
    instance-of v3, v0, [B

    if-eqz v3, :cond_41

    .line 117
    check-cast v0, [B

    check-cast v0, [B

    .line 118
    const-class v3, Lcom/mqunar/patch/model/response/BaseResult;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/patch/model/response/BaseResult;

    .line 119
    if-eqz v0, :cond_2c

    iget-object v0, v0, Lcom/mqunar/patch/model/response/BaseResult;->bstatus:Lcom/mqunar/patch/model/response/BStatus;

    iget v0, v0, Lcom/mqunar/patch/model/response/BStatus;->code:I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_23} :catch_2e

    if-nez v0, :cond_2c

    move v0, v1

    .line 130
    :goto_26
    if-eqz v0, :cond_3d

    .line 131
    invoke-virtual {p0}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->callSuccess()V

    .line 136
    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    move v0, v2

    .line 119
    goto :goto_26

    .line 121
    :catch_2e
    move-exception v0

    .line 125
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 126
    const-string v0, "Contacts"

    const-string v3, "serious error... Mock sccuess!!!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 127
    goto :goto_26

    .line 133
    :cond_3d
    invoke-virtual {p0}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;->callError()V

    goto :goto_2b

    :cond_41
    move v0, v2

    goto :goto_26
.end method

.method public onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    .prologue
    .line 151
    return-void
.end method
