.class public Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static handler:Landroid/os/Handler;


# instance fields
.field private final cachePath:Ljava/io/File;

.field private context:Landroid/content/Context;

.field private downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

.field private downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

.field private localParam:Lcom/mqunar/hy/res/model/HybridParam;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final targetPath:Ljava/io/File;

.field private taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mqunar/hy/res/model/HybridParam;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 41
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    .line 42
    new-instance v0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;

    invoke-direct {v0, p0, v1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$DownCallback;-><init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$1;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

    .line 45
    iput-object p1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->localParam:Lcom/mqunar/hy/res/model/HybridParam;

    .line 47
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mqunar/hy/res/utils/QunarUtils;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/hybrid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->targetPath:Ljava/io/File;

    .line 48
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mqunar/hy/res/utils/QunarUtils;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/caches/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->cachePath:Ljava/io/File;

    .line 49
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->targetPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_70

    .line 50
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->targetPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_70

    .line 51
    const-string v0, "make dir failed : %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->targetPath:Ljava/io/File;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_70
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->cachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 55
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->cachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 56
    const-string v0, "make dir failed : %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->cachePath:Ljava/io/File;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_8b
    return-void
.end method

.method static synthetic access$100(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)Lcom/mqunar/hy/res/utils/DownloadManager;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Lcom/mqunar/hy/res/utils/DownloadData;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->moveAtom(Lcom/mqunar/hy/res/utils/DownloadData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->runNext()V

    return-void
.end method

.method static synthetic access$400(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifyErrorResult(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    return-void
.end method

.method private addNewModule(Lcom/mqunar/hy/res/model/HybridInfo;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            "Ljava/util/Set",
            "<",
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x68

    const/4 v5, 0x0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes \u4e0b\u8f7d\u6821\u9a8c\u5b8c\u6210\uff0c\u6dfb\u52a0\u65b0\u6a21\u5757addNewModule:-> type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->getEncodedMd5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->parserManifest(Ljava/io/File;Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1b9

    .line 324
    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->getActualResource()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mqunar/hy/res/model/HybridInfo;->setResource(Ljava/util/Map;)V

    .line 325
    iget-object v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->extra:Lcom/alibaba/fastjson/JSONObject;

    iput-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->extra:Lcom/alibaba/fastjson/JSONObject;

    .line 326
    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->getManifestJson()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mqunar/hy/res/model/HybridInfo;->setManifestJson(Lcom/alibaba/fastjson/JSONObject;)V

    .line 327
    iget v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_70

    iget v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_70

    .line 329
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v1

    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 330
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v1

    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mqunar/hy/res/HybridManager;->hasUsedHybridInfo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_161

    .line 332
    :cond_70
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->targetPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_89

    .line 395
    :goto_88
    return-void

    .line 337
    :cond_89
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e9

    .line 338
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 339
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    .line 340
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    .line 341
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/hy/res/HybridManager;->addNewModule(Lcom/mqunar/hy/res/model/HybridInfo;Ljava/util/Set;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes addNewModule>\u7acb\u5373\u751f\u6548"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_88

    .line 345
    :cond_d1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_da

    .line 346
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 348
    :cond_da
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 349
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 351
    :cond_e3
    const-string v1, "\u6587\u4ef6\u79fb\u52a8\u5931\u8d25"

    invoke-direct {p0, p2, v0, v6, v1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifyErrorResult(Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    goto :goto_88

    .line 355
    :cond_e9
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v3

    iget-object v4, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v3

    .line 356
    if-eqz v3, :cond_102

    invoke-static {v3}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->checkQPFile(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 358
    invoke-direct {p0, p2, v3}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifySuccResult(Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;)V

    goto :goto_88

    .line 360
    :cond_102
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 361
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 362
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    .line 363
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    .line 364
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/hy/res/HybridManager;->addNewModule(Lcom/mqunar/hy/res/model/HybridInfo;Ljava/util/Set;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes addNewModule>\u7acb\u5373\u751f\u6548"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_88

    .line 368
    :cond_148
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_151

    .line 369
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 371
    :cond_151
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 372
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 374
    :cond_15a
    const-string v1, "\u6587\u4ef6\u79fb\u52a8\u5931\u8d25"

    invoke-direct {p0, p2, v0, v6, v1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifyErrorResult(Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    goto/16 :goto_88

    .line 381
    :cond_161
    invoke-static {}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->saveCacheHyInfo(Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyRes addNewModule>saveCacheHyInfo>\u7f13\u5b58\u76ee\u5f55:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-direct {p0, p2, p1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifySuccResult(Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 385
    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/utils/StatisticsUtil;->qpDownloadNotReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {p1}, Lcom/mqunar/hy/res/logger/DevQPLog;->onCachedLog(Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 388
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/HybridManager;->sendQpUpdatedToCacheBroadCast(Lcom/mqunar/hy/res/model/HybridInfo;)V

    goto/16 :goto_88

    .line 391
    :cond_1b9
    const-string v0, "HyRes \u4e0b\u8f7d\u6821\u9a8c\u5b8c\u6210\uff0c\u6dfb\u52a0\u65b0\u6a21\u5757 HybridInfo is null"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    const/16 v0, 0x6b

    const-string v1, "qp manifest\u89e3\u6790\u5931\u8d25"

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifyErrorResult(Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    goto/16 :goto_88
.end method

.method private downloadModules(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 155
    iput-object p1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->mInfos:Ljava/util/List;

    .line 156
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->mInfos:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 205
    :cond_10
    :goto_10
    return-void

    .line 159
    :cond_11
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 160
    iget-object v2, v11, Lcom/mqunar/hy/res/model/HybridInfo;->url:Ljava/lang/String;

    .line 161
    iget-object v0, v11, Lcom/mqunar/hy/res/model/HybridInfo;->patchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {v11}, Lcom/mqunar/hy/res/model/HybridInfo;->getEncodedMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 162
    iget-object v0, v11, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->getLocalModeInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_57

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 164
    iget-object v2, v11, Lcom/mqunar/hy/res/model/HybridInfo;->patchUrl:Ljava/lang/String;

    .line 168
    :cond_57
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 169
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->targetPath:Ljava/io/File;

    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 172
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v3

    iget-object v5, v11, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 173
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    if-eqz v0, :cond_17

    .line 174
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    invoke-interface {v0, v11}, Lcom/mqunar/hy/res/DownloadTaskResult;->sucess(Ljava/lang/Object;)V

    goto :goto_17

    .line 178
    :cond_96
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 183
    :cond_99
    iget v0, v11, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    if-ne v0, v4, :cond_fd

    .line 184
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mqunar/hy/res/utils/DownloadManager;->isRun(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 185
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    iget-object v1, v11, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget v3, v11, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/mqunar/hy/res/utils/DownloadManager;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;)Lcom/mqunar/hy/res/utils/DownloadData;

    .line 186
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    invoke-virtual {v0, v11, v1}, Lcom/mqunar/hy/res/utils/DownloadManager;->setDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/DownloadTaskResult;)V

    .line 187
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    invoke-virtual {v0, v2}, Lcom/mqunar/hy/res/utils/DownloadManager;->start(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CURRENNT_NO_QP>download>new>current>qp \u5f53\u524d\u8bbf\u95eeqp\u4e0b\u8f7d:-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 191
    :cond_dc
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    invoke-virtual {v0, v11, v1}, Lcom/mqunar/hy/res/utils/DownloadManager;->setDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/DownloadTaskResult;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CURRENNT_NO_QP>download>new>current>qp \u5f53\u524dqp\u6b63\u5728\u4e0b\u8f7d:-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 196
    :cond_fd
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v5

    iget-object v6, v11, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget v0, v11, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v11, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    iget-object v10, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

    move-object v7, v2

    invoke-virtual/range {v5 .. v10}, Lcom/mqunar/hy/res/utils/DownloadManager;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;)Lcom/mqunar/hy/res/utils/DownloadData;

    .line 197
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    iget-object v3, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    invoke-virtual {v0, v11, v3}, Lcom/mqunar/hy/res/utils/DownloadManager;->setDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/DownloadTaskResult;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hyres added url -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 201
    :cond_132
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadManager;->hasRun()Z

    move-result v0

    if-nez v0, :cond_10

    .line 202
    invoke-direct {p0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->runNext()V

    .line 203
    const-string v0, "downloadModules>runNext-> "

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10
.end method

.method private getLocalModeInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->localParam:Lcom/mqunar/hy/res/model/HybridParam;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->localParam:Lcom/mqunar/hy/res/model/HybridParam;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridParam;->hlist:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move-object v0, v1

    .line 232
    :goto_12
    return-object v0

    .line 226
    :cond_13
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->localParam:Lcom/mqunar/hy/res/model/HybridParam;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridParam;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 227
    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_12

    :cond_30
    move-object v0, v1

    .line 232
    goto :goto_12
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 145
    const/4 v3, 0x0

    .line 147
    :try_start_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_19

    move-result-object v0

    .line 151
    :goto_f
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_23

    move v0, v1

    :goto_18
    return v0

    .line 148
    :catch_19
    move-exception v0

    .line 149
    const-string v4, ""

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_f

    :cond_23
    move v0, v2

    .line 151
    goto :goto_18
.end method

.method private moveAtom(Lcom/mqunar/hy/res/utils/DownloadData;)V
    .registers 13

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 236
    iget-object v2, p1, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    .line 237
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 239
    iget-object v0, v6, Lcom/mqunar/hy/res/model/HybridInfo;->patchUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 240
    iget-object v0, v6, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->getLocalModeInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_31

    iget-object v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 243
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localInfo/localInfo.path = null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5408\u5e76"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/mqunar/hy/res/model/HybridInfo;->patchUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u8fc7\u7a0b\u51fa\u9519\uff0c\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :goto_58
    return-void

    .line 246
    :cond_59
    const-string v1, "patch file, downloadData.url = %s,downloadData.savefilePath = %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    aput-object v3, v2, v10

    iget-object v3, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :try_start_68
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->cachePath:Ljava/io/File;

    iget-object v3, v6, Lcom/mqunar/hy/res/model/HybridInfo;->url:Ljava/lang/String;

    iget-object v4, v6, Lcom/mqunar/hy/res/model/HybridInfo;->url:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    const-string v2, "start bspatch, newPath = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 251
    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lqunar/lego/utils/diffpatch/DiffPatch;->bspatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v0, "end bspatch, use time = %s, start calculate file md5"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, v7, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 254
    invoke-static {v1}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v4, "end calculate file md5, use time = %s,newFile md5 = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    .line 259
    invoke-static {v6}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->checkQPFile(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 261
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    invoke-virtual {v0, v6}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;)Ljava/util/Set;

    move-result-object v0

    .line 262
    invoke-direct {p0, v6, v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->addNewModule(Lcom/mqunar/hy/res/model/HybridInfo;Ljava/util/Set;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_ed} :catch_ef

    goto/16 :goto_58

    .line 270
    :catch_ef
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5408\u5e76"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/mqunar/hy/res/model/HybridInfo;->patchUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u8fc7\u7a0b\u51fa\u9519\uff0c\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :goto_110
    iput-boolean v10, v6, Lcom/mqunar/hy/res/model/HybridInfo;->errorChanged:Z

    .line 277
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    iget-object v1, v6, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget-object v2, v6, Lcom/mqunar/hy/res/model/HybridInfo;->url:Ljava/lang/String;

    iget v3, v6, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v6, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    iget-object v5, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/mqunar/hy/res/utils/DownloadManager;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;)Lcom/mqunar/hy/res/utils/DownloadData;

    .line 278
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    invoke-virtual {v0, v6}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;)Ljava/util/Set;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    monitor-enter v1

    .line 280
    :try_start_12e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_132
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_199

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 281
    iget-object v3, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    invoke-virtual {v3, v6, v0}, Lcom/mqunar/hy/res/utils/DownloadManager;->setDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/DownloadTaskResult;)V

    goto :goto_132

    .line 283
    :catchall_144
    move-exception v0

    monitor-exit v1
    :try_end_146
    .catchall {:try_start_12e .. :try_end_146} :catchall_144

    throw v0

    .line 265
    :cond_147
    :try_start_147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "md5 equals failed, server return md5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/mqunar/hy/res/model/HybridInfo;->getEncodedMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bspatch error,patchUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/mqunar/hy/res/model/HybridInfo;->patchUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5408\u6210\u6587\u4ef6md5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",server return md5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/mqunar/hy/res/model/HybridInfo;->getEncodedMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_197} :catch_ef

    goto/16 :goto_110

    .line 283
    :cond_199
    :try_start_199
    monitor-exit v1
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_144

    .line 284
    invoke-direct {p0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->runNext()V

    goto/16 :goto_58

    .line 286
    :cond_19f
    iget-object v0, v6, Lcom/mqunar/hy/res/model/HybridInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 291
    :goto_1a7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->cachePath:Ljava/io/File;

    iget-object v2, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    const-string v1, "moveing atom from %s to %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v1, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 294
    if-eqz v1, :cond_259

    if-eqz v6, :cond_259

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    .line 297
    invoke-static {v6}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->checkQPFile(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v1

    if-eqz v1, :cond_22f

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move atom successed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    invoke-virtual {v0, v6}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;)Ljava/util/Set;

    move-result-object v0

    .line 301
    invoke-direct {p0, v6, v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->addNewModule(Lcom/mqunar/hy/res/model/HybridInfo;Ljava/util/Set;)V

    goto/16 :goto_58

    .line 303
    :cond_22f
    const/16 v1, 0x67

    const-string v2, "qp\u6821\u9a8c\u5931\u8d25"

    invoke-direct {p0, v6, v1, v2}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifyErrorResult(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download>checkQpFile failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 308
    :cond_259
    iget-object v2, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_266

    .line 309
    iget-object v2, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 311
    :cond_266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26f

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 314
    :cond_26f
    const/16 v0, 0x68

    const-string v2, "\u6587\u4ef6\u79fb\u52a8\u5931\u8d25"

    invoke-direct {p0, v6, v0, v2}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifyErrorResult(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move atom failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rename_result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_2a0
    move-object v6, v1

    goto/16 :goto_1a7
.end method

.method private notifyErrorResult(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifyErrorResult(Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    .line 400
    return-void
.end method

.method private notifyErrorResult(Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;>;",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    sget-object v6, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$2;-><init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method private notifySuccResult(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/utils/DownloadManager;->getDownloadTaskResult(Lcom/mqunar/hy/res/model/HybridInfo;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->notifySuccResult(Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 420
    return-void
.end method

.method private notifySuccResult(Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;>;",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 423
    sget-object v0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$3;-><init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;Ljava/util/Set;Lcom/mqunar/hy/res/model/HybridInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void
.end method

.method private runNext()V
    .registers 4

    .prologue
    .line 208
    invoke-static {}, Lcom/mqunar/hy/res/utils/DownloadManager;->getInstance()Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadManager;->runNext()Z

    move-result v0

    .line 209
    if-eqz v0, :cond_31

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres ALL DONE>DOWNLOAD>\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    sget-object v0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$1;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$1;-><init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_31
    return-void
.end method

.method private updateModuleInfo(Ljava/util/List;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    .line 83
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 84
    :cond_d
    const/4 v0, 0x0

    .line 138
    :goto_e
    return-object v0

    .line 87
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->isWifi(Landroid/content/Context;)Z

    move-result v6

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 90
    :cond_1e
    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 91
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 92
    invoke-static {}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->isToDownloadQp(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 93
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    if-eqz v1, :cond_1e

    .line 94
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    invoke-interface {v1, v0}, Lcom/mqunar/hy/res/DownloadTaskResult;->sucess(Ljava/lang/Object;)V

    goto :goto_1e

    .line 98
    :cond_3e
    iget-object v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->url:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 99
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    if-eqz v1, :cond_1e

    .line 100
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    const/16 v2, 0x66

    const-string v5, "\u670d\u52a1\u7aef\u8fd4\u56deurl\u9519\u8bef"

    invoke-interface {v1, v0, v2, v5}, Lcom/mqunar/hy/res/DownloadTaskResult;->error(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V

    goto :goto_1e

    .line 104
    :cond_56
    const/4 v5, 0x0

    move v2, v3

    .line 105
    :goto_58
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->localParam:Lcom/mqunar/hy/res/model/HybridParam;

    if-eqz v1, :cond_109

    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->localParam:Lcom/mqunar/hy/res/model/HybridParam;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridParam;->hlist:Ljava/util/List;

    if-eqz v1, :cond_109

    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->localParam:Lcom/mqunar/hy/res/model/HybridParam;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridParam;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_109

    .line 106
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->localParam:Lcom/mqunar/hy/res/model/HybridParam;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridParam;->hlist:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget-object v8, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 107
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->localParam:Lcom/mqunar/hy/res/model/HybridParam;

    iget-object v1, v1, Lcom/mqunar/hy/res/model/HybridParam;->hlist:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 111
    :goto_8a
    if-eqz v1, :cond_cb

    .line 112
    iget v1, v1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ge v1, v2, :cond_1e

    .line 114
    if-eqz v6, :cond_9c

    .line 115
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 105
    :cond_98
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_58

    .line 116
    :cond_9c
    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    if-eq v1, v9, :cond_ac

    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    if-eq v1, v10, :cond_ac

    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    if-eq v1, v11, :cond_ac

    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    if-ne v1, v12, :cond_1e

    .line 120
    :cond_ac
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter>current_has_qp\u975ewifi\uff0c\u6ca1\u8fd4\u56depatchurl,\u4e0b\u8f7d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 125
    :cond_cb
    if-eqz v6, :cond_d2

    .line 126
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 127
    :cond_d2
    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e7

    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    if-eq v1, v9, :cond_e7

    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    if-eq v1, v10, :cond_e7

    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    if-eq v1, v11, :cond_e7

    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    if-ne v1, v12, :cond_1e

    .line 132
    :cond_e7
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter>current_no_qp\u975ewifi,\u4e0b\u8f7d\u5355\u4e2a\u6a21\u5757:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_106
    move-object v0, v4

    .line 138
    goto/16 :goto_e

    :cond_109
    move-object v1, v5

    goto :goto_8a
.end method


# virtual methods
.method public run(Ljava/util/List;Lcom/mqunar/hy/res/DownloadTaskResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;",
            "Lcom/mqunar/hy/res/DownloadTaskResult",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p2, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->taskResult:Lcom/mqunar/hy/res/DownloadTaskResult;

    .line 64
    if-nez p1, :cond_5

    .line 73
    :cond_4
    :goto_4
    return-void

    .line 66
    :cond_5
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->updateModuleInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    iget-object v1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;

    monitor-enter v1

    .line 71
    :try_start_14
    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadModules(Ljava/util/List;)V

    .line 72
    monitor-exit v1

    goto :goto_4

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw v0
.end method
