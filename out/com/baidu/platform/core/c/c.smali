.class public Lcom/baidu/platform/core/c/c;
.super Lcom/baidu/platform/base/e;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    invoke-direct {p0, p1}, Lcom/baidu/platform/core/c/c;->a(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "qt"

    const-string v2, "indoor_s"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    iget-object v0, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "x"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    iget-object v0, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "y"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    iget-object v0, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "from"

    const-string v2, "android_map_sdk"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->bid:Ljava/lang/String;

    if-eqz v0, :cond_37

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v2, "bid"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    :cond_37
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->wd:Ljava/lang/String;

    if-eqz v0, :cond_4a

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v2, "wd"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    :cond_4a
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->floor:Ljava/lang/String;

    if-eqz v0, :cond_5d

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v2, "floor"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    :cond_5d
    iget-object v0, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "current"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->currentPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    iget-object v0, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "pageSize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->pageSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
