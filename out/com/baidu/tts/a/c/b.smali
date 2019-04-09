.class public Lcom/baidu/tts/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/a/c/a;


# instance fields
.field private a:Lcom/baidu/tts/b/a/a/d;

.field private b:Lcom/baidu/tts/b/b/a/c;

.field private c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

.field private d:Lcom/baidu/tts/b/a/b;

.field private e:Lcom/baidu/tts/b/b/a;

.field private f:Lcom/baidu/tts/b/a/b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/d;Lcom/baidu/tts/b/b/a/c;Lcom/baidu/tts/m/j;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    .line 43
    iput-object p2, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/tts/a/c/b;Lcom/baidu/tts/m/h;)Z
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/m/h;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/baidu/tts/m/h;)Z
    .registers 3

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->e()Lcom/baidu/tts/m/i;

    move-result-object v0

    .line 282
    if-nez v0, :cond_8

    .line 283
    const/4 v0, 0x0

    .line 286
    :goto_7
    return v0

    .line 285
    :cond_8
    invoke-virtual {v0}, Lcom/baidu/tts/m/i;->g()Lcom/baidu/tts/f/i;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lcom/baidu/tts/f/i;->a(Lcom/baidu/tts/f/i;)Z

    move-result v0

    goto :goto_7
.end method

.method static synthetic b(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/b/b/a/c;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    return-object v0
.end method


# virtual methods
.method public a(FF)I
    .registers 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/b/b/a/c;->a(FF)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/f;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/g;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/baidu/tts/b/b/a/c;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .registers 3

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/tts/a/c/b;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 115
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/b/a/a/d;)V

    .line 116
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/b/b/a/c;)V

    .line 117
    return-void
.end method

.method protected a(Lcom/baidu/tts/b/a/a/d;)V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->d:Lcom/baidu/tts/b/a/b;

    if-nez v0, :cond_b

    .line 138
    new-instance v0, Lcom/baidu/tts/a/c/b$1;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/c/b$1;-><init>(Lcom/baidu/tts/a/c/b;)V

    iput-object v0, p0, Lcom/baidu/tts/a/c/b;->d:Lcom/baidu/tts/b/a/b;

    .line 179
    :cond_b
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->d:Lcom/baidu/tts/b/a/b;

    invoke-interface {p1, v0}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/b/a/b;)V

    .line 180
    return-void
.end method

.method protected a(Lcom/baidu/tts/b/b/a/c;)V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->e:Lcom/baidu/tts/b/b/a;

    if-nez v0, :cond_b

    .line 184
    new-instance v0, Lcom/baidu/tts/a/c/b$2;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/c/b$2;-><init>(Lcom/baidu/tts/a/c/b;)V

    iput-object v0, p0, Lcom/baidu/tts/a/c/b;->e:Lcom/baidu/tts/b/b/a;

    .line 229
    :cond_b
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->e:Lcom/baidu/tts/b/b/a;

    invoke-interface {p1, v0}, Lcom/baidu/tts/b/b/a/c;->a(Lcom/baidu/tts/b/b/a;)V

    .line 230
    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/i;)V

    .line 125
    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->b(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v1}, Lcom/baidu/tts/b/b/a/c;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 54
    invoke-virtual {p0}, Lcom/baidu/tts/a/c/b;->g()V

    .line 55
    return-object v0
.end method

.method public b(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->o()V

    .line 133
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/i;)V

    .line 134
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->c()V

    .line 73
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->c()V

    .line 74
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->d()V

    .line 82
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->d()V

    .line 83
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 90
    const-string v0, "TtsAdapter"

    const-string v1, "before engine stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->e()V

    .line 92
    const-string v0, "TtsAdapter"

    const-string v1, "after engine stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->e()V

    .line 94
    const-string v0, "TtsAdapter"

    const-string v1, "after play stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 102
    const-string v0, "TtsAdapter"

    const-string v1, "before engine destroy"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->f()V

    .line 104
    const-string v0, "TtsAdapter"

    const-string v1, "after engine destroy"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->f()V

    .line 106
    const-string v0, "TtsAdapter"

    const-string v1, "after player destroy"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 233
    new-instance v0, Lcom/baidu/tts/a/c/b$3;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/c/b$3;-><init>(Lcom/baidu/tts/a/c/b;)V

    iput-object v0, p0, Lcom/baidu/tts/a/c/b;->f:Lcom/baidu/tts/b/a/b;

    .line 277
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    iget-object v1, p0, Lcom/baidu/tts/a/c/b;->f:Lcom/baidu/tts/b/a/b;

    invoke-interface {v0, v1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/b/a/b;)V

    .line 278
    return-void
.end method
