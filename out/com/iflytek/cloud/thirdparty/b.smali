.class public Lcom/iflytek/cloud/thirdparty/b;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:I

.field private static h:I

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:J

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/Object;

.field private static r:Ljava/lang/Object;

.field private static s:Ljava/lang/Object;

.field private static t:Z

.field private static u:Z

.field private static v:Ljava/lang/String;

.field private static w:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "lxd"

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    sput-boolean v2, Lcom/iflytek/cloud/thirdparty/b;->a:Z

    sput v1, Lcom/iflytek/cloud/thirdparty/b;->c:I

    sput-boolean v1, Lcom/iflytek/cloud/thirdparty/b;->d:Z

    sput-boolean v2, Lcom/iflytek/cloud/thirdparty/b;->e:Z

    sput-boolean v1, Lcom/iflytek/cloud/thirdparty/b;->f:Z

    sput v1, Lcom/iflytek/cloud/thirdparty/b;->g:I

    sput v2, Lcom/iflytek/cloud/thirdparty/b;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "act"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "evn"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "esp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "err"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sys"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->n:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/iflytek/cloud/thirdparty/b;->o:J

    const-string v0, ""

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->q:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->r:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->s:Ljava/lang/Object;

    sput-boolean v2, Lcom/iflytek/cloud/thirdparty/b;->t:Z

    sput-boolean v2, Lcom/iflytek/cloud/thirdparty/b;->u:Z

    const-string v0, ""

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->v:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->w:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x2

    sget v0, Lcom/iflytek/cloud/thirdparty/b;->c:I

    if-eq v0, v4, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const-string v0, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "run into httppost :"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "####"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "###"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_3e
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&appkey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&channel="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&code="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x6a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MobileAgentRun"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MobileAgentRun"

    const-string v6, "post start"

    invoke-static {v5, v6}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_98
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3e .. :try_end_98} :catch_158
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_98} :catch_16c
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_98} :catch_180
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_98} :catch_196
    .catchall {:try_start_3e .. :try_end_98} :catchall_1ab

    const/16 v2, 0x2710

    :try_start_9a
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/g;->a()Lcom/iflytek/cloud/thirdparty/g;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iflytek/cloud/thirdparty/g;->a(Ljava/lang/String;)[B

    move-result-object v2

    const-string v5, "Content-length"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/octet-stream"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v2, "MobileAgentRun"

    const-string v5, "post end"

    invoke-static {v2, v5}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9a .. :try_end_f0} :catch_1cc
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_f0} :catch_1c7
    .catch Lorg/json/JSONException; {:try_start_9a .. :try_end_f0} :catch_1c3
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_f0} :catch_1b9
    .catchall {:try_start_9a .. :try_end_f0} :catchall_1b5

    const/16 v2, 0xc8

    if-ne v2, v3, :cond_fc

    :try_start_f4
    const-string v2, "MobileAgent"

    const-string v5, "send success"

    invoke-static {v2, v5}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f4 .. :try_end_fb} :catch_1cc
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fb} :catch_1c7
    .catch Lorg/json/JSONException; {:try_start_f4 .. :try_end_fb} :catch_1c3
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fb} :catch_1be
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_1b5

    move v1, v4

    :cond_fc
    if-eqz v0, :cond_101

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_101
    move v0, v1

    :goto_102
    :try_start_102
    const-string v1, "MobileAgentHttpPost"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "code:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "status:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "logJsonAry"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_130} :catch_1b2

    :goto_130
    const-string v1, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run out httppost :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultcode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_158
    move-exception v0

    :goto_159
    :try_start_159
    const-string v4, "MobileAgentRun"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_165
    .catchall {:try_start_159 .. :try_end_165} :catchall_1ab

    if-eqz v2, :cond_101

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_102

    :catch_16c
    move-exception v0

    :goto_16d
    :try_start_16d
    const-string v4, "MobileAgentRun"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_179
    .catchall {:try_start_16d .. :try_end_179} :catchall_1ab

    if-eqz v2, :cond_101

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_102

    :catch_180
    move-exception v0

    :goto_181
    :try_start_181
    const-string v1, "MobileAgentRun"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_18d
    .catchall {:try_start_181 .. :try_end_18d} :catchall_1ab

    const/4 v1, 0x3

    if-eqz v2, :cond_101

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto/16 :goto_102

    :catch_196
    move-exception v0

    :goto_197
    :try_start_197
    const-string v4, "MobileAgentRun"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a3
    .catchall {:try_start_197 .. :try_end_1a3} :catchall_1ab

    if-eqz v2, :cond_101

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto/16 :goto_102

    :catchall_1ab
    move-exception v0

    :goto_1ac
    if-eqz v2, :cond_1b1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b1
    throw v0

    :catch_1b2
    move-exception v1

    goto/16 :goto_130

    :catchall_1b5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1ac

    :catch_1b9
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_197

    :catch_1be
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move v1, v4

    goto :goto_197

    :catch_1c3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_181

    :catch_1c7
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_16d

    :catch_1cc
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_159
.end method

