.class public Lcom/mapquest/android/maps/RouteResponse$Location;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adminArea1:Ljava/lang/String;

.field public adminArea1Type:Ljava/lang/String;

.field public adminArea2:Ljava/lang/String;

.field public adminArea2Type:Ljava/lang/String;

.field public adminArea3:Ljava/lang/String;

.field public adminArea3Type:Ljava/lang/String;

.field public adminArea4:Ljava/lang/String;

.field public adminArea4Type:Ljava/lang/String;

.field public adminArea5:Ljava/lang/String;

.field public adminArea5Type:Ljava/lang/String;

.field public displayLatLng:Lcom/mapquest/android/maps/GeoPoint;

.field public geocodeQuality:Ljava/lang/String;

.field public geocodeQualityCode:Ljava/lang/String;

.field public latLng:Lcom/mapquest/android/maps/GeoPoint;

.field public linkId:I

.field public locationJSON:Lorg/json/JSONObject;

.field public postalCode:Ljava/lang/String;

.field public sideOfStreet:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field final synthetic this$0:Lcom/mapquest/android/maps/RouteResponse;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->locationJSON:Lorg/json/JSONObject;

    .line 58
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "latLng"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/RouteResponse;->buildGeoPoint(Lorg/json/JSONObject;)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->latLng:Lcom/mapquest/android/maps/GeoPoint;

    .line 59
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "displayLatLng"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/RouteResponse;->buildGeoPoint(Lorg/json/JSONObject;)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->displayLatLng:Lcom/mapquest/android/maps/GeoPoint;

    .line 60
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea1"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea1:Ljava/lang/String;

    .line 61
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea1Type"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea1Type:Ljava/lang/String;

    .line 62
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea2"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea2:Ljava/lang/String;

    .line 63
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea2Type"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea2Type:Ljava/lang/String;

    .line 64
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea3"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea3:Ljava/lang/String;

    .line 65
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea3Type"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea3Type:Ljava/lang/String;

    .line 66
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea4"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea4:Ljava/lang/String;

    .line 67
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea4Type"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea4Type:Ljava/lang/String;

    .line 68
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea5"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea5:Ljava/lang/String;

    .line 69
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "adminArea5Type"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea5Type:Ljava/lang/String;

    .line 70
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "street"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->street:Ljava/lang/String;

    .line 71
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->type:Ljava/lang/String;

    .line 72
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "linkId"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->linkId:I

    .line 73
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "postalCode"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->postalCode:Ljava/lang/String;

    .line 74
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "sideOfStreet"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->sideOfStreet:Ljava/lang/String;

    .line 75
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "geocodeQuality"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->geocodeQuality:Ljava/lang/String;

    .line 76
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "geocodeQualityCode"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->geocodeQualityCode:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->geocodeQuality:Ljava/lang/String;

    .line 82
    const-string v2, "ADDRESS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    const-string v2, "POINT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    .line 83
    const-string v2, "STREET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 84
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_3c
    :goto_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_41
    const-string v2, "COUNTRY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 86
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 87
    :cond_4f
    const-string v2, "STATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 88
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 89
    :cond_5d
    const-string v2, "COUNTY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 90
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 91
    :cond_77
    const-string v2, "ZIP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ef

    const-string v2, "ZIP_EXTENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ef

    .line 92
    const-string v2, "CITY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 93
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 94
    :cond_a1
    const-string v2, "LATLNG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 95
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->displayLatLng:Lcom/mapquest/android/maps/GeoPoint;

    if-eqz v1, :cond_ce

    .line 96
    const-string v1, "Latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->displayLatLng:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->displayLatLng:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_3c

    .line 98
    :cond_ce
    const-string v1, "Latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->latLng:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->latLng:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_3c

    .line 102
    :cond_ef
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->postalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3c

    .line 105
    :cond_102
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->adminArea3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Location;->postalCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3c
.end method
