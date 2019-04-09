.class public abstract Lctrip/android/oauth/model/CtripBaseResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public errCode:I

.field public errStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public abstract checkArgs()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 25
    const-string v0, "_ctripapi_baseresponse_errcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lctrip/android/oauth/model/CtripBaseResponse;->errCode:I

    .line 26
    const-string v0, "_ctripapi_baseresponse_errstr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/CtripBaseResponse;->errStr:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public abstract getType()I
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 19
    const-string v0, "_ctripapi_command_type"

    invoke-virtual {p0}, Lctrip/android/oauth/model/CtripBaseResponse;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    const-string v0, "_ctripapi_baseresponse_errcode"

    iget v1, p0, Lctrip/android/oauth/model/CtripBaseResponse;->errCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    const-string v0, "_ctripapi_baseresponse_errstr"

    iget-object v1, p0, Lctrip/android/oauth/model/CtripBaseResponse;->errStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
