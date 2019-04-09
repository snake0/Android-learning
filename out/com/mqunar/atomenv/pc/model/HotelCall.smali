.class public Lcom/mqunar/atomenv/pc/model/HotelCall;
.super Lcom/mqunar/atomenv/pc/AbsCallStat;
.source "SourceFile"


# static fields
.field public static final CALLSTAT_HOTEL:I = 0x3


# instance fields
.field calltime:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field seqid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mqunar/atomenv/pc/AbsCallStat;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->calltime:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->calltime:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    if-ne p0, p1, :cond_5

    .line 75
    :cond_4
    :goto_4
    return v0

    .line 54
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 55
    goto :goto_4

    .line 57
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 58
    goto :goto_4

    .line 60
    :cond_15
    check-cast p1, Lcom/mqunar/atomenv/pc/model/HotelCall;

    .line 61
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 62
    iget-object v2, p1, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    .line 63
    goto :goto_4

    .line 65
    :cond_21
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    .line 66
    goto :goto_4

    .line 68
    :cond_2d
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 69
    iget-object v2, p1, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 70
    goto :goto_4

    .line 72
    :cond_37
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 73
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 34
    .line 36
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    if-nez v2, :cond_17

    :goto_e
    add-int/2addr v0, v1

    .line 38
    return v0

    .line 36
    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 37
    :cond_17
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public key()Ljava/lang/String;
    .registers 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCallString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/atomenv/pc/model/HotelCall;->type()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->seqid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/pc/model/HotelCall;->calltime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|#|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/atomenv/pc/model/HotelCall;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public type()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x3

    return v0
.end method
