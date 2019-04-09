.class Lcom/mapquest/android/Geocoder$NominatimGeocoder;
.super Lcom/mapquest/android/Geocoder$BaseGeocoder;
.source "SourceFile"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://open.mapquestapi.com/nominatim/v1/"

.field private static final GEOCODE_URL:Ljava/lang/String; = "http://open.mapquestapi.com/nominatim/v1/search?"

.field private static final OUTPUT_FORMAT:Ljava/lang/String; = "json"

.field private static final REVERSE_GEOCODE_URL:Ljava/lang/String; = "http://open.mapquestapi.com/nominatim/v1/reverse?"


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/Geocoder;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/Geocoder;Landroid/content/Context;Ljava/util/Locale;)V
    .registers 4

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->this$0:Lcom/mapquest/android/Geocoder;

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/mapquest/android/Geocoder$BaseGeocoder;-><init>(Lcom/mapquest/android/Geocoder;Landroid/content/Context;Ljava/util/Locale;)V

    .line 172
    return-void
.end method

.method private appendRequiredParameters(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 201
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p0, p1, v0, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, "addressdetails"

    const-string v1, "1"

    invoke-virtual {p0, p1, v0, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    return-object p1
.end method

.method private invokeApi(Ljava/lang/String;)Ljava/util/List;
    .registers 7
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
    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v0, p0, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->headers:Ljava/util/HashMap;

    # invokes: Lcom/mapquest/android/Geocoder;->runRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/mapquest/android/Geocoder;->access$000(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 209
    if-nez v0, :cond_15

    .line 210
    new-instance v0, Ljava/io/IOException;

    const-string v1, " Error while reading from network"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_15
    :try_start_15
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 215
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_39

    .line 216
    check-cast v0, Lorg/json/JSONArray;

    .line 217
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 219
    const/4 v1, 0x0

    :goto_29
    if-ge v1, v3, :cond_42

    .line 220
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 221
    invoke-direct {p0, v4}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->parseAddress(Lorg/json/JSONObject;)Landroid/location/Address;

    move-result-object v4

    .line 222
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 225
    :cond_39
    check-cast v0, Lorg/json/JSONObject;

    .line 226
    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->parseAddress(Lorg/json/JSONObject;)Landroid/location/Address;

    move-result-object v0

    .line 227
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_42} :catch_43

    .line 233
    :cond_42
    :goto_42
    return-object v2

    .line 229
    :catch_43
    move-exception v0

    goto :goto_42
.end method

.method private parseAddress(Lorg/json/JSONObject;)Landroid/location/Address;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 238
    new-instance v2, Landroid/location/Address;

    iget-object v0, p0, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->locale:Ljava/util/Locale;

    invoke-direct {v2, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 239
    const-string v0, "lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Address;->setLatitude(D)V

    .line 240
    const-string v0, "lon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Address;->setLongitude(D)V

    .line 241
    const-string v0, "address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 243
    const-string v0, "road"

    invoke-virtual {p0, v3, v0}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_148

    .line 244
    const/4 v0, 0x1

    const-string v4, "road"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 247
    :goto_32
    const-string v4, "display_name"

    invoke-virtual {p0, v3, v4}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 248
    const-string v4, "display_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 251
    :cond_4b
    const-string v1, "suburb"

    invoke-virtual {p0, v3, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 252
    const-string v1, "suburb"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 253
    add-int/lit8 v1, v0, 0x1

    const-string v4, "suburb"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move v0, v1

    .line 256
    :cond_68
    const-string v1, "city"

    invoke-virtual {p0, v3, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10a

    .line 257
    const-string v1, "city"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 258
    add-int/lit8 v1, v0, 0x1

    const-string v4, "city"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move v0, v1

    .line 267
    :cond_85
    :goto_85
    const-string v1, "county"

    invoke-virtual {p0, v3, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 268
    const-string v1, "county"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 269
    add-int/lit8 v1, v0, 0x1

    const-string v4, "county"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move v0, v1

    .line 272
    :cond_a2
    const-string v1, "state"

    invoke-virtual {p0, v3, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 273
    const-string v1, "state"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 274
    add-int/lit8 v1, v0, 0x1

    const-string v4, "state"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move v0, v1

    .line 277
    :cond_bf
    const-string v1, "postcode"

    invoke-virtual {p0, v3, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_dc

    .line 278
    const-string v1, "postcode"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 279
    add-int/lit8 v1, v0, 0x1

    const-string v4, "postcode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move v0, v1

    .line 282
    :cond_dc
    const-string v1, "country"

    invoke-virtual {p0, v3, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f8

    .line 283
    const-string v1, "country"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 284
    add-int/lit8 v1, v0, 0x1

    const-string v1, "country"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 287
    :cond_f8
    const-string v0, "country_code"

    invoke-virtual {p0, v3, v0}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_109

    .line 288
    const-string v0, "country_code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 291
    :cond_109
    return-object v2

    .line 259
    :cond_10a
    const-string v1, "town"

    invoke-virtual {p0, v3, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_129

    .line 260
    const-string v1, "town"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 261
    add-int/lit8 v1, v0, 0x1

    const-string v4, "town"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move v0, v1

    goto/16 :goto_85

    .line 262
    :cond_129
    const-string v1, "village"

    invoke-virtual {p0, v3, v1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->isEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 263
    const-string v1, "village"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 264
    add-int/lit8 v1, v0, 0x1

    const-string v4, "village"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move v0, v1

    goto/16 :goto_85

    :cond_148
    move v0, v1

    goto/16 :goto_32
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
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://open.mapquestapi.com/nominatim/v1/reverse?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendRequiredParameters(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 177
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

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "lon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->invokeApi(Ljava/lang/String;)Ljava/util/List;

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
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://open.mapquestapi.com/nominatim/v1/search?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendRequiredParameters(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "q"

    invoke-virtual {p0, v0, v1, p1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->invokeApi(Ljava/lang/String;)Ljava/util/List;

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
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://open.mapquestapi.com/nominatim/v1/search?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendRequiredParameters(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "q"

    invoke-virtual {p0, v0, v1, p1}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "viewbox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9, p10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->appendEncodedKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;->invokeApi(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
