.class public Lcom/mapquest/android/maps/RouteResponse$Route$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public avoidTimedConditions:Z

.field public avoidTripIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public countryBoundaryDisplay:Z

.field public cyclingRoadFactor:I

.field public destinationManeuverDisplay:Z

.field public enhancedNarrative:Z

.field public filterZoneFactor:I

.field public generalize:I

.field public locale:Ljava/lang/String;

.field public maneuverPenalty:I

.field public manmaps:Z

.field public maxLinkId:I

.field public maxWalkingDistance:I

.field public mustAvoidLinkIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public narrativeType:Ljava/lang/String;

.field public projection:Ljava/lang/String;

.field public routeNumber:I

.field public routeType:Ljava/lang/String;

.field public shapeFormat:Ljava/lang/String;

.field public sideOfStreetDisplay:Z

.field public stateBoundaryDisplay:Z

.field final synthetic this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

.field public timeType:I

.field public transferPenalty:I

.field public tryAvoidLinkIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public unit:Ljava/lang/String;

.field public urbanAvoidFactor:I

.field public walkingSpeed:I


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse$Route;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 346
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->mustAvoidLinkIds:Ljava/util/List;

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->filterZoneFactor:I

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->tryAvoidLinkIds:Ljava/util/List;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->avoidTripIds:Ljava/util/List;

    .line 347
    if-eqz p2, :cond_1f0

    .line 348
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "mustAvoidLinkIds"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    .line 349
    if-eqz v2, :cond_4b

    move v0, v1

    .line 350
    :goto_2f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4b

    .line 351
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->mustAvoidLinkIds:Ljava/util/List;

    iget-object v4, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v4}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(ILorg/json/JSONArray;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 355
    :cond_4b
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "countryBoundaryDisplay"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->countryBoundaryDisplay:Z

    .line 356
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "generalize"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->generalize:I

    .line 357
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "narrativeType"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->narrativeType:Ljava/lang/String;

    .line 358
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "projection"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->projection:Ljava/lang/String;

    .line 359
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "locale"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->locale:Ljava/lang/String;

    .line 360
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "avoidTimedConditions"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->avoidTimedConditions:Z

    .line 361
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "destinationManeuverDisplay"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->destinationManeuverDisplay:Z

    .line 362
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "enhancedNarrative"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->enhancedNarrative:Z

    .line 363
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "filterZoneFactor"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->filterZoneFactor:I

    .line 364
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "timeType"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->timeType:I

    .line 365
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "maxWalkingDistance"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->maxWalkingDistance:I

    .line 366
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "routeType"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->routeType:Ljava/lang/String;

    .line 367
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "transferPenalty"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->transferPenalty:I

    .line 368
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "stateBoundaryDisplay"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->stateBoundaryDisplay:Z

    .line 369
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "walkingSpeed"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->walkingSpeed:I

    .line 370
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "maxLinkId"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->maxLinkId:I

    .line 371
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "tryAvoidLinkIds"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    .line 372
    if-eqz v2, :cond_156

    move v0, v1

    .line 373
    :goto_13a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_156

    .line 374
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->tryAvoidLinkIds:Ljava/util/List;

    iget-object v4, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v4}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(ILorg/json/JSONArray;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_13a

    .line 378
    :cond_156
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "unit"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->unit:Ljava/lang/String;

    .line 379
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "routeNumber"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->routeNumber:I

    .line 380
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "maneuverPenalty"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->maneuverPenalty:I

    .line 381
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "avoidTripIds"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_1aa

    .line 383
    :goto_18e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1aa

    .line 384
    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->avoidTripIds:Ljava/util/List;

    iget-object v3, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v3}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/mapquest/android/maps/JSONHelper;->getInt(ILorg/json/JSONArray;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_18e

    .line 388
    :cond_1aa
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "manmaps"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->manmaps:Z

    .line 389
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "sideOfStreetDisplay"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->sideOfStreetDisplay:Z

    .line 390
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "cyclingRoadFactor"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->cyclingRoadFactor:I

    .line 391
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "urbanAvoidFactor"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->urbanAvoidFactor:I

    .line 392
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "shapeFormat"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->shapeFormat:Ljava/lang/String;

    .line 394
    :cond_1f0
    return-void
.end method
