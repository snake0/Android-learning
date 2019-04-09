.class public abstract Lcom/mqunar/qutui/OnIMMessage$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qutui/OnIMMessage;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.mqunar.qutui.OnIMMessage"

    invoke-virtual {p0, p0, v0}, Lcom/mqunar/qutui/OnIMMessage$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mqunar/qutui/OnIMMessage;
    .registers 3

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v0, "com.mqunar.qutui.OnIMMessage"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/mqunar/qutui/OnIMMessage;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/mqunar/qutui/OnIMMessage;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/mqunar/qutui/f;

    invoke-direct {v0, p0}, Lcom/mqunar/qutui/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_38

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 44
    :sswitch_9
    const-string v1, "com.mqunar.qutui.OnIMMessage"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 49
    :sswitch_f
    const-string v1, "com.mqunar.qutui.OnIMMessage"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 52
    invoke-virtual {p0, v1}, Lcom/mqunar/qutui/OnIMMessage$Stub;->onImMessage([B)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 58
    :sswitch_1f
    const-string v1, "com.mqunar.qutui.OnIMMessage"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/mqunar/qutui/OnIMMessage$Stub;->onConnected()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 65
    :sswitch_2b
    const-string v1, "com.mqunar.qutui.OnIMMessage"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/mqunar/qutui/OnIMMessage$Stub;->onClosed()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 40
    nop

    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
