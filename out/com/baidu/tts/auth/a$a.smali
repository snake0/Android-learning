.class Lcom/baidu/tts/auth/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/auth/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/auth/a;

.field private b:Lcom/baidu/tts/b/a/b/e$b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/b/a/b/e$b;)V
    .registers 3

    .prologue
    .line 154
    iput-object p1, p0, Lcom/baidu/tts/auth/a$a;->a:Lcom/baidu/tts/auth/a;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/baidu/tts/auth/a$a;->b:Lcom/baidu/tts/b/a/b/e$b;

    .line 157
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/auth/b$a;
    .registers 6

    .prologue
    .line 166
    new-instance v0, Lcom/baidu/tts/auth/b$a;

    invoke-direct {v0}, Lcom/baidu/tts/auth/b$a;-><init>()V

    .line 167
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/tts/h/b/b;->g()Lcom/baidu/tts/h/b/a;

    move-result-object v1

    .line 169
    if-nez v1, :cond_1d

    .line 170
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->Z:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/b$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 184
    :goto_1c
    return-object v0

    .line 174
    :cond_1d
    iget-object v0, p0, Lcom/baidu/tts/auth/a$a;->b:Lcom/baidu/tts/b/a/b/e$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$b;->g()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v0, p0, Lcom/baidu/tts/auth/a$a;->b:Lcom/baidu/tts/b/a/b/e$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$b;->f()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 177
    invoke-virtual {v1}, Lcom/baidu/tts/h/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_33
    const-string v1, "AuthClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "AuthClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "licenseFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/baidu/tts/auth/b;

    invoke-direct {v1}, Lcom/baidu/tts/auth/b;-><init>()V

    .line 182
    invoke-virtual {v1, v2}, Lcom/baidu/tts/auth/b;->a(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/b;->b(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/baidu/tts/auth/a$a;->a:Lcom/baidu/tts/auth/a;

    invoke-static {v0}, Lcom/baidu/tts/auth/a;->b(Lcom/baidu/tts/auth/a;)Lcom/baidu/tts/k/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/c;->a(Lcom/baidu/tts/k/b;)Lcom/baidu/tts/k/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/auth/b$a;

    goto :goto_1c
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/baidu/tts/auth/a$a;->a()Lcom/baidu/tts/auth/b$a;

    move-result-object v0

    return-object v0
.end method
