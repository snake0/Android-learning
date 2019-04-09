.class Lcom/mqunar/hy/res/HybridManager$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/HybridManager;

.field final synthetic val$parserList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/HybridManager;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 458
    iput-object p1, p0, Lcom/mqunar/hy/res/HybridManager$1;->this$0:Lcom/mqunar/hy/res/HybridManager;

    iput-object p2, p0, Lcom/mqunar/hy/res/HybridManager$1;->val$parserList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 461
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 463
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager$1;->val$parserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 464
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->getEncodedMd5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->parserManifest(Ljava/io/File;Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_3d

    .line 467
    invoke-virtual {v4}, Lcom/mqunar/hy/res/model/HybridInfo;->getActualResource()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mqunar/hy/res/model/HybridInfo;->setResource(Ljava/util/Map;)V

    .line 468
    iget-object v5, v4, Lcom/mqunar/hy/res/model/HybridInfo;->extra:Lcom/alibaba/fastjson/JSONObject;

    iput-object v5, v0, Lcom/mqunar/hy/res/model/HybridInfo;->extra:Lcom/alibaba/fastjson/JSONObject;

    .line 469
    invoke-virtual {v4}, Lcom/mqunar/hy/res/model/HybridInfo;->getManifestJson()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mqunar/hy/res/model/HybridInfo;->setManifestJson(Lcom/alibaba/fastjson/JSONObject;)V

    .line 471
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hyres parserManifest:>hybrid>::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " time>::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 473
    :cond_66
    iget-object v0, p0, Lcom/mqunar/hy/res/HybridManager$1;->this$0:Lcom/mqunar/hy/res/HybridManager;

    # invokes: Lcom/mqunar/hy/res/HybridManager;->saveDatas()V
    invoke-static {v0}, Lcom/mqunar/hy/res/HybridManager;->access$200(Lcom/mqunar/hy/res/HybridManager;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hyres parserManifest:all>time>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    const/4 v0, 0x1

    # setter for: Lcom/mqunar/hy/res/HybridManager;->parseFlag:Z
    invoke-static {v0}, Lcom/mqunar/hy/res/HybridManager;->access$302(Z)Z

    .line 476
    return-void
.end method
