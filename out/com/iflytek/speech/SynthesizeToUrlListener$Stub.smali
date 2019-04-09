.class public abstract Lcom/iflytek/speech/SynthesizeToUrlListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/iflytek/speech/SynthesizeToUrlListener;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.SynthesizeToUrlListener"

.field static final TRANSACTION_onSynthesizeCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.SynthesizeToUrlListener"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/speech/SynthesizeToUrlListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/SynthesizeToUrlListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.iflytek.speech.SynthesizeToUrlListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/iflytek/speech/SynthesizeToUrlListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/iflytek/speech/SynthesizeToUrlListener;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/iflytek/speech/SynthesizeToUrlListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/SynthesizeToUrlListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_20

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v1, "com.iflytek.speech.SynthesizeToUrlListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v1, "com.iflytek.speech.SynthesizeToUrlListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/speech/SynthesizeToUrlListener$Stub;->onSynthesizeCompleted(Ljava/lang/String;I)V

    goto :goto_8

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
