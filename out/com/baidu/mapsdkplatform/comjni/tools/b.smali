.class final Lcom/baidu/mapsdkplatform/comjni/tools/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/mapsdkplatform/comjni/tools/ParcelItem;",
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
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapsdkplatform/comjni/tools/ParcelItem;
    .registers 4

    new-instance v0, Lcom/baidu/mapsdkplatform/comjni/tools/ParcelItem;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comjni/tools/ParcelItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapsdkplatform/comjni/tools/ParcelItem;
    .registers 3

    new-array v0, p1, [Lcom/baidu/mapsdkplatform/comjni/tools/ParcelItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comjni/tools/b;->a(Landroid/os/Parcel;)Lcom/baidu/mapsdkplatform/comjni/tools/ParcelItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comjni/tools/b;->a(I)[Lcom/baidu/mapsdkplatform/comjni/tools/ParcelItem;

    move-result-object v0

    return-object v0
.end method
