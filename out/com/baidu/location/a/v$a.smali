.class Lcom/baidu/location/a/v$a;
.super Lcom/baidu/location/d/e;


# instance fields
.field a:Z

.field b:I

.field c:I

.field final synthetic d:Lcom/baidu/location/a/v;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/baidu/location/a/v;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/a/v$a;->d:Lcom/baidu/location/a/v;

    invoke-direct {p0}, Lcom/baidu/location/d/e;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/location/a/v$a;->a:Z

    iput v0, p0, Lcom/baidu/location/a/v$a;->b:I

    iput v0, p0, Lcom/baidu/location/a/v$a;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/v$a;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/v$a;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/v$a;->h:Ljava/lang/String;

    iget v0, p0, Lcom/baidu/location/a/v$a;->b:I

    if-eq v0, v6, :cond_12

    invoke-static {}, Lcom/baidu/location/d/j;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/v$a;->h:Ljava/lang/String;

    :cond_12
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/a/v$a;->i:I

    iget-object v0, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_9a

    move v0, v1

    :goto_1a
    iget-object v2, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_72

    iget v2, p0, Lcom/baidu/location/a/v$a;->b:I

    if-ne v2, v6, :cond_4d

    iget-object v2, p0, Lcom/baidu/location/a/v$a;->k:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cldc["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_4d
    iget-object v2, p0, Lcom/baidu/location/a/v$a;->k:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cltr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_72
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/v$a;->k:Ljava/util/Map;

    const-string v2, "trtm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/baidu/location/a/v$a;->b:I

    if-eq v0, v6, :cond_9a

    iget-object v0, p0, Lcom/baidu/location/a/v$a;->k:Ljava/util/Map;

    const-string v1, "qt"

    const-string v2, "cltrg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9a
    return-void
.end method

.method public a(Z)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/baidu/location/a/v$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_10
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/location/a/v$a;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ison"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "ison"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/v$a;->f:Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_36

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/baidu/location/a/v$a;->k:Ljava/util/Map;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/baidu/location/a/v$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_33
    iput-boolean v2, p0, Lcom/baidu/location/a/v$a;->a:Z

    return-void

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public declared-synchronized b()V
    .registers 7

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_5
    iget-boolean v1, p0, Lcom/baidu/location/a/v$a;->a:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1d

    if-eqz v1, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    sget v1, Lcom/baidu/location/a/v$a;->o:I

    const/4 v3, 0x4

    if-le v1, v3, :cond_20

    iget v1, p0, Lcom/baidu/location/a/v$a;->c:I

    sget v3, Lcom/baidu/location/a/v$a;->o:I

    if-ge v1, v3, :cond_20

    iget v0, p0, Lcom/baidu/location/a/v$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/a/v$a;->c:I
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1d

    goto :goto_9

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    const/4 v1, 0x0

    :try_start_21
    iput v1, p0, Lcom/baidu/location/a/v$a;->c:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/a/v$a;->a:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/a/v$a;->b:I
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_1d

    :try_start_29
    iget-object v1, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_5e

    :cond_35
    iget-object v1, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_40

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    :cond_40
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/a/v$a;->b:I

    :cond_43
    iget v1, p0, Lcom/baidu/location/a/v$a;->b:I

    if-ge v1, v5, :cond_b0

    invoke-static {}, Lcom/baidu/location/a/v;->b()Ljava/lang/String;

    move-result-object v1

    :goto_4b
    if-nez v1, :cond_81

    iget v3, p0, Lcom/baidu/location/a/v$a;->b:I

    if-eq v3, v4, :cond_81

    iget-boolean v3, p0, Lcom/baidu/location/a/v$a;->f:Z

    if-eqz v3, :cond_81

    const/4 v1, 0x2

    iput v1, p0, Lcom/baidu/location/a/v$a;->b:I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_58} :catch_73
    .catchall {:try_start_29 .. :try_end_58} :catchall_1d

    :try_start_58
    invoke-static {}, Lcom/baidu/location/a/g;->b()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_7e
    .catchall {:try_start_58 .. :try_end_5b} :catchall_1d

    move-result-object v1

    :goto_5c
    if-nez v1, :cond_85

    :cond_5e
    :goto_5e
    :try_start_5e
    iget-object v0, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v4, :cond_9c

    :cond_6a
    iget-object v0, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/v$a;->a:Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_72} :catch_73
    .catchall {:try_start_5e .. :try_end_72} :catchall_1d

    goto :goto_9

    :catch_73
    move-exception v0

    :try_start_74
    iget-object v0, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_1d

    goto :goto_9

    :catch_7e
    move-exception v1

    move-object v1, v2

    goto :goto_5c

    :cond_81
    const/4 v3, 0x1

    :try_start_82
    iput v3, p0, Lcom/baidu/location/a/v$a;->b:I

    goto :goto_5c

    :cond_85
    const-string v3, "err!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, Lcom/baidu/location/a/v$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/baidu/location/d/a;->i:I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_99} :catch_73
    .catchall {:try_start_82 .. :try_end_99} :catchall_1d

    if-lt v0, v1, :cond_43

    goto :goto_5e

    :cond_9c
    :try_start_9c
    iget v0, p0, Lcom/baidu/location/a/v$a;->b:I

    if-eq v0, v4, :cond_a9

    invoke-static {}, Lcom/baidu/location/d/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/a/v$a;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a9
    sget-object v0, Lcom/baidu/location/d/j;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/location/a/v$a;->b(Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_9c .. :try_end_ae} :catchall_1d

    goto/16 :goto_9

    :cond_b0
    move-object v1, v2

    goto :goto_4b
.end method
