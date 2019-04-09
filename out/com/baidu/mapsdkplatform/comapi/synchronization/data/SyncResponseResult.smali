.class public final Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

.field private b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

.field private c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

.field private d:F

.field private e:J

.field private f:F

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/i;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/i;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->d:F

    iput-wide v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->e:J

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->f:F

    iput-wide v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->g:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->h:I

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->j:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->d:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->f:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->g:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    return-object v0
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->d:F

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->h:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->i:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    return-object v0
.end method

.method public b(F)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->f:F

    return-void
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->g:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->j:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    return-object v0
.end method

.method public d()F
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->f:F

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->g:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
