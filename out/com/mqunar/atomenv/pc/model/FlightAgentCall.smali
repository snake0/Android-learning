.class public Lcom/mqunar/atomenv/pc/model/FlightAgentCall;
.super Lcom/mqunar/atomenv/pc/AbsCallStat;
.source "SourceFile"


# static fields
.field public static final CALLSTAT_FLIGHT_AGENT:I = 0x1


# instance fields
.field agentid:Ljava/lang/String;

.field calltime:Ljava/lang/String;

.field code:Ljava/lang/String;

.field date:Ljava/lang/String;

.field phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mqunar/atomenv/pc/AbsCallStat;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->date:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->calltime:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->date:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->calltime:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p0, p1, :cond_5

    .line 88
    :cond_4
    :goto_4
    return v0

    .line 60
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 61
    goto :goto_4

    .line 63
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 64
    goto :goto_4

    .line 66
    :cond_15
    check-cast p1, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;

    .line 67
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 68
    iget-object v2, p1, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    .line 69
    goto :goto_4

    .line 71
    :cond_21
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    .line 72
    goto :goto_4

    .line 74
    :cond_2d
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 75
    iget-object v2, p1, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    if-eqz v2, :cond_43

    move v0, v1

    .line 76
    goto :goto_4

    .line 78
    :cond_37
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    move v0, v1

    .line 79
    goto :goto_4

    .line 81
    :cond_43
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    if-nez v2, :cond_4d

    .line 82
    iget-object v2, p1, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 83
    goto :goto_4

    .line 85
    :cond_4d
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 86
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 33
    .line 35
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 36
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    if-nez v0, :cond_1f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    if-nez v2, :cond_26

    :goto_16
    add-int/2addr v0, v1

    .line 38
    return v0

    .line 35
    :cond_18
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 36
    :cond_1f
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    .line 37
    :cond_26
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16
.end method

.method public key()Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCallString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->type()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->agentid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->calltime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public type()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
