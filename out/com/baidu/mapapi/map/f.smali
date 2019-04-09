.class Lcom/baidu/mapapi/map/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D


# direct methods
.method public constructor <init>(DDDD)V
    .registers 13

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/mapapi/map/f;->a:D

    iput-wide p5, p0, Lcom/baidu/mapapi/map/f;->b:D

    iput-wide p3, p0, Lcom/baidu/mapapi/map/f;->c:D

    iput-wide p7, p0, Lcom/baidu/mapapi/map/f;->d:D

    add-double v0, p1, p3

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/mapapi/map/f;->e:D

    add-double v0, p5, p7

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/mapapi/map/f;->f:D

    return-void
.end method


# virtual methods
.method public a(DD)Z
    .registers 7

    iget-wide v0, p0, Lcom/baidu/mapapi/map/f;->a:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_1a

    iget-wide v0, p0, Lcom/baidu/mapapi/map/f;->c:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_1a

    iget-wide v0, p0, Lcom/baidu/mapapi/map/f;->b:D

    cmpg-double v0, v0, p3

    if-gtz v0, :cond_1a

    iget-wide v0, p0, Lcom/baidu/mapapi/map/f;->d:D

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public a(DDDD)Z
    .registers 11

    iget-wide v0, p0, Lcom/baidu/mapapi/map/f;->c:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1a

    iget-wide v0, p0, Lcom/baidu/mapapi/map/f;->a:D

    cmpg-double v0, v0, p3

    if-gez v0, :cond_1a

    iget-wide v0, p0, Lcom/baidu/mapapi/map/f;->d:D

    cmpg-double v0, p5, v0

    if-gez v0, :cond_1a

    iget-wide v0, p0, Lcom/baidu/mapapi/map/f;->b:D

    cmpg-double v0, v0, p7

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public a(Landroid/graphics/Point;)Z
    .registers 6

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/mapapi/map/f;->a(DD)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/mapapi/map/f;)Z
    .registers 11

    iget-wide v1, p1, Lcom/baidu/mapapi/map/f;->a:D

    iget-wide v3, p1, Lcom/baidu/mapapi/map/f;->c:D

    iget-wide v5, p1, Lcom/baidu/mapapi/map/f;->b:D

    iget-wide v7, p1, Lcom/baidu/mapapi/map/f;->d:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mapapi/map/f;->a(DDDD)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/baidu/mapapi/map/f;)Z
    .registers 6

    iget-wide v0, p1, Lcom/baidu/mapapi/map/f;->a:D

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->a:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_22

    iget-wide v0, p1, Lcom/baidu/mapapi/map/f;->c:D

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->c:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_22

    iget-wide v0, p1, Lcom/baidu/mapapi/map/f;->b:D

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->b:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_22

    iget-wide v0, p1, Lcom/baidu/mapapi/map/f;->d:D

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->d:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->a:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " minY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->b:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " maxX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->c:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " maxY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->d:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " midX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->e:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " midY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mapapi/map/f;->f:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
