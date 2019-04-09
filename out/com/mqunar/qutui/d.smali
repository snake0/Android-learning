.class Lcom/mqunar/qutui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/cock/network/ImListener;


# instance fields
.field final synthetic a:Lcom/mqunar/qutui/NetService;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/NetService;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mqunar/qutui/d;->a:Lcom/mqunar/qutui/NetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .registers 4

    .prologue
    .line 96
    const-string v0, "NetService"

    const-string v1, "ImListener onClosed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/mqunar/qutui/d;->a:Lcom/mqunar/qutui/NetService;

    invoke-static {v0}, Lcom/mqunar/qutui/NetService;->c(Lcom/mqunar/qutui/NetService;)V

    .line 98
    return-void
.end method

.method public onConnected()V
    .registers 4

    .prologue
    .line 90
    const-string v0, "NetService"

    const-string v1, "ImListener onConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/mqunar/qutui/d;->a:Lcom/mqunar/qutui/NetService;

    invoke-static {v0}, Lcom/mqunar/qutui/NetService;->b(Lcom/mqunar/qutui/NetService;)V

    .line 92
    return-void
.end method

.method public onMessage([B)V
    .registers 5

    .prologue
    .line 83
    const-string v0, "NetService"

    const-string v1, "ImListener onMessage"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/mqunar/qutui/d;->a:Lcom/mqunar/qutui/NetService;

    invoke-static {v0, p1}, Lcom/mqunar/qutui/NetService;->a(Lcom/mqunar/qutui/NetService;[B)V

    .line 86
    return-void
.end method
