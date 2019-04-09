.class Lcom/mqunar/spider/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/spider/QunarApp;


# direct methods
.method constructor <init>(Lcom/mqunar/spider/QunarApp;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mqunar/spider/g;->a:Lcom/mqunar/spider/QunarApp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 72
    iget-object v0, p0, Lcom/mqunar/spider/g;->a:Lcom/mqunar/spider/QunarApp;

    invoke-virtual {v0}, Lcom/mqunar/spider/QunarApp;->clearStack()V

    .line 73
    return-void
.end method
