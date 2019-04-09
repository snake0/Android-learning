.class public Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "SourceFile"


# static fields
.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;


# instance fields
.field private impl:Ljavax/net/ssl/HttpsURLConnection;

.field private transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 5

    .prologue
    .line 37
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 38
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    .line 39
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "L-Uuid"

    sget-object v2, Lcom/mqunar/necro/agent/NecroUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mqunar/necro/agent/util/AndroidUtils;->getTraceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    return-object v0
.end method

.method static synthetic access$200()Lcom/mqunar/necro/agent/logging/AgentLog;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->addTransactionAndErrorData(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    return-void
.end method

.method private addTransactionAndErrorData(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V
    .registers 2

    .prologue
    .line 506
    invoke-static {p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    .line 507
    return-void
.end method

.method private checkResponse()V
    .registers 3

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_13

    .line 481
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 484
    :cond_13
    return-void
.end method

.method private error(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    move-result-object v0

    .line 497
    invoke-static {v0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 498
    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_15

    .line 499
    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 500
    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    .line 503
    :cond_15
    return-void
.end method

.method private getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;
    .registers 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    if-nez v0, :cond_12

    .line 488
    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 489
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 492
    :cond_12
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    return-object v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public connect()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 79
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 84
    return-void

    .line 80
    :catch_9
    move-exception v0

    .line 81
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 82
    throw v0
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_11

    .line 65
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->addTransactionAndErrorData(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    .line 68
    :cond_11
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 69
    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 99
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContent()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_23

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v1

    .line 106
    if-ltz v1, :cond_22

    .line 107
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v3

    if-nez v3, :cond_22

    .line 109
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 110
    invoke-direct {p0, v2}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->addTransactionAndErrorData(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    .line 114
    :cond_22
    return-object v0

    .line 100
    :catch_23
    move-exception v0

    .line 101
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 102
    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 122
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d

    move-result-object v0

    .line 128
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 129
    return-object v0

    .line 123
    :catch_d
    move-exception v0

    .line 124
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 125
    throw v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 134
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 136
    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 141
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    .line 142
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 143
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 148
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 150
    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 155
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDate()J

    move-result-wide v0

    .line 156
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 157
    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 164
    :try_start_3
    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;

    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 168
    :goto_f
    return-object v0

    .line 166
    :catch_10
    move-exception v0

    .line 167
    sget-object v1, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_f
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 256
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getExpiration()J

    move-result-wide v0

    .line 257
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 258
    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 263
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 265
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 270
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 272
    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 174
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    .line 175
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 176
    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 277
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    .line 278
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 279
    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 284
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 286
    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 291
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 292
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 293
    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 298
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    .line 299
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 300
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    move-result-object v0

    .line 308
    :try_start_4
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_18

    .line 314
    new-instance v2, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;

    invoke-direct {v2, p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;-><init>(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    invoke-virtual {v1, v2}, Lcom/mqunar/necro/agent/instrumentation/io/CountingInputStream;->addStreamCompleteListener(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListener;)V

    .line 342
    return-object v1

    .line 309
    :catch_18
    move-exception v0

    .line 310
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 311
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 347
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v0

    .line 348
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 349
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 4

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->parseConnectionHeader(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 359
    :try_start_9
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/io/CountingOutputStream;

    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mqunar/necro/agent/instrumentation/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 365
    new-instance v2, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;

    invoke-direct {v2, p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;-><init>(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    invoke-virtual {v1, v2}, Lcom/mqunar/necro/agent/instrumentation/io/CountingOutputStream;->addStreamCompleteListener(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListener;)V

    .line 392
    return-object v1

    .line 360
    :catch_1d
    move-exception v0

    .line 361
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 362
    throw v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 196
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d

    move-result v0

    .line 202
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 203
    return v0

    .line 197
    :catch_d
    move-exception v0

    .line 198
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 199
    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->getTransactionState()Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 211
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d

    move-result-object v0

    .line 217
    invoke-direct {p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->checkResponse()V

    .line 218
    return-object v0

    .line 212
    :catch_d
    move-exception v0

    .line 213
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 214
    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_5
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 53
    :catch_7
    move-exception v0

    .line 54
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 55
    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    .line 417
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 223
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 421
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    .line 425
    return-void
.end method

.method public setDoInput(Z)V
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 429
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 433
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 227
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 465
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setIfModifiedSince(J)V

    .line 437
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 231
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 441
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_5} :catch_6

    .line 240
    return-void

    .line 236
    :catch_6
    move-exception v0

    .line 237
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 238
    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 473
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 449
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
