.class public abstract Lcom/baidu/tts/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/j/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/j/b;"
    }
.end annotation


# instance fields
.field protected a:Lcom/baidu/tts/d/a/b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/a/b;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/tts/d/a/a;->a:Lcom/baidu/tts/d/a/b;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;
    .registers 3

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public a(Lcom/baidu/tts/d/a/a;)V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/tts/d/a/a;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/d/a/a;)V

    .line 30
    return-void
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method
