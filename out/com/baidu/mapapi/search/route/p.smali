.class final Lcom/baidu/mapapi/search/route/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
    .registers 3

    new-instance v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
    .registers 3

    new-array v0, p1, [Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/p;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/p;->a(I)[Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    move-result-object v0

    return-object v0
.end method