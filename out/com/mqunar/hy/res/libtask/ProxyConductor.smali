.class public Lcom/mqunar/hy/res/libtask/ProxyConductor;
.super Lcom/mqunar/hy/res/libtask/NetHttpConductor;
.source "SourceFile"


# instance fields
.field private queryName:Ljava/lang/String;

.field private queryValue:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/hy/res/libtask/TaskCallback;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;-><init>([Lcom/mqunar/hy/res/libtask/TaskCallback;)V

    .line 32
    return-void
.end method

.method private buildProxyUrl(Lqunar/lego/utils/Pitcher;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 48
    invoke-virtual {p1}, Lqunar/lego/utils/Pitcher;->getProxyUrl()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor;->queryName:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor;->queryValue:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 52
    :cond_c
    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor;->queryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor;->queryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public addQuery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor;->queryName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor;->queryValue:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public bridge synthetic beforeAdd()V
    .registers 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->beforeAdd()V

    return-void
.end method

.method protected buildResult([BJI)V
    .registers 7

    .prologue
    .line 57
    invoke-static {p1}, Lqunar/lego/utils/Pitcher;->buildResult([B)[B

    move-result-object v0

    .line 58
    array-length v1, v0

    invoke-super {p0, v0, p2, p3, v1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->buildResult([BJI)V

    .line 59
    return-void
.end method

.method public bridge synthetic cancel(Z)Z
    .registers 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic findCache(Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->findCache(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRespHeader()Ljava/util/Map;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->getRespHeader()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->hashCode()I

    move-result v0

    return v0
.end method

.method protected prepareParams()V
    .registers 7

    .prologue
    .line 36
    new-instance v0, Lqunar/lego/utils/Pitcher;

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor;->train:Lcom/mqunar/hy/res/libtask/TaskTrain;

    iget-object v1, v1, Lcom/mqunar/hy/res/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/ProxyConductor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/ProxyConductor;->getContent()[B

    move-result-object v3

    new-instance v4, Lqunar/lego/utils/HttpHeader;

    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/ProxyConductor;->getReqHeader()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lqunar/lego/utils/HttpHeader;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;[BLqunar/lego/utils/HttpHeader;)V

    .line 42
    new-instance v1, Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->getReqHeader()Lqunar/lego/utils/HttpHeader;

    move-result-object v2

    invoke-direct {v1, v2}, Lqunar/lego/utils/HttpHeader;-><init>(Lqunar/lego/utils/HttpHeader;)V

    invoke-virtual {p0, v1}, Lcom/mqunar/hy/res/libtask/ProxyConductor;->setReqHeader(Lqunar/lego/utils/HttpHeader;)V

    .line 43
    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->getContent()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/hy/res/libtask/ProxyConductor;->setContent([B)V

    .line 44
    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/libtask/ProxyConductor;->buildProxyUrl(Lqunar/lego/utils/Pitcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/libtask/ProxyConductor;->setUrl(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public bridge synthetic sameAs(Lcom/mqunar/hy/res/libtask/AbsConductor;)Z
    .registers 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->sameAs(Lcom/mqunar/hy/res/libtask/AbsConductor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setParams([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->setParams([Ljava/lang/Object;)V

    return-void
.end method
