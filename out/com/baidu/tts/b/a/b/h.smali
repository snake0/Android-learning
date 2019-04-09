.class public Lcom/baidu/tts/b/a/b/h;
.super Lcom/baidu/tts/b/a/b/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/tts/a/a/a",
            "<[B[B>;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/tts/b/a/b/f$b;

.field private c:Lcom/baidu/tts/m/h;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/g;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    .line 43
    new-instance v0, Lcom/baidu/tts/a/a/a;

    invoke-direct {v0}, Lcom/baidu/tts/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/a/a/a;

    .line 44
    new-instance v0, Lcom/baidu/tts/a/a/b;

    invoke-direct {v0}, Lcom/baidu/tts/a/a/b;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/a/a/a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/a/a/a;->a(Lcom/baidu/tts/a/a/c;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/a/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/a/a;->a()V

    .line 47
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 137
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/baidu/tts/f/g;->v:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 139
    const-string v2, "TtsResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseJSON errNo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v2, v1}, Lcom/baidu/tts/m/h;->a(I)V

    .line 141
    if-eqz v1, :cond_48

    .line 142
    sget-object v2, Lcom/baidu/tts/f/g;->w:Lcom/baidu/tts/f/g;

    invoke-virtual {v2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->g:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3, v1, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 160
    :goto_47
    return-void

    .line 148
    :cond_48
    sget-object v1, Lcom/baidu/tts/f/g;->W:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v2, v1}, Lcom/baidu/tts/m/h;->a(Ljava/lang/String;)V

    .line 150
    sget-object v1, Lcom/baidu/tts/f/g;->X:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 151
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v2, v1}, Lcom/baidu/tts/m/h;->b(I)V

    .line 152
    sget-object v1, Lcom/baidu/tts/f/g;->z:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->d(I)V
    :try_end_75
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_75} :catch_76
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_75} :catch_7b

    goto :goto_47

    .line 155
    :catch_76
    move-exception v0

    .line 156
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_47

    .line 157
    :catch_7b
    move-exception v0

    .line 158
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_47
.end method

.method private b(Lorg/apache/http/HttpEntity;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string v0, "--BD**TTS++LIB"

    .line 73
    const-string v2, "--"

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :try_start_16
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_1b} :catch_37

    move-result-object v0

    .line 84
    :goto_1c
    :try_start_1c
    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_3d

    move-result-object v1

    .line 89
    :goto_20
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/baidu/tts/tools/CommonUtility;->indexOf([B[BI)I

    move-result v2

    .line 90
    if-gez v2, :cond_42

    .line 91
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->l:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 121
    :cond_36
    :goto_36
    return-void

    .line 78
    :catch_37
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1c

    .line 85
    :catch_3d
    move-exception v2

    .line 87
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .line 96
    :cond_42
    array-length v3, v0

    add-int/2addr v3, v2

    invoke-static {v1, v0, v3}, Lcom/baidu/tts/tools/CommonUtility;->indexOf([B[BI)I

    move-result v3

    .line 98
    if-gez v3, :cond_5a

    .line 99
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->l:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_36

    .line 104
    :cond_5a
    array-length v4, v0

    add-int/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/baidu/tts/tools/CommonUtility;->copyBytesOfRange([BII)[B

    move-result-object v2

    .line 108
    :try_start_60
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/baidu/tts/b/a/b/h;->a(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_60 .. :try_end_6a} :catch_7e

    .line 113
    :goto_6a
    array-length v2, v0

    add-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Lcom/baidu/tts/tools/CommonUtility;->indexOf([B[BI)I

    move-result v2

    .line 115
    if-ltz v2, :cond_36

    .line 116
    array-length v0, v0

    add-int/2addr v0, v3

    invoke-static {v1, v0, v2}, Lcom/baidu/tts/tools/CommonUtility;->copyBytesOfRange([BII)[B

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a([B)V

    goto :goto_36

    .line 109
    :catch_7e
    move-exception v2

    .line 111
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6a
.end method

.method private c(Lorg/apache/http/HttpEntity;)V
    .registers 4

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    :try_start_1
    sget-object v1, Lcom/baidu/tts/f/d;->c:Lcom/baidu/tts/f/d;

    invoke-virtual {v1}, Lcom/baidu/tts/f/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_a} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_14

    move-result-object v0

    .line 132
    :goto_b
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/b/h;->a(Ljava/lang/String;)V

    .line 133
    return-void

    .line 127
    :catch_f
    move-exception v1

    .line 128
    invoke-virtual {v1}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_b

    .line 129
    :catch_14
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b
.end method


# virtual methods
.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .registers 6

    .prologue
    .line 64
    const-string v0, "application/json"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 65
    invoke-direct {p0, p4}, Lcom/baidu/tts/b/a/b/h;->c(Lorg/apache/http/HttpEntity;)V

    .line 69
    :goto_b
    return-void

    .line 67
    :cond_c
    invoke-direct {p0, p4}, Lcom/baidu/tts/b/a/b/h;->b(Lorg/apache/http/HttpEntity;)V

    goto :goto_b
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Throwable;)V
    .registers 9

    .prologue
    .line 175
    const-string v0, "TtsResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->b:Lcom/baidu/tts/f/n;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p5}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 180
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b/f$b;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/h;->b:Lcom/baidu/tts/b/a/b/f$b;

    .line 51
    return-void
.end method
