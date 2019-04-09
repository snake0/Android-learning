.class public Lqunar/sdk/location/JsonConvertUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeArrayDateToJson(Ljava/util/List;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 23
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    :cond_9
    move-object v1, v9

    .line 41
    :goto_a
    return-object v1

    .line 26
    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_17

    .line 27
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b

    .line 31
    :cond_17
    :try_start_17
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lqunar/sdk/location/QLocation;

    move-object v8, v0

    .line 33
    new-instance v1, Lqunar/sdk/location/TempLoc;

    invoke-virtual {v8}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v8}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v8}, Lqunar/sdk/location/QLocation;->getTime()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lqunar/sdk/location/TempLoc;-><init>(DDJ)V

    .line 34
    invoke-virtual {v8}, Lqunar/sdk/location/QLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqunar/sdk/location/TempLoc;->country:Ljava/lang/String;

    .line 35
    invoke-virtual {v8}, Lqunar/sdk/location/QLocation;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqunar/sdk/location/TempLoc;->countryCode:Ljava/lang/String;

    .line 36
    invoke-virtual {v8}, Lqunar/sdk/location/QLocation;->getIsAbroad()Z

    move-result v2

    iput-boolean v2, v1, Lqunar/sdk/location/TempLoc;->isAbroad:Z

    .line 37
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 40
    :catch_55
    move-exception v1

    move-object v1, v9

    .line 41
    goto :goto_a

    .line 39
    :cond_58
    invoke-static {v10}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_5f} :catch_55

    move-result-object v1

    goto :goto_a
.end method

.method public static changeJsonToArray(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    :try_start_1
    const-class v0, Lqunar/sdk/location/TempLoc;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    :cond_f
    move-object v0, v2

    .line 69
    :goto_10
    return-object v0

    .line 57
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/TempLoc;

    .line 59
    new-instance v4, Lqunar/sdk/location/QLocation;

    iget-wide v5, v0, Lqunar/sdk/location/TempLoc;->mLatitude:D

    iget-wide v7, v0, Lqunar/sdk/location/TempLoc;->mLongitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 60
    iget-wide v5, v0, Lqunar/sdk/location/TempLoc;->mTime:J

    invoke-virtual {v4, v5, v6}, Lqunar/sdk/location/QLocation;->setTime(J)V

    .line 61
    iget-object v5, v0, Lqunar/sdk/location/TempLoc;->country:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lqunar/sdk/location/QLocation;->setCountry(Ljava/lang/String;)V

    .line 62
    iget-object v5, v0, Lqunar/sdk/location/TempLoc;->countryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lqunar/sdk/location/QLocation;->setCountryCode(Ljava/lang/String;)V

    .line 63
    iget-boolean v0, v0, Lqunar/sdk/location/TempLoc;->isAbroad:Z

    invoke-virtual {v4, v0}, Lqunar/sdk/location/QLocation;->setisAbroad(Z)V

    .line 64
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_47

    goto :goto_1a

    .line 67
    :catch_47
    move-exception v0

    move-object v0, v2

    .line 69
    goto :goto_10

    :cond_4a
    move-object v0, v1

    .line 66
    goto :goto_10
.end method
