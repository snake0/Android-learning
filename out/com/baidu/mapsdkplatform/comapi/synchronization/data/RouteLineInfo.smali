.class public final Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/b;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/b;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->a:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->b:Ljava/lang/String;

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->a:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->a:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_5
.end method
