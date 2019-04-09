.class public final Lcom/baidu/techain/rp/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/techain/rp/a/a;
    .registers 4

    .prologue
    .line 30
    new-instance v0, Lcom/baidu/techain/rp/a/a;

    invoke-direct {v0}, Lcom/baidu/techain/rp/a/a;-><init>()V

    .line 32
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/techain/rp/a/a;->a:Ljava/lang/String;

    .line 34
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/techain/rp/a/a;->c:Ljava/lang/String;

    .line 35
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    .line 36
    const-string v2, "3"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    .line 37
    const-string v2, "4"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_33

    .line 43
    :goto_32
    return-object v0

    .line 39
    :catch_33
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 40
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public static a(Lcom/baidu/techain/rp/a/a;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    :try_start_5
    const-string v1, "0"

    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "1"

    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v1, "2"

    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "3"

    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v1, "4"

    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_2d

    .line 26
    :goto_28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :catch_2d
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_28
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p0, p1, :cond_5

    .line 89
    :cond_4
    :goto_4
    return v0

    .line 61
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 62
    goto :goto_4

    .line 64
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 65
    goto :goto_4

    .line 67
    :cond_15
    check-cast p1, Lcom/baidu/techain/rp/a/a;

    .line 68
    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 69
    iget-object v2, p1, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    .line 70
    goto :goto_4

    .line 72
    :cond_21
    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    .line 73
    goto :goto_4

    .line 75
    :cond_2d
    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 76
    iget-object v2, p1, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_43

    move v0, v1

    .line 77
    goto :goto_4

    .line 79
    :cond_37
    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    move v0, v1

    .line 80
    goto :goto_4

    .line 82
    :cond_43
    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;

    if-nez v2, :cond_4d

    .line 83
    iget-object v2, p1, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 84
    goto :goto_4

    .line 86
    :cond_4d
    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 87
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 51
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    if-nez v0, :cond_1f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;

    if-nez v2, :cond_26

    :goto_16
    add-int/2addr v0, v1

    .line 53
    return v0

    .line 50
    :cond_18
    iget-object v0, p0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 51
    :cond_1f
    iget-object v0, p0, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    .line 52
    :cond_26
    iget-object v1, p0, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16
.end method
