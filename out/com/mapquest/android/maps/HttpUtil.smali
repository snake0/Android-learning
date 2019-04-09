.class public final Lcom/mapquest/android/maps/HttpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final READ_TIMEOUT:I = 0x7530


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/mapquest/android/maps/HttpUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/HttpUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 171
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2b} :catch_2c
    .catchall {:try_start_f .. :try_end_2b} :catchall_46

    goto :goto_f

    .line 179
    :catch_2c
    move-exception v0

    .line 180
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_46

    .line 183
    :try_start_30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_41

    .line 190
    :goto_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_33

    .line 184
    :catch_3c
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 184
    :catch_41
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 182
    :catchall_46
    move-exception v0

    .line 183
    :try_start_47
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 186
    :goto_4a
    throw v0

    .line 184
    :catch_4b
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a
.end method

.method public static executeAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/mapquest/android/maps/HttpUtil;->executeAsStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static executeAsStream(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 133
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0, p1}, Lcom/mapquest/android/maps/HttpUtil;->executeAsStream(Ljava/lang/String;Ljava/util/Map;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static executeAsStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 137
    const/16 v0, 0x2710

    invoke-static {p0, p1, v0}, Lcom/mapquest/android/maps/HttpUtil;->executeAsStream(Ljava/lang/String;Ljava/util/Map;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static executeAsStream(Ljava/lang/String;Ljava/util/Map;I)Ljava/io/InputStream;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 141
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {p2, p2}, Lcom/mapquest/android/maps/HttpUtil;->getHttpConnectionParams(II)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 142
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 146
    if-eqz p1, :cond_34

    .line 147
    :try_start_11
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 149
    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 150
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    invoke-virtual {v5, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_2f

    goto :goto_19

    .line 161
    :catch_2f
    move-exception v1

    .line 162
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 167
    :goto_33
    return-object v4

    .line 156
    :cond_34
    :try_start_34
    instance-of v1, v3, Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_48

    invoke-virtual {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 157
    :goto_3c
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_51

    .line 159
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    :goto_46
    move-object v4, v1

    .line 165
    goto :goto_33

    .line 156
    :cond_48
    move-object v0, v3

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v1, v0

    invoke-static {v1, v5}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4f} :catch_2f

    move-result-object v1

    goto :goto_3c

    :cond_51
    move-object v1, v4

    goto :goto_46
.end method

.method public static executePostAsStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    const/16 v9, 0xcc

    const/4 v4, 0x0

    .line 82
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    const/16 v1, 0x2710

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/HttpUtil;->getHttpConnectionParams(II)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 83
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 88
    :try_start_15
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 91
    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 92
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_41
    .catchall {:try_start_15 .. :try_end_40} :catchall_7f

    goto :goto_26

    .line 117
    :catch_41
    move-exception v1

    .line 118
    :try_start_42
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_7f

    :cond_45
    move-object v1, v4

    .line 122
    :goto_46
    return-object v1

    .line 96
    :cond_47
    :try_start_47
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 97
    instance-of v1, v3, Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_67

    invoke-virtual {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 98
    :goto_57
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 101
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_70

    if-eq v2, v9, :cond_70

    move-object v1, v4

    .line 104
    goto :goto_46

    .line 97
    :cond_67
    move-object v0, v3

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v1, v0

    invoke-static {v1, v5}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_57

    .line 107
    :cond_70
    if-ne v2, v9, :cond_74

    move-object v1, v4

    .line 109
    goto :goto_46

    .line 112
    :cond_74
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_45

    .line 114
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_7d} :catch_41
    .catchall {:try_start_47 .. :try_end_7d} :catchall_7f

    move-result-object v1

    goto :goto_46

    .line 124
    :catchall_7f
    move-exception v1

    throw v1
.end method

.method private static getHttpConnectionParams(II)Lorg/apache/http/params/HttpParams;
    .registers 4

    .prologue
    .line 71
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 72
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 73
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 74
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 76
    if-lez p0, :cond_23

    :goto_1a
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    if-lez p1, :cond_26

    :goto_1f
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    return-object v0

    .line 76
    :cond_23
    const/16 p0, 0x2710

    goto :goto_1a

    .line 77
    :cond_26
    const/16 p1, 0xbb8

    goto :goto_1f
.end method

.method public static runPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/mapquest/android/maps/HttpUtil;->executePostAsStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_e

    .line 35
    invoke-static {v1}, Lcom/mapquest/android/maps/HttpUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_10

    .line 45
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 39
    :catch_10
    move-exception v1

    goto :goto_d
.end method

.method public static runRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/mapquest/android/maps/HttpUtil;->runRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/mapquest/android/maps/HttpUtil;->executeAsStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_e

    .line 52
    invoke-static {v1}, Lcom/mapquest/android/maps/HttpUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_10

    .line 62
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 56
    :catch_10
    move-exception v1

    goto :goto_d
.end method