.method protected static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MoblieAgent_event_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    const-string v0, ""

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->n:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v0, "appKey"

    invoke-interface {v5, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "sessionId"

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lastResumeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v5, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "activities"

    const-string v1, "onResume"

    const/4 v6, 0x0

    invoke-static {p0, v1, v6}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "readFlowRev"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->o(Landroid/content/Context;)[J

    move-result-object v6

    const-string v7, "readFlowRev"

    aget-wide v8, v6, v10

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    aget-wide v7, v6, v10

    sub-long v0, v7, v0

    cmp-long v7, v0, v2

    if-gez v7, :cond_49

    move-wide v0, v2

    :cond_49
    const-string v7, "consumeFlowRev"

    invoke-interface {v5, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "readFlowSnd"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v7, "readFlowSnd"

    aget-wide v8, v6, v11

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    aget-wide v6, v6, v11

    sub-long v0, v6, v0

    cmp-long v6, v0, v2

    if-gez v6, :cond_6e

    :goto_63
    const-string v0, "consumeFlowSnd"

    invoke-interface {v5, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput-object v4, Lcom/iflytek/cloud/thirdparty/b;->p:Ljava/lang/String;

    return-object v4

    :cond_6e
    move-wide v2, v0

    goto :goto_63
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 10

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "uploadcount"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "uploadList"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x2710

    cmp-long v4, p2, v4

    if-lez v4, :cond_35

    const-wide/16 p2, 0x1

    :cond_35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "uploadList"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "uploadpopindex"

    invoke-interface {v4, v5, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x7530

    if-le v3, v4, :cond_66

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->j(Landroid/content/Context;Ljava/lang/String;)V

    :goto_64
    monitor-exit v1

    return-void

    :cond_66
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "uploadcount"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_64

    :catchall_76
    move-exception v0

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/iflytek/cloud/thirdparty/b;->c:I

    if-nez v0, :cond_c

    const-string v0, "MobileAgent"

    const-string v1, "Du have not permission to collect data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "MobileAgent"

    const-string v1, "the eventId contain illegal char"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1c
    invoke-static {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/b;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected static a(Landroid/content/Context;Z)V
    .registers 4

    if-eqz p1, :cond_14

    const-string v0, "MobileAgentRun"

    const-string v1, "run into pageact onresumep"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->h(Landroid/content/Context;)V

    :goto_c
    const-string v0, "MobileAgentRun"

    const-string v1, "run out pageact"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const-string v0, "MobileAgentRun"

    const-string v1, "run into pageact onpausep"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;)V

    goto :goto_c
.end method

.method protected static a(Landroid/content/Context;I)Z
    .registers 9

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->k(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_45

    const-string v0, "actionmonth"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "actionday"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_14
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "M"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_43

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_62

    :cond_43
    const/4 v0, 0x1

    :goto_44
    return v0

    :cond_45
    const/4 v0, 0x2

    if-ne p1, v0, :cond_55

    const-string v0, "eventmonth"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "eventday"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_14

    :cond_55
    const-string v0, "sysmonth"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "sysday"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_14

    :cond_62
    move v0, v2

    goto :goto_44
.end method

.method private static a(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .registers 7

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "eventlogs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->l(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sessionId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_24
    const-string v4, "sid"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "logJsonAry"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eventlogs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_48} :catch_4a

    :cond_48
    :goto_48
    const/4 v0, 0x1

    :goto_49
    return v0

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_48

    :cond_4f
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private static a(Landroid/content/Context;Landroid/content/SharedPreferences;Z)Z
    .registers 8

    const-string v0, "sessionId"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v3, "sid"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "logs"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_57

    const-string v0, "consumeFlowRev"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v3, "flowConsumpRev"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "consumeFlowSnd"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v3, "flowConsumpSnd"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_3b
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_55
    :goto_55
    const/4 v0, 0x1

    return v0

    :cond_57
    const-string v0, "flowConsumpRev"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "flowConsumpSnd"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_63} :catch_64

    goto :goto_3b

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_55
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_120

    const-string v4, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:postactlog"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    :try_start_15
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_e4

    :try_start_1a
    const-string v7, "sid"

    const-string v8, "sid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_25} :catch_da

    :goto_25
    :try_start_25
    const-string v6, "mac"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2e} :catch_e4

    :try_start_2e
    const-string v6, "deviceDetail"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_3d} :catch_ea
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_3d} :catch_e4

    :goto_3d
    :try_start_3d
    const-string v6, "manufacturer"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_4c} :catch_f4
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_4c} :catch_e4

    :goto_4c
    :try_start_4c
    const-string v6, "phoneOs"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_5b} :catch_fe
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_5b} :catch_e4

    :goto_5b
    :try_start_5b
    const-string v6, "accessPoint"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5b .. :try_end_6a} :catch_108
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_6a} :catch_e4

    :goto_6a
    :try_start_6a
    const-string v6, "netWorkType"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_79
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6a .. :try_end_79} :catch_112
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_79} :catch_e4

    :goto_79
    :try_start_79
    const-string v6, "uuid"

    sget-object v7, Lcom/iflytek/cloud/thirdparty/b;->v:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "deviceId"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cpuRatioMax"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cpuRatioCur"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "menoryRatio"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "logJsonAry"

    new-instance v7, Lorg/json/JSONArray;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0, v4, v5}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_c6} :catch_e4

    move-result v2

    :goto_c7
    if-eq v2, v1, :cond_cb

    if-ne v2, v3, :cond_11c

    :cond_cb
    invoke-static {p0, v3}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MobileAgent"

    const-string v2, "act log sd"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_d9
    :goto_d9
    return v0

    :catch_da
    move-exception v6

    :try_start_db
    const-string v6, "sid"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_db .. :try_end_e2} :catch_e4

    goto/16 :goto_25

    :catch_e4
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move v2, v3

    goto :goto_c7

    :catch_ea
    move-exception v6

    :try_start_eb
    const-string v6, "deviceDetail"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3d

    :catch_f4
    move-exception v6

    const-string v6, "manufacturer"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4c

    :catch_fe
    move-exception v6

    const-string v6, "phoneOs"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5b

    :catch_108
    move-exception v6

    const-string v6, "accessPoint"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6a

    :catch_112
    move-exception v6

    const-string v6, "netWorkType"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11a
    .catch Lorg/json/JSONException; {:try_start_eb .. :try_end_11a} :catch_e4

    goto/16 :goto_79

    :cond_11c
    const/4 v1, 0x2

    if-ne v2, v1, :cond_d9

    goto :goto_d9

    :cond_120
    invoke-static {p0, v3}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto :goto_d9
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-class v3, Lcom/iflytek/cloud/thirdparty/b;

    monitor-enter v3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_46

    :try_start_8
    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->i:Ljava/lang/String;

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->m(Landroid/content/Context;)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0x1

    add-long/2addr v7, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_71

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x1

    :try_start_30
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_33} :catch_5d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_74
    .catchall {:try_start_30 .. :try_end_33} :catchall_87

    move-result-object v2

    :try_start_34
    invoke-static {p0, v4, v7, v8}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3e} :catch_9b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_74
    .catchall {:try_start_34 .. :try_end_3e} :catchall_87

    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_93
    .catchall {:try_start_40 .. :try_end_43} :catchall_71

    :cond_43
    :goto_43
    move v0, v1

    :cond_44
    :goto_44
    monitor-exit v3

    return v0

    :cond_46
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4c

    :try_start_49
    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->j:Ljava/lang/String;

    goto :goto_a

    :cond_4c
    const/4 v2, 0x4

    if-ne p2, v2, :cond_52

    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->l:Ljava/lang/String;

    goto :goto_a

    :cond_52
    if-ne p2, v1, :cond_57

    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->m:Ljava/lang/String;

    goto :goto_a

    :cond_57
    const/4 v2, 0x5

    if-ne p2, v2, :cond_44

    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->k:Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_71

    goto :goto_a

    :catch_5d
    move-exception v1

    move-object v1, v2

    :goto_5f
    :try_start_5f
    const-string v2, "MobileAgentRun"

    const-string v4, "can not find log file"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_98

    if-eqz v1, :cond_44

    :try_start_68
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catchall {:try_start_68 .. :try_end_6b} :catchall_71

    goto :goto_44

    :catch_6c
    move-exception v1

    :try_start_6d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_44

    :catchall_71
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_74
    move-exception v0

    :try_start_75
    const-string v0, "MobileAgentRun"

    const-string v4, "file r/w execption"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_87

    if-eqz v2, :cond_43

    :try_start_7e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82
    .catchall {:try_start_7e .. :try_end_81} :catchall_71

    goto :goto_43

    :catch_82
    move-exception v0

    :try_start_83
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_71

    goto :goto_43

    :catchall_87
    move-exception v0

    :goto_88
    if-eqz v2, :cond_8d

    :try_start_8a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e
    .catchall {:try_start_8a .. :try_end_8d} :catchall_71

    :cond_8d
    :goto_8d
    :try_start_8d
    throw v0

    :catch_8e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8d

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_71

    goto :goto_43

    :catchall_98
    move-exception v0

    move-object v2, v1

    goto :goto_88

    :catch_9b
    move-exception v1

    move-object v1, v2

    goto :goto_5f
