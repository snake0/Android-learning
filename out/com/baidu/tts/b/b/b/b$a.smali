.class public Lcom/baidu/tts/b/b/b/b$a;
.super Lcom/baidu/tts/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/m/c",
        "<",
        "Lcom/baidu/tts/b/b/b/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/f/k;

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 321
    invoke-direct {p0}, Lcom/baidu/tts/m/c;-><init>()V

    .line 326
    sget-object v0, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b$a;->a:Lcom/baidu/tts/f/k;

    .line 327
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->b:I

    .line 328
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->c:I

    .line 329
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->d:I

    .line 330
    iput v1, p0, Lcom/baidu/tts/b/b/b/b$a;->e:F

    .line 331
    iput v1, p0, Lcom/baidu/tts/b/b/b/b$a;->f:F

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b$a;->a:Lcom/baidu/tts/f/k;

    invoke-virtual {v0}, Lcom/baidu/tts/f/k;->a()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .registers 2

    .prologue
    .line 404
    iput p1, p0, Lcom/baidu/tts/b/b/b/b$a;->e:F

    .line 405
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 355
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->b:I

    return v0
.end method

.method public b(F)V
    .registers 2

    .prologue
    .line 418
    iput p1, p0, Lcom/baidu/tts/b/b/b/b$a;->f:F

    .line 419
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->d:I

    return v0
.end method

.method public e()F
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->e:F

    return v0
.end method

.method public f()F
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->f:F

    return v0
.end method
