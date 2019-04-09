.class public abstract Lcom/iflytek/speech/SynthesizerListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/iflytek/speech/SynthesizerListener;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.SynthesizerListener"

.field static final TRANSACTION_onBufferProgress:I = 0x6

.field static final TRANSACTION_onCompleted:I = 0x4

.field static final TRANSACTION_onEvent:I = 0x7

.field static final TRANSACTION_onSpeakBegin:I = 0x1

.field static final TRANSACTION_onSpeakPaused:I = 0x2

.field static final TRANSACTION_onSpeakProgress:I = 0x5

.field static final TRANSACTION_onSpeakResumed:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/speech/SynthesizerListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/SynthesizerListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/iflytek/speech/SynthesizerListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/iflytek/speech/SynthesizerListener;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/iflytek/speech/SynthesizerListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/SynthesizerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_94

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :sswitch_10
    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/SynthesizerListener$Stub;->onSpeakBegin()V

    move v0, v1

    goto :goto_8

    :sswitch_1a
    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/SynthesizerListener$Stub;->onSpeakPaused()V

    move v0, v1

    goto :goto_8

    :sswitch_24
    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/SynthesizerListener$Stub;->onSpeakResumed()V

    move v0, v1

    goto :goto_8

    :sswitch_2e
    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/SynthesizerListener$Stub;->onCompleted(I)V

    move v0, v1

    goto :goto_8

    :sswitch_3c
    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/iflytek/speech/SynthesizerListener$Stub;->onSpeakProgress(III)V

    move v0, v1

    goto :goto_8

    :sswitch_52
    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/iflytek/speech/SynthesizerListener$Stub;->onBufferProgress(IIILjava/lang/String;)V

    move v0, v1

    goto :goto_8

    :sswitch_6c
    const-string v0, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_8b
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/iflytek/speech/SynthesizerListener$Stub;->onEvent(IIILandroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_8

    :cond_91
    const/4 v0, 0x0

    goto :goto_8b

    nop

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_24
        0x4 -> :sswitch_2e
        0x5 -> :sswitch_3c
        0x6 -> :sswitch_52
        0x7 -> :sswitch_6c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