.end method

.method private static a(Landroid/content/SharedPreferences;)Z
    .registers 5

    const-string v0, "endTime"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MoblieAgent_event_sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected static b(Landroid/content/Context;I)V
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "M"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->k(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3c

    const-string v3, "actionmonth"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "actionday"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_38
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_3c
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4a

    const-string v3, "eventmonth"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "eventday"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_38

    :cond_4a
    const-string v3, "sysmonth"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "sysday"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_38
.end method

.method protected static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "eventlogs"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_75

    :try_start_1f
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_36} :catch_6b
    .catchall {:try_start_1f .. :try_end_36} :catchall_75

    :try_start_36
    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "eventlogs"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_36 .. :try_end_66} :catchall_75

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;Z)V

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    :try_start_6c
    const-string v0, "MobileAgentRun"

    const-string v2, "unsupport utf-8,can\'t onEvent()"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_6a

    :catchall_75
    move-exception v0

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_75

    throw v0
.end method

.method protected static b(Landroid/content/Context;Z)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x6

    sget v0, Lcom/iflytek/cloud/thirdparty/b;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    :goto_7
    return-void

    :cond_8
    const-string v0, "MobileAgentRun"

    const-string v1, "run into strategy"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->f(Landroid/content/Context;)V

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/b;->e:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/b;->e:Z

    if-eqz v0, :cond_25

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_20
    sget v0, Lcom/iflytek/cloud/thirdparty/b;->g:I

    packed-switch v0, :pswitch_data_56

    :cond_25
    :goto_25
    sput-boolean v3, Lcom/iflytek/cloud/thirdparty/b;->f:Z

    const-string v0, "MobileAgentRun"

    const-string v1, "run out strategy"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_2f
    new-instance v0, Lcom/iflytek/cloud/thirdparty/d;

    invoke-direct {v0, p0, v2}, Lcom/iflytek/cloud/thirdparty/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/d;->start()V

    goto :goto_25

    :pswitch_38
    if-eqz p1, :cond_25

    new-instance v0, Lcom/iflytek/cloud/thirdparty/d;

    invoke-direct {v0, p0, v2}, Lcom/iflytek/cloud/thirdparty/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/d;->start()V

    sput-boolean v3, Lcom/iflytek/cloud/thirdparty/b;->f:Z

    goto :goto_25

    :pswitch_45
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/iflytek/cloud/thirdparty/d;

    invoke-direct {v0, p0, v2}, Lcom/iflytek/cloud/thirdparty/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/d;->start()V

    goto :goto_25

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_38
        :pswitch_45
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .registers 7

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "eventlogs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->l(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sessionId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_24
    const-string v4, "sid"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "logJsonAry"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v1, v2}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eventlogs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_48} :catch_4a

    :cond_48
    :goto_48
    const/4 v0, 0x1

    :goto_49
    return v0

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_48

    :cond_4f
    const/4 v0, 0x0

    goto :goto_49
