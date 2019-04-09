.class public final Lcom/baidu/techain/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, p2, v0, v0}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 14

    .prologue
    .line 52
    invoke-static {p0}, Lcom/baidu/techain/b/e;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 54
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 55
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {}, Lcom/baidu/techain/core/i;->a()[B

    move-result-object v4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ae

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1017
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1018
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1019
    invoke-static {v5, v0}, Lcom/baidu/techain/b/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1020
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 1022
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1023
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1025
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 67
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Lcom/baidu/techain/ac/F;->ae([B[B)[B

    move-result-object v0

    .line 72
    :goto_7f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 74
    invoke-static {p0}, Lcom/baidu/techain/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 77
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/baidu/techain/ac/F;->re([B[B)[B

    move-result-object v4

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 80
    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/120/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/"

    .line 84
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_115

    .line 86
    const-string v1, "?skey="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v4, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_115
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 89
    const-string v1, ""

    .line 91
    if-eqz p4, :cond_1b6

    .line 92
    :try_start_11c
    new-instance v0, Lcom/baidu/techain/b/m;

    invoke-direct {v0, p0}, Lcom/baidu/techain/b/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/techain/b/m;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_128} :catch_1c5

    move-result-object v0

    .line 99
    :goto_129
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 100
    if-eqz p3, :cond_208

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_208

    .line 1137
    :try_start_134
    new-instance v2, Lcom/baidu/techain/e;

    invoke-direct {v2, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1220
    iget-object v0, v2, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "pu_cl_fd"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1221
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_154

    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1223
    invoke-virtual {v2}, Lcom/baidu/techain/e;->j()V

    .line 1138
    :cond_154
    sub-long v0, v3, v0

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v0, v3

    if-lez v0, :cond_1ee

    .line 1139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1140
    invoke-static {p0}, Lcom/baidu/techain/b/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 1141
    const-string v1, "0"

    invoke-virtual {v2}, Lcom/baidu/techain/e;->l()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const-string v1, "1"

    invoke-virtual {v2}, Lcom/baidu/techain/e;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    :goto_184
    iget-object v1, v2, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "mo_fa_pu_cl"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1262
    iget-object v1, v2, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2252
    iget-object v1, v2, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "wi_fa_pu_cl"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2253
    iget-object v1, v2, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1149
    invoke-virtual {v2}, Lcom/baidu/techain/e;->j()V

    .line 1150
    const-string v1, "1003112"

    invoke-static {p0, v1, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1a6
    .catch Ljava/lang/Throwable; {:try_start_134 .. :try_end_1a6} :catch_1e9

    .line 102
    :goto_1a6
    new-instance v0, Landroid/accounts/NetworkErrorException;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1ae
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_7f

    .line 94
    :cond_1b6
    :try_start_1b6
    new-instance v2, Lcom/baidu/techain/b/m;

    invoke-direct {v2, p0}, Lcom/baidu/techain/b/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/baidu/techain/b/m;->a(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_1c2
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1c2} :catch_1c5

    move-result-object v0

    goto/16 :goto_129

    .line 97
    :catch_1c5
    move-exception v0

    move-object v0, v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_129

    .line 1144
    :cond_1cc
    :try_start_1cc
    const-string v1, "0"

    invoke-virtual {v2}, Lcom/baidu/techain/e;->l()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    const-string v1, "1"

    invoke-virtual {v2}, Lcom/baidu/techain/e;->m()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e8
    .catch Ljava/lang/Throwable; {:try_start_1cc .. :try_end_1e8} :catch_1e9

    goto :goto_184

    .line 1159
    :catch_1e9
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1a6

    .line 1152
    :cond_1ee
    :try_start_1ee
    invoke-static {p0}, Lcom/baidu/techain/b/e;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 1153
    invoke-virtual {v2}, Lcom/baidu/techain/e;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/baidu/techain/e;->a(I)V

    goto :goto_1a6

    .line 1155
    :cond_1fe
    invoke-virtual {v2}, Lcom/baidu/techain/e;->m()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/baidu/techain/e;->b(I)V
    :try_end_207
    .catch Ljava/lang/Throwable; {:try_start_1ee .. :try_end_207} :catch_1e9

    goto :goto_1a6

    .line 109
    :cond_208
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v0, "skey"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 114
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 117
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/baidu/techain/ac/F;->rd([B[B)[B

    move-result-object v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 119
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v3, "request_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 123
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 125
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/baidu/techain/ac/F;->ad([B[B)[B

    move-result-object v0

    .line 126
    if-eqz v1, :cond_297

    array-length v1, v1

    if-lez v1, :cond_297

    if-eqz v0, :cond_28c

    array-length v1, v0

    if-nez v1, :cond_297

    .line 128
    :cond_28c
    invoke-static {p0}, Lcom/baidu/techain/b/e;->k(Landroid/content/Context;)V

    .line 129
    new-instance v0, Landroid/accounts/NetworkErrorException;

    const-string v1, "aes is fail"

    invoke-direct {v0, v1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_297
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 132
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 220
    .line 222
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 224
    const-string v1, "pkg"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_d9

    move-result-object v4

    .line 226
    const/4 v1, 0x0

    .line 228
    const/16 v5, 0x40

    :try_start_16
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_d3

    move-result-object v1

    .line 232
    :goto_1a
    if-eqz v1, :cond_f8

    .line 233
    :try_start_1c
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 234
    invoke-static {v1, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 235
    if-eqz v3, :cond_ef

    .line 236
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 237
    if-eqz v3, :cond_50

    .line 238
    invoke-static {p0, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;[B)V

    .line 239
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 240
    const-string v5, "\n"

    const-string v6, ""

    .line 241
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\r"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    const-string v5, "sign"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 248
    :cond_50
    :goto_50
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v1}, Lcom/baidu/techain/b/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v3, "app"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    :goto_63
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/techain/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "p/1/auh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    const/4 v3, 0x0

    .line 261
    invoke-static {p0, v2, v1, v3}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 264
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_d2

    .line 266
    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 267
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 268
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_d2

    .line 269
    const-string v1, "ak"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v3, "sk"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d2

    .line 272
    invoke-static {p0}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_c4} :catch_d9

    move-result-object v3

    .line 4114
    :try_start_c5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_ce} :catch_141

    move-result v4

    if-eqz v4, :cond_108

    .line 274
    :cond_d1
    :goto_d1
    const/4 v0, 0x1

    .line 283
    :cond_d2
    :goto_d2
    return v0

    .line 230
    :catch_d3
    move-exception v3

    :try_start_d4
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_d9

    goto/16 :goto_1a

    .line 279
    :catch_d9
    move-exception v1

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 281
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_d2

    .line 246
    :cond_ef
    :try_start_ef
    const-string v3, "sign"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_50

    .line 252
    :cond_f8
    const-string v1, "sign"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v1, "app"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_106} :catch_d9

    goto/16 :goto_63

    .line 4117
    :cond_108
    :try_start_108
    const-string v4, "3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_118

    const-string v4, "925fc15df8a49bed0b3eca8d2b44cb7b"

    .line 4118
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d1

    .line 4121
    :cond_118
    invoke-static {v1, v2}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4122
    iget-object v3, v3, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    .line 5106
    iget-object v4, v3, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v5, "svi_n"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5107
    iget-object v1, v3, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_140} :catch_141

    goto :goto_d1

    .line 4124
    :catch_141
    move-exception v1

    :try_start_142
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_145
    .catch Ljava/lang/Throwable; {:try_start_142 .. :try_end_145} :catch_d9

    goto :goto_d1
.end method

.method public static a([B[B)[B
    .registers 10

    .prologue
    const/16 v7, 0x100

    const/4 v1, 0x0

    .line 200
    .line 3179
    new-array v0, v7, [B

    move v2, v1

    .line 3181
    :goto_6
    if-ge v2, v7, :cond_e

    .line 3182
    int-to-byte v3, v2

    aput-byte v3, v0, v2

    .line 3181
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3186
    :cond_e
    if-eqz p1, :cond_13

    array-length v2, p1

    if-nez v2, :cond_4c

    .line 3187
    :cond_13
    const/4 v0, 0x0

    .line 204
    :cond_14
    array-length v2, p0

    new-array v4, v2, [B

    move v2, v1

    move v3, v1

    .line 206
    :goto_19
    array-length v5, p0

    if-ge v1, v5, :cond_6c

    .line 207
    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    .line 208
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    .line 209
    aget-byte v5, v0, v3

    .line 210
    aget-byte v6, v0, v2

    aput-byte v6, v0, v3

    .line 211
    aput-byte v5, v0, v2

    .line 212
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 213
    aget-byte v6, p0, v1

    aget-byte v5, v0, v5

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 214
    aget-byte v5, v4, v1

    xor-int/lit8 v5, v5, 0x2a

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_4c
    move v2, v1

    move v3, v1

    move v4, v1

    .line 3189
    :goto_4f
    if-ge v2, v7, :cond_14

    .line 3190
    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    .line 3191
    aget-byte v5, v0, v2

    .line 3192
    aget-byte v6, v0, v3

    aput-byte v6, v0, v2

    .line 3193
    aput-byte v5, v0, v3

    .line 3194
    add-int/lit8 v4, v4, 0x1

    array-length v5, p1

    rem-int/2addr v4, v5

    .line 3189
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 216
    :cond_6c
    return-object v4
.end method
