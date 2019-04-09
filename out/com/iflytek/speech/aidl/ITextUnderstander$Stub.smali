.class public abstract Lcom/iflytek/speech/aidl/ITextUnderstander$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/iflytek/speech/aidl/ITextUnderstander;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.aidl.ITextUnderstander"

.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_isUnderstanding:I = 0x3

.field static final TRANSACTION_understandText:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.aidl.ITextUnderstander"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/speech/aidl/ITextUnderstander$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/aidl/ITextUnderstander;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.iflytek.speech.aidl.ITextUnderstander"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/iflytek/speech/aidl/ITextUnderstander;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/iflytek/speech/aidl/ITextUnderstander;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/iflytek/speech/aidl/ITextUnderstander$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/aidl/ITextUnderstander$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_5c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.iflytek.speech.aidl.ITextUnderstander"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.iflytek.speech.aidl.ITextUnderstander"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/speech/TextUnderstanderListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/TextUnderstanderListener;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/speech/aidl/ITextUnderstander$Stub;->understandText(Landroid/content/Intent;Lcom/iflytek/speech/TextUnderstanderListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_31
    const/4 v0, 0x0

    goto :goto_22

    :sswitch_33
    const-string v0, "com.iflytek.speech.aidl.ITextUnderstander"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/speech/TextUnderstanderListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/TextUnderstanderListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/aidl/ITextUnderstander$Stub;->cancel(Lcom/iflytek/speech/TextUnderstanderListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_47
    const-string v0, "com.iflytek.speech.aidl.ITextUnderstander"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/aidl/ITextUnderstander$Stub;->isUnderstanding()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_5a
    const/4 v0, 0x0

    goto :goto_56

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_33
        0x3 -> :sswitch_47
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
