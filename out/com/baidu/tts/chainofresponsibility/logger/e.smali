.class public Lcom/baidu/tts/chainofresponsibility/logger/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    :cond_9
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 21
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    :cond_12
    return-void
.end method

.method public a(Lcom/baidu/tts/chainofresponsibility/logger/c;Ljava/lang/Void;Lcom/baidu/tts/chainofresponsibility/logger/d;)V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_b9

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 69
    :goto_2e
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    if-eqz v0, :cond_b7

    .line 70
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 71
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    move v2, v4

    .line 86
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    if-eqz v0, :cond_58

    .line 87
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 88
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    move v2, v3

    .line 105
    :cond_58
    if-eqz v2, :cond_74

    .line 106
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->a()I

    move-result v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bdtts-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_74
    return-void

    .line 74
    :cond_75
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    .line 75
    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 76
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    if-eqz v0, :cond_b5

    if-eqz v1, :cond_b5

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b5

    move v0, v4

    :goto_93
    move v2, v0

    .line 81
    goto :goto_7c

    .line 91
    :cond_95
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 92
    :cond_9b
    :goto_9b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 93
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    if-eqz v0, :cond_9b

    if-eqz v1, :cond_9b

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b3

    move v2, v3

    .line 96
    goto :goto_9b

    :cond_b3
    move v2, v4

    .line 98
    goto :goto_9b

    :cond_b5
    move v0, v2

    goto :goto_93

    :cond_b7
    move v2, v3

    goto :goto_43

    :cond_b9
    move-object v1, v0

    goto/16 :goto_2e
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 27
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 28
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_11
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 41
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 42
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_11
    return-void
.end method
