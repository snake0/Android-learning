.class public abstract Lcom/mqunar/yvideo/multivideo/MediaInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentDataSource:Ljava/lang/String;

.field private dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

.field private isPrepare:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentDataSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaInterface;->currentDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCurrentPosition()J
.end method

.method public getDataSourceObjects()Lcom/mqunar/yvideo/multivideo/DataSourceBean;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/MediaInterface;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    return-object v0
.end method

.method public abstract getDuration()J
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract isPlaying()Z
.end method

.method public isPrepare()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPrepare:Z

    return v0
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract reSet()V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(J)V
.end method

.method public setCurrentDataSource(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/MediaInterface;->currentDataSource:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setDataSourceObjects(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/MediaInterface;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    .line 64
    return-void
.end method

.method public abstract setLooping(Z)V
.end method

.method public setPrepare(Z)V
    .registers 2

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPrepare:Z

    .line 72
    return-void
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract start()V
.end method
