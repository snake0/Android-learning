.class Lcom/baidu/tts/tools/DeviceId$b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/tts/tools/DeviceId$b;->c:I

    .line 812
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/tts/tools/DeviceId$1;)V
    .registers 2

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/baidu/tts/tools/DeviceId$b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/tts/tools/DeviceId$b;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 815
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 834
    :cond_7
    :goto_7
    return-object v0

    .line 819
    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 820
    const-string v2, "deviceid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 821
    const-string v3, "imei"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    const-string v4, "ver"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 823
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 824
    new-instance v1, Lcom/baidu/tts/tools/DeviceId$b;

    invoke-direct {v1}, Lcom/baidu/tts/tools/DeviceId$b;-><init>()V

    .line 825
    iput-object v2, v1, Lcom/baidu/tts/tools/DeviceId$b;->a:Ljava/lang/String;

    .line 826
    iput-object v3, v1, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    .line 827
    iput v4, v1, Lcom/baidu/tts/tools/DeviceId$b;->c:I
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_32} :catch_34

    move-object v0, v1

    .line 828
    goto :goto_7

    .line 830
    :catch_34
    move-exception v1

    .line 831
    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/lang/Throwable;)V

    goto :goto_7
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 840
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/baidu/tts/tools/DeviceId$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "imei"

    iget-object v2, p0, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ver"

    iget v2, p0, Lcom/baidu/tts/tools/DeviceId$b;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_20} :catch_22

    move-result-object v0

    .line 844
    :goto_21
    return-object v0

    .line 842
    :catch_22
    move-exception v0

    .line 843
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/lang/Throwable;)V

    .line 844
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 849
    iget-object v0, p0, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    .line 850
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 851
    const-string v0, "0"

    .line 854
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/tts/tools/DeviceId$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 857
    return-object v0
.end method
