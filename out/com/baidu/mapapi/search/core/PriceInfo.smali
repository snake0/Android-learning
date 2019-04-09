.class public Lcom/baidu/mapapi/search/core/PriceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/mapapi/search/core/PriceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mapapi/search/core/g;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/PriceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->b:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTicketPrice()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->b:D

    return-wide v0
.end method

.method public getTicketType()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->a:I

    return v0
.end method

.method public setTicketPrice(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->b:D

    return-void
.end method

.method public setTicketType(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->a:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
