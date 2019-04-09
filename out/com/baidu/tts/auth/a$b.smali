.class Lcom/baidu/tts/auth/a$b;
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
        "Lcom/baidu/tts/auth/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/auth/a;

.field private b:Lcom/baidu/tts/b/a/b/f$b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/b/a/b/f$b;)V
    .registers 3

    .prologue
    .line 103
    iput-object p1, p0, Lcom/baidu/tts/auth/a$b;->a:Lcom/baidu/tts/auth/a;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    .line 106
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/auth/c$a;
    .registers 7

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$b;->e()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->a()Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v2}, Lcom/baidu/tts/b/a/b/f$b;->b()Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string v3, "AuthClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "AuthClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ak="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v3, "AuthClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sk="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v3, Lcom/baidu/tts/auth/c;

    invoke-direct {v3}, Lcom/baidu/tts/auth/c;-><init>()V

    .line 122
    invoke-virtual {v3, v0}, Lcom/baidu/tts/auth/c;->a(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3, v1}, Lcom/baidu/tts/auth/c;->b(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3, v2}, Lcom/baidu/tts/auth/c;->c(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/baidu/tts/auth/a$b;->a:Lcom/baidu/tts/auth/a;

    invoke-static {v0}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/auth/a;)Lcom/baidu/tts/k/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/tts/k/c;->a(Lcom/baidu/tts/k/b;)Lcom/baidu/tts/k/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/auth/c$a;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/baidu/tts/auth/a$b;->a()Lcom/baidu/tts/auth/c$a;

    move-result-object v0

    return-object v0
.end method
