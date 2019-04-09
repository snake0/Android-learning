.class final Lcom/baidu/techain/a$1;
.super Lcom/baidu/techain/ac/Callback;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/baidu/techain/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
