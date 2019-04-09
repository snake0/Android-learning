.class public Lcom/mqunar/hy/res/utils/HybridInfoParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkQPFile(Lcom/mqunar/hy/res/model/HybridInfo;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 88
    :try_start_2
    iget-boolean v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->errorChanged:Z

    if-eqz v2, :cond_7

    .line 122
    :goto_6
    return v0

    .line 91
    :cond_7
    iget-boolean v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->checked:Z

    if-eqz v2, :cond_d

    move v0, v1

    .line 92
    goto :goto_6

    .line 94
    :cond_d
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_65

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 97
    invoke-static {v2}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckQPFile>MD5>TIME:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v3, v7, v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->checked:Z

    .line 101
    invoke-static {p0}, Lcom/mqunar/hy/res/utils/FileObserverManager;->addHybridInfoObserver(Lcom/mqunar/hy/res/model/HybridInfo;)V

    move v0, v1

    .line 102
    goto :goto_6

    .line 108
    :cond_65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mqunar/hy/res/model/HybridInfo;->errorChanged:Z

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 112
    :cond_71
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 113
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    :cond_8a
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mqunar/hy/res/HybridManager;->getDefaultHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v1

    .line 116
    const/4 v2, 0x3

    iput v2, v1, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "md5 error:sendSingleUpdateRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b4} :catch_b6

    goto/16 :goto_6

    .line 119
    :catch_b6
    move-exception v1

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "md5 error:exception no sendSingleUpdateRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6
.end method

.method public static convertbytetoint(B)I
    .registers 2

    .prologue
    .line 186
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getInt([BI)I
    .registers 6

    .prologue
    .line 178
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->convertbytetoint(B)I

    move-result v0

    .line 179
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->convertbytetoint(B)I

    move-result v1

    .line 180
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->convertbytetoint(B)I

    move-result v2

    .line 181
    aget-byte v3, p0, p1

    invoke-static {v3}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->convertbytetoint(B)I

    move-result v3

    .line 182
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public static declared-synchronized parseAndCheck(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mqunar/hy/res/model/HybridInfo;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    const-class v4, Lcom/mqunar/hy/res/utils/HybridInfoParser;

    monitor-enter v4

    :try_start_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b2

    move-result v2

    if-eqz v2, :cond_e

    move-object v0, v1

    .line 83
    :cond_c
    :goto_c
    monitor-exit v4

    return-object v0

    :cond_e
    move v2, v0

    .line 34
    :goto_f
    if-eqz p1, :cond_b5

    :try_start_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b5

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 36
    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 41
    :goto_25
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    if-eqz v0, :cond_44

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->checked:Z

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->errorChanged:Z

    .line 46
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->checkQPFile(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 50
    goto :goto_c

    .line 34
    :cond_40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    .line 54
    :cond_44
    invoke-static {v3, p2}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->parserManifest(Ljava/io/File;Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v2

    .line 55
    if-nez v2, :cond_4f

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 57
    goto :goto_c

    .line 59
    :cond_4f
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getInstance()Lcom/mqunar/hy/res/HyResInitializer;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/mqunar/hy/res/HyResInitializer;->getReplaceInterceptor()Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->isInterceptor(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 63
    goto :goto_c

    .line 65
    :cond_62
    if-eqz p1, :cond_aa

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_6b
    const/4 v0, -0x1

    if-le v3, v0, :cond_aa

    .line 67
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 68
    iget-object v5, v2, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_99

    iget-object v5, v2, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget-object v6, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 69
    iget v5, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v6, v2, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-gt v5, v6, :cond_9d

    .line 70
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    :cond_99
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_6b

    .line 73
    :cond_9d
    new-instance v0, Ljava/io/File;

    iget-object v2, v2, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 74
    goto/16 :goto_c

    .line 79
    :cond_aa
    if-eqz p1, :cond_af

    .line 80
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_af
    .catchall {:try_start_11 .. :try_end_af} :catchall_b2

    :cond_af
    move-object v0, v2

    .line 83
    goto/16 :goto_c

    .line 29
    :catchall_b2
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_b5
    move-object v0, v1

    goto/16 :goto_25
.end method

.method public static parserManifest(Ljava/io/File;Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 126
    const/4 v4, 0x6

    .line 127
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v5, v4

    cmp-long v0, v2, v5

    if-gez v0, :cond_15

    :cond_13
    move-object v0, v1

    .line 174
    :goto_14
    return-object v0

    .line 130
    :cond_15
    new-instance v2, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-direct {v2}, Lcom/mqunar/hy/res/model/HybridInfo;-><init>()V

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    .line 133
    invoke-virtual {v2, p1}, Lcom/mqunar/hy/res/model/HybridInfo;->setMd5(Ljava/lang/String;)V

    .line 136
    :try_start_29
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_10b
    .catchall {:try_start_29 .. :try_end_2e} :catchall_f9

    .line 137
    :try_start_2e
    new-array v0, v4, [B

    .line 138
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 139
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "UTF-8"

    invoke-direct {v5, v0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 140
    const-string v6, "QP"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_42} :catch_c9
    .catchall {:try_start_2e .. :try_end_42} :catchall_106

    move-result v5

    if-nez v5, :cond_51

    .line 166
    if-eqz v3, :cond_4a

    .line 168
    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    :cond_4a
    :goto_4a
    move-object v0, v1

    .line 171
    goto :goto_14

    .line 169
    :catch_4c
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .line 143
    :cond_51
    const/4 v5, 0x2

    :try_start_52
    invoke-static {v0, v5}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->getInt([BI)I

    move-result v5

    .line 144
    new-array v0, v5, [B

    .line 145
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 146
    const/4 v7, -0x1

    if-eq v6, v7, :cond_e9

    .line 147
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/mqunar/hy/res/logger/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v6, Lcom/mqunar/hy/res/model/HybridManifest;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v0, v8, v5, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/mqunar/hy/res/model/HybridManifest;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v6}, Lcom/mqunar/hy/res/model/HybridManifest;->getManifestJson()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mqunar/hy/res/model/HybridInfo;->setManifestJson(Lcom/alibaba/fastjson/JSONObject;)V

    .line 150
    invoke-virtual {v6}, Lcom/mqunar/hy/res/model/HybridManifest;->getVersion()I

    move-result v0

    iput v0, v2, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    .line 151
    invoke-virtual {v6}, Lcom/mqunar/hy/res/model/HybridManifest;->getHybridid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    .line 152
    invoke-virtual {v6}, Lcom/mqunar/hy/res/model/HybridManifest;->getExtra()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/mqunar/hy/res/model/HybridInfo;->extra:Lcom/alibaba/fastjson/JSONObject;

    .line 153
    invoke-virtual {v6}, Lcom/mqunar/hy/res/model/HybridManifest;->getFiles()Ljava/util/List;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_dc

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_dc

    .line 155
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_aa
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;

    .line 157
    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqunar/hy/res/utils/UriCodec;->getUrlWithOutQueryAndHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mqunar/hy/res/model/HybridFile;

    add-int v10, v4, v5

    invoke-direct {v9, v0, v10}, Lcom/mqunar/hy/res/model/HybridFile;-><init>(Lcom/mqunar/hy/res/model/HybridManifest$ResItem;I)V

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_c8} :catch_c9
    .catchall {:try_start_52 .. :try_end_c8} :catchall_106

    goto :goto_aa

    .line 163
    :catch_c9
    move-exception v0

    move-object v2, v3

    .line 164
    :goto_cb
    const/4 v3, 0x0

    :try_start_cc
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_d1
    .catchall {:try_start_cc .. :try_end_d1} :catchall_108

    .line 166
    if-eqz v2, :cond_d6

    .line 168
    :try_start_d3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_f4

    :cond_d6
    :goto_d6
    move-object v0, v1

    .line 174
    goto/16 :goto_14

    .line 159
    :cond_d9
    :try_start_d9
    invoke-virtual {v2, v6}, Lcom/mqunar/hy/res/model/HybridInfo;->setResource(Ljava/util/Map;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_c9
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_106

    .line 166
    :cond_dc
    if-eqz v3, :cond_e1

    .line 168
    :try_start_de
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e4

    :cond_e1
    :goto_e1
    move-object v0, v2

    .line 171
    goto/16 :goto_14

    .line 169
    :catch_e4
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e1

    .line 166
    :cond_e9
    if-eqz v3, :cond_d6

    .line 168
    :try_start_eb
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef

    goto :goto_d6

    .line 169
    :catch_ef
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d6

    .line 169
    :catch_f4
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d6

    .line 166
    :catchall_f9
    move-exception v0

    move-object v3, v1

    :goto_fb
    if-eqz v3, :cond_100

    .line 168
    :try_start_fd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    .line 171
    :cond_100
    :goto_100
    throw v0

    .line 169
    :catch_101
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_100

    .line 166
    :catchall_106
    move-exception v0

    goto :goto_fb

    :catchall_108
    move-exception v0

    move-object v3, v2

    goto :goto_fb

    .line 163
    :catch_10b
    move-exception v0

    move-object v2, v1

    goto :goto_cb
.end method
