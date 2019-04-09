.class public Lctrip/android/oauth/model/auth/SendAuthResponse;
.super Lctrip/android/oauth/model/CtripBaseResponse;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Ctrip.OAuth.SDK.SendAuthResponse"

.field private static final TYPE:I = 0x1


# instance fields
.field public code:Ljava/lang/String;

.field public extJson:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lctrip/android/oauth/model/CtripBaseResponse;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Lctrip/android/oauth/model/CtripBaseResponse;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lctrip/android/oauth/model/auth/SendAuthResponse;->fromBundle(Landroid/os/Bundle;)V

    .line 25
    sget-object v0, Lctrip/android/oauth/model/auth/SendAuthRequest;->extJson:Ljava/lang/String;

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthResponse;->extJson:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Lctrip/android/oauth/model/CtripBaseResponse;->fromBundle(Landroid/os/Bundle;)V

    .line 36
    const-string v0, "_ctripapi_sendauth_response_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthResponse;->state:Ljava/lang/String;

    .line 37
    const-string v0, "_ctripapi_sendauth_response_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthResponse;->code:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 41
    invoke-super {p0, p1}, Lctrip/android/oauth/model/CtripBaseResponse;->toBundle(Landroid/os/Bundle;)V

    .line 43
    const-string v0, "_ctripapi_sendauth_response_state"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthResponse;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "_ctripapi_sendauth_response_code"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthResponse;->code:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lctrip/android/oauth/model/auth/SendAuthResponse;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";errStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthResponse;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthResponse;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthResponse;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
