.class Lcom/mqunar/qutui/h;
.super Lcom/mqunar/qutui/OnIMMessage$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/qutui/PushManager;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/PushManager;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mqunar/qutui/h;->a:Lcom/mqunar/qutui/PushManager;

    invoke-direct {p0}, Lcom/mqunar/qutui/OnIMMessage$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .registers 4

    .prologue
    .line 212
    const-string v0, "PushManager"

    const-string v1, "onClosed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/mqunar/qutui/h;->a:Lcom/mqunar/qutui/PushManager;

    invoke-static {v0}, Lcom/mqunar/qutui/PushManager;->c(Lcom/mqunar/qutui/PushManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/PushManager$OnImMessageListener;

    .line 214
    invoke-interface {v0}, Lcom/mqunar/qutui/PushManager$OnImMessageListener;->onClosed()V

    goto :goto_14

    .line 216
    :cond_24
    return-void
.end method

.method public onConnected()V
    .registers 4

    .prologue
    .line 204
    const-string v0, "PushManager"

    const-string v1, "onConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/mqunar/qutui/h;->a:Lcom/mqunar/qutui/PushManager;

    invoke-static {v0}, Lcom/mqunar/qutui/PushManager;->c(Lcom/mqunar/qutui/PushManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/PushManager$OnImMessageListener;

    .line 206
    invoke-interface {v0}, Lcom/mqunar/qutui/PushManager$OnImMessageListener;->onConnected()V

    goto :goto_14

    .line 208
    :cond_24
    return-void
.end method

.method public onImMessage([B)V
    .registers 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mqunar/qutui/h;->a:Lcom/mqunar/qutui/PushManager;

    invoke-static {v0}, Lcom/mqunar/qutui/PushManager;->c(Lcom/mqunar/qutui/PushManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/PushManager$OnImMessageListener;

    .line 191
    invoke-interface {v0, p1}, Lcom/mqunar/qutui/PushManager$OnImMessageListener;->onImMessage([B)V

    goto :goto_a

    .line 194
    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QunarImApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_3a} :catch_3b

    .line 200
    :goto_3a
    return-void

    .line 197
    :catch_3b
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3a
.end method
