.class final Lcom/baidu/techain/core/d$5;
.super Lcom/baidu/techain/ac/Callback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/core/d;


# direct methods
.method constructor <init>(Lcom/baidu/techain/core/d;)V
    .registers 2

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/baidu/techain/core/d$5;->a:Lcom/baidu/techain/core/d;

    invoke-direct {p0}, Lcom/baidu/techain/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1532
    const/4 v0, 0x0

    return-object v0
.end method

.method public final varargs onError([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1537
    const/4 v0, 0x0

    return-object v0
.end method