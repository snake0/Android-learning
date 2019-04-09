.class public Lcom/iflytek/cloud/thirdparty/ao;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/ah;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/cloud/thirdparty/ao$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ao;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-class v1, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-enter v1

    :try_start_3
    const-string v1, "timelinelog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventProcess ts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " label:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wakeid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " map:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_c7

    :try_start_52
    const-string v1, "ts"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, "label"

    invoke-virtual {v3, v1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6b
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "wake_id"

    invoke-virtual {v3, v1, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_76
    const-string v1, "dur"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p5, :cond_ae

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_a9} :catch_aa
    .catchall {:try_start_52 .. :try_end_a9} :catchall_c7

    goto :goto_8e

    :catch_aa
    move-exception v1

    :try_start_ab
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_c7

    :cond_ae
    :goto_ae
    :try_start_ae
    sget-object v1, Lcom/iflytek/cloud/thirdparty/ao;->a:Lcom/iflytek/cloud/thirdparty/ah;

    if-eqz v1, :cond_cc

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ao;->a:Lcom/iflytek/cloud/thirdparty/ah;

    const-string v2, "timelinelog"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ah;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bd} :catch_d4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_ae .. :try_end_bd} :catch_d9
    .catchall {:try_start_ae .. :try_end_bd} :catchall_c7

    :goto_bd
    const-class v1, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v1

    return-void

    :cond_c1
    :try_start_c1
    const-string v1, "udmap"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_c1 .. :try_end_c6} :catch_aa
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_c7

    goto :goto_ae

    :catchall_c7
    move-exception v1

    const-class v2, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v2

    throw v1

    :cond_cc
    :try_start_cc
    const-string v1, "timelinelog"

    const-string v2, "do not call onevent before sessionbegin"

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d3} :catch_d4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_cc .. :try_end_d3} :catch_d9
    .catchall {:try_start_cc .. :try_end_d3} :catchall_c7

    goto :goto_bd

    :catch_d4
    move-exception v1

    :try_start_d5
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_bd

    :catch_d9
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_dd
    .catchall {:try_start_d5 .. :try_end_dd} :catchall_c7

    goto :goto_bd
.end method

.method public static a(Lcom/iflytek/cloud/thirdparty/ah;)V
    .registers 1

    sput-object p0, Lcom/iflytek/cloud/thirdparty/ao;->a:Lcom/iflytek/cloud/thirdparty/ah;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-class v0, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/ao;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    const-class v0, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v0

    const-class v1, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-class v0, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/ao;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    const-class v0, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v0

    const-class v1, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-enter v0

    :try_start_3
    const-string v0, "timelinelog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventEnd id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/iflytek/cloud/thirdparty/ao;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    sget-object v2, Lcom/iflytek/cloud/thirdparty/ao;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/cloud/thirdparty/ao$a;

    iget-wide v3, v2, Lcom/iflytek/cloud/thirdparty/ao$a;->c:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/iflytek/cloud/thirdparty/ao$a;->a:J

    iget-object v4, v2, Lcom/iflytek/cloud/thirdparty/ao$a;->d:Ljava/lang/String;

    iget-wide v6, v2, Lcom/iflytek/cloud/thirdparty/ao$a;->a:J

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/ao;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ao;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_50

    :goto_44
    const-class v0, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v0

    return-void

    :cond_48
    :try_start_48
    const-string v0, "timelinelog"

    const-string v1, "call onEventEnd before onEventBegin"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_50

    goto :goto_44

    :catchall_50
    move-exception v0

    const-class v1, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-enter v0

    :try_start_3
    const-string v0, "timelinelog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventBegin id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ao$a;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ao$a;-><init>()V

    iput-object p0, v0, Lcom/iflytek/cloud/thirdparty/ao$a;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/iflytek/cloud/thirdparty/ao$a;->c:J

    iput-object p1, v0, Lcom/iflytek/cloud/thirdparty/ao$a;->d:Ljava/lang/String;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ao;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_33

    const-class v0, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v0

    return-void

    :catchall_33
    move-exception v0

    const-class v1, Lcom/iflytek/cloud/thirdparty/ao;

    monitor-exit v1

    throw v0
.end method
