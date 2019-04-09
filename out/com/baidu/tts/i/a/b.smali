.class public Lcom/baidu/tts/i/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/baidu/tts/i/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e()I
    .registers 3

    .prologue
    .line 53
    iget v0, p0, Lcom/baidu/tts/i/a/b;->a:I

    iget v1, p0, Lcom/baidu/tts/i/a/b;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private f()I
    .registers 3

    .prologue
    .line 57
    iget v0, p0, Lcom/baidu/tts/i/a/b;->d:I

    iget v1, p0, Lcom/baidu/tts/i/a/b;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/baidu/tts/i/a/b;->a:I

    .line 35
    iput v0, p0, Lcom/baidu/tts/i/a/b;->b:I

    .line 36
    iput v0, p0, Lcom/baidu/tts/i/a/b;->d:I

    .line 37
    iput v0, p0, Lcom/baidu/tts/i/a/b;->e:I

    .line 38
    iput v0, p0, Lcom/baidu/tts/i/a/b;->f:I

    .line 39
    iput v0, p0, Lcom/baidu/tts/i/a/b;->g:I

    .line 41
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcom/baidu/tts/i/a/b;->c:I

    .line 31
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 48
    iget v0, p0, Lcom/baidu/tts/i/a/b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/tts/i/a/b;->b:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/tts/i/a/b;->f:I

    .line 50
    return-void
.end method

.method public c()Lcom/baidu/tts/i/a/a;
    .registers 6

    .prologue
    .line 73
    new-instance v0, Lcom/baidu/tts/i/a/a;

    invoke-direct {v0}, Lcom/baidu/tts/i/a/a;-><init>()V

    .line 74
    invoke-direct {p0}, Lcom/baidu/tts/i/a/b;->f()I

    move-result v1

    .line 75
    invoke-direct {p0}, Lcom/baidu/tts/i/a/b;->e()I

    move-result v2

    .line 76
    if-gt v1, v2, :cond_69

    .line 77
    iget v2, p0, Lcom/baidu/tts/i/a/b;->e:I

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 78
    iget v3, p0, Lcom/baidu/tts/i/a/b;->f:I

    invoke-virtual {v0, v3}, Lcom/baidu/tts/i/a/a;->a(I)V

    .line 79
    invoke-virtual {v0, v2}, Lcom/baidu/tts/i/a/a;->b(I)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/tts/i/a/b;->e:I

    .line 81
    iget v1, p0, Lcom/baidu/tts/i/a/b;->e:I

    iput v1, p0, Lcom/baidu/tts/i/a/b;->d:I

    .line 82
    iget v1, p0, Lcom/baidu/tts/i/a/b;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/tts/i/a/b;->f:I

    .line 83
    iget v1, p0, Lcom/baidu/tts/i/a/b;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/tts/i/a/b;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 85
    const-string v2, "UtteranceSubpackager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentProgressStartIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/tts/i/a/b;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--mCurrentAllUtteranceLenght="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/tts/i/a/b;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--percent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/baidu/tts/i/a/a;->a(F)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/i/a/a;->a(Z)V

    .line 96
    :goto_68
    return-object v0

    .line 90
    :cond_69
    iget v1, p0, Lcom/baidu/tts/i/a/b;->b:I

    iget v2, p0, Lcom/baidu/tts/i/a/b;->e:I

    sub-int/2addr v1, v2

    .line 91
    iget v2, p0, Lcom/baidu/tts/i/a/b;->f:I

    invoke-virtual {v0, v2}, Lcom/baidu/tts/i/a/a;->a(I)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/baidu/tts/i/a/a;->b(I)V

    .line 93
    iget v2, p0, Lcom/baidu/tts/i/a/b;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/baidu/tts/i/a/b;->e:I

    .line 94
    iget v2, p0, Lcom/baidu/tts/i/a/b;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/tts/i/a/b;->f:I

    goto :goto_68
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 120
    iput p1, p0, Lcom/baidu/tts/i/a/b;->g:I

    .line 121
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/baidu/tts/i/a/b;->g:I

    return v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 65
    iget v0, p0, Lcom/baidu/tts/i/a/b;->e:I

    invoke-direct {p0}, Lcom/baidu/tts/i/a/b;->e()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/baidu/tts/i/a/b;->c()Lcom/baidu/tts/i/a/a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method
