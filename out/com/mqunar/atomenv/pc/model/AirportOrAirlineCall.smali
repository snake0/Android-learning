.class public Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;
.super Lcom/mqunar/atomenv/pc/AbsCallStat;
.source "SourceFile"


# static fields
.field public static final CALLSTAT_FLIGHT_AIRPORT_AIRLINE:I = 0xa


# instance fields
.field airportname:Ljava/lang/String;

.field calltime:Ljava/lang/String;

.field phonenum:Ljava/lang/String;

.field phonetype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mqunar/atomenv/pc/AbsCallStat;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonetype:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->calltime:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonetype:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->calltime:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p0, p1, :cond_5

    .line 82
    :cond_4
    :goto_4
    return v0

    .line 61
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 62
    goto :goto_4

    .line 64
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 65
    goto :goto_4

    .line 67
    :cond_15
    check-cast p1, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;

    .line 68
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 69
    iget-object v2, p1, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    .line 70
    goto :goto_4

    .line 72
    :cond_21
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    .line 73
    goto :goto_4

    .line 75
    :cond_2d
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 76
    iget-object v2, p1, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 77
    goto :goto_4

    .line 79
    :cond_37
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 80
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 34
    .line 36
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    if-nez v2, :cond_17

    :goto_e
    add-int/2addr v0, v1

    .line 40
    return v0

    .line 36
    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 38
    :cond_17
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public key()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCallString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->type()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->airportname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->calltime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public type()I
    .registers 2

    .prologue
    .line 45
    const/16 v0, 0xa

    return v0
.end method
