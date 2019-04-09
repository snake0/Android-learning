.class public abstract Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/iflytek/speech/aidl/ISpeakerVerifier;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.aidl.ISpeakerVerifier"

.field static final TRANSACTION_endSpeak:I = 0x3

.field static final TRANSACTION_getParameter:I = 0x6

.field static final TRANSACTION_register:I = 0x2

.field static final TRANSACTION_setParameter:I = 0x5

.field static final TRANSACTION_stopSpeak:I = 0x4

.field static final TRANSACTION_verify:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.aidl.ISpeakerVerifier"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/aidl/ISpeakerVerifier;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.iflytek.speech.aidl.ISpeakerVerifier"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/iflytek/speech/aidl/ISpeakerVerifier;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeakerVerifier;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_94

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v1, "com.iflytek.speech.aidl.ISpeakerVerifier"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v1, "com.iflytek.speech.aidl.ISpeakerVerifier"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/speech/VerifierListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/VerifierListener;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub;->verify(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifierListener;)I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_2f
    const-string v1, "com.iflytek.speech.aidl.ISpeakerVerifier"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/speech/VerifierListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/VerifierListener;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub;->register(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifierListener;)I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_4f
    const-string v1, "com.iflytek.speech.aidl.ISpeakerVerifier"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub;->endSpeak()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_5b
    const-string v1, "com.iflytek.speech.aidl.ISpeakerVerifier"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub;->stopSpeak()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_67
    const-string v1, "com.iflytek.speech.aidl.ISpeakerVerifier"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_7f
    const-string v1, "com.iflytek.speech.aidl.ISpeakerVerifier"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/speech/aidl/ISpeakerVerifier$Stub;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_67
        0x6 -> :sswitch_7f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
