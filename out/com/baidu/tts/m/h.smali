.class public Lcom/baidu/tts/m/h;
.super Lcom/baidu/tts/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/n/a",
        "<",
        "Lcom/baidu/tts/m/h;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field private b:Lcom/baidu/tts/f/e;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:[B

.field private i:Lcom/baidu/tts/f/a;

.field private j:Lcom/baidu/tts/m/i;

.field private k:Lcom/baidu/tts/aop/tts/TtsError;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/baidu/tts/m/i;Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/m/h;
    .registers 3

    .prologue
    .line 227
    invoke-static {p0}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 229
    return-object v0
.end method

.method public static b(Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/m/h;
    .registers 2

    .prologue
    .line 221
    new-instance v0, Lcom/baidu/tts/m/h;

    invoke-direct {v0}, Lcom/baidu/tts/m/h;-><init>()V

    .line 222
    invoke-virtual {v0, p0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 223
    return-object v0
.end method

.method public static b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;
    .registers 2

    .prologue
    .line 215
    new-instance v0, Lcom/baidu/tts/m/h;

    invoke-direct {v0}, Lcom/baidu/tts/m/h;-><init>()V

    .line 216
    invoke-virtual {v0, p0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/m/i;)V

    .line 217
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/baidu/tts/m/h;->d:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 59
    iput p1, p0, Lcom/baidu/tts/m/h;->d:I

    .line 60
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/baidu/tts/m/h;->k:Lcom/baidu/tts/aop/tts/TtsError;

    .line 194
    return-void
.end method

.method public a(Lcom/baidu/tts/f/a;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/baidu/tts/m/h;->i:Lcom/baidu/tts/f/a;

    .line 166
    return-void
.end method

.method public a(Lcom/baidu/tts/f/e;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/baidu/tts/m/h;->b:Lcom/baidu/tts/f/e;

    .line 208
    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/baidu/tts/m/h;->j:Lcom/baidu/tts/m/i;

    .line 180
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baidu/tts/m/h;->e:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public a([B)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/tts/m/h;->h:[B

    .line 138
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/baidu/tts/m/h;->f:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 101
    iput p1, p0, Lcom/baidu/tts/m/h;->f:I

    .line 102
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/baidu/tts/m/h;->g:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 109
    iput p1, p0, Lcom/baidu/tts/m/h;->a:I

    .line 110
    return-void
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 123
    iput p1, p0, Lcom/baidu/tts/m/h;->g:I

    .line 124
    return-void
.end method

.method public d()[B
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/tts/m/h;->h:[B

    return-object v0
.end method

.method public e()Lcom/baidu/tts/m/i;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/tts/m/h;->j:Lcom/baidu/tts/m/i;

    return-object v0
.end method

.method public e(I)V
    .registers 2

    .prologue
    .line 151
    iput p1, p0, Lcom/baidu/tts/m/h;->c:I

    .line 152
    return-void
.end method

.method public f()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/baidu/tts/m/h;->k:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public g()Lcom/baidu/tts/f/e;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/baidu/tts/m/h;->b:Lcom/baidu/tts/f/e;

    return-object v0
.end method
