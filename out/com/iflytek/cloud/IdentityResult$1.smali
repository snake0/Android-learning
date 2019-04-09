.class final Lcom/iflytek/cloud/IdentityResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/cloud/IdentityResult;",
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
.method public a(Landroid/os/Parcel;)Lcom/iflytek/cloud/IdentityResult;
    .registers 4

    new-instance v0, Lcom/iflytek/cloud/IdentityResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iflytek/cloud/IdentityResult;-><init>(Landroid/os/Parcel;Lcom/iflytek/cloud/IdentityResult$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/cloud/IdentityResult;
    .registers 3

    new-array v0, p1, [Lcom/iflytek/cloud/IdentityResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/IdentityResult$1;->a(Landroid/os/Parcel;)Lcom/iflytek/cloud/IdentityResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/IdentityResult$1;->a(I)[Lcom/iflytek/cloud/IdentityResult;

    move-result-object v0

    return-object v0
.end method
