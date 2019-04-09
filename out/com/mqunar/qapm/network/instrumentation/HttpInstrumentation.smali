.class public final Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static a(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;
    .registers 5

    .prologue
    .line 193
    const-string v0, "L-Uuid"

    sget-object v1, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mqunar/qapm/utils/AndroidUtils;->getTraceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {p2, p0, p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/apache/http/HttpResponse;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    .registers 3

    .prologue
    .line 198
    invoke-static {p1, p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lcom/mqunar/qapm/network/instrumentation/TransactionState;",
            ")",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0, p1}, Lcom/mqunar/qapm/network/instrumentation/httpclient/ResponseHandlerImpl;->wrap(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4

    .prologue
    .line 188
    const-string v0, "L-Uuid"

    sget-object v1, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mqunar/qapm/utils/AndroidUtils;->getTraceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {p1, p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_c

    .line 182
    invoke-static {p0, p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 183
    invoke-static {p0}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 185
    :cond_c
    return-void
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 8
    .annotation build Lcom/mqunar/qapm/network/instrumentation/ReplaceCallSite;
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
    .line 83
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    .line 86
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    invoke-static {p3, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    instance-of v3, p0, Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_16

    invoke-interface {p0, p1, v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    check-cast p0, Lorg/apache/http/client/HttpClient;

    invoke-static {p0, p1, v0, v2}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_1b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_1b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_27

    move-result-object v0

    goto :goto_15

    .line 87
    :catch_1d
    move-exception v0

    .line 88
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 89
    throw v0

    .line 90
    :catch_22
    move-exception v0

    .line 91
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 92
    throw v0

    .line 93
    :catch_27
    move-exception v0

    .line 94
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 95
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 9
    .annotation build Lcom/mqunar/qapm/network/instrumentation/ReplaceCallSite;
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
    .line 65
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    .line 68
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    invoke-static {p3, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    instance-of v3, p0, Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_16

    invoke-interface {p0, p1, v0, v2, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    check-cast p0, Lorg/apache/http/client/HttpClient;

    invoke-static {p0, p1, v0, v2, p4}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_1b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_1b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_27

    move-result-object v0

    goto :goto_15

    .line 69
    :catch_1d
    move-exception v0

    .line 70
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 71
    throw v0

    .line 72
    :catch_22
    move-exception v0

    .line 73
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 74
    throw v0

    .line 75
    :catch_27
    move-exception v0

    .line 76
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 77
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 7
    .annotation build Lcom/mqunar/qapm/network/instrumentation/ReplaceCallSite;
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
    .line 149
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    .line 152
    :try_start_5
    invoke-static {p1, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {p2, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    instance-of v3, p0, Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_16

    invoke-interface {p0, v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    check-cast p0, Lorg/apache/http/client/HttpClient;

    invoke-static {p0, v0, v2}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_1b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_1b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_27

    move-result-object v0

    goto :goto_15

    .line 153
    :catch_1d
    move-exception v0

    .line 154
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 155
    throw v0

    .line 156
    :catch_22
    move-exception v0

    .line 157
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 158
    throw v0

    .line 159
    :catch_27
    move-exception v0

    .line 160
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 161
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 8
    .annotation build Lcom/mqunar/qapm/network/instrumentation/ReplaceCallSite;
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
    .line 131
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    .line 134
    :try_start_5
    invoke-static {p1, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {p2, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    instance-of v3, p0, Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_16

    invoke-interface {p0, v0, v2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    check-cast p0, Lorg/apache/http/client/HttpClient;

    invoke-static {p0, v0, v2, p3}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_1b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_1b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_27

    move-result-object v0

    goto :goto_15

    .line 135
    :catch_1d
    move-exception v0

    .line 136
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 137
    throw v0

    .line 138
    :catch_22
    move-exception v0

    .line 139
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 140
    throw v0

    .line 141
    :catch_27
    move-exception v0

    .line 142
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 143
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 6
    .annotation build Lcom/mqunar/qapm/network/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 101
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    .line 104
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    instance-of v2, p0, Lorg/apache/http/client/HttpClient;

    if-nez v2, :cond_16

    invoke-interface {p0, p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_11
    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/HttpResponse;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_16
    check-cast p0, Lorg/apache/http/client/HttpClient;

    invoke-static {p0, p1, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_22

    move-result-object v0

    goto :goto_11

    .line 105
    :catch_1d
    move-exception v0

    .line 106
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 107
    throw v0

    .line 108
    :catch_22
    move-exception v0

    .line 109
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 110
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 7
    .annotation build Lcom/mqunar/qapm/network/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 50
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    .line 53
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    instance-of v2, p0, Lorg/apache/http/client/HttpClient;

    if-nez v2, :cond_16

    invoke-interface {p0, p1, v0, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_11
    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/HttpResponse;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_16
    check-cast p0, Lorg/apache/http/client/HttpClient;

    invoke-static {p0, p1, v0, p3}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_22

    move-result-object v0

    goto :goto_11

    .line 54
    :catch_1d
    move-exception v0

    .line 55
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 56
    throw v0

    .line 57
    :catch_22
    move-exception v0

    .line 58
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 59
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 5
    .annotation build Lcom/mqunar/qapm/network/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 167
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    .line 170
    :try_start_5
    invoke-static {p1, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    instance-of v2, p0, Lorg/apache/http/client/HttpClient;

    if-nez v2, :cond_16

    invoke-interface {p0, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_11
    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/HttpResponse;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_16
    check-cast p0, Lorg/apache/http/client/HttpClient;

    invoke-static {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_22

    move-result-object v0

    goto :goto_11

    .line 171
    :catch_1d
    move-exception v0

    .line 172
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 173
    throw v0

    .line 174
    :catch_22
    move-exception v0

    .line 175
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 176
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 6
    .annotation build Lcom/mqunar/qapm/network/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 116
    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;-><init>()V

    .line 119
    :try_start_5
    invoke-static {p1, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    instance-of v2, p0, Lorg/apache/http/client/HttpClient;

    if-nez v2, :cond_16

    invoke-interface {p0, v0, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_11
    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lorg/apache/http/HttpResponse;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_16
    check-cast p0, Lorg/apache/http/client/HttpClient;

    invoke-static {p0, v0, p2}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_22

    move-result-object v0

    goto :goto_11

    .line 120
    :catch_1d
    move-exception v0

    .line 121
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 122
    throw v0

    .line 123
    :catch_22
    move-exception v0

    .line 124
    invoke-static {v1, v0}, Lcom/mqunar/qapm/network/instrumentation/HttpInstrumentation;->a(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 125
    throw v0
.end method

.method public static openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .registers 2
    .annotation build Lcom/mqunar/qapm/network/instrumentation/WrapReturn;
        className = "java/net/URL"
        methodDesc = "()Ljava/net/URLConnection;"
        methodName = "openConnection"
    .end annotation

    .prologue
    .line 36
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    move-object p0, v0

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    move-object p0, v0

    goto :goto_c
.end method

.method public static openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .registers 2
    .annotation build Lcom/mqunar/qapm/network/instrumentation/WrapReturn;
        className = "java.net.URL"
        methodDesc = "(Ljava/net/Proxy;)Ljava/net/URLConnection;"
        methodName = "openConnection"
    .end annotation

    .prologue
    .line 45
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    move-object p0, v0

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p0}, Lcom/mqunar/qapm/network/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    move-object p0, v0

    goto :goto_c
.end method
