.class public abstract Lcom/baidu/tts/b/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/b/a/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/b/a/a/d;"
    }
.end annotation


# instance fields
.field protected a:Lcom/baidu/tts/b/a/a/c;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/c;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->c(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Lcom/baidu/tts/m/f;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Lcom/baidu/tts/m/g;)I

    move-result v0

    return v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/a/b;)V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->a(Lcom/baidu/tts/b/a/a/b;)V

    .line 35
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b/b;)V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Lcom/baidu/tts/b/a/b/b;)V

    .line 96
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b;)V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Lcom/baidu/tts/b/a/b;)V

    .line 104
    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .registers 2

    .prologue
    .line 129
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
    .line 119
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->d(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method
