.class public final Lcom/baidu/mapapi/search/route/MassTransitRouteResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/mapapi/search/core/TransitResultNode;

.field private b:Lcom/baidu/mapapi/search/core/TransitResultNode;

.field private c:Lcom/baidu/mapapi/search/core/TaxiInfo;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mapapi/search/route/l;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/l;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    const-class v0, Lcom/baidu/mapapi/search/core/TransitResultNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/TransitResultNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TransitResultNode;

    const-class v0, Lcom/baidu/mapapi/search/core/TransitResultNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/TransitResultNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->b:Lcom/baidu/mapapi/search/core/TransitResultNode;

    const-class v0, Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/TaxiInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->c:Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->e:Ljava/util/List;

    const-class v1, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    const-class v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDestination()Lcom/baidu/mapapi/search/core/TransitResultNode;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->b:Lcom/baidu/mapapi/search/core/TransitResultNode;

    return-object v0
.end method

.method public getOrigin()Lcom/baidu/mapapi/search/core/TransitResultNode;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TransitResultNode;

    return-object v0
.end method

.method public getRouteLines()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->e:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-object v0
.end method

.method public getTaxiInfo()Lcom/baidu/mapapi/search/core/TaxiInfo;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->c:Lcom/baidu/mapapi/search/core/TaxiInfo;

    return-object v0
.end method

.method public getTotal()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->d:I

    return v0
.end method

.method public setDestination(Lcom/baidu/mapapi/search/core/TransitResultNode;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->b:Lcom/baidu/mapapi/search/core/TransitResultNode;

    return-void
.end method

.method public setOrigin(Lcom/baidu/mapapi/search/core/TransitResultNode;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TransitResultNode;

    return-void
.end method

.method public setRoutelines(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->e:Ljava/util/List;

    return-void
.end method

.method public setSuggestAddrInfo(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-void
.end method

.method public setTaxiInfo(Lcom/baidu/mapapi/search/core/TaxiInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->c:Lcom/baidu/mapapi/search/core/TaxiInfo;

    return-void
.end method

.method public setTotal(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->d:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TransitResultNode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->b:Lcom/baidu/mapapi/search/core/TransitResultNode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->c:Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
