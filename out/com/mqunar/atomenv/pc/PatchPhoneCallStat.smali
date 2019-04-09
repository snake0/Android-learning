.class public Lcom/mqunar/atomenv/pc/PatchPhoneCallStat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddFlightAgentCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/atomenv/pc/model/FlightAgentCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/pc/IPhoneCall;->add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 20
    return-void
.end method

.method public static AddFlightAirlineCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;

    const-string v1, ""

    invoke-direct {v0, p2, v1, p0, p1}, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/pc/IPhoneCall;->add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 28
    return-void
.end method

.method public static AddFlightAirportCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/mqunar/atomenv/pc/model/AirportOrAirlineCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/pc/IPhoneCall;->add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 36
    return-void
.end method

.method public static AddHotelAgentCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/mqunar/atomenv/pc/model/HotelAgentCall;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/atomenv/pc/model/HotelAgentCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/pc/IPhoneCall;->add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 44
    return-void
.end method

.method public static AddHotelCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/mqunar/atomenv/pc/model/HotelCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/mqunar/atomenv/pc/model/HotelCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/pc/IPhoneCall;->add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 50
    return-void
.end method

.method public static AddHotelCallP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/mqunar/atomenv/pc/model/HotelCallP;

    invoke-direct {v0, p0, p1, p2}, Lcom/mqunar/atomenv/pc/model/HotelCallP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/pc/IPhoneCall;->add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 56
    return-void
.end method

.method public static AddTTSOrderConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/mqunar/atomenv/pc/model/TTSOrderConfirmCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/mqunar/atomenv/pc/model/TTSOrderConfirmCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/pc/IPhoneCall;->add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 64
    return-void
.end method

.method public static AddTTSOrderDetailCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/mqunar/atomenv/pc/model/TTSOrderDetailCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/mqunar/atomenv/pc/model/TTSOrderDetailCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/pc/IPhoneCall;->add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 71
    return-void
.end method
