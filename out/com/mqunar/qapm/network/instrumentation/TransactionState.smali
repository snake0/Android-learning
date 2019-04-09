.class public final Lcom/mqunar/qapm/network/instrumentation/TransactionState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/mqunar/qapm/logging/AgentLog;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lcom/mqunar/qapm/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/qapm/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->f:Ljava/lang/String;

    .line 32
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->g:Ljava/lang/String;

    .line 35
    const-string v0, "error"

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->j:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->k:I

    .line 47
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->READY:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    .line 48
    invoke-static {}, Lcom/mqunar/qapm/tracing/BackgroundTrace;->appIsForeground()Z

    move-result v0

    if-nez v0, :cond_21

    const-wide/16 v0, -0x1

    :goto_1e
    iput-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->n:J

    .line 49
    return-void

    .line 48
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1e
.end method

.method private a()Lcom/mqunar/qapm/domain/NetworkData;
    .registers 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_d

    .line 164
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    const-string v1, "toTransactionData() called on incomplete TransactionState"

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 167
    :cond_d
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->b:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 168
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    const-string v1, "Attempted to convert a TransactionState instance with no URL into a TransactionData"

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    .line 183
    :goto_19
    return-object v0

    .line 171
    :cond_1a
    new-instance v1, Lcom/mqunar/qapm/domain/NetworkData;

    invoke-direct {v1}, Lcom/mqunar/qapm/domain/NetworkData;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->reqUrl:Ljava/lang/String;

    .line 173
    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->n:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->startTime:Ljava/lang/String;

    .line 174
    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->o:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->endTime:Ljava/lang/String;

    .line 175
    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->l:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->reqSize:Ljava/lang/String;

    .line 176
    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->m:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->resSize:Ljava/lang/String;

    .line 177
    iget v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->k:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_64

    const-string v0, "Unknown"

    :goto_4a
    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->httpCode:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->netStatus:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/mqunar/qapm/tracing/BackgroundTrace;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->topPage:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->hf:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->netType:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->p:Ljava/util/HashMap;

    iput-object v0, v1, Lcom/mqunar/qapm/domain/NetworkData;->headers:Ljava/util/HashMap;

    move-object v0, v1

    .line 183
    goto :goto_19

    .line 177
    :cond_64
    iget v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a
.end method


# virtual methods
.method public end()Lcom/mqunar/qapm/domain/NetworkData;
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_10

    .line 156
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->COMPLETE:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->o:J

    .line 159
    :cond_10
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a()Lcom/mqunar/qapm/domain/NetworkData;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->COMPLETE:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isSent()Z
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->SENT:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setAppData(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 69
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->e:Ljava/lang/String;

    .line 73
    :goto_8
    return-void

    .line 71
    :cond_9
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppData(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setBytesReceived(J)V
    .registers 6

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 140
    iput-wide p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->m:J

    .line 144
    :goto_8
    return-void

    .line 142
    :cond_9
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBytesReceived(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setBytesSent(J)V
    .registers 6

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_d

    .line 131
    iput-wide p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->l:J

    .line 132
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->SENT:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    .line 136
    :goto_c
    return-void

    .line 134
    :cond_d
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBytesSent(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public setCarrier(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 53
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->f:Ljava/lang/String;

    .line 57
    :goto_8
    return-void

    .line 55
    :cond_9
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarrier(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->i:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 123
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->d:Ljava/lang/String;

    .line 127
    :goto_8
    return-void

    .line 125
    :cond_9
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setErrorCode(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 148
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->p:Ljava/util/HashMap;

    .line 152
    :goto_8
    return-void

    .line 150
    :cond_9
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeaders(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 90
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->c:Ljava/lang/String;

    .line 94
    :goto_8
    return-void

    .line 92
    :cond_9
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHttpMethod(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setStatusCode(I)V
    .registers 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 114
    iput p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->k:I

    .line 115
    const/16 v0, 0x64

    if-le p1, v0, :cond_15

    const/16 v0, 0x18f

    if-ge p1, v0, :cond_15

    const-string v0, "success"

    :goto_12
    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->j:Ljava/lang/String;

    .line 119
    :goto_14
    return-void

    .line 115
    :cond_15
    const-string v0, "error"

    goto :goto_12

    .line 117
    :cond_18
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusCode(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 76
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUrl urlString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/mqunar/qapm/utils/StringUtils;->sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUrl sanitizeUrl url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mqunar/qapm/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 79
    if-eqz v0, :cond_3e

    .line 80
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isSent()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 81
    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->b:Ljava/lang/String;

    .line 86
    :cond_3e
    :goto_3e
    return-void

    .line 83
    :cond_3f
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUrl(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public setWanType(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 61
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->g:Ljava/lang/String;

    .line 65
    :goto_8
    return-void

    .line 63
    :cond_9
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWanType(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->h:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method
