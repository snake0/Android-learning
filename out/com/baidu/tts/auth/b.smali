.class public Lcom/baidu/tts/auth/b;
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
        "Lcom/baidu/tts/auth/b;",
        "Lcom/baidu/tts/auth/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/auth/b;)I
    .registers 5

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/baidu/tts/auth/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/baidu/tts/auth/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/baidu/tts/auth/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/baidu/tts/tools/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 69
    iget-object v2, p0, Lcom/baidu/tts/auth/b;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/baidu/tts/tools/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 70
    if-eqz v0, :cond_1a

    if-eqz v1, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/tts/auth/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/baidu/tts/auth/b;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/tts/auth/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/tts/auth/b;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c()Lcom/baidu/tts/auth/b$a;
    .registers 8

    .prologue
    .line 80
    new-instance v6, Lcom/baidu/tts/auth/b$a;

    invoke-direct {v6}, Lcom/baidu/tts/auth/b$a;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/baidu/tts/auth/b;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/baidu/tts/auth/b$a;->a(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/baidu/tts/auth/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/baidu/tts/auth/b$a;->b(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v6}, Lcom/baidu/tts/auth/b$a;->g()Z

    move-result v0

    .line 84
    if-nez v0, :cond_7f

    .line 85
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/baidu/tts/h/b/b;->h()Landroid/content/Context;

    move-result-object v0

    .line 87
    invoke-virtual {v1}, Lcom/baidu/tts/h/b/b;->i()Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v1, "OfflineAuth"

    const-string v3, "+ downloadLicense"

    invoke-static {v1, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/baidu/tts/auth/b;->a:Ljava/lang/String;

    const-string v3, "0"

    const-string v4, ""

    iget-object v5, p0, Lcom/baidu/tts/auth/b;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 90
    const-string v1, "OfflineAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- downloadLicense ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v6, v0}, Lcom/baidu/tts/auth/b$a;->a(I)V

    .line 92
    if-gez v0, :cond_80

    .line 93
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->t:Lcom/baidu/tts/f/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/tts/auth/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--licensePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/tts/auth/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 96
    invoke-virtual {v6, v0}, Lcom/baidu/tts/auth/b$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 101
    :cond_7f
    :goto_7f
    return-object v6

    .line 98
    :cond_80
    invoke-virtual {v6}, Lcom/baidu/tts/auth/b$a;->g()Z

    goto :goto_7f
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/baidu/tts/auth/b;->c()Lcom/baidu/tts/auth/b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 25
    check-cast p1, Lcom/baidu/tts/auth/b;

    invoke-virtual {p0, p1}, Lcom/baidu/tts/auth/b;->a(Lcom/baidu/tts/auth/b;)I

    move-result v0

    return v0
.end method
