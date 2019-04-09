.class public Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "SourceFile"


# static fields
.field private static final c:Lcom/mqunar/qapm/logging/AgentLog;


# instance fields
.field private a:Ljavax/net/ssl/HttpsURLConnection;

.field private b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    invoke-static {}, Lcom/mqunar/qapm/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/qapm/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c:Lcom/mqunar/qapm/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 5

    .prologue
    .line 39
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 40
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    .line 41
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "L-Uuid"

    sget-object v2, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mqunar/qapm/utils/AndroidUtils;->getTraceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static synthetic a()Lcom/mqunar/qapm/logging/AgentLog;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c:Lcom/mqunar/qapm/logging/AgentLog;

    return-object v0
.end method

.method static synthetic a(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    return-object v0
.end method

.method static synthetic a(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    return-void
.end method

.method static synthetic a(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V
    .registers 2

    .prologue
    .line 508
    invoke-static {p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 509
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    .line 499
    invoke-static {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 500
    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_15

    .line 501
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 502
    invoke-static {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 505
    :cond_15
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_13

    .line 483
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 486
    :cond_13
    return-void
.end method

.method private c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    if-nez v0, :cond_12

    .line 490
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 491
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 494
    :cond_12
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    return-object v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public connect()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 81
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 86
    return-void

    .line 82
    :catch_9
    move-exception v0

    .line 83
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 84
    throw v0
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_11

    .line 67
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 70
    :cond_11
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 71
    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 101
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContent()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_23

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v1

    .line 108
    if-ltz v1, :cond_22

    .line 109
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v3

    if-nez v3, :cond_22

    .line 111
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 112
    invoke-direct {p0, v2}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 116
    :cond_22
    return-object v0

    .line 102
    :catch_23
    move-exception v0

    .line 103
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 104
    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 124
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 131
    return-object v0

    .line 125
    :catch_d
    move-exception v0

    .line 126
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 127
    throw v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 136
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 138
    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 143
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    .line 144
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 145
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 150
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 152
    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 157
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDate()J

    move-result-wide v0

    .line 158
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 159
    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 166
    :try_start_3
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 170
    :goto_f
    return-object v0

    .line 168
    :catch_10
    move-exception v0

    .line 169
    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c:Lcom/mqunar/qapm/logging/AgentLog;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/qapm/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_f
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 258
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getExpiration()J

    move-result-wide v0

    .line 259
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 260
    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 265
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 267
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 272
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 274
    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 176
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    .line 177
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 178
    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 279
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    .line 280
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 281
    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 286
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 288
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
    .line 292
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 293
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 294
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 295
    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 300
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    .line 301
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 302
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    .line 310
    :try_start_4
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_18

    .line 316
    new-instance v2, Lcom/mqunar/qapm/network/instrumentation/c;

    invoke-direct {v2, p0, v0}, Lcom/mqunar/qapm/network/instrumentation/c;-><init>(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    invoke-virtual {v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 344
    return-object v1

    .line 311
    :catch_18
    move-exception v0

    .line 312
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 313
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 349
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v0

    .line 350
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 351
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 4

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 361
    :try_start_9
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 367
    new-instance v2, Lcom/mqunar/qapm/network/instrumentation/d;

    invoke-direct {v2, p0, v0}, Lcom/mqunar/qapm/network/instrumentation/d;-><init>(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    invoke-virtual {v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 394
    return-object v1

    .line 362
    :catch_1d
    move-exception v0

    .line 363
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 364
    throw v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

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
    .line 402
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 198
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d

    move-result v0

    .line 204
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 205
    return v0

    .line 199
    :catch_d
    move-exception v0

    .line 200
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 201
    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 213
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d

    move-result-object v0

    .line 219
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->b()V

    .line 220
    return-object v0

    .line 214
    :catch_d
    move-exception v0

    .line 215
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 216
    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_5
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 55
    :catch_7
    move-exception v0

    .line 56
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 57
    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    .line 419
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 225
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 423
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    .line 427
    return-void
.end method

.method public setDoInput(Z)V
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 431
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 435
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 229
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 467
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setIfModifiedSince(J)V

    .line 439
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 233
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 443
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_5} :catch_6

    .line 242
    return-void

    .line 238
    :catch_6
    move-exception v0

    .line 239
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 240
    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 475
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 451
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
