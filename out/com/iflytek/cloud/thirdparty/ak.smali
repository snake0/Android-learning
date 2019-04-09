.class public Lcom/iflytek/cloud/thirdparty/ak;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;Ljava/util/Map;Z)J
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;Z)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_8

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8

    array-length v6, v5

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v6, :cond_8

    aget-object v3, v5, v2

    const/4 v4, 0x0

    invoke-static {v3, v4, p2}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/io/File;Ljava/util/Map;Z)J

    move-result-wide v7

    if-eqz p1, :cond_3a

    if-eqz p2, :cond_41

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    :goto_3a
    add-long v3, v0, v7

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_1c

    :cond_41
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a
.end method

.method public static a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ak$a;
    .registers 2

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/ak$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_27

    array-length v3, v2

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_1a
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_27
    move v0, v1

    goto :goto_4
.end method
