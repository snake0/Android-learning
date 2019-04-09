.class Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MUST_UPDATE_TIMEOUT:I = 0xea60

.field public static final NORMAL_UPDATE_TIMEOUT:I = 0x1388


# instance fields
.field private hybridId:Ljava/lang/String;

.field private isNeedTimeout:Z

.field private qpCallBack:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

.field private startTime:J

.field private timeout:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->timeout:J

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->isNeedTimeout:Z

    return-void
.end method


# virtual methods
.method public getHybridId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->hybridId:Ljava/lang/String;

    return-object v0
.end method

.method public getQpCallBack()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->qpCallBack:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

    return-object v0
.end method

.method getStartTime()J
    .registers 3

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->startTime:J

    return-wide v0
.end method

.method public getTimeout()J
    .registers 3

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->timeout:J

    return-wide v0
.end method

.method public isNeedTimeout()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->isNeedTimeout:Z

    return v0
.end method

.method public setHybridId(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->hybridId:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setNeedTimeout(Z)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;
    .registers 2

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->isNeedTimeout:Z

    .line 245
    return-object p0
.end method

.method public setQpCallBack(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->qpCallBack:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

    .line 250
    return-object p0
.end method

.method setStartTime(J)V
    .registers 3

    .prologue
    .line 270
    iput-wide p1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->startTime:J

    .line 271
    return-void
.end method

.method public setTimeout(J)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;
    .registers 5

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HyRes PageLoadParams setTimeout timeout must be >=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_e
    iput-wide p1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->timeout:J

    .line 240
    return-object p0
.end method
