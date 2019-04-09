.class Lcom/baidu/techain/b/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/baidu/techain/b/k$a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/techain/b/k$a;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 325
    :cond_7
    :goto_7
    return-object v0

    .line 311
    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v2, "deviceid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    const-string v3, "imei"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 318
    new-instance v1, Lcom/baidu/techain/b/k$a;

    invoke-direct {v1}, Lcom/baidu/techain/b/k$a;-><init>()V

    .line 319
    iput-object v2, v1, Lcom/baidu/techain/b/k$a;->a:Ljava/lang/String;

    .line 320
    iput-object v3, v1, Lcom/baidu/techain/b/k$a;->b:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2a} :catch_2c

    move-object v0, v1

    .line 321
    goto :goto_7

    .line 323
    :catch_2c
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/k;->a()V

    goto :goto_7
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/b/k$a;->b:Ljava/lang/String;

    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 332
    const-string v0, "0"

    .line 334
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/techain/b/k$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_31

    move-result-object v0

    .line 341
    :goto_30
    return-object v0

    .line 339
    :catch_31
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/k;->a()V

    .line 341
    const/4 v0, 0x0

    goto :goto_30
.end method
