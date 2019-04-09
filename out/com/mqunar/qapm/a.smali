.class Lcom/mqunar/qapm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mqunar/qapm/QAPM;


# direct methods
.method constructor <init>(Lcom/mqunar/qapm/QAPM;Z)V
    .registers 3

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mqunar/qapm/a;->b:Lcom/mqunar/qapm/QAPM;

    iput-boolean p2, p0, Lcom/mqunar/qapm/a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 199
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qapm/utils/NetWorkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 212
    :cond_8
    :goto_8
    return-void

    .line 202
    :cond_9
    iget-boolean v0, p0, Lcom/mqunar/qapm/a;->a:Z

    if-eqz v0, :cond_16

    .line 203
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qapm/dao/Storage;->newStorage(Landroid/content/Context;)Lcom/mqunar/qapm/dao/Storage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/qapm/dao/Storage;->popData()V

    .line 205
    :cond_16
    sget-object v0, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/qapm/utils/IOUtils;->getUploadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_8

    .line 207
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    .line 209
    iget-object v1, p0, Lcom/mqunar/qapm/a;->b:Lcom/mqunar/qapm/QAPM;

    invoke-virtual {v1}, Lcom/mqunar/qapm/QAPM;->getSender()Lcom/mqunar/qapm/network/sender/ISender;

    move-result-object v1

    sget-object v2, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mqunar/qapm/a;->b:Lcom/mqunar/qapm/QAPM;

    invoke-static {v3}, Lcom/mqunar/qapm/QAPM;->a(Lcom/mqunar/qapm/QAPM;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/mqunar/qapm/network/sender/ISender;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method
