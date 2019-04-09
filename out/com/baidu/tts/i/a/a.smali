.class public Lcom/baidu/tts/i/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/i/a/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/baidu/tts/i/a/a;->a:I

    return v0
.end method

.method public a(F)V
    .registers 2

    .prologue
    .line 68
    iput p1, p0, Lcom/baidu/tts/i/a/a;->d:F

    .line 69
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lcom/baidu/tts/i/a/a;->a:I

    .line 27
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/baidu/tts/i/a/a;->c:Z

    .line 55
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/baidu/tts/i/a/a;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 40
    iput p1, p0, Lcom/baidu/tts/i/a/a;->b:I

    .line 41
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/baidu/tts/i/a/a;->c:Z

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/baidu/tts/i/a/a;->d:F

    return v0
.end method
