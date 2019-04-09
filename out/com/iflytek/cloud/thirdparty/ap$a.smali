.class Lcom/iflytek/cloud/thirdparty/ap$a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ap;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/ap;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ap$a;->a:Lcom/iflytek/cloud/thirdparty/ap;

    const-string v0, "CAE-Read16kAudioThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ap$a;->b:Z

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ap$a;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ap$a;->interrupt()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ap$a;->b:Z

    return-void
.end method

.method public run()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ap$a;->b:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ap;->d()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/iflytek/cae/jni/CAEJni;->CAERead16kAudio([B)I

    move-result v1

    if-nez v1, :cond_20

    const-wide/16 v0, 0x14

    :try_start_17
    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ap$a;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_4

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_20
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ap$a;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ap$a;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;

    move-result-object v2

    invoke-interface {v2, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/ar;->a([BIII)V

    goto :goto_4
.end method
