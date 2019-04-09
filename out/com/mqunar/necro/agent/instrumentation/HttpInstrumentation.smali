.class public final Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static _(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;
    .registers 5

    .prologue
    .line 192
    const-string v0, "L-Uuid"

    sget-object v1, Lcom/mqunar/necro/agent/NecroUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mqunar/necro/agent/util/AndroidUtils;->getTraceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p2, p0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private static _(Lorg/apache/http/HttpResponse;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    .registers 3

    .prologue
    .line 197
    invoke-static {p1, p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static _(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lcom/mqunar/necro/agent/instrumentation/TransactionState;",
            ")",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0, p1}, Lcom/mqunar/necro/agent/instrumentation/httpclient/ResponseHandlerImpl;->wrap(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v0

    return-object v0
.end method

.method private static _(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4

    .prologue
    .line 187
    const-string v0, "L-Uuid"

    sget-object v1, Lcom/mqunar/necro/agent/NecroUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mqunar/necro/agent/util/AndroidUtils;->getTraceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p1, p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 7
    .annotation build Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;-><init>()V

    .line 85
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    invoke-static {p3, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    invoke-interface {p0, p1, v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_1c

    move-result-object v0

    return-object v0

    .line 86
    :catch_12
    move-exception v0

    .line 87
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 88
    throw v0

    .line 89
    :catch_17
    move-exception v0

    .line 90
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 91
    throw v0

    .line 92
    :catch_1c
    move-exception v0

    .line 93
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 94
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 8
    .annotation build Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;-><init>()V

    .line 67
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    invoke-static {p3, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    invoke-interface {p0, p1, v0, v2, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_1c

    move-result-object v0

    return-object v0

    .line 68
    :catch_12
    move-exception v0

    .line 69
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 70
    throw v0

    .line 71
    :catch_17
    move-exception v0

    .line 72
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 73
    throw v0

    .line 74
    :catch_1c
    move-exception v0

    .line 75
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 76
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 6
    .annotation build Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;-><init>()V

    .line 151
    :try_start_5
    invoke-static {p1, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {p2, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_1c

    move-result-object v0

    return-object v0

    .line 152
    :catch_12
    move-exception v0

    .line 153
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 154
    throw v0

    .line 155
    :catch_17
    move-exception v0

    .line 156
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 157
    throw v0

    .line 158
    :catch_1c
    move-exception v0

    .line 159
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 160
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 7
    .annotation build Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;-><init>()V

    .line 133
    :try_start_5
    invoke-static {p1, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {p2, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    invoke-interface {p0, v0, v2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_1c

    move-result-object v0

    return-object v0

    .line 134
    :catch_12
    move-exception v0

    .line 135
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 136
    throw v0

    .line 137
    :catch_17
    move-exception v0

    .line 138
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 139
    throw v0

    .line 140
    :catch_1c
    move-exception v0

    .line 141
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 142
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 5
    .annotation build Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 100
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;-><init>()V

    .line 103
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpResponse;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_17

    move-result-object v0

    return-object v0

    .line 104
    :catch_12
    move-exception v0

    .line 105
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 106
    throw v0

    .line 107
    :catch_17
    move-exception v0

    .line 108
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 109
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 6
    .annotation build Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 49
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;-><init>()V

    .line 52
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    invoke-interface {p0, p1, v0, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpResponse;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_17

    move-result-object v0

    return-object v0

    .line 53
    :catch_12
    move-exception v0

    .line 54
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 55
    throw v0

    .line 56
    :catch_17
    move-exception v0

    .line 57
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 58
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation build Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 166
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;-><init>()V

    .line 169
    :try_start_5
    invoke-static {p1, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpResponse;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_17

    move-result-object v0

    return-object v0

    .line 170
    :catch_12
    move-exception v0

    .line 171
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 172
    throw v0

    .line 173
    :catch_17
    move-exception v0

    .line 174
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 175
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .annotation build Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 115
    new-instance v1, Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;-><init>()V

    .line 118
    :try_start_5
    invoke-static {p1, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpResponse;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_17

    move-result-object v0

    return-object v0

    .line 119
    :catch_12
    move-exception v0

    .line 120
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 121
    throw v0

    .line 122
    :catch_17
    move-exception v0

    .line 123
    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 124
    throw v0
.end method

.method private static httpClientError(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_c

    .line 181
    invoke-static {p0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 182
    invoke-static {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    .line 184
    :cond_c
    return-void
.end method

.method public static openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .registers 2
    .annotation build Lcom/mqunar/necro/agent/instrumentation/WrapReturn;
        className = "java/net/URL"
        methodDesc = "()Ljava/net/URLConnection;"
        methodName = "openConnection"
    .end annotation

    .prologue
    .line 35
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    move-object p0, v0

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p0}, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    move-object p0, v0

    goto :goto_c
.end method

.method public static openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .registers 2
    .annotation build Lcom/mqunar/necro/agent/instrumentation/WrapReturn;
        className = "java.net.URL"
        methodDesc = "(Ljava/net/Proxy;)Ljava/net/URLConnection;"
        methodName = "openConnection"
    .end annotation

    .prologue
    .line 44
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    move-object p0, v0

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p0}, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    move-object p0, v0

    goto :goto_c
.end method
