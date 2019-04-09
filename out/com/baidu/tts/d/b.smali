.class public Lcom/baidu/tts/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/tts/client/model/OnDownloadListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/tts/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/client/model/OnDownloadListener;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/tts/d/b;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/baidu/tts/d/b;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/tts/d/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public c()Lcom/baidu/tts/client/model/OnDownloadListener;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/d/b;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    return-object v0
.end method
