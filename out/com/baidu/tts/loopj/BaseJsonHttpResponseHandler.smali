.class public abstract Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;
.super Lcom/baidu/tts/loopj/TextHttpResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JSON_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/baidu/tts/loopj/TextHttpResponseHandler;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseJsonHttpRH"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 111
    if-eqz p3, :cond_26

    .line 112
    new-instance v0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;-><init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->getUsePoolThread()Z

    move-result v1

    if-nez v1, :cond_22

    .line 135
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 143
    :goto_21
    return-void

    .line 138
    :cond_22
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_21

    :cond_26
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, v4

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/http/Header;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "TJSON_TYPE;)V"
        }
    .end annotation
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 75
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_23

    .line 76
    new-instance v0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;-><init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;)V

    .line 98
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->getUsePoolThread()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 99
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 107
    :goto_1e
    return-void

    .line 102
    :cond_1f
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1e

    .line 105
    :cond_23
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/http/Header;",
            "Ljava/lang/String;",
            "TJSON_TYPE;)V"
        }
    .end annotation
.end method

.method protected abstract parseResponse(Ljava/lang/String;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TJSON_TYPE;"
        }
    .end annotation
.end method
