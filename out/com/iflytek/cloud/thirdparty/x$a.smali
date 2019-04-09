.class Lcom/iflytek/cloud/thirdparty/x$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/x;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/x;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x$a;->b:Z

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/x;->b(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aj;->e()V

    return-void
.end method

.method private a(Lcom/iflytek/cloud/thirdparty/y;)Z
    .registers 4

    if-nez p1, :cond_4

    :cond_2
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x4

    iget v1, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private b(Lcom/iflytek/cloud/thirdparty/y;)V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "stream_id"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->b(Lcom/iflytek/cloud/thirdparty/ce;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v3

    iget-object v4, p1, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v5, "intent_engine_type"

    const-string v6, "cloud"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v6, "intent_engine_type"

    invoke-virtual {v5, v6}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/x$a;->a(Lcom/iflytek/cloud/thirdparty/y;)Z

    move-result v5

    if-eqz v5, :cond_b4

    :try_start_27
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x$a;->b:Z

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/x;->c(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ah;

    move-result-object v0

    if-eqz v0, :cond_9c

    const-string v0, "local"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/x;->c(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ah;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/ah;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/x;->e(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/x;->d(Lcom/iflytek/cloud/thirdparty/x;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;J)V

    iget-object v0, p1, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "confidence"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IatUnit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stmid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/x;->d(Lcom/iflytek/cloud/thirdparty/x;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", confidence="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_27 .. :try_end_89} :catch_ad

    :try_start_89
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/x;->e(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/x;->d(Lcom/iflytek/cloud/thirdparty/x;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;F)V
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_9c} :catch_a8
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_89 .. :try_end_9c} :catch_ad

    :cond_9c
    :goto_9c
    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/x$a;->b:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/x;->b(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aj;->d()V

    :goto_a7
    return-void

    :catch_a8
    move-exception v0

    :try_start_a9
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_ac
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_9c

    :catch_ad
    move-exception v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v2, v0}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x;Lcom/iflytek/cloud/thirdparty/n;)V

    goto :goto_9c

    :cond_b4
    iget-boolean v5, p0, Lcom/iflytek/cloud/thirdparty/x$a;->b:Z

    if-nez v5, :cond_140

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x$a;->b:Z

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v5, v2}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v7}, Lcom/iflytek/cloud/thirdparty/x;->e(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v8}, Lcom/iflytek/cloud/thirdparty/x;->d(Lcom/iflytek/cloud/thirdparty/x;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/iflytek/cloud/thirdparty/ae$a;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const-string v10, ""

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v9, v5, v6, v10, v11}, Lcom/iflytek/cloud/thirdparty/ae$a;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ae$a;)V

    iget-object v5, p1, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v6, "tag"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_102

    iget-object v6, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v6}, Lcom/iflytek/cloud/thirdparty/x;->e(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v7}, Lcom/iflytek/cloud/thirdparty/x;->d(Lcom/iflytek/cloud/thirdparty/x;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/iflytek/cloud/thirdparty/ae;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_102
    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v5}, Lcom/iflytek/cloud/thirdparty/x;->b(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/aj;

    move-result-object v5

    const-string v6, ".pcm"

    invoke-virtual {v5, v2, v6, v1}, Lcom/iflytek/cloud/thirdparty/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_10d
    :try_start_10d
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/x;->c(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ah;

    move-result-object v2

    if-eqz v2, :cond_12c

    const-string v2, "local"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12c

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/x;->c(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/ah;

    move-result-object v2

    iget-object v4, p1, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/iflytek/cloud/thirdparty/ah;->a(Lcom/iflytek/cloud/thirdparty/ce;[BIZ)V
    :try_end_12c
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_10d .. :try_end_12c} :catch_139

    :cond_12c
    :goto_12c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/x;->b(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/aj;

    move-result-object v0

    iget-object v2, p1, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    goto/16 :goto_a7

    :catch_139
    move-exception v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x$a;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v2, v0}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x;Lcom/iflytek/cloud/thirdparty/n;)V

    goto :goto_12c

    :cond_140
    move v0, v1

    goto :goto_10d
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/y;

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/x$a;->b(Lcom/iflytek/cloud/thirdparty/y;)V

    goto :goto_8

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
