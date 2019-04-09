.class public abstract Lcom/baidu/tts/b/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/b/a/b/b;


# instance fields
.field protected a:Lcom/baidu/tts/b/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 3

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/b/a/b;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/a;->a:Lcom/baidu/tts/b/a/b;

    .line 51
    return-void
.end method

.method protected a(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/a;->a:Lcom/baidu/tts/b/a/b;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/a;->a:Lcom/baidu/tts/b/a/b;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->c(Lcom/baidu/tts/m/h;)V

    .line 100
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
