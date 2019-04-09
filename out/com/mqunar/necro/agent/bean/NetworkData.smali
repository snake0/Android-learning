.class public Lcom/mqunar/necro/agent/bean/NetworkData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/bean/BaseData;


# static fields
.field private static final BACKGROUND_START_TIME:I = -0x1

.field private static final MAX_TIEM:J = 0x186a0L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public endTime:Ljava/lang/String;

.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hf:Ljava/lang/String;

.field public httpCode:Ljava/lang/String;

.field public loc:Ljava/lang/String;

.field public mno:Ljava/lang/String;

.field public netStatus:Ljava/lang/String;

.field public netType:Ljava/lang/String;

.field public reqSize:Ljava/lang/String;

.field public reqUrl:Ljava/lang/String;

.field public resSize:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public topPage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->headers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public excludeIllegalData()Z
    .registers 7

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->startTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 72
    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->endTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 73
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_39

    .line 74
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->getBackgroundTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_22

    invoke-static {}, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->getBackgroundTime()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_39

    :cond_22
    iget-object v4, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->httpCode:Ljava/lang/String;

    const-string v5, "Unknown"

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    sub-long v0, v2, v0

    const-wide/32 v2, 0x186a0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_39

    iget-object v0, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->netStatus:Ljava/lang/String;

    if-nez v0, :cond_3b

    :cond_39
    const/4 v0, 0x1

    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public excludeImageData()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 42
    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 63
    :cond_a
    :goto_a
    return v0

    .line 45
    :cond_b
    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    sget-object v3, Lcom/mqunar/necro/agent/util/Config;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, "http://mloganalysts.corp.qunar.com/api/log/unifiedLog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, "http://l-acra1.wap.beta.cn0.qunar.com:9099/api/log/unifiedLog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 48
    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, ".JPG"

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, ".png"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, ".PNG"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, ".jpeg"

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, ".JPEG"

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, ".webp"

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    const-string v3, ".WEBP"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 56
    :cond_79
    iget-object v2, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->endTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->startTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_a

    move v0, v1

    .line 57
    goto/16 :goto_a

    :cond_8d
    move v0, v1

    .line 63
    goto/16 :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reqSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",resSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->resSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",httpCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->httpCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->hf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",netStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->netStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",loc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->loc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->mno:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",topPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->topPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
