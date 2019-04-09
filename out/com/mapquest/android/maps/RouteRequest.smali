.class public Lcom/mapquest/android/maps/RouteRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private apiVersion:Ljava/lang/String;

.field private ignoreAmbiguities:Z

.field private final openURL:Ljava/lang/String;

.field private final requestJSON:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "http://open.mapquestapi.com/directions/v2/route?"

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteRequest;->openURL:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteRequest;->requestJSON:Ljava/lang/String;

    .line 16
    if-eqz p2, :cond_16

    :goto_b
    iput-object p2, p0, Lcom/mapquest/android/maps/RouteRequest;->apiKey:Ljava/lang/String;

    .line 17
    iput-boolean p3, p0, Lcom/mapquest/android/maps/RouteRequest;->ignoreAmbiguities:Z

    .line 18
    invoke-static {}, Lcom/mapquest/android/maps/Util;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteRequest;->apiVersion:Ljava/lang/String;

    .line 19
    return-void

    .line 16
    :cond_16
    const-string p2, ""

    goto :goto_b
.end method


# virtual methods
.method public getRequestJSON()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteRequest;->requestJSON:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteRequest;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    iget-boolean v1, p0, Lcom/mapquest/android/maps/RouteRequest;->ignoreAmbiguities:Z

    if-eqz v1, :cond_16

    .line 24
    const-string v1, "&ambiguities=ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_16
    const-string v1, "&sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteRequest;->apiVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://open.mapquestapi.com/directions/v2/route?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
