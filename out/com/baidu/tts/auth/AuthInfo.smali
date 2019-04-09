.class public Lcom/baidu/tts/auth/AuthInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/f/m;

.field private b:Lcom/baidu/tts/auth/c$a;

.field private c:Lcom/baidu/tts/auth/b$a;

.field private d:Lcom/baidu/tts/aop/tts/TtsError;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public getLeftValidDays()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/b$a;->a()I

    move-result v0

    return v0
.end method

.method public getMixTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->getOnlineTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->getOfflineTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v2

    .line 152
    const/4 v0, 0x0

    .line 153
    if-eqz v1, :cond_1a

    if-eqz v2, :cond_1a

    .line 154
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->J:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 160
    :cond_17
    :goto_17
    if-eqz v0, :cond_38

    :goto_19
    return-object v0

    .line 155
    :cond_1a
    if-nez v1, :cond_29

    if-eqz v2, :cond_29

    .line 156
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->r:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_17

    .line 157
    :cond_29
    if-eqz v1, :cond_17

    if-nez v2, :cond_17

    .line 158
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->a:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_17

    .line 160
    :cond_38
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_19
.end method

.method public getNotifyMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/b$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineResult()Lcom/baidu/tts/auth/b$a;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/b$a;

    return-object v0
.end method

.method public getOfflineTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/b$a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/b$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_a
.end method

.method public getOnlineResult()Lcom/baidu/tts/auth/c$a;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/c$a;

    return-object v0
.end method

.method public getOnlineTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/c$a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/c$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/c$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_a
.end method

.method public getTtsEnum()Lcom/baidu/tts/f/m;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->a:Lcom/baidu/tts/f/m;

    return-object v0
.end method

.method public getTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    if-nez v0, :cond_26

    .line 78
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lcom/baidu/tts/auth/AuthInfo$1;->a:[I

    iget-object v2, p0, Lcom/baidu/tts/auth/AuthInfo;->a:Lcom/baidu/tts/f/m;

    invoke-virtual {v2}, Lcom/baidu/tts/f/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 95
    :goto_12
    return-object v0

    .line 81
    :pswitch_13
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/c$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/c$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_12

    .line 84
    :pswitch_1a
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/b$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_12

    .line 87
    :pswitch_21
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->getMixTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_12

    .line 95
    :cond_26
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_12

    .line 79
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1a
        :pswitch_21
    .end packed-switch
.end method

.method public isMixSuccess()Z
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isOnlineSuccess()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isOfflineSuccess()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOfflineSuccess()Z
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/b$a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/b$a;->g()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isOnlineSuccess()Z
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/c$a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/c$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/c$a;->g()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSuccess()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    if-nez v1, :cond_26

    .line 170
    iget-object v1, p0, Lcom/baidu/tts/auth/AuthInfo;->a:Lcom/baidu/tts/f/m;

    if-eqz v1, :cond_16

    .line 171
    sget-object v1, Lcom/baidu/tts/auth/AuthInfo$1;->a:[I

    iget-object v2, p0, Lcom/baidu/tts/auth/AuthInfo;->a:Lcom/baidu/tts/f/m;

    invoke-virtual {v2}, Lcom/baidu/tts/f/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4a

    .line 186
    :cond_16
    :goto_16
    return v0

    .line 173
    :pswitch_17
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isOnlineSuccess()Z

    move-result v0

    goto :goto_16

    .line 175
    :pswitch_1c
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isOfflineSuccess()Z

    move-result v0

    goto :goto_16

    .line 177
    :pswitch_21
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isMixSuccess()Z

    move-result v0

    goto :goto_16

    .line 185
    :cond_26
    const-string v1, "AuthInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    invoke-virtual {v3}, Lcom/baidu/tts/aop/tts/TtsError;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 171
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1c
        :pswitch_21
    .end packed-switch
.end method

.method public setOfflineResult(Lcom/baidu/tts/auth/b$a;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/b$a;

    .line 69
    return-void
.end method

.method public setOnlineResult(Lcom/baidu/tts/auth/c$a;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/c$a;

    .line 55
    return-void
.end method

.method public setTtsEnum(Lcom/baidu/tts/f/m;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/tts/auth/AuthInfo;->a:Lcom/baidu/tts/f/m;

    .line 41
    return-void
.end method

.method public setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    .line 106
    return-void
.end method
