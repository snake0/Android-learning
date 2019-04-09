.class public Lcom/mqunar/necro/agent/sample/SampleValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isDouble:Z

.field private value:Ljava/lang/Double;


# direct methods
.method public constructor <init>(D)V
    .registers 5

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->value:Ljava/lang/Double;

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/necro/agent/sample/SampleValue;->setValue(D)V

    .line 12
    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->value:Ljava/lang/Double;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/necro/agent/sample/SampleValue;->setValue(J)V

    .line 16
    return-void
.end method


# virtual methods
.method public asDouble()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public asLong()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->value:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .registers 3

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->isDouble:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/mqunar/necro/agent/sample/SampleValue;->asDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/sample/SampleValue;->asLong()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_c
.end method

.method public isDouble()Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->isDouble:Z

    return v0
.end method

.method public setDouble(Z)V
    .registers 2

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->isDouble:Z

    .line 46
    return-void
.end method

.method public setValue(D)V
    .registers 4

    .prologue
    .line 31
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->value:Ljava/lang/Double;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->isDouble:Z

    .line 33
    return-void
.end method

.method public setValue(J)V
    .registers 5

    .prologue
    .line 36
    long-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->value:Ljava/lang/Double;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/sample/SampleValue;->isDouble:Z

    .line 38
    return-void
.end method
