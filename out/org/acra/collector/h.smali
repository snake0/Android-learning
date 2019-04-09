.class public Lorg/acra/collector/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 17
    sget v0, Lorg/acra/ACRA;->a:I

    packed-switch v0, :pswitch_data_12

    .line 28
    const-string v0, "beta"

    .line 30
    :goto_7
    return-object v0

    .line 19
    :pswitch_8
    const-string v0, "release"

    goto :goto_7

    .line 22
    :pswitch_b
    const-string v0, "beta"

    goto :goto_7

    .line 25
    :pswitch_e
    const-string v0, "beta"

    goto :goto_7

    .line 17
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method
