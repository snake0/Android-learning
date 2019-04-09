.class public Lcom/mqunar/hy/res/libtask/CrossConductor;
.super Lcom/mqunar/hy/res/libtask/NetHttpConductor;
.source "SourceFile"


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/hy/res/libtask/TaskCallback;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;-><init>([Lcom/mqunar/hy/res/libtask/TaskCallback;)V

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic beforeAdd()V
    .registers 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->beforeAdd()V

    return-void
.end method

.method public bridge synthetic cancel(Z)Z
    .registers 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic findCache(Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->findCache(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRespHeader()Ljava/util/Map;
    .registers 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->getRespHeader()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic sameAs(Lcom/mqunar/hy/res/libtask/AbsConductor;)Z
    .registers 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->sameAs(Lcom/mqunar/hy/res/libtask/AbsConductor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setParams([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->setParams([Ljava/lang/Object;)V

    return-void
.end method
