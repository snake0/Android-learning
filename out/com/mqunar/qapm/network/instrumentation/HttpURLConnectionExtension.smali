.class public Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"


# static fields
.field private static final c:Lcom/mqunar/qapm/logging/AgentLog;


# instance fields
.field private a:Ljava/net/HttpURLConnection;

.field private b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/mqunar/qapm/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/qapm/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c:Lcom/mqunar/qapm/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 5

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 33
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    .line 34
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    const-string v1, "L-Uuid"

    sget-object v2, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mqunar/qapm/utils/AndroidUtils;->getTraceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method static synthetic a()Lcom/mqunar/qapm/logging/AgentLog;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c:Lcom/mqunar/qapm/logging/AgentLog;

    return-object v0
.end method

.method static synthetic a(Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;)Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic a(Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    return-void
.end method

.method static synthetic a(Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V
    .registers 2

    .prologue
    .line 463
    invoke-static {p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 464
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    .line 453
    invoke-static {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 454
    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_15

    .line 455
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 456
    invoke-static {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 459
    :cond_15
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_13

    .line 437
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 440
    :cond_13
    return-void
.end method

.method private c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;
    .registers 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    if-nez v0, :cond_12

    .line 444
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 445
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 448
    :cond_12
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    return-object v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public connect()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 57
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 62
    return-void

    .line 58
    :catch_9
    move-exception v0

    .line 59
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 60
    throw v0
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_11

    .line 43
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 46
    :cond_11
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 77
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_23

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 84
    if-ltz v1, :cond_22

    .line 85
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v3

    if-nez v3, :cond_22

    .line 87
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 88
    invoke-direct {p0, v2}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 92
    :cond_22
    return-object v0

    .line 78
    :catch_23
    move-exception v0

    .line 79
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 80
    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 100
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d

    move-result-object v0

    .line 106
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 107
    return-object v0

    .line 101
    :catch_d
    move-exception v0

    .line 102
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 103
    throw v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 112
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 114
    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 119
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 120
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 121
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 126
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 128
    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 133
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    .line 134
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 135
    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 142
    :try_start_3
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 146
    :goto_f
    return-object v0

    .line 144
    :catch_10
    move-exception v0

    .line 145
    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c:Lcom/mqunar/qapm/logging/AgentLog;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/qapm/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_f
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 236
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    .line 237
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 238
    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 243
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 245
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 250
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 252
    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 152
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    .line 153
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 154
    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 257
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    .line 258
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 259
    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 264
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 266
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
    .line 270
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 271
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 272
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 273
    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 278
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    .line 279
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 280
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    .line 288
    :try_start_4
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_18

    .line 294
    new-instance v2, Lcom/mqunar/qapm/network/instrumentation/a;

    invoke-direct {v2, p0, v0}, Lcom/mqunar/qapm/network/instrumentation/a;-><init>(Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    invoke-virtual {v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 322
    return-object v1

    .line 289
    :catch_18
    move-exception v0

    .line 290
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 291
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 327
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    .line 328
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 329
    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 4

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V

    .line 339
    :try_start_9
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 345
    new-instance v2, Lcom/mqunar/qapm/network/instrumentation/b;

    invoke-direct {v2, p0, v0}, Lcom/mqunar/qapm/network/instrumentation/b;-><init>(Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    invoke-virtual {v1, v2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 372
    return-object v1

    .line 340
    :catch_1d
    move-exception v0

    .line 341
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 342
    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

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
    .line 380
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 174
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d

    move-result v0

    .line 180
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 181
    return v0

    .line 175
    :catch_d
    move-exception v0

    .line 176
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 177
    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 189
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d

    move-result-object v0

    .line 195
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->b()V

    .line 196
    return-object v0

    .line 190
    :catch_d
    move-exception v0

    .line 191
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 192
    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 397
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 201
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 401
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 405
    return-void
.end method

.method public setDoInput(Z)V
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 409
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 413
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 205
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 417
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 209
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 421
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->c()Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 215
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_8} :catch_9

    .line 220
    return-void

    .line 216
    :catch_9
    move-exception v0

    .line 217
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a(Ljava/lang/Exception;)V

    .line 218
    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 429
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
