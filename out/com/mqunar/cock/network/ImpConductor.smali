.class public Lcom/mqunar/cock/network/ImpConductor;
.super Lcom/mqunar/libtask/CrossConductor;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/mqunar/cock/model/BaseParam;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:[B


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/libtask/TaskCallback;)V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/CrossConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    .line 28
    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    const-string v1, "connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method protected buildResult([BJI)V
    .registers 7

    .prologue
    .line 73
    if-eqz p1, :cond_18

    array-length v0, p1

    int-to-long v0, v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_18

    .line 76
    :try_start_8
    invoke-static {p1}, Lcom/mqunar/imp/Imp;->d([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->result:Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    .line 83
    return-void

    .line 77
    :catch_f
    move-exception v0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not parse result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not parse result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 95
    :cond_5
    :goto_5
    return v1

    .line 88
    :cond_6
    instance-of v2, p1, Lcom/mqunar/cock/network/ImpConductor;

    if-eqz v2, :cond_5

    .line 89
    invoke-super {p0, p1}, Lcom/mqunar/libtask/CrossConductor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    check-cast p1, Lcom/mqunar/cock/network/ImpConductor;

    .line 93
    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    :cond_20
    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    iget-object v3, p1, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    :cond_2e
    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_3c
    move v0, v1

    :cond_3d
    :goto_3d
    move v1, v0

    goto :goto_5

    .line 93
    :cond_3f
    iget-object v2, p1, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    if-eqz v2, :cond_20

    goto :goto_5

    .line 94
    :cond_44
    iget-object v2, p1, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    if-eqz v2, :cond_2e

    goto :goto_5

    .line 95
    :cond_49
    iget-object v2, p1, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    if-nez v2, :cond_3c

    goto :goto_3d
.end method

.method public getReqParam()Lcom/mqunar/cock/model/BaseParam;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-super {p0}, Lcom/mqunar/libtask/CrossConductor;->hashCode()I

    move-result v0

    .line 102
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1e
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    if-eqz v2, :cond_2b

    iget-object v1, p0, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    :cond_2b
    add-int/2addr v0, v1

    .line 105
    return v0

    :cond_2d
    move v0, v1

    .line 102
    goto :goto_11

    :cond_2f
    move v0, v1

    .line 103
    goto :goto_1e
.end method

.method protected prepareParams()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 56
    new-array v0, v0, [B

    .line 58
    :try_start_3
    iget-object v1, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    invoke-static {v1}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->d:[B

    invoke-static {v1, v2}, Lcom/mqunar/imp/Imp;->e([B[B)[B

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    iget-object v2, v2, Lcom/mqunar/cock/model/BaseParam;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    .line 62
    const-string v1, "OneKeyCremation"

    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3e} :catch_4c

    .line 66
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/ImpConductor;->setContent([B)V

    .line 67
    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/ImpConductor;->setUrl(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/ImpConductor;->setReqHeader(Ljava/util/Map;)V

    .line 69
    return-void

    .line 63
    :catch_4c
    move-exception v1

    goto :goto_3e
.end method

.method public sameAs(Lcom/mqunar/libtask/AbsConductor;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mqunar/libtask/AbsConductor;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-ne p0, p1, :cond_5

    .line 116
    :cond_4
    :goto_4
    return v0

    .line 111
    :cond_5
    instance-of v2, p1, Lcom/mqunar/cock/network/ImpConductor;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    .line 112
    :cond_b
    check-cast p1, Lcom/mqunar/cock/network/ImpConductor;

    .line 114
    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    .line 115
    :cond_19
    iget-object v2, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    iget-object v2, v2, Lcom/mqunar/cock/model/BaseParam;->t:Ljava/lang/String;

    if-nez v2, :cond_27

    iget-object v2, p1, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    iget-object v2, v2, Lcom/mqunar/cock/model/BaseParam;->t:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 116
    :cond_27
    iget-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    iget-object v0, v0, Lcom/mqunar/cock/model/BaseParam;->t:Ljava/lang/String;

    iget-object v1, p1, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;

    iget-object v1, v1, Lcom/mqunar/cock/model/BaseParam;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/mqunar/cock/network/ImpConductor;->initParam([Ljava/lang/Object;)V

    .line 35
    if-eqz p1, :cond_36

    .line 37
    const/4 v0, -0x1

    .line 38
    :goto_6
    :try_start_6
    array-length v2, p1

    add-int/lit8 v1, v0, 0x1

    if-le v2, v1, :cond_26

    .line 39
    aget-object v0, p1, v1

    .line 40
    if-nez v1, :cond_15

    .line 41
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->a:Ljava/lang/String;

    :cond_13
    :goto_13
    move v0, v1

    .line 45
    goto :goto_6

    .line 42
    :cond_15
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 43
    check-cast v0, Lcom/mqunar/cock/model/BaseParam;

    iput-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->b:Lcom/mqunar/cock/model/BaseParam;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_1d

    goto :goto_13

    .line 47
    :catch_1d
    move-exception v0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input params must be url:String,req:QImBaseParam"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/mqunar/tools/DateTimeUtils;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "yyyyMMddHHmmss"

    invoke-static {v0, v1}, Lcom/mqunar/tools/DateTimeUtils;->printCalendarByPattern(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/cock/network/ImpConductor;->d:[B
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_1d

    .line 52
    :cond_36
    return-void
.end method
