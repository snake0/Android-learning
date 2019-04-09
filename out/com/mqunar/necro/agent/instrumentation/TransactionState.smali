.class public final Lcom/mqunar/necro/agent/instrumentation/TransactionState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BACKGROUND_START_TIME:I = -0x1

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final SUCCESS:Ljava/lang/String; = "success"

.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;


# instance fields
.field private appData:Ljava/lang/String;

.field private bytesReceived:J

.field private bytesSent:J

.field private carrier:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private endTime:J

.field private errMsg:Ljava/lang/String;

.field private headers:Ljava/util/HashMap;
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

.field private httpMethod:Ljava/lang/String;

.field private netStatus:Ljava/lang/String;

.field private startTime:J

.field private state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

.field private statusCode:I

.field private url:Ljava/lang/String;

.field private wanType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->carrier:Ljava/lang/String;

    .line 33
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->wanType:Ljava/lang/String;

    .line 36
    const-string v0, "error"

    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->netStatus:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->statusCode:I

    .line 48
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->READY:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    .line 49
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->appIsForeground()Z

    move-result v0

    if-nez v0, :cond_21

    const-wide/16 v0, -0x1

    :goto_1e
    iput-wide v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->startTime:J

    .line 51
    return-void

    .line 49
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1e
.end method

.method private getLocation()Ljava/lang/String;
    .registers 5

    .prologue
    .line 212
    :try_start_0
    const-string v0, "qunar.sdk.location.LocationFacade"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 213
    const-string v1, "getNewestCacheLocation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 214
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 215
    if-eqz v0, :cond_3c

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3b

    move-result-object v0

    .line 221
    :goto_3a
    return-object v0

    .line 218
    :catch_3b
    move-exception v0

    .line 221
    :cond_3c
    const-string v0, ""

    goto :goto_3a
.end method

.method private toSaveData()Lcom/mqunar/necro/agent/bean/NetworkData;
    .registers 5

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_d

    .line 183
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "toTransactionData() called on incomplete TransactionState"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 186
    :cond_d
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->url:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 187
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Attempted to convert a TransactionState instance with no URL into a TransactionData"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    .line 206
    :goto_19
    return-object v0

    .line 190
    :cond_1a
    new-instance v1, Lcom/mqunar/necro/agent/bean/NetworkData;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/bean/NetworkData;-><init>()V

    .line 191
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->url:Ljava/lang/String;

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    .line 192
    iget-wide v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->startTime:Ljava/lang/String;

    .line 193
    iget-wide v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->endTime:Ljava/lang/String;

    .line 194
    iget-wide v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->bytesSent:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->reqSize:Ljava/lang/String;

    .line 195
    iget-wide v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->bytesReceived:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->resSize:Ljava/lang/String;

    .line 196
    iget v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->statusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6e

    const-string v0, "Unknown"

    :goto_4a
    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->httpCode:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->netStatus:Ljava/lang/String;

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->netStatus:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->topPage:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->errMsg:Ljava/lang/String;

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->hf:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->wanType:Ljava/lang/String;

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->netType:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->loc:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->carrier:Ljava/lang/String;

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->mno:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->headers:Ljava/util/HashMap;

    iput-object v0, v1, Lcom/mqunar/necro/agent/bean/NetworkData;->headers:Ljava/util/HashMap;

    move-object v0, v1

    .line 206
    goto :goto_19

    .line 196
    :cond_6e
    iget v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->statusCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a
.end method


# virtual methods
.method public end()Lcom/mqunar/necro/agent/bean/NetworkData;
    .registers 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_13

    .line 174
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->COMPLETE:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->endTime:J

    .line 176
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->exitMethod()V

    .line 178
    :cond_13
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->toSaveData()Lcom/mqunar/necro/agent/bean/NetworkData;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->COMPLETE:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->ordinal()I

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
    .line 119
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->SENT:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->ordinal()I

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
    .line 72
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 73
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->appData:Ljava/lang/String;

    .line 78
    :goto_8
    return-void

    .line 76
    :cond_9
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppData(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setBytesReceived(J)V
    .registers 6

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 157
    iput-wide p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->bytesReceived:J

    .line 162
    :goto_8
    return-void

    .line 160
    :cond_9
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBytesReceived(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setBytesSent(J)V
    .registers 6

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_d

    .line 147
    iput-wide p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->bytesSent:J

    .line 149
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->SENT:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    .line 153
    :goto_c
    return-void

    .line 151
    :cond_d
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBytesSent(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public setCarrier(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 55
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->carrier:Ljava/lang/String;

    .line 60
    :goto_8
    return-void

    .line 58
    :cond_9
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarrier(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->contentType:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 138
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->errMsg:Ljava/lang/String;

    .line 143
    :goto_8
    return-void

    .line 141
    :cond_9
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setErrorCode(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

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
    .line 165
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 166
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->headers:Ljava/util/HashMap;

    .line 170
    :goto_8
    return-void

    .line 168
    :cond_9
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeaders(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 103
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->httpMethod:Ljava/lang/String;

    .line 108
    :goto_8
    return-void

    .line 106
    :cond_9
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHttpMethod(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setStatusCode(I)V
    .registers 5

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 128
    iput p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->statusCode:I

    .line 130
    const/16 v0, 0x64

    if-le p1, v0, :cond_15

    const/16 v0, 0x18f

    if-ge p1, v0, :cond_15

    const-string v0, "success"

    :goto_12
    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->netStatus:Ljava/lang/String;

    .line 134
    :goto_14
    return-void

    .line 130
    :cond_15
    const-string v0, "error"

    goto :goto_12

    .line 132
    :cond_18
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusCode(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 81
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUrl urlString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Lcom/mqunar/necro/agent/util/Util;->sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUrl sanitizeUrl url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 84
    if-eqz v0, :cond_3e

    .line 85
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isSent()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 86
    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->url:Ljava/lang/String;

    .line 99
    :cond_3e
    :goto_3e
    return-void

    .line 96
    :cond_3f
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUrl(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public setWanType(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 64
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->wanType:Ljava/lang/String;

    .line 69
    :goto_8
    return-void

    .line 67
    :cond_9
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWanType(...) called on TransactionState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->state:Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_8
.end method
