.class public Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_d

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_d
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xfa0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;->a:I

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;->b:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;)I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;->a:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;)I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;->b:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/b/e;)V
    .registers 5

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request URL cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/b;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/b;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;Lcom/baidu/mapsdkplatform/comapi/synchronization/b/e;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
