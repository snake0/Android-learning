.class final Lctrip/android/oauth/CtripApiImplV1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lctrip/android/oauth/ICtripAPI;


# static fields
.field private static final CHECKSUM_EXTRA:Ljava/lang/String; = "cTrIpOaUtH"

.field private static final CTRIP_APP_PACKAGE_NAME:Ljava/lang/String; = "ctrip.android.view"

.field private static final TAG:Ljava/lang/String; = "Ctrip.OAuth.SDK.CtripApiImplV1"


# instance fields
.field private appId:Ljava/lang/String;

.field private checkSignature:Z

.field private context:Landroid/content/Context;

.field private detached:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lctrip/android/oauth/CtripApiImplV1;->checkSignature:Z

    .line 29
    iput-boolean v0, p0, Lctrip/android/oauth/CtripApiImplV1;->detached:Z

    .line 32
    iput-object p1, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lctrip/android/oauth/CtripApiImplV1;->appId:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lctrip/android/oauth/CtripApiImplV1;->checkSignature:Z

    .line 35
    return-void
.end method

.method private checkSumConsistent([B[B)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 233
    if-eqz p1, :cond_26

    array-length v0, p1

    if-eqz v0, :cond_26

    if-eqz p2, :cond_26

    array-length v0, p2

    if-eqz v0, :cond_26

    .line 234
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_17

    .line 235
    const-string v0, "Ctrip.OAuth.SDK.CtripApiImplV1"

    const-string v2, "checkSumConsistent fail, length is different"

    invoke-static {v0, v2}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_16
    :goto_16
    return v1

    :cond_17
    move v0, v1

    .line 238
    :goto_18
    array-length v2, p1

    if-ge v0, v2, :cond_24

    .line 239
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_16

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 244
    :cond_24
    const/4 v1, 0x1

    goto :goto_16

    .line 247
    :cond_26
    const-string v0, "Ctrip.OAuth.SDK.CtripApiImplV1"

    const-string v2, "checkSumConsistent fail, invalid arguments"

    invoke-static {v0, v2}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private getChecksum(Ljava/lang/String;ILjava/lang/String;)[B
    .registers 7

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 222
    if-eqz p1, :cond_a

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    const-string v1, "cTrIpOaUtH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lctrip/android/oauth/utils/CtripApiUtils;->hexdigest([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public detach()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lctrip/android/oauth/CtripApiImplV1;->detached:Z

    .line 215
    iput-object v1, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    .line 216
    iput-object v1, p0, Lctrip/android/oauth/CtripApiImplV1;->appId:Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lctrip/android/oauth/CtripApiImplV1;->checkSignature:Z

    .line 218
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;Lctrip/android/oauth/ICtripAPIEventHandler;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 64
    const-string v1, "ctrip.android.oauth.token"

    invoke-static {p1, v1}, Lctrip/android/oauth/utils/CtripApiUtils;->isIntentFromCtrip(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 65
    const-string v1, "Ctrip.OAuth.SDK.CtripApiImplV1"

    const-string v2, "handleIntent fail, intent not from ctrip app msg"

    invoke-static {v1, v2}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_10
    return v0

    .line 67
    :cond_11
    iget-boolean v1, p0, Lctrip/android/oauth/CtripApiImplV1;->detached:Z

    if-eqz v1, :cond_1d

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handleIntent fail, CtripApiImplV1 has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1d
    const-string v1, "_mmessage_content"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    const-string v1, "_mmessage_sdkVersion"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 72
    const-string v1, "_mmessage_appPackage"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_65

    .line 80
    const-string v1, "_ctripapi_command_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 81
    packed-switch v1, :pswitch_data_6e

    .line 87
    const-string v2, "Ctrip.OAuth.SDK.CtripApiImplV1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown cmd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 83
    :pswitch_57
    new-instance v0, Lctrip/android/oauth/model/auth/SendAuthResponse;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lctrip/android/oauth/model/auth/SendAuthResponse;-><init>(Landroid/os/Bundle;)V

    .line 84
    invoke-interface {p2, v0}, Lctrip/android/oauth/ICtripAPIEventHandler;->onResponse(Lctrip/android/oauth/model/CtripBaseResponse;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_10

    .line 92
    :cond_65
    const-string v1, "Ctrip.OAuth.SDK.CtripApiImplV1"

    const-string v2, "invalid argument"

    invoke-static {v1, v2}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 81
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_57
    .end packed-switch
.end method

.method public isCtripAppInstalled()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-boolean v1, p0, Lctrip/android/oauth/CtripApiImplV1;->detached:Z

    if-eqz v1, :cond_d

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isCtripAppInstalled fail, CtripApiImplV1 has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_d
    :try_start_d
    iget-object v1, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "ctrip.android.view"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 105
    if-nez v1, :cond_1e

    .line 111
    :goto_1d
    return v0

    .line 109
    :cond_1e
    iget-object v2, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-boolean v3, p0, Lctrip/android/oauth/CtripApiImplV1;->checkSignature:Z

    invoke-static {v2, v1, v3}, Lctrip/android/oauth/utils/CtripApiUtils;->validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_27} :catch_29

    move-result v0

    goto :goto_1d

    .line 110
    :catch_29
    move-exception v1

    goto :goto_1d
.end method

.method public isCtripAppSupportAPI()Z
    .registers 7

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    iget-boolean v2, p0, Lctrip/android/oauth/CtripApiImplV1;->detached:Z

    if-eqz v2, :cond_f

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isCtripAppSupportAPI fail, CtripApiImplV1 has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_f
    :try_start_f
    iget-object v2, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "ctrip.android.view"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 124
    if-nez v2, :cond_20

    .line 140
    :cond_1f
    :goto_1f
    return v0

    .line 128
    :cond_20
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 129
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 130
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1f

    .line 131
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v5, :cond_37

    move v0, v1

    .line 132
    goto :goto_1f

    .line 133
    :cond_37
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_1f

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_46} :catch_4d

    move-result v2

    const/16 v3, 0xf

    if-lt v2, v3, :cond_1f

    move v0, v1

    .line 134
    goto :goto_1f

    .line 139
    :catch_4d
    move-exception v1

    goto :goto_1f
.end method

.method public openCtripApp()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-boolean v1, p0, Lctrip/android/oauth/CtripApiImplV1;->detached:Z

    if-eqz v1, :cond_d

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "openCtripApp fail, CtripApiImplV1 has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_d
    invoke-virtual {p0}, Lctrip/android/oauth/CtripApiImplV1;->isCtripAppInstalled()Z

    move-result v1

    if-nez v1, :cond_14

    .line 155
    :goto_13
    return v0

    .line 152
    :cond_14
    :try_start_14
    iget-object v1, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    iget-object v2, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "ctrip.android.view"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27

    .line 153
    const/4 v0, 0x1

    goto :goto_13

    .line 154
    :catch_27
    move-exception v1

    goto :goto_13
.end method

.method public registerApp(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public sendCtripOAuthReq(Lctrip/android/oauth/model/CtripBaseRequest;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    iget-boolean v0, p0, Lctrip/android/oauth/CtripApiImplV1;->detached:Z

    if-eqz v0, :cond_e

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sendReq fail, CtripApiImplV1 has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_e
    iget-object v0, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    const-string v3, "ctrip.android.view"

    iget-boolean v4, p0, Lctrip/android/oauth/CtripApiImplV1;->checkSignature:Z

    invoke-static {v0, v3, v4}, Lctrip/android/oauth/utils/CtripApiUtils;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_23

    .line 165
    const-string v0, "Ctrip.OAuth.SDK.CtripApiImplV1"

    const-string v2, "sendReq failed for ctrip app signature check failed"

    invoke-static {v0, v2}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 201
    :goto_22
    return v0

    .line 167
    :cond_23
    invoke-virtual {p1}, Lctrip/android/oauth/model/CtripBaseRequest;->checkArgs()Z

    move-result v0

    if-nez v0, :cond_32

    .line 168
    const-string v0, "Ctrip.OAuth.SDK.CtripApiImplV1"

    const-string v2, "sendReq checkArgs fail"

    invoke-static {v0, v2}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 169
    goto :goto_22

    .line 171
    :cond_32
    const-string v0, "Ctrip.OAuth.SDK.CtripApiImplV1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReq, request type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lctrip/android/oauth/model/CtripBaseRequest;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 173
    invoke-virtual {p1, v3}, Lctrip/android/oauth/model/CtripBaseRequest;->toBundle(Landroid/os/Bundle;)V

    .line 175
    instance-of v0, p1, Lctrip/android/oauth/model/auth/SendAuthRequest;

    if-eqz v0, :cond_7d

    .line 176
    const-string v4, "sence_pay_card"

    move-object v0, p1

    check-cast v0, Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v0}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getSceneType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 178
    instance-of v0, p1, Lctrip/android/oauth/model/auth/SendAuthRequest;

    if-eqz v0, :cond_7b

    .line 179
    new-instance v0, Lctrip/android/oauth/CtripWebAuthHandler;

    iget-object v1, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    check-cast p1, Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-direct {v0, v1, p1}, Lctrip/android/oauth/CtripWebAuthHandler;-><init>(Landroid/content/Context;Lctrip/android/oauth/model/auth/SendAuthRequest;)V

    .line 180
    invoke-virtual {v0}, Lctrip/android/oauth/CtripWebAuthHandler;->anthorize()V

    move v0, v2

    .line 181
    goto :goto_22

    :cond_7b
    move v0, v1

    .line 183
    goto :goto_22

    .line 187
    :cond_7d
    invoke-virtual {p0}, Lctrip/android/oauth/CtripApiImplV1;->isCtripAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-virtual {p0}, Lctrip/android/oauth/CtripApiImplV1;->isCtripAppSupportAPI()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 188
    new-instance v0, Lctrip/android/oauth/RequestProcessor$Request;

    invoke-direct {v0}, Lctrip/android/oauth/RequestProcessor$Request;-><init>()V

    .line 189
    iput-object v3, v0, Lctrip/android/oauth/RequestProcessor$Request;->bundle:Landroid/os/Bundle;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctrip://sendreq?appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lctrip/android/oauth/CtripApiImplV1;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lctrip/android/oauth/RequestProcessor$Request;->messageContent:Ljava/lang/String;

    .line 191
    const-string v1, "ctrip.android.view"

    iput-object v1, v0, Lctrip/android/oauth/RequestProcessor$Request;->targetPackageName:Ljava/lang/String;

    .line 192
    const-string v1, "ctrip.android.view.view.CtripBootActivity"

    iput-object v1, v0, Lctrip/android/oauth/RequestProcessor$Request;->targetClassName:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lctrip/android/oauth/RequestProcessor;->startActivity(Landroid/content/Context;Lctrip/android/oauth/RequestProcessor$Request;)Z

    move-result v0

    goto/16 :goto_22

    .line 196
    :cond_b7
    instance-of v0, p1, Lctrip/android/oauth/model/auth/SendAuthRequest;

    if-eqz v0, :cond_ca

    .line 197
    new-instance v0, Lctrip/android/oauth/CtripWebAuthHandler;

    iget-object v1, p0, Lctrip/android/oauth/CtripApiImplV1;->context:Landroid/content/Context;

    check-cast p1, Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-direct {v0, v1, p1}, Lctrip/android/oauth/CtripWebAuthHandler;-><init>(Landroid/content/Context;Lctrip/android/oauth/model/auth/SendAuthRequest;)V

    .line 198
    invoke-virtual {v0}, Lctrip/android/oauth/CtripWebAuthHandler;->anthorize()V

    move v0, v2

    .line 199
    goto/16 :goto_22

    :cond_ca
    move v0, v1

    .line 201
    goto/16 :goto_22
.end method

.method public sendCtripOAuthRsp(Lctrip/android/oauth/model/CtripBaseResponse;)Z
    .registers 3

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public setEnv(I)V
    .registers 4

    .prologue
    .line 45
    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    .line 46
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "unknown env code, env code must be EnvCode.TEST or EnvCode.PRD!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_e
    sput p1, Lctrip/android/oauth/CtripAPIFactory;->ENV_CODE:I

    .line 49
    return-void
.end method

.method public unregisterApp()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method
