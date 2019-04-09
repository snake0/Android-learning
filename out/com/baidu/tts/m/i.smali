.class public Lcom/baidu/tts/m/i;
.super Lcom/baidu/tts/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/n/a",
        "<",
        "Lcom/baidu/tts/m/i;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/tts/f/i;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/m/i;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Lcom/baidu/tts/m/i;->b(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/baidu/tts/m/i;->d(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/m/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/tts/m/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    .line 37
    :cond_1f
    return-void
.end method

.method public a(Lcom/baidu/tts/f/i;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/baidu/tts/m/i;->d:Lcom/baidu/tts/f/i;

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/tts/m/i;->e:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/tts/m/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/tts/m/i;->b:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/tts/m/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 103
    if-nez p1, :cond_4

    .line 104
    const-string p1, "0"

    .line 106
    :cond_4
    iput-object p1, p0, Lcom/baidu/tts/m/i;->c:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public e()[B
    .registers 4

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/tts/m/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 89
    :goto_9
    return-object v0

    .line 85
    :catch_a
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_9
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/tts/m/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/baidu/tts/f/i;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/tts/m/i;->d:Lcom/baidu/tts/f/i;

    return-object v0
.end method
