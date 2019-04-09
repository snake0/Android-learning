.class public Lcom/baidu/tts/client/model/AvailableConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendGender(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 55
    :goto_6
    return-void

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

    .line 53
    :cond_12
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public appendSpeaker(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    :goto_6
    return-void

    .line 61
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    .line 64
    :cond_12
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public getGenders()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

    return-object v0
.end method

.method public getSpeakers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    return-object v0
.end method

.method public setGenders(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

    .line 30
    return-void
.end method

.method public setSpeakers(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    .line 44
    return-void
.end method
