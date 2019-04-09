.class public abstract Lcom/baidu/tts/b/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/b/b/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/b/b/a/c;"
    }
.end annotation


# instance fields
.field protected a:Lcom/baidu/tts/b/b/a/f;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/b/a/f;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    .line 23
    return-void
.end method


# virtual methods
.method public a(FF)I
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/b/b/a/f;->b(FF)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->b(I)I

    move-result v0

    return v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public a(Lcom/baidu/tts/b/b/a/b;)V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 140
    return-void
.end method

.method public a(Lcom/baidu/tts/b/b/a;)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->b(Lcom/baidu/tts/b/b/a;)V

    .line 92
    return-void
.end method

.method public a(Lcom/baidu/tts/m/h;)V
    .registers 2

    .prologue
    .line 110
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->b(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public o()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method
