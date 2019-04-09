.class public final Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/mapapi/model/LatLng;

.field private c:D

.field private d:D

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/a;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->b:Lcom/baidu/mapapi/model/LatLng;

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->c:D

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->d:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->e:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->a:Ljava/lang/String;

    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->b:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->d:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->e:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAngle()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->c:D

    return-wide v0
.end method

.method public getOrderStateInPosition()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->e:I

    return v0
.end method

.method public getPoint()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getSpeed()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->d:D

    return-wide v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAngle(D)V
    .registers 8

    const-wide v3, 0x4076800000000000L    # 360.0

    const-wide/16 v1, 0x0

    cmpg-double v0, p1, v1

    if-gez v0, :cond_e

    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->c:D

    :goto_d
    return-void

    :cond_e
    cmpl-double v0, p1, v3

    if-ltz v0, :cond_15

    iput-wide v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->c:D

    goto :goto_d

    :cond_15
    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->c:D

    goto :goto_d
.end method

.method public setOrderStateInPosition(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->e:I

    return-void
.end method

.method public setPoint(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->b:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setSpeed(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->d:D

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->a:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->b:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
