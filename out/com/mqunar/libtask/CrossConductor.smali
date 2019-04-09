.class public Lcom/mqunar/libtask/CrossConductor;
.super Lcom/mqunar/libtask/o;
.source "SourceFile"


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/libtask/TaskCallback;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/o;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic beforeAdd()V
    .registers 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/mqunar/libtask/o;->beforeAdd()V

    return-void
.end method

.method public bridge synthetic cancel(Z)Z
    .registers 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic findCache(Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->findCache(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFormParts()Ljava/util/List;
    .registers 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getFormParts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginResponse()Lcom/mqunar/network/NetResponse;
    .registers 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getOriginResponse()Lcom/mqunar/network/NetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRespHeader()Ljava/util/Map;
    .registers 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getRespHeader()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/mqunar/libtask/o;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic sameAs(Lcom/mqunar/libtask/AbsConductor;)Z
    .registers 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->sameAs(Lcom/mqunar/libtask/AbsConductor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setParams([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->setParams([Ljava/lang/Object;)V

    return-void
.end method
