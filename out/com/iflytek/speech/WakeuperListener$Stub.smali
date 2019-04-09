.class public abstract Lcom/iflytek/speech/WakeuperListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/iflytek/speech/WakeuperListener;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.WakeuperListener"

.field static final TRANSACTION_onBeginOfSpeech:I = 0x2

.field static final TRANSACTION_onEndOfSpeech:I = 0x3

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onResult:I = 0x4

.field static final TRANSACTION_onVolumeChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.WakeuperListener"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/speech/WakeuperListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/WakeuperListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.iflytek.speech.WakeuperListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/iflytek/speech/WakeuperListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/iflytek/speech/WakeuperListener;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/iflytek/speech/WakeuperListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/WakeuperListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_5a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v0, "com.iflytek.speech.WakeuperListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :sswitch_10
    const-string v0, "com.iflytek.speech.WakeuperListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/WakeuperListener$Stub;->onVolumeChanged(I)V

    move v0, v1

    goto :goto_8

    :sswitch_1e
    const-string v0, "com.iflytek.speech.WakeuperListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/WakeuperListener$Stub;->onBeginOfSpeech()V

    move v0, v1

    goto :goto_8

    :sswitch_28
    const-string v0, "com.iflytek.speech.WakeuperListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/WakeuperListener$Stub;->onEndOfSpeech()V

    move v0, v1

    goto :goto_8

    :sswitch_32
    const-string v0, "com.iflytek.speech.WakeuperListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/iflytek/speech/WakeuperResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/WakeuperResult;

    :goto_45
    invoke-virtual {p0, v0}, Lcom/iflytek/speech/WakeuperListener$Stub;->onResult(Lcom/iflytek/speech/WakeuperResult;)V

    move v0, v1

    goto :goto_8

    :cond_4a
    const/4 v0, 0x0

    goto :goto_45

    :sswitch_4c
    const-string v0, "com.iflytek.speech.WakeuperListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/WakeuperListener$Stub;->onError(I)V

    move v0, v1

    goto :goto_8

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_28
        0x4 -> :sswitch_32
        0x5 -> :sswitch_4c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method