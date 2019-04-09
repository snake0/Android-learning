.class Lcom/baidu/location/a/c$b;
.super Lcom/baidu/location/d/e;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/a/c;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/c;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/location/a/c$b;->b:Lcom/baidu/location/a/c;

    invoke-direct {p0}, Lcom/baidu/location/d/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/c$b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/c$b;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c$b;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/c$b;->b:Lcom/baidu/location/a/c;

    invoke-static {v0}, Lcom/baidu/location/a/c;->a(Lcom/baidu/location/a/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/baidu/location/a/c$b;->b:Lcom/baidu/location/a/c;

    invoke-static {v0}, Lcom/baidu/location/a/c;->b(Lcom/baidu/location/a/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/a/c$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&ki=%s&sn=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/a/c$b;->b:Lcom/baidu/location/a/c;

    invoke-static {v4}, Lcom/baidu/location/a/c;->a(Lcom/baidu/location/a/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/baidu/location/a/c$b;->b:Lcom/baidu/location/a/c;

    invoke-static {v4}, Lcom/baidu/location/a/c;->b(Lcom/baidu/location/a/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c$b;->a:Ljava/lang/String;

    :cond_48
    iget-object v0, p0, Lcom/baidu/location/a/c$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->encodeTp4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/a/c$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/c$b;->k:Ljava/util/Map;

    const-string v2, "bloc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c$b;->k:Ljava/util/Map;

    const-string v2, "trtm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/location/a/c$b;->a:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/d/j;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/location/a/c$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    if-eqz p1, :cond_5f

    iget-object v0, p0, Lcom/baidu/location/a/c$b;->j:Ljava/lang/String;

    if-eqz v0, :cond_5f

    :try_start_6
    iget-object v1, p0, Lcom/baidu/location/a/c$b;->j:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8} :catch_75

    :try_start_8
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, v1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_69

    :goto_d
    if-eqz v0, :cond_5f

    :try_start_f
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_5f

    iget-object v1, p0, Lcom/baidu/location/a/c$b;->b:Lcom/baidu/location/a/c;

    invoke-static {v1}, Lcom/baidu/location/a/c;->c(Lcom/baidu/location/a/c;)Lcom/baidu/location/LocationClientOption;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c$b;->b:Lcom/baidu/location/a/c;

    iget-object v2, v2, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/c$b;->b:Lcom/baidu/location/a/c;

    iget-object v2, v2, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/Jni;->en1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocationID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/a/c$b;->b:Lcom/baidu/location/a/c;

    invoke-static {v1}, Lcom/baidu/location/a/c;->d(Lcom/baidu/location/a/c;)Lcom/baidu/location/a/c$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/location/a/c$a;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5f} :catch_75

    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/baidu/location/a/c$b;->k:Ljava/util/Map;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/baidu/location/a/c$b;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_68
    return-void

    :catch_69
    move-exception v0

    :try_start_6a
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_74} :catch_75

    goto :goto_d

    :catch_75
    move-exception v0

    goto :goto_5f
.end method
