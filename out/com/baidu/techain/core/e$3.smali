.class final Lcom/baidu/techain/core/e$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/ac/Callback;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Ljava/lang/Class;

.field final synthetic f:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/baidu/techain/ac/Callback;Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 492
    iput-object p1, p0, Lcom/baidu/techain/core/e$3;->a:Lcom/baidu/techain/ac/Callback;

    iput-object p2, p0, Lcom/baidu/techain/core/e$3;->b:Landroid/content/Context;

    iput p3, p0, Lcom/baidu/techain/core/e$3;->c:I

    iput-object p4, p0, Lcom/baidu/techain/core/e$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/techain/core/e$3;->e:[Ljava/lang/Class;

    iput-object p6, p0, Lcom/baidu/techain/core/e$3;->f:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 495
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 496
    iget-object v0, p0, Lcom/baidu/techain/core/e$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_10

    .line 497
    iget-object v0, p0, Lcom/baidu/techain/core/e$3;->a:Lcom/baidu/techain/ac/Callback;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/ac/Callback;->onBegin([Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_10
    iget-object v0, p0, Lcom/baidu/techain/core/e$3;->b:Landroid/content/Context;

    iget v1, p0, Lcom/baidu/techain/core/e$3;->c:I

    iget-object v3, p0, Lcom/baidu/techain/core/e$3;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/techain/core/e$3;->e:[Ljava/lang/Class;

    iget-object v5, p0, Lcom/baidu/techain/core/e$3;->f:[Ljava/lang/Object;

    .line 1027
    invoke-static/range {v0 .. v5}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 501
    iget-object v0, p0, Lcom/baidu/techain/core/e$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_37

    .line 502
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_38

    .line 503
    iget-object v0, p0, Lcom/baidu/techain/core/e$3;->a:Lcom/baidu/techain/ac/Callback;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_37
    :goto_37
    return-void

    .line 505
    :cond_38
    iget-object v0, p0, Lcom/baidu/techain/core/e$3;->a:Lcom/baidu/techain/ac/Callback;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37
.end method
