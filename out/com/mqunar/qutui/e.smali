.class Lcom/mqunar/qutui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/mqunar/qutui/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/NotificationReceiver;J)V
    .registers 4

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mqunar/qutui/e;->b:Lcom/mqunar/qutui/NotificationReceiver;

    iput-wide p2, p0, Lcom/mqunar/qutui/e;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x5dc

    .line 57
    iget-wide v0, p0, Lcom/mqunar/qutui/e;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    .line 58
    const-string v0, "YACCA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mqunar/qutui/e;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/mqunar/qutui/e;->b:Lcom/mqunar/qutui/NotificationReceiver;

    invoke-static {v0}, Lcom/mqunar/qutui/NotificationReceiver;->a(Lcom/mqunar/qutui/NotificationReceiver;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 60
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->connect()V

    .line 65
    :cond_34
    :goto_34
    return-void

    .line 63
    :cond_35
    iget-object v0, p0, Lcom/mqunar/qutui/e;->b:Lcom/mqunar/qutui/NotificationReceiver;

    invoke-static {v0}, Lcom/mqunar/qutui/NotificationReceiver;->b(Lcom/mqunar/qutui/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_34
.end method
