.class public Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public UCookie:Lcom/mqunar/atomenv/uc/model/GlobalUCookie;

.field public avOrOrderdetailFlag:I

.field public displayName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public emailObj:Lcom/mqunar/atomenv/uc/model/GlobalUCDisplayAndValue;

.field public exptime:Ljava/lang/String;

.field public imageurl:Ljava/lang/String;

.field public isObtainVerifyCode:I

.field public isactive:I

.field public loginStatus:I

.field public loginT:I

.field public modifyPhone:Ljava/lang/String;

.field public paramData:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public phoneObj:Lcom/mqunar/atomenv/uc/model/GlobalUCDisplayAndValue;

.field public prenum:Ljava/lang/String;

.field public pwd:Ljava/lang/String;

.field public status:I

.field public uname:Ljava/lang/String;

.field public userid:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public verifyOrCheckCode:Ljava/lang/String;

.field public verifyStatus:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->uname:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->uuid:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->prenum:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->phone:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->email:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->isactive:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->pwd:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->status:I

    .line 20
    iput v2, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->verifyStatus:I

    .line 21
    iput v1, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->isObtainVerifyCode:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->modifyPhone:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->exptime:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->loginStatus:I

    .line 25
    iput v1, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->avOrOrderdetailFlag:I

    .line 26
    iput v1, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->loginT:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->paramData:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->verifyOrCheckCode:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->userid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvOrOrderdetailFlag()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->avOrOrderdetailFlag:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailObj()Lcom/mqunar/atomenv/uc/model/GlobalUCDisplayAndValue;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->emailObj:Lcom/mqunar/atomenv/uc/model/GlobalUCDisplayAndValue;

    return-object v0
.end method

.method public getExptime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->exptime:Ljava/lang/String;

    return-object v0
.end method

.method public getImageurl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->imageurl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsObtainVerifyCode()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->isObtainVerifyCode:I

    return v0
.end method

.method public getIsactive()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->isactive:I

    return v0
.end method

.method public getLoginStatus()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->loginStatus:I

    return v0
.end method

.method public getLoginT()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->loginT:I

    return v0
.end method

.method public getModifyPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->modifyPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getParamData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->paramData:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneObj()Lcom/mqunar/atomenv/uc/model/GlobalUCDisplayAndValue;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->phoneObj:Lcom/mqunar/atomenv/uc/model/GlobalUCDisplayAndValue;

    return-object v0
.end method

.method public getPrenum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->prenum:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->status:I

    return v0
.end method

.method public getUCookie()Lcom/mqunar/atomenv/uc/model/GlobalUCookie;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->UCookie:Lcom/mqunar/atomenv/uc/model/GlobalUCookie;

    return-object v0
.end method

.method public getUname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->uname:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyOrCheckCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->verifyOrCheckCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyStatus()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->verifyStatus:I

    return v0
.end method
