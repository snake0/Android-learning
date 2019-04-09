.class public Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    new-instance v0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->GetAll(JLandroid/os/Bundle;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a()J
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->Create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    return-wide v0
.end method

.method public a(I)Z
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->SetType(JI)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->Remove(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a$a;->a()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->Add(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z
    .registers 16

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->Load(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->Release(J)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->GetValue(JLjava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a$a;->a()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->Update(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->Clear(J)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->IsExist(JLjava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public d()Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b:Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/JNIFavorite;->SaveCache(J)Z

    move-result v0

    return v0
.end method
