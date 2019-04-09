.class public Lcom/iflytek/cloud/thirdparty/ag;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/iflytek/cloud/thirdparty/af;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/iflytek/cloud/thirdparty/aj;

.field private g:Lcom/iflytek/cloud/thirdparty/ae;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/af;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->d:Z

    const-string v0, "cloud"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->c:Ljava/util/Queue;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ag;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ae;->a()Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aj;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/aj;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    return-void
.end method

.method private a(Landroid/os/Message;Z)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->b:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v0, :cond_b

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/af;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/af;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ag;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    const/4 v0, 0x5

    if-le v2, v0, :cond_2a

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    add-int/lit8 v0, v2, -0x3

    if-ge v1, v0, :cond_2a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-virtual {v3, v0}, Lcom/iflytek/cloud/thirdparty/ae;->f(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_2a
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aj;->e()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    const-string v1, ".txt"

    invoke-virtual {v0, p1, v1, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "des="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    const-string v1, "\n\n"

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aj;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JJJLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 16

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aj;->e()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    const-string v1, ".txt"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/iflytek/cloud/thirdparty/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    invoke-virtual {p11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nlp"

    invoke-virtual {v1, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-direct/range {p0 .. p11}, Lcom/iflytek/cloud/thirdparty/ag;->b(Ljava/lang/String;Ljava/lang/String;JJJLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bos_nlp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eos_nlp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    :cond_8b
    :goto_8b
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    const-string v2, "\n\n"

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/aj;->d()V

    const-string v1, "ResultScheduler"

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResultScheduler"

    const-string v1, "<---------------------------------------------->"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b7
    const-string v1, "iat"

    invoke-virtual {v1, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bos_iat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eos_iat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    goto :goto_8b

    :cond_10a
    const-string v1, "asr"

    invoke-virtual {v1, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bos_asr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->f:Lcom/iflytek/cloud/thirdparty/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eos_asr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    goto/16 :goto_8b

    :cond_15e
    const-string v1, "tpp"

    invoke-virtual {v1, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-direct/range {p0 .. p11}, Lcom/iflytek/cloud/thirdparty/ag;->b(Ljava/lang/String;Ljava/lang/String;JJJLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_8b
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JJJ)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;JJJ)V"
        }
    .end annotation

    invoke-static/range {p5 .. p5}, Lcom/iflytek/cloud/thirdparty/am;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v7

    const-string v2, "sid"

    invoke-virtual {v7, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "stream_id"

    move-object/from16 v0, p2

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "p_rslt"

    move-wide/from16 v0, p6

    invoke-virtual {v7, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "bos_rslt"

    move-wide/from16 v0, p8

    invoke-virtual {v7, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "eos_rslt"

    move-wide/from16 v0, p10

    invoke-virtual {v7, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    const-string v3, "iat"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ad;

    move-result-object v2

    if-eqz v2, :cond_9f

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/iflytek/cloud/thirdparty/ae;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/iflytek/cloud/thirdparty/ae;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/ad;->d()J

    move-result-wide v5

    if-nez v3, :cond_b7

    const-wide/16 v2, 0x0

    :goto_56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    if-nez v4, :cond_bc

    const-wide/16 v2, -0x1

    :goto_5e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v2, v2, v11

    if-nez v2, :cond_c1

    const-wide/16 v2, -0x1

    :goto_72
    const-string v11, "p_bos"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "p_eos"

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "bos_iat"

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v7, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "eos_iat"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_9f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    const/4 v2, 0x5

    iput v2, v8, Landroid/os/Message;->what:I

    new-instance v2, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v8, v2}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    return-void

    :cond_b7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_56

    :cond_bc
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_5e

    :cond_c1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v5, v2

    goto :goto_72
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    const/4 v1, 0x4

    :try_start_1
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "rc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_14} :catch_25

    move-result v0

    :goto_15
    if-eqz v0, :cond_1a

    const/4 v2, 0x3

    if-ne v2, v0, :cond_24

    :cond_1a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    :cond_24
    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto :goto_15

    :cond_2b
    move v0, v1

    goto :goto_15
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;JJJLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 25

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v2, "stream_id"

    invoke-virtual {v6, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sid"

    invoke-virtual {v6, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sub"

    move-object/from16 v0, p10

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "confidence"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-virtual {v3, p1}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v6, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "nlp"

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    const-string v2, "p_nlp_sdk"

    move-wide/from16 v0, p3

    invoke-virtual {v6, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "bos_nlp"

    move-wide/from16 v0, p5

    invoke-virtual {v6, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "eos_nlp"

    move-wide/from16 v0, p7

    invoke-virtual {v6, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    const-string v3, "iat"

    invoke-virtual {v2, p1, v3}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ad;

    move-result-object v2

    if-eqz v2, :cond_98

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-virtual {v3, p1}, Lcom/iflytek/cloud/thirdparty/ae;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-virtual {v4, p1}, Lcom/iflytek/cloud/thirdparty/ae;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/ad;->d()J

    move-result-wide v7

    if-nez v3, :cond_e7

    const-wide/16 v2, 0x0

    :goto_5f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-nez v4, :cond_ed

    const-wide/16 v2, -0x1

    :goto_67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v2, v2, v11

    if-nez v2, :cond_f3

    const-wide/16 v2, -0x1

    :goto_7b
    const-string v11, "p_bos"

    invoke-virtual {v6, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "p_eos"

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "bos_iat"

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "eos_iat"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_98
    :goto_98
    const-string v2, "params"

    move-object/from16 v0, p9

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_9f} :catch_11b

    const/4 v3, -0x1

    :try_start_a0
    const-string v2, "intent"

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const-string v2, "intent"

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "service"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rc"

    const/4 v7, -0x1

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "service"

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_c6} :catch_120

    :cond_c6
    :goto_c6
    :try_start_c6
    const-string v2, "rc"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    const/4 v2, 0x2

    iput v2, v8, Landroid/os/Message;->what:I

    new-instance v2, Lcom/iflytek/aiui/AIUIMessage;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/aiui/AIUIMessage;-><init>(IIILjava/lang/String;[B)V

    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v8, v2}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    :goto_e6
    return-void

    :cond_e7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_5f

    :cond_ed
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_67

    :cond_f3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v7, v2

    goto :goto_7b

    :cond_fa
    const-string v2, "tpp"

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    const-string v2, "p_tpp_sdk"

    move-wide/from16 v0, p3

    invoke-virtual {v6, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "bos_tpp"

    move-wide/from16 v0, p5

    invoke-virtual {v6, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "eos_tpp"

    move-wide/from16 v0, p7

    invoke-virtual {v6, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_c6 .. :try_end_119} :catch_11b

    goto/16 :goto_98

    :catch_11b
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e6

    :catch_120
    move-exception v2

    :try_start_121
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_124
    .catch Lorg/json/JSONException; {:try_start_121 .. :try_end_124} :catch_11b

    goto :goto_c6
.end method


# virtual methods
.method public a()V
    .registers 4

    const-string v0, "speech"

    const-string v1, "intent_engine_type"

    const-string v2, "cloud"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/ag;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/cloud/thirdparty/ag;->e:Ljava/lang/String;

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/ag;->c:Ljava/util/Queue;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/ag;->c:Ljava/util/Queue;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_25
    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/ae;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/iflytek/cloud/thirdparty/ae;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v12, p6, v4

    :cond_45
    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v14, p6, v2

    :cond_4d
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "params"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v2, "sub"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/ae;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/ae;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b2

    new-instance v2, Lcom/iflytek/cloud/thirdparty/ad;

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lcom/iflytek/cloud/thirdparty/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)V

    const-string v4, "nlp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    const-string v5, "asr"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v5}, Lcom/iflytek/cloud/thirdparty/ae;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e9

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/iflytek/cloud/thirdparty/ad;->a(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v3, v2}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ad;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v11

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p6

    invoke-direct/range {v4 .. v15}, Lcom/iflytek/cloud/thirdparty/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JJJ)V

    const-string v2, "ResultScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e9
    :goto_e9
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/ag;->a(Ljava/lang/String;)V

    const-string v2, "ResultScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ResultScheduler"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ResultScheduler"

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cnt_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17a

    const-string v2, "cnt_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_1de

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v4

    :goto_13e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/16 v5, 0xb

    iput v5, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "nlp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/ag;->a(Lorg/json/JSONObject;)V

    const-string v2, "result"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/al;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v2, v0, v4}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16d
    :goto_16d
    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p4

    move-wide/from16 v10, p6

    move-object/from16 v17, v3

    invoke-direct/range {v7 .. v18}, Lcom/iflytek/cloud/thirdparty/ag;->a(Ljava/lang/String;Ljava/lang/String;JJJLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_17a
    return-void

    :cond_17b
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/iflytek/cloud/thirdparty/ad;->a(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v3, v2}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ad;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v11

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p6

    invoke-direct/range {v4 .. v15}, Lcom/iflytek/cloud/thirdparty/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JJJ)V

    const-string v2, "ResultScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e9

    :cond_1b2
    const-string v2, "ResultScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in statistic list, ignore this "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e9

    :cond_1de
    const-string v2, "ResultScheduler"

    const-string v5, "content data is null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto/16 :goto_13e

    :cond_1e8
    const-string v2, "iat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16d

    const-string v2, "asr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16d

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/ag;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_16d
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->d:Z

    return-void
.end method

.method errorCb([CI[B)V
    .registers 18

    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v1, "utf-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/4 v1, 0x7

    iput v1, v7, Landroid/os/Message;->what:I

    new-instance v1, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    iput-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v1}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    invoke-virtual {v1, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;)V

    const-string v2, "stmid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sid"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "mixed"

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    const/16 v1, 0x2788

    move/from16 v0, p2

    if-ne v1, v0, :cond_d0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    const-string v4, "asr"

    invoke-virtual {v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_82

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/cloud/thirdparty/ad;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ad;->f()Z

    move-result v6

    if-nez v6, :cond_52

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/iflytek/cloud/thirdparty/ad;->a(Z)V
    :try_end_68
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_68} :catch_cb

    :try_start_68
    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ad;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ad;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ad;->c()Ljava/util/Map;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ad;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ad;->d()J

    move-result-wide v12

    move-object v6, p0

    invoke-virtual/range {v6 .. v13}, Lcom/iflytek/cloud/thirdparty/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_82} :catch_c6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_68 .. :try_end_82} :catch_cb

    :cond_82
    :goto_82
    :try_start_82
    const-string v1, "ResultScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "errorCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ResultScheduler"

    const-string v4, "<---------------------------------------------->"

    invoke-static {v1, v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->c:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->c:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_c0
    move/from16 v0, p2

    invoke-direct {p0, v2, v3, v0, v5}, Lcom/iflytek/cloud/thirdparty/ag;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_c5
    :goto_c5
    return-void

    :catch_c6
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_ca
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_82 .. :try_end_ca} :catch_cb

    goto :goto_82

    :catch_cb
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_c5

    :cond_d0
    const/4 v1, 0x0

    :try_start_d1
    invoke-direct {p0, v7, v1}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    goto :goto_82

    :cond_d5
    const/16 v1, 0x2788

    move/from16 v0, p2

    if-ne v1, v0, :cond_11b

    const-string v1, "vad"

    const-string v4, "vad_enable"

    const/4 v6, 0x1

    invoke-static {v1, v4, v6}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_eb

    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    goto :goto_82

    :cond_eb
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ag;->g:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;)F

    move-result v1

    const v4, 0x3f333333    # 0.7f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_fd

    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    goto :goto_82

    :cond_fd
    const/4 v4, 0x0

    cmpl-float v1, v4, v1

    if-nez v1, :cond_108

    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    goto/16 :goto_82

    :cond_108
    const-string v1, "ResultScheduler"

    const-string v4, "%s had low confidence, ignore 10120 error."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    :cond_11b
    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V
    :try_end_11f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d1 .. :try_end_11f} :catch_cb

    goto/16 :goto_82
.end method

.method pushCb([C[B[BLjava/lang/Object;)V
    .registers 11

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    check-cast p4, Ljava/util/Map;

    invoke-static {p4}, Lcom/iflytek/cloud/thirdparty/am;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "ResultScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received push message, bizparams="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/16 v1, 0x3e9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    return-void
.end method

.method resultCb([C[B[BLjava/lang/Object;)V
    .registers 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-eqz p3, :cond_c

    if-nez p4, :cond_14

    :cond_c
    const-string v1, "ResultScheduler"

    const-string v2, "resultCb has null params."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void

    :cond_14
    :try_start_14
    new-instance v2, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v2, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v3, p3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, p4

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    new-instance v1, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v1}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    const-string v5, "&"

    const-string v6, ","

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;)V

    const-string v5, "sid"

    invoke-virtual {v1, v5}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "stmid"

    invoke-virtual {v1, v6}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/iflytek/cloud/thirdparty/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_46} :catch_47
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_46} :catch_4c

    goto :goto_13

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_13

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_13
.end method

.method statusCb([CII[BI)V
    .registers 11

    const/16 v4, 0xc

    const/4 v3, 0x0

    sparse-switch p3, :sswitch_data_4c

    :goto_6
    return-void

    :sswitch_7
    const-string v0, "ServerConnection"

    const-string v1, "connect to server success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->b:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, v4}, Lcom/iflytek/cloud/thirdparty/af;->removeMessages(I)V

    :cond_17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v3}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ag;->d:Z

    goto :goto_6

    :sswitch_25
    const-string v0, "ServerConnection"

    const-string v1, "connect to server failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->d:Z

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->d:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->b:Lcom/iflytek/cloud/thirdparty/af;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ag;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v4, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->sendEmptyMessageDelayed(IJ)Z

    :cond_3f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v3}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    goto :goto_6

    nop

    :sswitch_data_4c
    .sparse-switch
        0x2782 -> :sswitch_25
        0x27dd -> :sswitch_25
        0x2e19 -> :sswitch_7
        0x2e1a -> :sswitch_25
    .end sparse-switch
.end method

.method syncDataCb([CI[BI)V
    .registers 15

    const/16 v9, 0xc8

    const/16 v2, 0x18

    const/16 v8, 0xd

    const/4 v7, 0x0

    const/16 v1, 0x8

    const-string v0, "ResultScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync data, ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dataType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_6d

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    :goto_32
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v3, "sync_dtype"

    invoke-virtual {v5, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x3

    if-ne v3, p4, :cond_4f

    :try_start_3f
    const-string v3, "sid"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "sid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_4f} :catch_70

    :cond_4f
    :goto_4f
    const/4 v3, 0x4

    if-ne v3, p4, :cond_80

    const-string v3, "result"

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    iput v1, v6, Landroid/os/Message;->what:I

    if-eq v9, p2, :cond_75

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const-string v4, "query athena sync status error."

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_69
    invoke-direct {p0, v6, v7}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    :goto_6c
    return-void

    :cond_6d
    const-string v0, ""

    goto :goto_32

    :catch_70
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4f

    :cond_75
    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const-string v4, "query athena sync status."

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_69

    :cond_80
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    iput v1, v6, Landroid/os/Message;->what:I

    if-eq v9, p2, :cond_a8

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync data error. dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v8

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_a4
    invoke-direct {p0, v6, v7}, Lcom/iflytek/cloud/thirdparty/ag;->a(Landroid/os/Message;Z)V

    goto :goto_6c

    :cond_a8
    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync data success. dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v8

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_a4
.end method
