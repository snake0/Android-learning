.class public Lcom/mqunar/necro/agent/sample/Sample;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private sampleValue:Lcom/mqunar/necro/agent/sample/SampleValue;

.field private timestamp:J

.field private type:Lcom/mqunar/necro/agent/sample/Sample$SampleType;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/necro/agent/sample/Sample;->setTimestamp(J)V

    .line 18
    return-void
.end method

.method public constructor <init>(JLcom/mqunar/necro/agent/sample/SampleValue;)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/necro/agent/sample/Sample;->setTimestamp(J)V

    .line 22
    invoke-virtual {p0, p3}, Lcom/mqunar/necro/agent/sample/Sample;->setSampleValue(Lcom/mqunar/necro/agent/sample/SampleValue;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/mqunar/necro/agent/sample/Sample$SampleType;)V
    .registers 4

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/mqunar/necro/agent/sample/Sample;->setSampleType(Lcom/mqunar/necro/agent/sample/Sample$SampleType;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/necro/agent/sample/Sample;->setTimestamp(J)V

    .line 14
    return-void
.end method


# virtual methods
.method public getSampleType()Lcom/mqunar/necro/agent/sample/Sample$SampleType;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sample;->type:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    return-object v0
.end method

.method public getSampleValue()Lcom/mqunar/necro/agent/sample/SampleValue;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sample;->sampleValue:Lcom/mqunar/necro/agent/sample/SampleValue;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/mqunar/necro/agent/sample/Sample;->timestamp:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Number;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sample;->sampleValue:Lcom/mqunar/necro/agent/sample/SampleValue;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/sample/SampleValue;->getValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setSampleType(Lcom/mqunar/necro/agent/sample/Sample$SampleType;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mqunar/necro/agent/sample/Sample;->type:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    .line 59
    return-void
.end method

.method public setSampleValue(D)V
    .registers 4

    .prologue
    .line 42
    new-instance v0, Lcom/mqunar/necro/agent/sample/SampleValue;

    invoke-direct {v0, p1, p2}, Lcom/mqunar/necro/agent/sample/SampleValue;-><init>(D)V

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/Sample;->sampleValue:Lcom/mqunar/necro/agent/sample/SampleValue;

    .line 43
    return-void
.end method

.method public setSampleValue(J)V
    .registers 4

    .prologue
    .line 46
    new-instance v0, Lcom/mqunar/necro/agent/sample/SampleValue;

    invoke-direct {v0, p1, p2}, Lcom/mqunar/necro/agent/sample/SampleValue;-><init>(J)V

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/Sample;->sampleValue:Lcom/mqunar/necro/agent/sample/SampleValue;

    .line 47
    return-void
.end method

.method public setSampleValue(Lcom/mqunar/necro/agent/sample/SampleValue;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mqunar/necro/agent/sample/Sample;->sampleValue:Lcom/mqunar/necro/agent/sample/SampleValue;

    .line 39
    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/mqunar/necro/agent/sample/Sample;->timestamp:J

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/sample/Sample;->type:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    invoke-virtual {v1}, Lcom/mqunar/necro/agent/sample/Sample$SampleType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/necro/agent/sample/Sample;->sampleValue:Lcom/mqunar/necro/agent/sample/SampleValue;

    invoke-virtual {v1}, Lcom/mqunar/necro/agent/sample/SampleValue;->getValue()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
