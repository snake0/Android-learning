.class Lcom/baidu/tts/d/a/b$a$1;
.super Lcom/baidu/tts/d/a/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/tts/d/a/b$a;


# direct methods
.method constructor <init>(Lcom/baidu/tts/d/a/b$a;Ljava/io/File;Lcom/baidu/tts/d/a/c;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 266
    iput-object p1, p0, Lcom/baidu/tts/d/a/b$a$1;->b:Lcom/baidu/tts/d/a/b$a;

    iput-object p4, p0, Lcom/baidu/tts/d/a/b$a$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/baidu/tts/d/a/g;-><init>(Ljava/io/File;Lcom/baidu/tts/d/a/c;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 8

    .prologue
    .line 270
    const-string v0, "DownloadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1isInterrupted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a$1;->b:Lcom/baidu/tts/d/a/b$a;

    iget-object v0, v0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->C()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/tts/d/a/g;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 274
    :cond_2d
    return-void
.end method

.method public onProgress(JJ)V
    .registers 6

    .prologue
    .line 288
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a$1;->b:Lcom/baidu/tts/d/a/b$a;

    iget-object v0, v0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->C()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/tts/d/a/g;->onProgress(JJ)V

    .line 291
    :cond_d
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .registers 7

    .prologue
    .line 278
    const-string v0, "DownloadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2isInterrupted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/d/a/b$a$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a$1;->b:Lcom/baidu/tts/d/a/b$a;

    iget-object v0, v0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->C()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/tts/d/a/g;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    .line 283
    :cond_39
    return-void
.end method
