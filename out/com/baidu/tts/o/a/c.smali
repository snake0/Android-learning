.class public Lcom/baidu/tts/o/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/aop/tts/ITts;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/baidu/tts/m/j;

.field private c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

.field private d:Lcom/baidu/tts/f/m;

.field private e:Lcom/baidu/tts/a/c/c;

.field private volatile f:Lcom/baidu/tts/o/a/a;

.field private g:Lcom/baidu/tts/o/a/d;

.field private h:Lcom/baidu/tts/o/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/baidu/tts/o/a/c;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/baidu/tts/m/j;

    invoke-direct {v0}, Lcom/baidu/tts/m/j;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    .line 50
    new-instance v0, Lcom/baidu/tts/o/a/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/o/a/d;-><init>(Lcom/baidu/tts/o/a/c;)V

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->g:Lcom/baidu/tts/o/a/d;

    .line 51
    new-instance v0, Lcom/baidu/tts/o/a/b;

    invoke-direct {v0, p0}, Lcom/baidu/tts/o/a/b;-><init>(Lcom/baidu/tts/o/a/c;)V

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->h:Lcom/baidu/tts/o/a/b;

    .line 52
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->g:Lcom/baidu/tts/o/a/d;

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    .line 53
    return-void
.end method


# virtual methods
.method a(FF)I
    .registers 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/c/c;->a(FF)I

    move-result v0

    return v0
.end method

