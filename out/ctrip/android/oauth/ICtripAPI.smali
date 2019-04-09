.class public interface abstract Lctrip/android/oauth/ICtripAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract detach()V
.end method

.method public abstract handleIntent(Landroid/content/Intent;Lctrip/android/oauth/ICtripAPIEventHandler;)Z
.end method

.method public abstract isCtripAppInstalled()Z
.end method

.method public abstract isCtripAppSupportAPI()Z
.end method

.method public abstract openCtripApp()Z
.end method

.method public abstract registerApp(Ljava/lang/String;)Z
.end method

.method public abstract sendCtripOAuthReq(Lctrip/android/oauth/model/CtripBaseRequest;)Z
.end method

.method public abstract sendCtripOAuthRsp(Lctrip/android/oauth/model/CtripBaseResponse;)Z
.end method

.method public abstract setEnv(I)V
.end method

.method public abstract unregisterApp()V
.end method
