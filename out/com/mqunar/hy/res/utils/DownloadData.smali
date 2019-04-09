.class public Lcom/mqunar/hy/res/utils/DownloadData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOWNLOAD_END:Ljava/lang/String; = "download_end"

.field public static final DOWNLOAD_NONE:Ljava/lang/String; = "download_none"

.field public static final DOWNLOAD_START:Ljava/lang/String; = "download_start"

.field private static final client:Lokhttp3/OkHttpClient;


# instance fields
.field private call:Lokhttp3/Call;

.field public downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

.field private volatile downloadState:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private filesize:J

.field public handler:Landroid/os/Handler;

.field private hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

.field public hybridid:Ljava/lang/String;

.field public nversion:Ljava/lang/String;

.field public savefile:Ljava/io/File;

.field private time:D

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/utils/DownloadData;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mqunar/hy/res/utils/DownloadData;->time:D

    .line 51
    iput-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->call:Lokhttp3/Call;

    .line 56
    const-string v0, "download_none"

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadState:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridid:Ljava/lang/String;

    .line 74
    iput p4, p0, Lcom/mqunar/hy/res/utils/DownloadData;->type:I

    .line 75
    iput-object p5, p0, Lcom/mqunar/hy/res/utils/DownloadData;->handler:Landroid/os/Handler;

    .line 76
    iput-object p3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hyres DownloadData create hybridid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    if-eqz v0, :cond_12e

    .line 83
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hyres DownloadData create has qp info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    .line 88
    const-string v0, ""

    .line 89
    if-eqz p2, :cond_b3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b3

    .line 90
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 91
    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    .line 93
    :try_start_95
    iget-object v2, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a2} :catch_12b

    move-result-object v0

    .line 97
    :goto_a3
    iget-object v2, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    .line 100
    :cond_b3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    .line 102
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/mqunar/hy/res/utils/QunarUtils;->getAppDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "files/caches"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    :try_start_e3
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_124

    move-result-object v1

    .line 109
    :goto_e7
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mqunar/hy/res/utils/DownloadData;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    .line 110
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_116

    .line 111
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_116
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 114
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 116
    :cond_123
    return-void

    .line 106
    :catch_124
    move-exception v2

    .line 107
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_e7

    .line 94
    :catch_12b
    move-exception v2

    goto/16 :goto_a3

    :cond_12e
    move-object v0, v1

    goto/16 :goto_59
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;)V
    .registers 12

    .prologue
    .line 63
    const/4 v5, 0x0

    check-cast v5, Landroid/os/Handler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/hy/res/utils/DownloadData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 64
    iput-object p5, p0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/hy/res/utils/DownloadData;)V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/DownloadData;->downloadFail()V

    return-void
.end method

.method static synthetic access$100(Lcom/mqunar/hy/res/utils/DownloadData;)D
    .registers 3

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->time:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/mqunar/hy/res/utils/DownloadData;D)D
    .registers 3

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->time:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/mqunar/hy/res/utils/DownloadData;DZ)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/mqunar/hy/res/utils/DownloadData;->statistics(DZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/mqunar/hy/res/utils/DownloadData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadState:Ljava/lang/String;

    return-object p1
.end method

.method private downloadFail()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres DownloadData downloadFail url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 198
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 202
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/mqunar/hy/res/utils/DownloadData;->time:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->time:D

    .line 204
    iget-wide v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->time:D

    invoke-direct {p0, v0, v1, v4}, Lcom/mqunar/hy/res/utils/DownloadData;->statistics(DZ)V

    .line 206
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

    if-nez v0, :cond_51

    .line 207
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    :goto_4c
    const-string v0, "download_end"

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadState:Ljava/lang/String;

    .line 215
    return-void

    .line 210
    :cond_51
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

    invoke-interface {v0, p0}, Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;->onDownloadFail(Lcom/mqunar/hy/res/utils/DownloadData;)V

    goto :goto_4c
.end method

.method private statistics(DZ)V
    .registers 11

    .prologue
    .line 225
    const/4 v0, 0x1

    .line 226
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    if-nez v1, :cond_d2

    .line 227
    new-instance v0, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-direct {v0}, Lcom/mqunar/hy/res/model/HybridInfo;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 228
    const/4 v0, 0x0

    move v6, v0

    .line 231
    :goto_e
    double-to-long v1, p1

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridid:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v4, v4, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    move v0, p3

    invoke-static/range {v0 .. v5}, Lcom/mqunar/hy/res/logger/DevQPLog;->onDownloadLog(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-eqz v6, :cond_81

    .line 234
    if-eqz p3, :cond_5c

    .line 235
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v3, v3, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/hy/res/utils/StatisticsUtil;->qpPatchSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_56
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridid:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/mqunar/hy/res/utils/StatisticsUtil;->qpPatchDownloadTime(Ljava/lang/String;D)V

    .line 248
    :goto_5b
    return-void

    .line 237
    :cond_5c
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v3, v3, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/hy/res/utils/StatisticsUtil;->qpPatchError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 241
    :cond_81
    if-eqz p3, :cond_ad

    .line 242
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v3, v3, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/hy/res/utils/StatisticsUtil;->qpFullSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_a7
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridid:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/mqunar/hy/res/utils/StatisticsUtil;->qpFullDownloadTime(Ljava/lang/String;D)V

    goto :goto_5b

    .line 244
    :cond_ad
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->hybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v3, v3, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/hy/res/utils/StatisticsUtil;->qpFullError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    :cond_d2
    move v6, v0

    goto/16 :goto_e
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->call:Lokhttp3/Call;

    if-eqz v0, :cond_9

    .line 219
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 221
    :cond_9
    return-void
.end method

.method public getDownloadState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 127
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_c
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 130
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->nversion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_17
    return v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 137
    const-string v0, "download_start"

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadState:Ljava/lang/String;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->time:D

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres DownloadData start url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 143
    const-string v1, "connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 144
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 146
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 148
    sget-object v1, Lcom/mqunar/hy/res/utils/DownloadData;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->call:Lokhttp3/Call;

    .line 149
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData;->call:Lokhttp3/Call;

    new-instance v1, Lcom/mqunar/hy/res/utils/DownloadData$1;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/utils/DownloadData$1;-><init>(Lcom/mqunar/hy/res/utils/DownloadData;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 193
    return-void
.end method
