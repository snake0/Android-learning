.class public Lcom/mqunar/yvideo/multivideo/DataSourceBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private defaultUrlMapIndex:I

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imgUrl:Ljava/lang/String;

.field private initScreen:I

.field private isLoop:Z

.field private isSupportTingWindow:Z

.field private title:Ljava/lang/String;

.field private urlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->initScreen:I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultUrlMapIndex()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->defaultUrlMapIndex:I

    return v0
.end method

.method public getHeader()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->header:Ljava/util/Map;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInitScreen()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->initScreen:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->urlMap:Ljava/util/Map;

    return-object v0
.end method

.method public isLoop()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->isLoop:Z

    return v0
.end method

.method public isSupportTingWindow()Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->isSupportTingWindow:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->context:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public setDefaultUrlMapIndex(I)V
    .registers 2

    .prologue
    .line 92
    iput p1, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->defaultUrlMapIndex:I

    .line 93
    return-void
.end method

.method public setHeader(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->header:Ljava/util/Map;

    .line 77
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->imgUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setInitScreen(I)V
    .registers 2

    .prologue
    .line 39
    iput p1, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->initScreen:I

    .line 40
    return-void
.end method

.method public setLoop(Z)V
    .registers 2

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->isLoop:Z

    .line 69
    return-void
.end method

.method public setSupportTingWindow(Z)V
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->isSupportTingWindow:Z

    .line 32
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->title:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUrlMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->urlMap:Ljava/util/Map;

    .line 61
    return-void
.end method
