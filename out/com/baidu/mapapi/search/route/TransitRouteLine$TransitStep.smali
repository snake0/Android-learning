.class public Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
.super Lcom/baidu/mapapi/search/core/RouteStep;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcom/baidu/mapapi/search/core/VehicleInfo;

.field private e:Lcom/baidu/mapapi/search/core/RouteNode;

.field private f:Lcom/baidu/mapapi/search/core/RouteNode;

.field private g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mapapi/search/route/p;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/p;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>(Landroid/os/Parcel;)V

    const-class v0, Lcom/baidu/mapapi/search/core/VehicleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/VehicleInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->d:Lcom/baidu/mapapi/search/core/VehicleInfo;

    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_44

    const/4 v0, 0x0

    :goto_35
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->i:Ljava/lang/String;

    return-void

    :cond_44
    invoke-static {}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->values()[Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_35
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getExit()Lcom/baidu/mapapi/search/core/RouteNode;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getStepType()Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    return-object v0
.end method

.method public getVehicleInfo()Lcom/baidu/mapapi/search/core/VehicleInfo;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->d:Lcom/baidu/mapapi/search/core/VehicleInfo;

    return-object v0
.end method

.method public getWayPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->mWayPoints:Ljava/util/List;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->mWayPoints:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->mWayPoints:Ljava/util/List;

    return-object v0
.end method

.method public setEntrace(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setExit(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->h:Ljava/lang/String;

    return-void
.end method

.method public setPathString(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->i:Ljava/lang/String;

    return-void
.end method

.method public setStepType(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    return-void
.end method

.method public setVehicleInfo(Lcom/baidu/mapapi/search/core/VehicleInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->d:Lcom/baidu/mapapi/search/core/VehicleInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/RouteStep;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->d:Lcom/baidu/mapapi/search/core/VehicleInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    if-nez v0, :cond_26

    const/4 v0, -0x1

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->ordinal()I

    move-result v0

    goto :goto_18
.end method
