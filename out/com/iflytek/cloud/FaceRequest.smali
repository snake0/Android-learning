.class public Lcom/iflytek/cloud/FaceRequest;
.super Lcom/iflytek/cloud/thirdparty/bh;


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/ci;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bh;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/FaceRequest;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/FaceRequest;->a:Lcom/iflytek/cloud/thirdparty/ci;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/cloud/FaceRequest;->a:Lcom/iflytek/cloud/thirdparty/ci;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ci;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/FaceRequest;->a:Lcom/iflytek/cloud/thirdparty/ci;

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public destroy()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/FaceRequest;->a:Lcom/iflytek/cloud/thirdparty/ci;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ci;->destroy()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/bh;->destroy()Z

    move-result v0

    :cond_c
    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/bh;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest([BLcom/iflytek/cloud/RequestListener;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/FaceRequest;->a:Lcom/iflytek/cloud/thirdparty/ci;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/cloud/FaceRequest;->a:Lcom/iflytek/cloud/thirdparty/ci;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ci;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/FaceRequest;->a:Lcom/iflytek/cloud/thirdparty/ci;

    :cond_d
    new-instance v0, Lcom/iflytek/cloud/thirdparty/ci;

    iget-object v1, p0, Lcom/iflytek/cloud/FaceRequest;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/FaceRequest;->c:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ci;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    iput-object v0, p0, Lcom/iflytek/cloud/FaceRequest;->a:Lcom/iflytek/cloud/thirdparty/ci;

    iget-object v0, p0, Lcom/iflytek/cloud/FaceRequest;->a:Lcom/iflytek/cloud/thirdparty/ci;

    new-instance v1, Lcom/iflytek/cloud/FaceRequest$a;

    invoke-direct {v1, p0, p2}, Lcom/iflytek/cloud/FaceRequest$a;-><init>(Lcom/iflytek/cloud/FaceRequest;Lcom/iflytek/cloud/RequestListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/ci;->a([BLcom/iflytek/cloud/RequestListener;)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/bh;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
