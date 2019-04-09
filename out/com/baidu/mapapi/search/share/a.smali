.class final Lcom/baidu/mapapi/search/share/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/mapapi/search/share/ShareUrlResult;",
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
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/share/ShareUrlResult;
    .registers 3

    new-instance v0, Lcom/baidu/mapapi/search/share/ShareUrlResult;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/share/ShareUrlResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/share/ShareUrlResult;
    .registers 3

    new-array v0, p1, [Lcom/baidu/mapapi/search/share/ShareUrlResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/share/a;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/share/ShareUrlResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/share/a;->a(I)[Lcom/baidu/mapapi/search/share/ShareUrlResult;

    move-result-object v0

    return-object v0
.end method
