.class public abstract Lcom/baidu/tts/b/a/a/a;
.super Lcom/baidu/tts/j/a;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/b/a/a/d;


# instance fields
.field protected a:Lcom/baidu/tts/b/a/b/b;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile c:Lcom/baidu/tts/b/a/a/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/tts/j/a;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/m/f;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/m/g;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/baidu/tts/b/a/a/b;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/b/a/a/b;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    .line 40
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b/b;)V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/b/b;)V

    .line 96
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b;)V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/b;)V

    .line 104
    return-void
.end method

.method a(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/a;->C()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 174
    if-nez p1, :cond_d

    .line 175
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 177
    :cond_d
    sget-object v0, Lcom/baidu/tts/f/e;->a:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 178
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 179
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 180
    if-eqz v0, :cond_1c

    .line 181
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->a(Lcom/baidu/tts/m/h;)V

    goto :goto_1c

    .line 186
    :cond_2e
    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/m/i;)V

    .line 130
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->b(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method b(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/a;->C()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 190
    if-nez p1, :cond_d

    .line 191
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 193
    :cond_d
    sget-object v0, Lcom/baidu/tts/f/e;->c:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 195
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 196
    if-eqz v0, :cond_1c

    .line 197
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->c(Lcom/baidu/tts/m/h;)V

    goto :goto_1c

    .line 202
    :cond_2e
    return-void
.end method

.method c(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/a;->C()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 206
    if-nez p1, :cond_d

    .line 207
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 209
    :cond_d
    sget-object v0, Lcom/baidu/tts/f/e;->b:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 211
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 212
    if-eqz v0, :cond_1c

    .line 213
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->b(Lcom/baidu/tts/m/h;)V

    goto :goto_1c

    .line 218
    :cond_2e
    return-void
.end method

.method d(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 221
    if-nez p1, :cond_7

    .line 222
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 224
    :cond_7
    sget-object v0, Lcom/baidu/tts/f/e;->d:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 225
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 226
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 227
    if-eqz v0, :cond_16

    .line 228
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->e(Lcom/baidu/tts/m/h;)V

    goto :goto_16

    .line 232
    :cond_28
    return-void
.end method

.method e(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 249
    if-nez p1, :cond_7

    .line 250
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 252
    :cond_7
    sget-object v0, Lcom/baidu/tts/f/e;->g:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 253
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 254
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 255
    if-eqz v0, :cond_16

    .line 256
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->d(Lcom/baidu/tts/m/h;)V

    goto :goto_16

    .line 260
    :cond_28
    return-void
.end method

.method protected g()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->a()V

    .line 56
    return-void
.end method

.method protected i()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->c()V

    .line 64
    return-void
.end method

.method protected j()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->d()V

    .line 72
    return-void
.end method

.method protected k()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->e()V

    .line 80
    return-void
.end method

.method protected l()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->f()V

    .line 88
    return-void
.end method
