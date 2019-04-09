.class public Lqunar/sdk/mapapi/gaodeMapImp/GaodeGeoCoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/QunarGeoCoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destory()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method

.method public reverseGeoCode(Lqunar/sdk/location/QLocation;)Z
    .registers 3

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public setOnGetGeoCodeResultListener(Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;)V
    .registers 2

    .prologue
    .line 20
    return-void
.end method
