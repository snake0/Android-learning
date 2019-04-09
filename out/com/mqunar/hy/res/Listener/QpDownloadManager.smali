.class public Lcom/mqunar/hy/res/Listener/QpDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static loadUrlManager:Lcom/mqunar/hy/res/Listener/QpDownloadManager;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/hy/res/Listener/QpDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/Listener/QpDownloadManager;->map:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/mqunar/hy/res/Listener/QpDownloadManager;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/mqunar/hy/res/Listener/QpDownloadManager;->loadUrlManager:Lcom/mqunar/hy/res/Listener/QpDownloadManager;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/mqunar/hy/res/Listener/QpDownloadManager;

    invoke-direct {v0}, Lcom/mqunar/hy/res/Listener/QpDownloadManager;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/Listener/QpDownloadManager;->loadUrlManager:Lcom/mqunar/hy/res/Listener/QpDownloadManager;

    .line 26
    :cond_b
    sget-object v0, Lcom/mqunar/hy/res/Listener/QpDownloadManager;->loadUrlManager:Lcom/mqunar/hy/res/Listener/QpDownloadManager;

    return-object v0
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/hy/res/Listener/QpDownloadListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mqunar/hy/res/Listener/QpDownloadManager;->map:Ljava/util/Map;

    return-object v0
.end method

.method public registerQpDownloadListener(Ljava/lang/String;Lcom/mqunar/hy/res/Listener/QpDownloadListener;)V
    .registers 3

    .prologue
    .line 33
    return-void
.end method

.method public sendMessageError(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 88
    return-void
.end method

.method public sendQpDownLoaded(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 103
    return-void
.end method

.method public sendRequestResultHasQp(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    return-void
.end method

.method public sendRequestResultNoQpl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    return-void
.end method

.method public unRegisterQpDownloadListener(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    return-void
.end method
