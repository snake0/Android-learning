.class public Lcom/iflytek/cloud/thirdparty/ak$b;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/io/File;

.field private d:J

.field private e:Z

.field private f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .registers 9

    const/16 v1, 0x258

    const-string v0, "DirSizeDeamonThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->e:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ak$b$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/ak$b$1;-><init>(Lcom/iflytek/cloud/thirdparty/ak$b;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->f:Ljava/util/Comparator;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->c:Ljava/io/File;

    iput-wide p2, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->d:J

    iput-wide p4, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->b:J

    iput p6, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->a:I

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->a:I

    if-ge v0, v1, :cond_26

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->a:I

    :cond_26
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;D)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_e

    :cond_b
    move-object v0, v5

    :goto_c
    move-object v5, v0

    :cond_d
    return-object v5

    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-double v7, v7

    add-double v1, v2, v7

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v0, v1, p3

    if-ltz v0, :cond_40

    :cond_38
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v4

    goto :goto_c

    :cond_40
    move-wide v2, v1

    goto :goto_18
.end method

.method private a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :try_start_13
    const-string v2, "DirSizeDeamon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "del file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/io/File;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_32} :catch_33

    goto :goto_7

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->e:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ak$b;->interrupt()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->c:Ljava/io/File;

    return-void
.end method

.method public run()V
    .registers 11

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_3
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->e:Z

    if-nez v0, :cond_8a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/io/File;Ljava/util/Map;Z)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "DirSizeDeamon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get total file size, spent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v1, v5, v1

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->d:J

    long-to-double v1, v1

    sub-double v1, v3, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_7b

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->f:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->b:J

    long-to-double v2, v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ak$b;->a(Ljava/util/List;Ljava/util/Map;D)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ak$b;->a(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "DirSizeDeamon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete files, spent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v1, v3, v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    :try_start_7b
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ak$b;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ak$b;->sleep(J)V
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_83} :catch_84

    goto :goto_3

    :catch_84
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    :cond_8a
    return-void
.end method
