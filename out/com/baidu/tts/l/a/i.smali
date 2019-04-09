.class public Lcom/baidu/tts/l/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/l/a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/l/a;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/baidu/tts/l/a/i;->a:Lcom/baidu/tts/l/a;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/l/a/h;

    invoke-direct {v1, p1}, Lcom/baidu/tts/l/a/h;-><init>(Lcom/baidu/tts/client/model/Conditions;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 41
    new-instance v1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 42
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 43
    return-object v1
.end method

.method public a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            "Z)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/l/a/i;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a;->e()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/baidu/tts/l/a/d;

    iget-object v3, p0, Lcom/baidu/tts/l/a/i;->a:Lcom/baidu/tts/l/a;

    invoke-direct {v2, v0, p1, v3, p2}, Lcom/baidu/tts/l/a/d;-><init>(Lcom/baidu/tts/database/a;Lcom/baidu/tts/client/model/Conditions;Lcom/baidu/tts/l/a;Z)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 55
    new-instance v0, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v0, v1}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 56
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 57
    return-object v0
.end method

.method public a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/l/a/g;

    invoke-direct {v1, p1}, Lcom/baidu/tts/l/a/g;-><init>(Ljava/util/Set;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 67
    new-instance v1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 68
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 69
    return-object v1
.end method

.method public a(Lorg/json/JSONArray;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/l/a/a;

    invoke-direct {v1, p1}, Lcom/baidu/tts/l/a/a;-><init>(Lorg/json/JSONArray;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 89
    new-instance v1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 90
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 91
    return-object v1
.end method

.method public a()Lcom/baidu/tts/client/model/LibEngineParams;
    .registers 3

    .prologue
    .line 61
    invoke-static {}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetEngineParam()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/baidu/tts/client/model/LibEngineParams;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/LibEngineParams;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Lcom/baidu/tts/client/model/BasicHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/l/a/f;

    invoke-direct {v1}, Lcom/baidu/tts/l/a/f;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 82
    new-instance v1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 83
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 84
    return-object v1
.end method

.method public b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/tts/l/a/i;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a;->e()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/baidu/tts/l/a/c;

    invoke-direct {v2, v0, p1}, Lcom/baidu/tts/l/a/c;-><init>(Lcom/baidu/tts/database/a;Ljava/util/Set;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 75
    new-instance v0, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v0, v1}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 76
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 77
    return-object v0
.end method