.method a(I)I
    .registers 3

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->f()Lcom/baidu/tts/a/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/tts/a/c/a;->a()Lcom/baidu/tts/b/b/a/c;

    move-result-object v0

    .line 338
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a/c;->a(I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    .line 340
    :goto_e
    return v0

    .line 339
    :catch_f
    move-exception v0

    .line 340
    const/4 v0, -0x1

    goto :goto_e
.end method

.method a(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    if-eqz v0, :cond_b

    .line 293
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/j;->a(Lcom/baidu/tts/f/g;Ljava/lang/String;)I

    move-result v0

    .line 295
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method a(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method a(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/m/f;)I

    move-result v0

    return v0
.end method

.method a(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/m/g;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/baidu/tts/o/a/d;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->g:Lcom/baidu/tts/o/a/d;

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 276
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/tts/h/b/b;->a(Landroid/content/Context;)V

    .line 277
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 3

    .prologue
    .line 355
    invoke-static {p1}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/m/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/o/a/c;->a(Lcom/baidu/tts/m/h;)V

    .line 356
    return-void
.end method

.method a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .registers 4

    .prologue
    .line 263
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eq p1, v0, :cond_13

    .line 264
    iput-object p1, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 265
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    if-eqz v0, :cond_13

    .line 266
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 269
    :cond_13
    return-void
.end method

.method a(Lcom/baidu/tts/f/m;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    .line 281
    return-void
.end method

.method public a(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eqz v0, :cond_9

    .line 360
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onError(Lcom/baidu/tts/m/h;)V

    .line 362
    :cond_9
    return-void
.end method

.method a(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/m/i;)V

    .line 301
    return-void
.end method

.method a(Lcom/baidu/tts/o/a/a;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    .line 183
    return-void
.end method

.method public auth(Lcom/baidu/tts/f/m;)Lcom/baidu/tts/auth/AuthInfo;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->auth(Lcom/baidu/tts/f/m;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->b(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/baidu/tts/f/m;)Lcom/baidu/tts/auth/AuthInfo;
    .registers 4

    .prologue
    .line 288
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/f/m;Lcom/baidu/tts/m/j;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->b(Lcom/baidu/tts/m/i;)V

    .line 305
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->c()V

    .line 68
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->d()V

    .line 73
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->e()V

    .line 78
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->f()V

    .line 83
    return-void
.end method

.method public freeCustomResource(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->freeCustomResource(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public g()Lcom/baidu/tts/o/a/b;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->h:Lcom/baidu/tts/o/a/b;

    return-object v0
.end method

.method public getMode()Lcom/baidu/tts/f/m;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->getMode()Lcom/baidu/tts/f/m;

    move-result-object v0

    return-object v0
.end method

.method public getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    return-object v0
.end method

.method public getTtsParams()Lcom/baidu/tts/m/j;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->getTtsParams()Lcom/baidu/tts/m/j;

    move-result-object v0

    return-object v0
.end method

.method h()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 194
    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    if-nez v1, :cond_9

    .line 195
    sget-object v1, Lcom/baidu/tts/f/m;->a:Lcom/baidu/tts/f/m;

    iput-object v1, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    .line 197
    :cond_9
    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    if-nez v1, :cond_14

    .line 198
    new-instance v1, Lcom/baidu/tts/m/j;

    invoke-direct {v1}, Lcom/baidu/tts/m/j;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    .line 200
    :cond_14
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/tts/h/b/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 201
    sget-boolean v2, Lcom/baidu/tts/o/a/c;->a:Z

    if-nez v2, :cond_28

    if-eqz v1, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 205
    :cond_28
    sget-object v1, Lcom/baidu/tts/o/a/c$1;->a:[I

    iget-object v2, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    invoke-virtual {v2}, Lcom/baidu/tts/f/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ae

    move-object v1, v0

    .line 222
    :goto_36
    if-eqz v1, :cond_a3

    if-eqz v0, :cond_a3

    .line 223
    invoke-interface {v1, v0}, Lcom/baidu/tts/b/a/a/d;->a(Ljava/lang/Object;)V

    .line 224
    new-instance v0, Lcom/baidu/tts/b/b/a/f;

    invoke-direct {v0}, Lcom/baidu/tts/b/b/a/f;-><init>()V

    .line 225
    iget-object v2, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v2}, Lcom/baidu/tts/m/j;->b()Lcom/baidu/tts/m/a;

    move-result-object v2

    .line 226
    invoke-interface {v0, v2}, Lcom/baidu/tts/b/b/a/c;->a(Ljava/lang/Object;)V

    .line 227
    new-instance v2, Lcom/baidu/tts/a/c/c;

    invoke-direct {v2}, Lcom/baidu/tts/a/c/c;-><init>()V

    iput-object v2, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    .line 228
    new-instance v2, Lcom/baidu/tts/a/c/b;

    iget-object v3, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-direct {v2, v1, v0, v3}, Lcom/baidu/tts/a/c/b;-><init>(Lcom/baidu/tts/b/a/a/d;Lcom/baidu/tts/b/b/a/c;Lcom/baidu/tts/m/j;)V

    .line 229
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/a/c/a;)V

    .line 230
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eqz v0, :cond_69

    .line 231
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 233
    :cond_69
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 235
    :goto_6f
    return-object v0

    .line 207
    :pswitch_70
    invoke-static {}, Lcom/baidu/tts/b/a/a;->a()Lcom/baidu/tts/b/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/f;->a:Lcom/baidu/tts/f/f;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/f/f;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v1

    .line 208
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->c()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    goto :goto_36

    .line 211
    :pswitch_81
    invoke-static {}, Lcom/baidu/tts/b/a/a;->a()Lcom/baidu/tts/b/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/f;->b:Lcom/baidu/tts/f/f;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/f/f;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v1

    .line 212
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->d()Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v0

    goto :goto_36

    .line 215
    :pswitch_92
    invoke-static {}, Lcom/baidu/tts/b/a/a;->a()Lcom/baidu/tts/b/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/f;->c:Lcom/baidu/tts/f/f;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/f/f;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v1

    .line 216
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->a()Lcom/baidu/tts/m/b;

    move-result-object v0

    goto :goto_36

    .line 235
    :cond_a3
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->S:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_6f

    .line 205
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_70
        :pswitch_81
        :pswitch_92
    .end packed-switch
.end method

.method i()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->b()V

    .line 245
    return-void
.end method

.method j()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->c()V

    .line 249
    return-void
.end method

.method k()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->d()V

    .line 253
    return-void
.end method

.method l()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->e()V

    .line 257
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/auth/a;->b()V

    .line 258
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/h/b/b;->f()V

    .line 259
    new-instance v0, Lcom/baidu/tts/m/j;

    invoke-direct {v0}, Lcom/baidu/tts/m/j;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    .line 260
    return-void
.end method

.method public loadCustomResource(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->loadCustomResource(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->loadEnglishModel(Lcom/baidu/tts/m/f;)I

    move-result v0

    return v0
.end method

.method public loadModel(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->loadModel(Lcom/baidu/tts/m/g;)I

    move-result v0

    return v0
.end method

.method m()Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    return-object v0
.end method

.method n()Lcom/baidu/tts/f/m;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    return-object v0
.end method

.method o()Lcom/baidu/tts/m/j;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    return-object v0
.end method

.method public p()I
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-nez v0, :cond_10

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/baidu/tts/f/n;->S:Lcom/baidu/tts/f/n;

    invoke-virtual {v1}, Lcom/baidu/tts/f/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_10
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->S:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lcom/baidu/tts/o/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 351
    const/4 v0, -0x1

    return v0
.end method

.method public q()Z
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->h:Lcom/baidu/tts/o/a/b;

    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setAudioStreamType(I)I
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->setAudioStreamType(I)I

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->setContext(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public setMode(Lcom/baidu/tts/f/m;)V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->setMode(Lcom/baidu/tts/f/m;)V

    .line 103
    return-void
.end method

.method public setParam(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/o/a/a;->setParam(Lcom/baidu/tts/f/g;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setStereoVolume(FF)I
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/o/a/a;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 88
    return-void
.end method

.method public speak(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->speak(Lcom/baidu/tts/m/i;)V

    .line 123
    return-void
.end method

.method public synthesize(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->synthesize(Lcom/baidu/tts/m/i;)V

    .line 128
    return-void
.end method
