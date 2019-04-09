.class Lcom/baidu/location/a/k$b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/k;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method constructor <init>(Lcom/baidu/location/a/k;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/baidu/location/a/k$b;->a:Lcom/baidu/location/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/a/k$b;->b:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/a/k$b;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/a/k$b;->d:J

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_25

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/k$b;->b:Ljava/lang/String;

    :cond_25
    if-eqz v0, :cond_37

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/k$b;->c:Ljava/lang/String;

    :cond_37
    if-eqz v0, :cond_50

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_50

    invoke-static {v0, v1}, Lcom/baidu/location/a/k;->a(J)J

    :cond_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/k$b;->d:J
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_56} :catch_57

    :goto_56
    return-void

    :catch_57
    move-exception v0

    iput-object v4, p0, Lcom/baidu/location/a/k$b;->b:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/a/k$b;->c:Ljava/lang/String;

    goto :goto_56
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/k$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/k$b;->c:Ljava/lang/String;

    return-object v0
.end method
