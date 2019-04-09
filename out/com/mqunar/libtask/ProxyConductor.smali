.class public Lcom/mqunar/libtask/ProxyConductor;
.super Lcom/mqunar/libtask/o;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/libtask/TaskCallback;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/o;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 37
    return-void
.end method

.method private a(Lqunar/lego/utils/Pitcher;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 60
    invoke-virtual {p1}, Lqunar/lego/utils/Pitcher;->getProxyUrl()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/mqunar/libtask/ProxyConductor;->a:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/mqunar/libtask/ProxyConductor;->b:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 64
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

    iget-object v1, p0, Lcom/mqunar/libtask/ProxyConductor;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/libtask/ProxyConductor;->b:Ljava/lang/String;

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
    .line 75
    iput-object p1, p0, Lcom/mqunar/libtask/ProxyConductor;->a:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/mqunar/libtask/ProxyConductor;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public bridge synthetic beforeAdd()V
    .registers 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/mqunar/libtask/o;->beforeAdd()V

    return-void
.end method

.method protected buildResult([BJI)V
    .registers 7

    .prologue
    .line 69
    invoke-static {p1}, Lqunar/lego/utils/Pitcher;->buildResult([B)[B

    move-result-object v0

    .line 71
    array-length v1, v0

    invoke-super {p0, v0, p2, p3, v1}, Lcom/mqunar/libtask/o;->buildResult([BJI)V

    .line 72
    return-void
.end method

.method public bridge synthetic cancel(Z)Z
    .registers 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic findCache(Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->findCache(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFormParts()Ljava/util/List;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getFormParts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginResponse()Lcom/mqunar/network/NetResponse;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getOriginResponse()Lcom/mqunar/network/NetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRespHeader()Ljava/util/Map;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getRespHeader()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/mqunar/libtask/o;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onInterceptRequest(Lcom/mqunar/network/NetRequest;)Z
    .registers 3

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->onInterceptRequest(Lcom/mqunar/network/NetRequest;)Z

    .line 127
    iget-object v0, p0, Lcom/mqunar/libtask/ProxyConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mqunar/libtask/q;->a(Landroid/content/Context;Lcom/mqunar/network/NetRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/libtask/ProxyConductor;->c:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method protected onInterceptResponse(Lcom/mqunar/network/NetResponse;)Z
    .registers 5

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->onInterceptResponse(Lcom/mqunar/network/NetResponse;)Z

    .line 136
    iget-object v0, p0, Lcom/mqunar/libtask/ProxyConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mqunar/libtask/ProxyConductor;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mqunar/libtask/ProxyConductor;->getRespHeader()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mqunar/libtask/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareParams()V
    .registers 7

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/mqunar/libtask/ProxyConductor;->getFormParts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/mqunar/libtask/ProxyConductor;->getFormParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/FormPart;

    .line 45
    iget-object v3, v0, Lcom/mqunar/libtask/FormPart;->value:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 46
    new-instance v3, Lqunar/lego/utils/FormPart;

    iget-object v4, v0, Lcom/mqunar/libtask/FormPart;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/mqunar/libtask/FormPart;->file:Ljava/lang/String;

    iget-object v0, v0, Lcom/mqunar/libtask/FormPart;->metaData:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 48
    :cond_32
    new-instance v3, Lqunar/lego/utils/FormPart;

    iget-object v4, v0, Lcom/mqunar/libtask/FormPart;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/mqunar/libtask/FormPart;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 50
    :cond_3f
    new-instance v0, Lqunar/lego/utils/Pitcher;

    iget-object v2, p0, Lcom/mqunar/libtask/ProxyConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v2, v2, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mqunar/libtask/ProxyConductor;->getUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lqunar/lego/utils/HttpHeader;

    invoke-virtual {p0}, Lcom/mqunar/libtask/ProxyConductor;->getReqHeader()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lqunar/lego/utils/HttpHeader;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v2, v3, v1, v4}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)V

    .line 54
    :goto_55
    new-instance v1, Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->getReqHeader()Lqunar/lego/utils/HttpHeader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mqunar/libtask/HttpHeader;-><init>(Lqunar/lego/utils/HttpHeader;)V

    invoke-virtual {p0, v1}, Lcom/mqunar/libtask/ProxyConductor;->setReqHeader(Lcom/mqunar/libtask/HttpHeader;)V

    .line 55
    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->getContent()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/libtask/ProxyConductor;->setContent([B)V

    .line 56
    invoke-direct {p0, v0}, Lcom/mqunar/libtask/ProxyConductor;->a(Lqunar/lego/utils/Pitcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/ProxyConductor;->setUrl(Ljava/lang/String;)V

    .line 57
    return-void

    .line 52
    :cond_70
    new-instance v0, Lqunar/lego/utils/Pitcher;

    iget-object v1, p0, Lcom/mqunar/libtask/ProxyConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v1, v1, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mqunar/libtask/ProxyConductor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mqunar/libtask/ProxyConductor;->getContent()[B

    move-result-object v3

    new-instance v4, Lqunar/lego/utils/HttpHeader;

    invoke-virtual {p0}, Lcom/mqunar/libtask/ProxyConductor;->getReqHeader()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lqunar/lego/utils/HttpHeader;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;[BLqunar/lego/utils/HttpHeader;)V

    goto :goto_55
.end method

.method public bridge synthetic sameAs(Lcom/mqunar/libtask/AbsConductor;)Z
    .registers 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->sameAs(Lcom/mqunar/libtask/AbsConductor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setParams([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->setParams([Ljava/lang/Object;)V

    return-void
.end method
