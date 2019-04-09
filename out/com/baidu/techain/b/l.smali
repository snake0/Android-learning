.class public final Lcom/baidu/techain/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/baidu/techain/b/l;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/baidu/techain/b/l;

    invoke-direct {v0}, Lcom/baidu/techain/b/l;-><init>()V

    sput-object v0, Lcom/baidu/techain/b/l;->c:Lcom/baidu/techain/b/l;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "rp_th"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/techain/b/l;->a:Landroid/os/HandlerThread;

    .line 18
    iget-object v0, p0, Lcom/baidu/techain/b/l;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/techain/b/l;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/techain/b/l;->b:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method public static a()Landroid/os/Looper;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/techain/b/l;->c:Lcom/baidu/techain/b/l;

    iget-object v0, v0, Lcom/baidu/techain/b/l;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
