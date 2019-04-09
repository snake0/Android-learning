.class public abstract Lctrip/android/oauth/model/CtripBaseRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public abstract checkArgs()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 22
    return-void
.end method

.method public abstract getType()I
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 18
    const-string v0, "_ctripapi_command_type"

    invoke-virtual {p0}, Lctrip/android/oauth/model/CtripBaseRequest;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    return-void
.end method
