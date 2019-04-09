.class public abstract Lcom/baidu/mapframework/open/aidl/IComOpenClient$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/baidu/mapframework/open/aidl/IComOpenClient;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/baidu/mapframework/open/aidl/IComOpenClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.baidu.mapframework.open.aidl.IComOpenClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/baidu/mapframework/open/aidl/IComOpenClient$a$a;

    invoke-direct {v0, p0}, Lcom/baidu/mapframework/open/aidl/IComOpenClient$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_50

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.baidu.mapframework.open.aidl.IComOpenClient"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.baidu.mapframework.open.aidl.IComOpenClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapframework/open/aidl/IComOpenClient$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_23
    const-string v0, "com.baidu.mapframework.open.aidl.IComOpenClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_3e
    invoke-virtual {p0, v2, v3, v0}, Lcom/baidu/mapframework/open/aidl/IComOpenClient$a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_48
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_4c
    const/4 v0, 0x0

    goto :goto_3e

    :cond_4e
    const/4 v0, 0x0

    goto :goto_48

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