.end method

.method protected static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:postsyslog"

    invoke-static {p0, v1, v2}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    if-ne v1, v0, :cond_21

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_15} :catch_16

    :goto_15
    return v0

    :catch_16
    move-exception v0

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MobileAgent"

    const-string v1, "SDK del a dirty data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MoblieAgent_upload_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v7, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "eventlogs"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_87

    :try_start_20
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_37} :catch_7d
    .catchall {:try_start_20 .. :try_end_37} :catchall_87

    :try_start_37
    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "eventlogs"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v0, Lcom/iflytek/cloud/thirdparty/b;->g:I

    if-eq v0, v7, :cond_73

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_77

    :cond_73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    :cond_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_37 .. :try_end_78} :catchall_87

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;Z)V

    :goto_7c
    return-void

    :catch_7d
    move-exception v0

    :try_start_7e
    const-string v0, "MobileAgent"

    const-string v2, "unsupport utf-8,can\'t onEvent()"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_7c

    :catchall_87
    move-exception v0

    monitor-exit v1
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_87

    throw v0
.end method

.method protected static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "pid"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "protocolVersion"

    const-string v5, "3.1.4"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdkVersion"

    const-string v5, "3.2.0.2"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cid"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceId"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "appKey"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "packageName"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "versionCode"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->m(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "versionName"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:posterrlog"

    invoke-static {p0, v4, v3}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    if-eq v3, v1, :cond_69

    if-ne v3, v7, :cond_8d

    :cond_69
    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "MobileAgent"

    const-string v4, "erLog sd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MobileAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send errlog success \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_8b} :catch_91

    move v0, v1

    :cond_8c
    :goto_8c
    return v0

    :cond_8d
    const/4 v1, 0x2

    if-ne v3, v1, :cond_8c

    goto :goto_8c

    :catch_91
    move-exception v1

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "MobileAgent"

    const-string v2, "SDK del a dirty data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c
.end method

.method protected static d(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "pid"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "protocolVersion"

    const-string v2, "3.1.4"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkVersion"

    const-string v2, "3.2.0.2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cid"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appKey"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "versionCode"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->m(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "versionName"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channel"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_61} :catch_62

    :goto_61
    return-object v1

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_61
.end method

.method protected static d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->k(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "record"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/b;->t:Z

    if-eqz v0, :cond_e

    const-string v0, "MobileAgent"

    const-string v1, "already init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_e
    :try_start_e
    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/b;->a:Z

    if-nez v0, :cond_2c

    const-string v0, "MoblieAgent_debug"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "debug"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_2a
    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/b;->a:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_f2

    :cond_2c
    :goto_2c
    const-string v0, "MobileAgentAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "run in init["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_5c

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in joinDu ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_5a
    move v0, v2

    goto :goto_2a

    :cond_5c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/iflytek/cloud/thirdparty/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_6a
    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in joinDu ,appID cann\'t be null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string p2, "0"

    :cond_7a
    :goto_7a
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MoblieAgent_sys_config"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "MOBILE_APPKEY"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MOBILE_CHANNEL"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "#lxapkmd5"

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/cloud/thirdparty/f;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/thirdparty/f;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_c2
    sput-boolean v2, Lcom/iflytek/cloud/thirdparty/b;->t:Z

    const-string v0, "MobileAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish init SUCCESS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/iflytek/cloud/thirdparty/b;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_dc
    const/16 v0, 0x64

    invoke-static {p2, v0}, Lcom/iflytek/cloud/thirdparty/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7a

    const/16 v0, 0x63

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MobileAgent"

    const-string v3, "Exception occurent in joinDu ,channelID cann\'t be null or empty"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :catch_f2
    move-exception v0

    goto/16 :goto_2c
.end method

.method protected static e(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "pid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "protocolVersion"

    const-string v2, "3.1.4"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    const-string v2, "3.2.0.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cid"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appKey"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "versionCode"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->m(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "versionName"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "imsi"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceDetail"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "manufacturer"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phoneOS"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "screenWidth"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "screenHeight"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->e(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "screenDensity"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->f(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "carrierName"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accessPoint"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "countryCode"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "languageCode"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;I)V
    :try_end_fa
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_fa} :catch_fb
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_fa} :catch_100

    :cond_fa
    :goto_fa
    return-void

    :catch_fb
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_fa

    :catch_100
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_fa
.end method

.method protected static e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->k(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_d3

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_119

    :try_start_11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "pid"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "protocolVersion"

    const-string v5, "3.1.4"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdkVersion"

    const-string v5, "3.2.0.2"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cid"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appKey"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "versionCode"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->m(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "versionName"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "mac"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_69} :catch_df

    :try_start_69
    const-string v0, "deviceDetail"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_78} :catch_d6
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_78} :catch_df

    :goto_78
    :try_start_78
    const-string v0, "manufacturer"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_87
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_78 .. :try_end_87} :catch_e8
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_87} :catch_df

    :goto_87
    :try_start_87
    const-string v0, "phoneOs"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_96
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_87 .. :try_end_96} :catch_f1
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_96} :catch_df

    :goto_96
    :try_start_96
    const-string v0, "accessPoint"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_a8} :catch_df

    :try_start_a8
    const-string v0, "channel"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a8 .. :try_end_b7} :catch_fa
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_b7} :catch_df

    :goto_b7
    :try_start_b7
    const-string v0, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:posteventlog"

    invoke-static {p0, v0, v3}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    if-eq v0, v2, :cond_c1

    if-ne v0, v6, :cond_10b

    :cond_c1
    if-nez p2, :cond_103

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MobileAgent"

    const-string v1, "evn log sd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d1
    move v0, v2

    :goto_d2
    return v0

    :cond_d3
    move-object v0, p2

    goto/16 :goto_9

    :catch_d6
    move-exception v0

    const-string v0, "deviceDetail"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_de
    .catch Lorg/json/JSONException; {:try_start_b7 .. :try_end_de} :catch_df

    goto :goto_78

    :catch_df
    move-exception v0

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v2

    goto :goto_d2

    :catch_e8
    move-exception v0

    :try_start_e9
    const-string v0, "manufacturer"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_87

    :catch_f1
    move-exception v0

    const-string v0, "phoneOs"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_96

    :catch_fa
    move-exception v0

    const-string v0, "channel"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b7

    :cond_103
    const-string v0, "MobileAgent"

    const-string v1, "evnrt log sd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    :cond_10b
    const/4 v3, 0x2

    if-ne v0, v3, :cond_117

    const-string v0, "MobileAgent"

    const-string v3, "please check your network"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_115} :catch_df

    move v0, v1

    goto :goto_d2

    :cond_117
    move v0, v1

    goto :goto_d2

    :cond_119
    if-nez p2, :cond_123

    invoke-static {p0, v6}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    goto :goto_d2

    :cond_123
    move v0, v1

    goto :goto_d2
