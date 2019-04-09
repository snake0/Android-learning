.class public final Lcom/baidu/mapapi/map/BaiduMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/mapapi/map/BaiduMapOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/baidu/mapapi/map/MapStatus;

.field b:Z

.field c:I

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Lcom/baidu/mapapi/map/LogoPosition;

.field k:Landroid/graphics/Point;

.field l:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mapapi/map/e;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/e;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/BaiduMapOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    const-wide v3, 0x4043f51c970f7b9eL    # 39.914935

    const-wide v6, 0x405d19ccb3a2595cL    # 116.403119

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    const/high16 v4, 0x41400000    # 12.0f

    move v3, v1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    iput-boolean v8, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    iput v8, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    iput-boolean v8, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    iput-boolean v8, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    iput-boolean v8, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    iput-boolean v8, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    iput-boolean v8, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    iput-boolean v8, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 13

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    const-wide v3, 0x4043f51c970f7b9eL    # 39.914935

    const-wide v9, 0x405d19ccb3a2595cL    # 116.403119

    invoke-direct {v2, v3, v4, v9, v10}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    const/high16 v4, 0x41400000    # 12.0f

    move v3, v1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    iput-boolean v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    iput v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    iput-boolean v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    iput-boolean v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    iput-boolean v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    iput-boolean v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    iput-boolean v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    iput-boolean v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    const-class v0, Lcom/baidu/mapapi/map/MapStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MapStatus;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a0

    move v0, v7

    :goto_46
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a2

    move v0, v7

    :goto_55
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a4

    move v0, v7

    :goto_5e
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a6

    move v0, v7

    :goto_67
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a8

    move v0, v7

    :goto_70
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_aa

    move v0, v7

    :goto_79
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_ac

    :goto_81
    iput-boolean v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    const-class v0, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    const-class v0, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    return-void

    :cond_a0
    move v0, v8

    goto :goto_46

    :cond_a2
    move v0, v8

    goto :goto_55

    :cond_a4
    move v0, v8

    goto :goto_5e

    :cond_a6
    move v0, v8

    goto :goto_67

    :cond_a8
    move v0, v8

    goto :goto_70

    :cond_aa
    move v0, v8

    goto :goto_79

    :cond_ac
    move v7, v8

    goto :goto_81
.end method


# virtual methods
.method a()Lcom/baidu/mapsdkplatform/comapi/map/z;
    .registers 3

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/z;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/z;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapStatus;->c()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/z;->a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)Lcom/baidu/mapsdkplatform/comapi/map/z;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/z;->a(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/z;->a(I)Lcom/baidu/mapsdkplatform/comapi/map/z;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/z;->b(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/z;->c(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/z;->d(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/z;->e(Z)Lcom/baidu/mapsdkplatform/comapi/map/z;

    move-result-object v0

    return-object v0
.end method

.method public compassEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public logoPosition(Lcom/baidu/mapapi/map/LogoPosition;)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->j:Lcom/baidu/mapapi/map/LogoPosition;

    return-object p0
.end method

.method public mapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    :cond_4
    return-object p0
.end method

.method public mapType(I)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    return-object p0
.end method

.method public overlookingGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    return-object p0
.end method

.method public rotateGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    return-object p0
.end method

.method public scaleControlEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    return-object p0
.end method

.method public scaleControlPosition(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    if-eqz v0, :cond_55

    move v0, v1

    :goto_c
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    if-eqz v0, :cond_57

    move v0, v1

    :goto_1a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    if-eqz v0, :cond_59

    move v0, v1

    :goto_23
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    if-eqz v0, :cond_5b

    move v0, v1

    :goto_2c
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_35
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    if-eqz v0, :cond_5f

    move v0, v1

    :goto_3e
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    if-eqz v0, :cond_61

    :goto_46
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_55
    move v0, v2

    goto :goto_c

    :cond_57
    move v0, v2

    goto :goto_1a

    :cond_59
    move v0, v2

    goto :goto_23

    :cond_5b
    move v0, v2

    goto :goto_2c

    :cond_5d
    move v0, v2

    goto :goto_35

    :cond_5f
    move v0, v2

    goto :goto_3e

    :cond_61
    move v1, v2

    goto :goto_46
.end method

.method public zoomControlsEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    return-object p0
.end method

.method public zoomControlsPosition(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    return-object p0
.end method
