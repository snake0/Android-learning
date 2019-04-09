.class Lcom/mapquest/android/Geocoder$MapQuestGeocoder;
.super Lcom/mapquest/android/Geocoder$BaseGeocoder;
.source "SourceFile"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://www.mapquestapi.com/geocoding/v1/"

.field private static final GEOCODE_URL:Ljava/lang/String; = "http://www.mapquestapi.com/geocoding/v1/address?"

.field private static final INPUT_FORMAT:Ljava/lang/String; = "kvp"

.field private static final OUTPUT_FORMAT:Ljava/lang/String; = "json"

.field private static final REVERSE_GEOCODE_URL:Ljava/lang/String; = "http://www.mapquestapi.com/geocoding/v1/reverse?"


# instance fields
.field apiKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/mapquest/android/Geocoder;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/Geocoder;Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 303
    iput-object p1, p0, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->this$0:Lcom/mapquest/android/Geocoder;

    .line 304
    invoke-direct {p0, p1, p2, p3}, Lcom/mapquest/android/Geocoder$BaseGeocoder;-><init>(Lcom/mapquest/android/Geocoder;Landroid/content/Context;Ljava/util/Locale;)V

    .line 305
    iput-object p4, p0, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->apiKey:Ljava/lang/String;

    .line 306
    return-void
.end method

.method private appendRequiredParameters(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 336
    const-string v0, "key"

    iget-object v1, p0, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->apiKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v0, "inFormat"

    const-string v1, "kvp"

    invoke-virtual {p0, p1, v0, v1}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v0, "outFormat"

    const-string v1, "json"

    invoke-virtual {p0, p1, v0, v1}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    return-object p1
.end method

.method private invokeApi(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->headers:Ljava/util/HashMap;

    # invokes: Lcom/mapquest/android/Geocoder;->runRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/mapquest/android/Geocoder;->access$000(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 345
    if-nez v1, :cond_16

    .line 346
    new-instance v0, Ljava/io/IOException;

    const-string v1, " Error while reading from network"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_16
    :try_start_16
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 350
    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "statuscode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 351
    if-eqz v1, :cond_3e

    .line 352
    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 405
    :cond_3d
    :goto_3d
    return-object v0

    .line 357
    :cond_3e
    const-string v1, "results"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "locations"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 358
    new-instance v6, Landroid/location/Address;

    iget-object v1, p0, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->locale:Ljava/util/Locale;

    invoke-direct {v6, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 359
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v4, v3

    .line 361
    :goto_5b
    if-ge v4, v7, :cond_3d

    .line 362
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 363
    const-string v1, "latLng"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Landroid/location/Address;->setLatitude(D)V

    .line 364
    const-string v1, "latLng"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lng"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Landroid/location/Address;->setLongitude(D)V

    .line 365
    const-string v1, "mapUrl"

    invoke-virtual {p0, v8, v1}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 366
    const-string v1, "mapUrl"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 369
    :cond_90
    const/4 v2, 0x0

    .line 370
    const-string v1, "street"

    invoke-virtual {p0, v8, v1}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_143

    .line 371
    const/4 v1, 0x1

    const-string v9, "street"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 374
    :goto_a3
    const-string v2, "adminArea5"

    invoke-virtual {p0, v8, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_140

    .line 375
    const-string v2, "adminArea5"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 376
    add-int/lit8 v2, v1, 0x1

    const-string v9, "adminArea5"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 379
    :goto_bf
    const-string v1, "adminArea4"

    invoke-virtual {p0, v8, v1}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13e

    .line 380
    const-string v1, "adminArea4"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 381
    add-int/lit8 v1, v2, 0x1

    const-string v9, "adminArea4"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 384
    :goto_db
    const-string v2, "adminArea3"

    invoke-virtual {p0, v8, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13c

    .line 385
    const-string v2, "adminArea3"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 386
    add-int/lit8 v2, v1, 0x1

    const-string v9, "adminArea3"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 389
    :goto_f7
    const-string v1, "postalCode"

    invoke-virtual {p0, v8, v1}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13a

    .line 390
    const-string v1, "postalCode"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 391
    add-int/lit8 v1, v2, 0x1

    const-string v9, "postalCode"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 394
    :goto_113
    const-string v2, "adminArea1"

    invoke-virtual {p0, v8, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12f

    .line 395
    const-string v2, "adminArea1"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 396
    add-int/lit8 v2, v1, 0x1

    const-string v2, "adminArea1"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 399
    :cond_12f
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_132
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_132} :catch_137

    .line 361
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_5b

    .line 401
    :catch_137
    move-exception v1

    goto/16 :goto_3d

    :cond_13a
    move v1, v2

    goto :goto_113

    :cond_13c
    move v2, v1

    goto :goto_f7

    :cond_13e
    move v1, v2

    goto :goto_db

    :cond_140
    move v2, v1

    goto/16 :goto_bf

    :cond_143
    move v1, v3

    goto/16 :goto_a3
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.mapquestapi.com/geocoding/v1/reverse?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendRequiredParameters(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "lat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, "lng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->invokeApi(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.mapquestapi.com/geocoding/v1/address?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendRequiredParameters(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, "thumbMaps"

    const-string v2, "false"

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, "location"

    invoke-virtual {p0, v0, v1, p1}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, "maxResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->invokeApi(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.mapquestapi.com/geocoding/v1/address?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendRequiredParameters(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, "thumbMaps"

    const-string v2, "false"

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, "location"

    invoke-virtual {p0, v0, v1, p1}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, "maxResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, "boundingBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9, p10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;->invokeApi(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