.end method

.method protected static f(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x1

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/b;->f:Z

    if-eqz v0, :cond_3b

    const-string v0, "updateonlyonwifi"

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sput-boolean v2, Lcom/iflytek/cloud/thirdparty/b;->e:Z

    :goto_15
    const-string v0, "updatedelay"

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/iflytek/cloud/thirdparty/b;->h:I

    :cond_2b
    const-string v0, "send_policy"

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/thirdparty/b;->g:I

    if-nez v0, :cond_3b

    sput v2, Lcom/iflytek/cloud/thirdparty/b;->g:I

    :cond_3b
    return-void

    :cond_3c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/b;->e:Z

    goto :goto_15
.end method

.method protected static f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "occurtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "errmsg"

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "sid"

    sget-object v3, Lcom/iflytek/cloud/thirdparty/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errjsonary"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errJso"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_5e} :catch_5f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_5e} :catch_68

    :cond_5e
    :goto_5e
    return-void

    :catch_5f
    move-exception v0

    const-string v0, "MobileAgentRun"

    const-string v1, "json exception,lost catch Exception"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :catch_68
    move-exception v0

    const-string v0, "MobileAgentRun"

    const-string v1, "unsupport utf-8,lost catch Exception"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e
.end method

.method protected static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_e5

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12b

    const-string v3, "%23lxapkmd5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_137

    move v3, v2

    :goto_1a
    :try_start_1a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "pid"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "protocolVersion"

    const-string v6, "3.1.4"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdkVersion"

    const-string v6, "3.2.0.2"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "cid"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appKey"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "versionCode"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->m(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "versionName"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "mac"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_72} :catch_f1

    :try_start_72
    const-string v0, "deviceDetail"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_81
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_72 .. :try_end_81} :catch_e8
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_81} :catch_f1

    :goto_81
    :try_start_81
    const-string v0, "manufacturer"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_81 .. :try_end_90} :catch_fa
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_90} :catch_f1

    :goto_90
    :try_start_90
    const-string v0, "phoneOs"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/h;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_90 .. :try_end_9f} :catch_103
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_9f} :catch_f1

    :goto_9f
    :try_start_9f
    const-string v0, "accessPoint"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_9f .. :try_end_b1} :catch_f1

    :try_start_b1
    const-string v0, "channel"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b1 .. :try_end_c0} :catch_10c
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_c0} :catch_f1

    :goto_c0
    :try_start_c0
    const-string v0, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:specposteventlog"

    invoke-static {p0, v0, v4}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    if-eq v0, v2, :cond_ca

    if-ne v0, v7, :cond_11d

    :cond_ca
    if-nez p2, :cond_115

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "MobileAgent"

    const-string v4, "evn log sd"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_da
    if-eqz v3, :cond_e3

    if-ne v0, v2, :cond_e3

    const-string v0, "#lxapkmd5"

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e3
    move v0, v2

    :goto_e4
    return v0

    :cond_e5
    move-object v0, p2

    goto/16 :goto_9

    :catch_e8
    move-exception v0

    const-string v0, "deviceDetail"

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f0
    .catch Lorg/json/JSONException; {:try_start_c0 .. :try_end_f0} :catch_f1

    goto :goto_81

    :catch_f1
    move-exception v0

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v2

    goto :goto_e4

    :catch_fa
    move-exception v0

    :try_start_fb
    const-string v0, "manufacturer"

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_90

    :catch_103
    move-exception v0

    const-string v0, "phoneOs"

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9f

    :catch_10c
    move-exception v0

    const-string v0, "channel"

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c0

    :cond_115
    const-string v1, "MobileAgent"

    const-string v4, "evnrt log sd"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    :cond_11d
    const/4 v3, 0x2

    if-ne v0, v3, :cond_129

    const-string v0, "MobileAgent"

    const-string v3, "please check your network"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catch Lorg/json/JSONException; {:try_start_fb .. :try_end_127} :catch_f1

    move v0, v1

    goto :goto_e4

    :cond_129
    move v0, v1

    goto :goto_e4

    :cond_12b
    if-nez p2, :cond_135

    invoke-static {p0, v7}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    goto :goto_e4

    :cond_135
    move v0, v1

    goto :goto_e4

    :cond_137
    move v3, v1

    goto/16 :goto_1a
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->k(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized g(Landroid/content/Context;)V
    .registers 7

    const-class v1, Lcom/iflytek/cloud/thirdparty/b;

    monitor-enter v1

    :try_start_3
    const-string v0, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run into uploadlist :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/iflytek/cloud/thirdparty/b;->g:I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_66

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2a

    :try_start_24
    sget v0, Lcom/iflytek/cloud/thirdparty/b;->h:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_2a} :catch_61
    .catchall {:try_start_24 .. :try_end_2a} :catchall_66

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    :try_start_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :goto_2e
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    if-nez v0, :cond_69

    :cond_3c
    const-string v0, "MobileAgentRun"

    const-string v2, " finish uploadlist "

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run out uploadlist :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_2b .. :try_end_5f} :catchall_66

    monitor-exit v1

    return-void

    :catch_61
    move-exception v0

    :try_start_62
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_2a

    :catchall_66
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_69
    const/4 v3, 0x0

    const/4 v4, 0x6

    :try_start_6b
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/iflytek/cloud/thirdparty/b;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-static {p0, v2}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_66

    move-result v0

    :cond_7b
    :goto_7b
    if-eqz v0, :cond_82

    const-wide/16 v3, 0x0

    :try_start_7f
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_82} :catch_e5
    .catchall {:try_start_7f .. :try_end_82} :catchall_66

    :cond_82
    :goto_82
    :try_start_82
    const-string v3, "MobileAgentRun"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "finish a task : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_97
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/iflytek/cloud/thirdparty/b;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/iflytek/cloud/thirdparty/b;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7b

    :cond_ab
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/iflytek/cloud/thirdparty/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-static {p0, v2}, Lcom/iflytek/cloud/thirdparty/b;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7b

    :cond_be
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/iflytek/cloud/thirdparty/b;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-static {p0, v2}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7b

    :cond_d1
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/iflytek/cloud/thirdparty/b;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/iflytek/cloud/thirdparty/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7b

    :catch_e5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_e9
    .catchall {:try_start_82 .. :try_end_e9} :catchall_66

    goto :goto_82
