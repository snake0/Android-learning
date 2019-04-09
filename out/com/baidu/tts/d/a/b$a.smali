.class public Lcom/baidu/tts/d/a/b$a;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/d/a/b;

.field private b:Lcom/baidu/tts/d/a/c;

.field private c:Lcom/baidu/tts/loopj/SyncHttpClient;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/a/b;Lcom/baidu/tts/d/a/c;)V
    .registers 3

    .prologue
    .line 229
    iput-object p1, p0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    .line 232
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/c;->d()V

    .line 242
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string v0, "DownloadEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadWork start fileId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {v1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 245
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    const-string v2, "fileId is null"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 308
    :goto_3c
    const-string v0, "DownloadEngine"

    const-string v1, "DownloadWork end"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 250
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v2, p0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    invoke-static {v2}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/d/a/b;)Lcom/baidu/tts/l/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/tts/l/a;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileBags;

    .line 253
    if-eqz v0, :cond_de

    .line 254
    invoke-virtual {v0, v5}, Lcom/baidu/tts/client/model/ModelFileBags;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_cb

    .line 256
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 257
    new-instance v2, Lcom/baidu/tts/loopj/SyncHttpClient;

    const/16 v3, 0x50

    const/16 v4, 0x1bb

    invoke-direct {v2, v6, v3, v4}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>(ZII)V

    iput-object v2, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    .line 261
    :goto_78
    iget-object v2, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v2, v5}, Lcom/baidu/tts/loopj/SyncHttpClient;->setURLEncodingEnabled(Z)V

    .line 262
    iget-object v2, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    sget-object v3, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v3}, Lcom/baidu/tts/f/l;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/tts/loopj/SyncHttpClient;->setTimeout(I)V

    .line 263
    iget-object v2, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    const/4 v3, 0x5

    const/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4}, Lcom/baidu/tts/loopj/SyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 264
    iget-object v2, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v2}, Lcom/baidu/tts/d/a/c;->b()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v2}, Lcom/baidu/tts/tools/FileTools;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 266
    new-instance v3, Lcom/baidu/tts/d/a/b$a$1;

    iget-object v4, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-direct {v3, p0, v2, v4, v1}, Lcom/baidu/tts/d/a/b$a$1;-><init>(Lcom/baidu/tts/d/a/b$a;Ljava/io/File;Lcom/baidu/tts/d/a/c;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v3, v6}, Lcom/baidu/tts/d/a/g;->setUseSynchronousMode(Z)V

    .line 295
    const-string v2, "DownloadEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before get fileId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v1, v0, v3}, Lcom/baidu/tts/loopj/SyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    goto/16 :goto_3c

    .line 259
    :cond_c3
    new-instance v2, Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-direct {v2}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>()V

    iput-object v2, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    goto :goto_78

    .line 298
    :cond_cb
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    const-string v2, "url is null"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_3c

    .line 303
    :cond_de
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    const-string v2, "urlbags is null"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_3c
.end method

.method public b()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    if-eqz v0, :cond_9

    .line 314
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v0}, Lcom/baidu/tts/loopj/SyncHttpClient;->stop()V

    .line 316
    :cond_9
    return-void
.end method

.method public c()Lcom/baidu/tts/d/a/c;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/baidu/tts/d/a/b$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
