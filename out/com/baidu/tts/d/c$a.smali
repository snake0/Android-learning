.class public Lcom/baidu/tts/d/c$a;
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
        "Lcom/baidu/tts/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/d/c;

.field private b:Lcom/baidu/tts/client/model/DownloadHandler;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/c;Lcom/baidu/tts/client/model/DownloadHandler;)V
    .registers 3

    .prologue
    .line 156
    iput-object p1, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    .line 159
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/d/a;
    .registers 13

    .prologue
    .line 163
    new-instance v2, Lcom/baidu/tts/d/a;

    invoke-direct {v2}, Lcom/baidu/tts/d/a;-><init>()V

    .line 164
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v0}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/l/a;->e()Lcom/baidu/tts/database/a;

    move-result-object v3

    .line 165
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/DownloadHandler;->getModelId()Ljava/lang/String;

    move-result-object v4

    .line 166
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v0}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v5

    .line 168
    :try_start_1f
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v0}, Lcom/baidu/tts/d/b/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;)V

    .line 169
    invoke-virtual {v5, v3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/database/a;)Z

    move-result v0

    .line 170
    if-nez v0, :cond_71

    .line 171
    new-instance v0, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v0}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    .line 172
    invoke-virtual {v0, v4}, Lcom/baidu/tts/client/model/Conditions;->appendId(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v1}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/tts/l/a;->a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelBags;

    .line 175
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelBags;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 176
    :cond_4a
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ah:Lcom/baidu/tts/f/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v1, v0}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v2

    .line 271
    :goto_6d
    return-object v0

    .line 182
    :cond_6e
    invoke-virtual {v5, v0, v3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/ModelBags;Lcom/baidu/tts/database/a;)V

    .line 185
    :cond_71
    invoke-virtual {v5}, Lcom/baidu/tts/d/b/d;->f()Ljava/util/Set;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 187
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ae:Lcom/baidu/tts/f/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v1, v0}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v2

    .line 191
    goto :goto_6d

    .line 193
    :cond_9f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 194
    :cond_a3
    :goto_a3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 195
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v1}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/b/a;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v7

    .line 197
    invoke-virtual {v7, v3}, Lcom/baidu/tts/d/b/c;->a(Lcom/baidu/tts/database/a;)Z

    move-result v1

    .line 198
    if-nez v1, :cond_a3

    .line 199
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 200
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v8, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v8}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/baidu/tts/l/a;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/client/model/ModelFileBags;

    .line 203
    if-eqz v1, :cond_df

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelFileBags;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_104

    .line 204
    :cond_df
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v3, Lcom/baidu/tts/f/n;->ai:Lcom/baidu/tts/f/n;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v1, v0}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v2

    .line 208
    goto/16 :goto_6d

    .line 210
    :cond_104
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v0}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/l/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/client/model/ModelFileBags;->generateAbsPath(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v7, v1, v3}, Lcom/baidu/tts/d/b/c;->a(Lcom/baidu/tts/client/model/ModelFileBags;Lcom/baidu/tts/database/a;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_114} :catch_115

    goto :goto_a3

    .line 265
    :catch_115
    move-exception v0

    .line 266
    const-string v1, "Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->aj:Lcom/baidu/tts/f/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v1, v0}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v2

    .line 271
    goto/16 :goto_6d

    .line 215
    :cond_157
    :try_start_157
    invoke-virtual {v5}, Lcom/baidu/tts/d/b/d;->d()V

    .line 216
    invoke-virtual {v5}, Lcom/baidu/tts/d/b/d;->b()Ljava/util/Set;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_189

    .line 218
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->af:Lcom/baidu/tts/f/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v1, v0}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v2

    .line 222
    goto/16 :goto_6d

    .line 224
    :cond_189
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 225
    :cond_18d
    :goto_18d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22a

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    invoke-static {v0}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18d

    .line 228
    iget-object v6, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v6}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/baidu/tts/d/b/a;->a(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v6

    .line 229
    invoke-virtual {v6, v4}, Lcom/baidu/tts/d/b/b;->a(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v6, v3}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/database/a;)Z

    move-result v7

    .line 231
    invoke-virtual {v6}, Lcom/baidu/tts/d/b/b;->c()Ljava/lang/String;

    move-result-object v8

    .line 232
    const-string v9, "Downloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isNeedDownload="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--fileId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-eqz v7, :cond_221

    .line 234
    invoke-virtual {v6}, Lcom/baidu/tts/d/b/b;->e()Z

    move-result v0

    .line 235
    if-eqz v0, :cond_1e1

    .line 236
    invoke-virtual {v6}, Lcom/baidu/tts/d/b/b;->f()Z

    .line 238
    :cond_1e1
    new-instance v0, Lcom/baidu/tts/d/a/c;

    invoke-direct {v0}, Lcom/baidu/tts/d/a/c;-><init>()V

    .line 239
    invoke-virtual {v0, v6}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/d/b/b;)V

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_1f6

    .line 241
    const/4 v0, 0x0

    goto/16 :goto_6d

    .line 243
    :cond_1f6
    const-string v7, "Downloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "before download fileId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v7, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v7}, Lcom/baidu/tts/d/c;->c(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/a/b;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;

    move-result-object v0

    .line 245
    invoke-virtual {v6, v0}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/a/e;)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/baidu/tts/d/a;->a(Z)V

    goto/16 :goto_18d

    .line 249
    :cond_221
    invoke-virtual {v6}, Lcom/baidu/tts/d/b/b;->d()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Lcom/baidu/tts/d/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_18d

    .line 253
    :cond_22a
    invoke-virtual {v2}, Lcom/baidu/tts/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_25d

    .line 254
    invoke-virtual {v2}, Lcom/baidu/tts/d/a;->b()Z

    move-result v0

    if-eqz v0, :cond_25d

    .line 255
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v0, v5}, Lcom/baidu/tts/client/model/DownloadHandler;->updateProgress(Lcom/baidu/tts/d/b/d;)V

    .line 256
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ag:Lcom/baidu/tts/f/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v1, v0}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_25d} :catch_115

    :cond_25d
    move-object v0, v2

    .line 262
    goto/16 :goto_6d
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/baidu/tts/d/c$a;->a()Lcom/baidu/tts/d/a;

    move-result-object v0

    return-object v0
.end method