.end method

.method static synthetic g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/b;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-class v4, Lcom/iflytek/cloud/thirdparty/b;

    monitor-enter v4

    :try_start_3
    const-string v3, ""
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_47

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_9} :catch_35
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_4a
    .catchall {:try_start_6 .. :try_end_9} :catchall_5c

    move-result-object v2

    const/16 v0, 0x2710

    :try_start_c
    new-array v1, v0, [B
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_e} :catch_76
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_e} :catch_70
    .catchall {:try_start_c .. :try_end_e} :catchall_6e

    move-object v0, v3

    :goto_f
    :try_start_f
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_7a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_74
    .catchall {:try_start_f .. :try_end_12} :catchall_6e

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1d

    if-eqz v2, :cond_1b

    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_69
    .catchall {:try_start_18 .. :try_end_1b} :catchall_47

    :cond_1b
    :goto_1b
    monitor-exit v4

    return-object v0

    :cond_1d
    :try_start_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_33} :catch_7a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_33} :catch_74
    .catchall {:try_start_1d .. :try_end_33} :catchall_6e

    move-result-object v0

    goto :goto_f

    :catch_35
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_6e

    if-eqz v2, :cond_1b

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_47

    goto :goto_1b

    :catch_42
    move-exception v1

    :try_start_43
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_1b

    :catchall_47
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_4a
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_6e

    if-eqz v2, :cond_1b

    :try_start_53
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
    .catchall {:try_start_53 .. :try_end_56} :catchall_47

    goto :goto_1b

    :catch_57
    move-exception v1

    :try_start_58
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_47

    goto :goto_1b

    :catchall_5c
    move-exception v0

    move-object v2, v1

    :goto_5e
    if-eqz v2, :cond_63

    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_47

    :cond_63
    :goto_63
    :try_start_63
    throw v0

    :catch_64
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :catch_69
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_47

    goto :goto_1b

    :catchall_6e
    move-exception v0

    goto :goto_5e

    :catch_70
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_4e

    :catch_74
    move-exception v1

    goto :goto_4e

    :catch_76
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_39

    :catch_7a
    move-exception v1

    goto :goto_39
