.class public Lcom/baidu/tts/l/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/client/model/ModelFileBags;",
        ">;"
    }
.end annotation


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

.field private b:Lcom/baidu/tts/database/a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/database/a;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/database/a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/baidu/tts/l/a/c;->a:Ljava/util/Set;

    .line 27
    iput-object p1, p0, Lcom/baidu/tts/l/a/c;->b:Lcom/baidu/tts/database/a;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelFileBags;
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/tts/l/a/c;->b:Lcom/baidu/tts/database/a;

    iget-object v1, p0, Lcom/baidu/tts/l/a/c;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/baidu/tts/client/model/ModelFileBags;

    invoke-direct {v1}, Lcom/baidu/tts/client/model/ModelFileBags;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lcom/baidu/tts/client/model/ModelFileBags;->setList(Ljava/util/List;)V

    .line 40
    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/baidu/tts/l/a/c;->a()Lcom/baidu/tts/client/model/ModelFileBags;

    move-result-object v0

    return-object v0
.end method
