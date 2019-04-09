.class public final Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/mapapi/model/LatLng;

.field private b:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/c;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/c;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a:Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a:Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a:Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a:Lcom/baidu/mapapi/model/LatLng;

    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public a(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public b()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public b(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
