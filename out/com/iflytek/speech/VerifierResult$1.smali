.class final Lcom/iflytek/speech/VerifierResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/speech/VerifierResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/speech/VerifierResult;
    .registers 3

    new-instance v0, Lcom/iflytek/speech/VerifierResult;

    invoke-direct {v0, p1}, Lcom/iflytek/speech/VerifierResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/iflytek/speech/VerifierResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/speech/VerifierResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/iflytek/speech/VerifierResult;
    .registers 3

    new-array v0, p1, [Lcom/iflytek/speech/VerifierResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/iflytek/speech/VerifierResult$1;->newArray(I)[Lcom/iflytek/speech/VerifierResult;

    move-result-object v0

    return-object v0
.end method