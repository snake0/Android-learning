.class public Lcom/baidu/mapapi/model/inner/Point;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    iput p2, p0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/baidu/mapapi/model/inner/Point;

    iget v2, p0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    iget v3, p1, Lcom/baidu/mapapi/model/inner/Point;->x:I

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget v2, p0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    iget v3, p1, Lcom/baidu/mapapi/model/inner/Point;->y:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getmPtx()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    return v0
.end method

.method public getmPty()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setmPtx(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    return-void
.end method

.method public setmPty(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point [x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
