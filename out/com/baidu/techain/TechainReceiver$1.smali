.class final Lcom/baidu/techain/TechainReceiver$1;
.super Lcom/baidu/techain/ac/Callback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/TechainReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/techain/TechainReceiver;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/baidu/techain/TechainReceiver$1;->a:Lcom/baidu/techain/TechainReceiver;

    invoke-direct {p0}, Lcom/baidu/techain/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
