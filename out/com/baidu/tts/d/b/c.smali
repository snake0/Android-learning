.class public Lcom/baidu/tts/d/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/baidu/tts/d/b/c;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/f/g;->h:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/tools/DataTool;->getMapValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/client/model/ModelFileBags;Lcom/baidu/tts/database/a;)V
    .registers 3

    .prologue
    .line 49
    invoke-virtual {p2, p1}, Lcom/baidu/tts/database/a;->a(Lcom/baidu/tts/client/model/ModelFileBags;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/baidu/tts/d/b/c;->a(Lcom/baidu/tts/database/a;)Z

    .line 51
    return-void
.end method

.method public a(Lcom/baidu/tts/database/a;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/database/a;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    .line 33
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isMapEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    .line 43
    :goto_12
    return v0

    .line 36
    :cond_13
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    sget-object v2, Lcom/baidu/tts/f/g;->h:Lcom/baidu/tts/f/g;

    invoke-virtual {v2}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-static {v0}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 38
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/database/a;->b(Ljava/lang/String;)I

    move v0, v1

    .line 39
    goto :goto_12

    .line 41
    :cond_2e
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/b/e;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/baidu/tts/d/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/b;->c(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/f/g;->g:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/tools/DataTool;->getMapValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/f/g;->f:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/tools/DataTool;->getMapValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
