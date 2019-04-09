.class Lcom/baidu/location/d/f;
.super Ljava/lang/Thread;


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/d/e;


# direct methods
.method constructor <init>(Lcom/baidu/location/d/e;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/d/e;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-static {v0}, Lcom/baidu/location/d/e;->a(Lcom/baidu/location/d/e;)V

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-virtual {v0}, Lcom/baidu/location/d/e;->a()V

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    iget v0, v0, Lcom/baidu/location/d/e;->i:I

    move-object v1, v2

    move v4, v0

    :goto_1b
    if-lez v4, :cond_99

    :try_start_1d
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    iget-object v3, v3, Lcom/baidu/location/d/e;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_148
    .catchall {:try_start_1d .. :try_end_30} :catchall_139

    :try_start_30
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    sget v1, Lcom/baidu/location/d/a;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v1, Lcom/baidu/location/d/a;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_df

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_64} :catch_13c
    .catchall {:try_start_30 .. :try_end_64} :catchall_ff

    move-result-object v3

    :try_start_65
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6a} :catch_142
    .catchall {:try_start_65 .. :try_end_6a} :catchall_126

    const/16 v7, 0x400

    :try_start_6c
    new-array v7, v7, [B

    :goto_6e
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_ab

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_79} :catch_7a
    .catchall {:try_start_6c .. :try_end_79} :catchall_12b

    goto :goto_6e

    :catch_7a
    move-exception v7

    move-object v11, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v11

    :goto_7f
    :try_start_7f
    sget-object v7, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v8, "NetworkCommunicationException!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_131

    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8b
    if-eqz v1, :cond_90

    :try_start_8d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_f3

    :cond_90
    :goto_90
    if-eqz v0, :cond_14e

    :try_start_92
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_f8

    move v0, v5

    move-object v1, v3

    :goto_97
    if-eqz v0, :cond_11e

    :cond_99
    if-gtz v4, :cond_123

    sget v0, Lcom/baidu/location/d/e;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/location/d/e;->o:I

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    iput-object v2, v0, Lcom/baidu/location/d/e;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-virtual {v0, v5}, Lcom/baidu/location/d/e;->a(Z)V

    :goto_aa
    return-void

    :cond_ab
    :try_start_ab
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v7, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "utf-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v7, Lcom/baidu/location/d/e;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/baidu/location/d/e;->a(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c9} :catch_7a
    .catchall {:try_start_ab .. :try_end_c9} :catchall_12b

    move-object v7, v3

    move-object v3, v1

    move v1, v6

    :goto_cc
    if-eqz v0, :cond_d1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d1
    if-eqz v7, :cond_d6

    :try_start_d3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_e6

    :cond_d6
    :goto_d6
    if-eqz v3, :cond_152

    :try_start_d8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_eb

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_97

    :cond_df
    :try_start_df
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_13c
    .catchall {:try_start_df .. :try_end_e2} :catchall_ff

    move v1, v5

    move-object v3, v2

    move-object v7, v2

    goto :goto_cc

    :catch_e6
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d6

    :catch_eb
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_97

    :catch_f3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_90

    :catch_f8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v5

    move-object v1, v3

    goto :goto_97

    :catchall_ff
    move-exception v1

    move-object v3, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_104
    if-eqz v1, :cond_109

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_109
    if-eqz v3, :cond_10e

    :try_start_10b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_114

    :cond_10e
    :goto_10e
    if-eqz v2, :cond_113

    :try_start_110
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_119

    :cond_113
    :goto_113
    throw v0

    :catch_114
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10e

    :catch_119
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_113

    :cond_11e
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_1b

    :cond_123
    sput v5, Lcom/baidu/location/d/e;->o:I

    goto :goto_aa

    :catchall_126
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_104

    :catchall_12b
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_104

    :catchall_131
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    move-object v12, v1

    move-object v1, v3

    move-object v3, v12

    goto :goto_104

    :catchall_139
    move-exception v0

    move-object v3, v2

    goto :goto_104

    :catch_13c
    move-exception v1

    move-object v1, v2

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_7f

    :catch_142
    move-exception v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_7f

    :catch_148
    move-exception v0

    move-object v0, v2

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_7f

    :cond_14e
    move v0, v5

    move-object v1, v3

    goto/16 :goto_97

    :cond_152
    move v11, v1

    move-object v1, v0

    move v0, v11

    goto/16 :goto_97
.end method
