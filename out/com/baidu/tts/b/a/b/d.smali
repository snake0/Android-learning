.class public Lcom/baidu/tts/b/a/b/d;
.super Lcom/baidu/tts/b/a/b/a;
.source "SourceFile"


# instance fields
.field private b:Lcom/baidu/tts/m/b;

.field private c:Lcom/baidu/tts/b/a/b/f;

.field private d:Lcom/baidu/tts/b/a/b/e;

.field private e:Lcom/baidu/tts/b/a/b/c;

.field private f:Lcom/baidu/tts/aop/tts/TtsError;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/a;-><init>()V

    .line 30
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    .line 31
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    .line 36
    new-instance v0, Lcom/baidu/tts/b/a/b/f;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    .line 37
    new-instance v0, Lcom/baidu/tts/b/a/b/e;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    .line 38
    new-instance v0, Lcom/baidu/tts/b/a/b/c;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/d;I)I
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/d;Lcom/baidu/tts/m/h;)Lcom/baidu/tts/m/h;
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/d;->b(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/m/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/tts/b/a/b/d;I)I
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    return p1
.end method

.method private b(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/m/h;
    .registers 4

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->b()I

    move-result v0

    .line 205
    if-ltz v0, :cond_17

    .line 206
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    add-int/2addr v0, v1

    .line 210
    :goto_9
    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->b(I)V

    .line 211
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result v0

    .line 212
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    add-int/2addr v0, v1

    .line 213
    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->d(I)V

    .line 214
    return-object p1

    .line 208
    :cond_17
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    sub-int/2addr v0, v1

    goto :goto_9
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/f;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .registers 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->f:Lcom/baidu/tts/aop/tts/TtsError;

    if-nez v0, :cond_b

    .line 245
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/g;)I

    move-result v0

    .line 256
    :goto_a
    return v0

    .line 247
    :cond_b
    invoke-virtual {p1}, Lcom/baidu/tts/m/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/baidu/tts/m/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/m/b;

    invoke-virtual {v2}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v2

    .line 250
    invoke-virtual {v2, v0}, Lcom/baidu/tts/b/a/b/e$b;->d(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, v1}, Lcom/baidu/tts/b/a/b/e$b;->e(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->f:Lcom/baidu/tts/aop/tts/TtsError;

    .line 253
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->f:Lcom/baidu/tts/aop/tts/TtsError;

    if-nez v0, :cond_2d

    .line 254
    const/4 v0, 0x0

    goto :goto_a

    .line 256
    :cond_2d
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->f:Lcom/baidu/tts/aop/tts/TtsError;

    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailCode()I

    move-result v0

    goto :goto_a
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    new-instance v1, Lcom/baidu/tts/b/a/b/d$1;

    invoke-direct {v1, p0}, Lcom/baidu/tts/b/a/b/d$1;-><init>(Lcom/baidu/tts/b/a/b/d;)V

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b;)V

    .line 100
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    new-instance v1, Lcom/baidu/tts/b/a/b/d$2;

    invoke-direct {v1, p0}, Lcom/baidu/tts/b/a/b/d$2;-><init>(Lcom/baidu/tts/b/a/b/d;)V

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b;)V

    .line 139
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f;->a()Lcom/baidu/tts/aop/tts/TtsError;

    .line 140
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->f:Lcom/baidu/tts/aop/tts/TtsError;

    .line 141
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/d;->f:Lcom/baidu/tts/aop/tts/TtsError;

    if-eqz v1, :cond_30

    .line 143
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->N:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 145
    :cond_30
    return-object v0
.end method

.method public a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    .line 183
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    .line 185
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/c;->a()Z

    move-result v0

    .line 186
    if-eqz v0, :cond_45

    .line 187
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_44

    .line 189
    const-string v1, "MixSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "online synthesize ttserror="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/baidu/tts/m/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/i;->b(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 199
    :cond_44
    :goto_44
    return-object v0

    .line 196
    :cond_45
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_44
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AllSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TAllSynthesizerParams;)V"
        }
    .end annotation

    .prologue
    .line 165
    check-cast p1, Lcom/baidu/tts/m/b;

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/m/b;

    .line 166
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    .line 167
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/f$b;->a(I)V

    .line 168
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/f$b;->b(I)V

    .line 169
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f;->a(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/m/b;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/c;->a(Lcom/baidu/tts/m/b;)V

    .line 173
    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 154
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 155
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/c;->a(Lcom/baidu/tts/m/b;)V

    .line 156
    return-object v1
.end method
