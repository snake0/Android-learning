.class public Lcom/iflytek/cloud/thirdparty/by;
.super Ljava/lang/Thread;


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/iflytek/cloud/thirdparty/by$a;

.field private volatile c:Z

.field private d:Ljava/net/URL;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Object;

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/by;->a:I

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/by;->b:Lcom/iflytek/cloud/thirdparty/by$a;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/by;->c:Z

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/by;->d:Ljava/net/URL;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->e:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/by;->g:Ljava/lang/Object;

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/by;->h:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_38
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->b:Lcom/iflytek/cloud/thirdparty/by$a;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/by;->c:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->b:Lcom/iflytek/cloud/thirdparty/by$a;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/thirdparty/by$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_8
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 9

    const/4 v6, 0x0

    const/16 v0, 0x400

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    new-array v3, v0, [B

    :goto_f
    iget-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/by;->c:Z

    if-nez v4, :cond_1e

    invoke-virtual {v1, v3, v6, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1e

    invoke-virtual {v2, v3, v6, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    goto :goto_f

    :cond_1e
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private b([B)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->b:Lcom/iflytek/cloud/thirdparty/by$a;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/by;->c:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->b:Lcom/iflytek/cloud/thirdparty/by$a;

    invoke-interface {v0, p0, p1}, Lcom/iflytek/cloud/thirdparty/by$a;->a(Lcom/iflytek/cloud/thirdparty/by;[B)V

    goto :goto_8
.end method

.method private c()V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "Start connect server"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_cc
    .catchall {:try_start_1 .. :try_end_12} :catchall_b3

    :try_start_12
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/by;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/by;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v3, v1, :cond_55

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_42} :catch_7a
    .catchall {:try_start_12 .. :try_end_42} :catchall_c2

    move-result-object v2

    :try_start_43
    invoke-direct {p0, v2}, Lcom/iflytek/cloud/thirdparty/by;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/cloud/thirdparty/by;->b([B)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_cf
    .catchall {:try_start_43 .. :try_end_4a} :catchall_c2

    :goto_4a
    if-eqz v2, :cond_4f

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4f
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_54} :catch_d5

    :cond_54
    :goto_54
    return-void

    :cond_55
    :try_start_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MscHttpRequest connect error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/iflytek/cloud/SpeechError;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2ee0

    invoke-direct {v3, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/iflytek/cloud/thirdparty/by;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_79} :catch_7a
    .catchall {:try_start_55 .. :try_end_79} :catchall_c2

    goto :goto_4a

    :catch_7a
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_7f
    :try_start_7f
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MscHttpRequest error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v3, 0x4e23

    invoke-direct {v0, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/by;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_a6
    .catchall {:try_start_7f .. :try_end_a6} :catchall_c7

    if-eqz v1, :cond_ab

    :try_start_a8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_ab
    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b0} :catch_b1

    goto :goto_54

    :catch_b1
    move-exception v0

    goto :goto_54

    :catchall_b3
    move-exception v0

    move-object v1, v2

    :goto_b5
    if-eqz v2, :cond_ba

    :try_start_b7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_ba
    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bf} :catch_c0

    :cond_bf
    :goto_bf
    throw v0

    :catch_c0
    move-exception v1

    goto :goto_bf

    :catchall_c2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_b5

    :catchall_c7
    move-exception v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_b5

    :catch_cc
    move-exception v0

    move-object v1, v2

    goto :goto_7f

    :catch_cf
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_7f

    :catch_d5
    move-exception v0

    goto/16 :goto_54
.end method

.method private d()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_19
    return v2
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/by;->c:Z

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/by;->h:I

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/by$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/by;->b:Lcom/iflytek/cloud/thirdparty/by$a;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/by;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p3}, Lcom/iflytek/cloud/thirdparty/by;->a([B)V

    :try_start_8
    invoke-static {p1, p2}, Lcom/iflytek/cloud/thirdparty/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->d:Ljava/net/URL;
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 5

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/by;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/by;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public a([B)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public b()V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "MscHttpRequest start Post"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/by;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_126
    .catchall {:try_start_1 .. :try_end_12} :catchall_11c

    const/4 v1, 0x1

    :try_start_13
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/by;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/by;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Content-length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/by;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/x-gzip"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/by;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/by;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "X-Par"

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/by;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_8f} :catch_90
    .catchall {:try_start_13 .. :try_end_8f} :catchall_10b

    goto :goto_80

    :catch_90
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_95
    :try_start_95
    new-instance v3, Lcom/iflytek/cloud/SpeechError;

    const/16 v4, 0x4e23

    invoke-direct {v3, v4}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/iflytek/cloud/thirdparty/by;->a(Lcom/iflytek/cloud/SpeechError;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MscHttpRequest error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_95 .. :try_end_b9} :catchall_11f

    if-eqz v1, :cond_be

    :try_start_bb
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_be
    if-eqz v2, :cond_c3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c3} :catch_124

    :cond_c3
    :goto_c3
    return-void

    :cond_c4
    :try_start_c4
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v3, v1, :cond_ea

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d5} :catch_90
    .catchall {:try_start_c4 .. :try_end_d5} :catchall_10b

    move-result-object v2

    :try_start_d6
    invoke-direct {p0, v2}, Lcom/iflytek/cloud/thirdparty/by;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/cloud/thirdparty/by;->b([B)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_dd} :catch_12a
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_10b

    :goto_dd
    if-eqz v2, :cond_e2

    :try_start_df
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_e2
    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e7} :catch_e8

    goto :goto_c3

    :catch_e8
    move-exception v0

    goto :goto_c3

    :cond_ea
    :try_start_ea
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http Request Failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/iflytek/cloud/SpeechError;

    add-int/lit16 v1, v1, 0x2ee0

    invoke-direct {v3, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/iflytek/cloud/thirdparty/by;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_10a} :catch_90
    .catchall {:try_start_ea .. :try_end_10a} :catchall_10b

    goto :goto_dd

    :catchall_10b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_10f
    if-eqz v2, :cond_114

    :try_start_111
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_114
    if-eqz v1, :cond_119

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_119} :catch_11a

    :cond_119
    :goto_119
    throw v0

    :catch_11a
    move-exception v1

    goto :goto_119

    :catchall_11c
    move-exception v0

    move-object v1, v2

    goto :goto_10f

    :catchall_11f
    move-exception v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_10f

    :catch_124
    move-exception v0

    goto :goto_c3

    :catch_126
    move-exception v0

    move-object v1, v2

    goto/16 :goto_95

    :catch_12a
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto/16 :goto_95
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/by;->a:I

    return-void
.end method

.method public run()V
    .registers 3

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/by;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/by;->b()V

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/by;->c()V

    goto :goto_8
.end method
