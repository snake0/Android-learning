.class public Lcom/baidu/mapapi/search/route/PlanNode;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/mapapi/search/route/PlanNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/mapapi/model/LatLng;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mapapi/search/route/m;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/m;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/PlanNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->a:Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->c:Ljava/lang/String;

    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->a:Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/PlanNode;->a:Lcom/baidu/mapapi/model/LatLng;

    iput-object p2, p0, Lcom/baidu/mapapi/search/route/PlanNode;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mapapi/search/route/PlanNode;->c:Ljava/lang/String;

    return-void
.end method

.method public static withCityCodeAndPlaceName(ILjava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;
    .registers 5

    new-instance v0, Lcom/baidu/mapapi/search/route/PlanNode;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/baidu/mapapi/search/route/PlanNode;-><init>(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;
    .registers 4

    new-instance v0, Lcom/baidu/mapapi/search/route/PlanNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/baidu/mapapi/search/route/PlanNode;-><init>(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-direct {v0, p0, v1, v1}, Lcom/baidu/mapapi/search/route/PlanNode;-><init>(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->c:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/PlanNode;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
