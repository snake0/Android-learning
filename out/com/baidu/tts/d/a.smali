.class public Lcom/baidu/tts/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/d/a;->a:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/tts/d/a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/baidu/tts/d/a;->a:Z

    .line 32
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/baidu/tts/d/a;->a:Z

    return v0
.end method

.method public b()Z
    .registers 5

    .prologue
    .line 39
    const/4 v1, 0x1

    .line 40
    iget-object v0, p0, Lcom/baidu/tts/d/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 42
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    const/4 v3, 0x7

    if-eq v0, v3, :cond_b

    .line 45
    const/4 v0, 0x0

    .line 49
    :goto_1f
    return v0

    :cond_20
    move v0, v1

    goto :goto_1f
.end method