.end method

.method private static h(Landroid/content/Context;)V
    .registers 4

    const-string v0, "MobileAgentRun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run into onresumep :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1c
    const-string v0, "page pro"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "do resume start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->j(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3f} :catch_5c

    :goto_3f
    const-string v0, "MobileAgentRun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run out onresume :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "MobileAgentAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run in onEvent ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2e

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onEvent ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void

    :cond_2e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/iflytek/cloud/thirdparty/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_3c
    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onEvent ,channelID cann\'t be empty or length more than 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/16 v0, 0x384

    invoke-static {p2, v0}, Lcom/iflytek/cloud/thirdparty/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onEvent ,channelID cann\'t be empty or length more than 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    new-instance v0, Lcom/iflytek/cloud/thirdparty/d;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/iflytek/cloud/thirdparty/d;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/d;->start()V

    goto :goto_2d
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "onResume"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sput-wide v4, Lcom/iflytek/cloud/thirdparty/b;->o:J

    :cond_10
    :goto_10
    if-nez p2, :cond_14

    const-string p2, ""

    :cond_14
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/b;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/b;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5d
    const-string v2, "onPause"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->n:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-wide v2, Lcom/iflytek/cloud/thirdparty/b;->o:J

    sub-long v2, v4, v2

    const-wide/32 v6, 0xb71b00

    cmp-long v6, v2, v6

    if-lez v6, :cond_84

    const-wide/32 v0, 0x493e0

    goto :goto_10

    :cond_84
    cmp-long v6, v2, v0

    if-ltz v6, :cond_10

    move-wide v0, v2

    goto :goto_10
