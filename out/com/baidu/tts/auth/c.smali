.class public Lcom/baidu/tts/auth/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/k/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/k/b",
        "<",
        "Lcom/baidu/tts/auth/c;",
        "Lcom/baidu/tts/auth/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 194
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 205
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "grant_type"

    const-string v3, "client_credentials"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_id"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_secret"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v1, "https://openapi.baidu.com/oauth/2.0/token?"

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/auth/c;)I
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1}, Lcom/baidu/tts/auth/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/baidu/tts/auth/c;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 99
    invoke-virtual {p1}, Lcom/baidu/tts/auth/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/baidu/tts/auth/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v3, "OnlineAuth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAK="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/tts/auth/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--mSK="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/tts/auth/c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--ak2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--sk2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/baidu/tts/auth/c;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/baidu/tts/tools/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/baidu/tts/auth/c;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/tts/tools/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 103
    const/4 v0, 0x0

    .line 112
    :cond_60
    :goto_60
    return v0

    .line 108
    :cond_61
    const-string v2, "OnlineAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProductId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/tts/auth/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--productId2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz v1, :cond_60

    .line 112
    iget-object v0, p0, Lcom/baidu/tts/auth/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_60
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/auth/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/tts/auth/c;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/tts/auth/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/tts/auth/c;->b:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/tts/auth/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baidu/tts/auth/c;->c:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/baidu/tts/auth/c;->d()Lcom/baidu/tts/auth/c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 32
    check-cast p1, Lcom/baidu/tts/auth/c;

    invoke-virtual {p0, p1}, Lcom/baidu/tts/auth/c;->a(Lcom/baidu/tts/auth/c;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/baidu/tts/auth/c$a;
    .registers 8

    .prologue
    .line 124
    const-string v0, "OnlineAuth"

    const-string v1, "enter online auth"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v6, Lcom/baidu/tts/auth/c$a;

    invoke-direct {v6}, Lcom/baidu/tts/auth/c$a;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/baidu/tts/auth/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 128
    :try_start_14
    iget-object v0, p0, Lcom/baidu/tts/auth/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/tts/auth/c;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/tts/auth/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 129
    if-eqz v0, :cond_5b

    .line 130
    iget-object v0, p0, Lcom/baidu/tts/auth/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/tts/auth/c;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/tts/auth/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v0, "OnlineAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/baidu/tts/loopj/SyncHttpClient;

    const/4 v1, 0x1

    const/16 v3, 0x50

    const/16 v4, 0x1bb

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>(ZII)V

    .line 133
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/baidu/tts/auth/c$1;

    invoke-direct {v5, p0, v6}, Lcom/baidu/tts/auth/c$1;-><init>(Lcom/baidu/tts/auth/c;Lcom/baidu/tts/auth/c$a;)V

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_53} :catch_69

    .line 189
    :goto_53
    const-string v0, "OnlineAuth"

    const-string v1, "end online auth"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-object v6

    .line 179
    :cond_5b
    :try_start_5b
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 180
    invoke-virtual {v6, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_68} :catch_69

    goto :goto_53

    .line 182
    :catch_69
    move-exception v0

    .line 183
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->a:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 184
    invoke-virtual {v6, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_53

    .line 187
    :cond_78
    iget-object v0, p0, Lcom/baidu/tts/auth/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/baidu/tts/auth/c$a;->a(Ljava/lang/String;)V

    goto :goto_53
.end method
