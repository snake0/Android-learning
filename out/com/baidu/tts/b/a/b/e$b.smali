.class public Lcom/baidu/tts/b/a/b/e$b;
.super Lcom/baidu/tts/m/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/m/d",
        "<",
        "Lcom/baidu/tts/b/a/b/e$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/baidu/tts/m/d;-><init>()V

    .line 210
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Ljava/lang/String;

    .line 211
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Ljava/lang/String;

    .line 212
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->c:Ljava/lang/String;

    .line 217
    const-string v0, "5"

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 230
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->isLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 231
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    goto :goto_9
.end method

.method public a()J
    .registers 4

    .prologue
    .line 272
    const-wide/16 v0, 0x0

    .line 274
    :try_start_2
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move-result-wide v0

    .line 278
    :goto_8
    return-wide v0

    .line 275
    :catch_9
    move-exception v2

    goto :goto_8
.end method

.method public b()J
    .registers 4

    .prologue
    .line 282
    const-wide/16 v0, 0x0

    .line 284
    :try_start_2
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move-result-wide v0

    .line 288
    :goto_8
    return-wide v0

    .line 285
    :catch_9
    move-exception v2

    goto :goto_8
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public c(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 263
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->isLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 264
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->c:Ljava/lang/String;

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    goto :goto_9
.end method

.method public c()J
    .registers 4

    .prologue
    .line 292
    const-wide/16 v0, 0x0

    .line 294
    :try_start_2
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e$b;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move-result-wide v0

    .line 298
    :goto_8
    return-wide v0

    .line 295
    :catch_9
    move-exception v2

    goto :goto_8
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 312
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->d:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->e:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 340
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->f:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 354
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->g:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->h:Ljava/lang/String;

    .line 359
    return-void
.end method