.end method

.method private static i(Landroid/content/Context;)V
    .registers 6

    const-string v0, "MobileAgentRun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run into onpausep :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->l(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "activities"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "activities"

    const-string v3, "onPause"

    invoke-static {p0, v3, v1}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "MobileAgentRun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run out onpausep :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {p0, p1}, Lcom/iflytek/cloud/thirdparty/b;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private static j(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "uploadList"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "uploadList"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v1

    return-void

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method private static j(Landroid/content/Context;)Z
    .registers 11

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "MobileAgentRun"

    const-string v3, "run into sessionpolicy"

    invoke-static {v2, v3}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->l(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "sessionId"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_71

    if-eqz v4, :cond_5a

    invoke-static {p0, v3, v0}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Z)Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "readFlowRev"

    invoke-interface {v3, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "readFlowSnd"

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v7, "readFlowRev"

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v5, "readFlowSnd"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5a
    invoke-static {p0, v2, v3}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Z)Z

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->e(Landroid/content/Context;)V

    :cond_69
    :goto_69
    const-string v1, "MobileAgentRun"

    const-string v2, "run out sessionpolicy"

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_71
    const-string v2, "activities"

    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "activities"

    const-string v6, "onResume"

    invoke-static {p0, v6, v2}, Lcom/iflytek/cloud/thirdparty/b;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "lastResumeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v4, Lcom/iflytek/cloud/thirdparty/b;->g:I

    if-eq v4, v0, :cond_9f

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_a2

    :cond_9f
    invoke-static {p0, v3, v1}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Z)Z

    :cond_a2
    move v0, v1

    goto :goto_69
.end method

.method private static k(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MoblieAgent_config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static l(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MoblieAgent_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized m(Landroid/content/Context;)J
    .registers 6

    const-class v1, Lcom/iflytek/cloud/thirdparty/b;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "uploadpopindex"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    sget-object v1, Lcom/iflytek/cloud/thirdparty/b;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v0, ""

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/b;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "uploadList"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const/4 v0, 0x0

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_24
    monitor-exit v1

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private static o(Landroid/content/Context;)Z
    .registers 3

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_17

    move v0, v1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
