.class public Lcom/iflytek/cloud/thirdparty/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/ah;

.field private b:Lcom/iflytek/cloud/thirdparty/ae;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/ah;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ai;->a:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ae;->a()Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ai;->b:Lcom/iflytek/cloud/thirdparty/ae;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .registers 10

    if-nez p2, :cond_a

    const-string v0, "TextUploader"

    const-string v1, "text data is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_9
    return-void

    :cond_a
    const-string v0, "text"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/al;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "stream_id"

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scene"

    const-string v3, "global"

    const-string v4, "scene"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "userparams"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data_type"

    const-string v3, "text"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/i;->a:[[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ai;->a:Lcom/iflytek/cloud/thirdparty/ah;

    if-eqz v2, :cond_9

    const-string v2, "dts"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->d(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TextUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "params="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ai;->a:Lcom/iflytek/cloud/thirdparty/ah;

    array-length v4, p2

    invoke-virtual {v3, v2, v1, p2, v4}, Lcom/iflytek/cloud/thirdparty/ah;->a(Ljava/lang/String;Ljava/lang/String;[BI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ai;->b:Lcom/iflytek/cloud/thirdparty/ae;

    new-instance v4, Lcom/iflytek/cloud/thirdparty/ae$a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const-string v5, ""

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/iflytek/cloud/thirdparty/ae$a;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3, v0, v4}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ae$a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ai;->b:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-virtual {v3, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ae;->a(Ljava/lang/String;J)V

    goto/16 :goto_9
.end method
