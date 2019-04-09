.class public Lqunar/lego/utils/PitcherConductor;
.super Lcom/mqunar/libtask/AbsConductor;
.source "SourceFile"


# instance fields
.field private content:[B

.field private formParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqunar/lego/utils/FormPart;",
            ">;"
        }
    .end annotation
.end field

.field private final reqHeader:Lqunar/lego/utils/HttpHeader;

.field private final respHeader:Lqunar/lego/utils/HttpHeader;

.field private url:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/libtask/TaskCallback;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/AbsConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 20
    iput-object v0, p0, Lqunar/lego/utils/PitcherConductor;->content:[B

    .line 21
    iput-object v0, p0, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    .line 22
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0}, Lqunar/lego/utils/HttpHeader;-><init>()V

    iput-object v0, p0, Lqunar/lego/utils/PitcherConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    .line 23
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0}, Lqunar/lego/utils/HttpHeader;-><init>()V

    iput-object v0, p0, Lqunar/lego/utils/PitcherConductor;->respHeader:Lqunar/lego/utils/HttpHeader;

    .line 27
    return-void
.end method


# virtual methods
.method protected doingTask()V
    .registers 6

    .prologue
    .line 70
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    if-ne v0, v1, :cond_b

    .line 116
    :cond_a
    :goto_a
    return-void

    .line 76
    :cond_b
    :try_start_b
    const-string v0, "statistics_TaskRunBegin"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lqunar/lego/utils/PitcherConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    if-eqz v0, :cond_a8

    .line 78
    new-instance v0, Lqunar/lego/utils/Pitcher;

    iget-object v1, p0, Lqunar/lego/utils/PitcherConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v1, v1, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    iget-object v3, p0, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    iget-object v4, p0, Lqunar/lego/utils/PitcherConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)V

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->request()Lqunar/lego/utils/PitcherResponse;

    move-result-object v0

    .line 82
    :goto_2f
    const-string v1, "statistics_TaskRunEnd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lqunar/lego/utils/PitcherConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lqunar/lego/utils/PitcherConductor;->respHeader:Lqunar/lego/utils/HttpHeader;

    iget-object v2, v0, Lqunar/lego/utils/PitcherResponse;->respHeader:Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v1, v2}, Lqunar/lego/utils/HttpHeader;->addHeaders(Lqunar/lego/utils/HttpHeader;)V

    .line 85
    iget-object v1, p0, Lqunar/lego/utils/PitcherConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    if-eq v1, v2, :cond_a

    .line 86
    iget-object v1, v0, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    if-nez v1, :cond_c1

    .line 87
    iget v1, v0, Lqunar/lego/utils/PitcherResponse;->respcode:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_bd

    .line 88
    iget-object v1, p0, Lqunar/lego/utils/PitcherConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5e} :catch_8a

    .line 90
    :try_start_5e
    iget-object v1, v0, Lqunar/lego/utils/PitcherResponse;->content:[B

    iput-object v1, p0, Lqunar/lego/utils/PitcherConductor;->result:Ljava/lang/Object;

    .line 91
    iget-object v1, v0, Lqunar/lego/utils/PitcherResponse;->content:[B

    array-length v1, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lqunar/lego/utils/PitcherConductor;->resultTotal:J

    .line 92
    iget-object v0, v0, Lqunar/lego/utils/PitcherResponse;->content:[B

    array-length v0, v0

    iput v0, p0, Lqunar/lego/utils/PitcherConductor;->currentLength:I

    .line 93
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    invoke-virtual {p0}, Lqunar/lego/utils/PitcherConductor;->getStatus()Lcom/mqunar/libtask/TaskCode;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_76} :catch_77

    goto :goto_a

    .line 95
    :catch_77
    move-exception v0

    .line 96
    const/4 v0, -0x1

    :try_start_79
    iput v0, p0, Lqunar/lego/utils/PitcherConductor;->error:I

    .line 106
    :goto_7b
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_89} :catch_8a

    goto :goto_a

    .line 109
    :catch_8a
    move-exception v0

    .line 110
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    if-eq v0, v1, :cond_a

    .line 111
    const/4 v0, -0x3

    iput v0, p0, Lqunar/lego/utils/PitcherConductor;->error:I

    .line 112
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    goto/16 :goto_a

    .line 80
    :cond_a8
    :try_start_a8
    new-instance v0, Lqunar/lego/utils/Pitcher;

    iget-object v1, p0, Lqunar/lego/utils/PitcherConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v1, v1, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    iget-object v3, p0, Lqunar/lego/utils/PitcherConductor;->content:[B

    iget-object v4, p0, Lqunar/lego/utils/PitcherConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;[BLqunar/lego/utils/HttpHeader;)V

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->request()Lqunar/lego/utils/PitcherResponse;

    move-result-object v0

    goto/16 :goto_2f

    .line 100
    :cond_bd
    const/4 v0, -0x1

    iput v0, p0, Lqunar/lego/utils/PitcherConductor;->error:I

    goto :goto_7b

    .line 103
    :cond_c1
    const/4 v0, -0x2

    iput v0, p0, Lqunar/lego/utils/PitcherConductor;->error:I
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c4} :catch_8a

    goto :goto_7b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p0, p1, :cond_5

    .line 140
    :cond_4
    :goto_4
    return v0

    .line 131
    :cond_5
    instance-of v2, p1, Lqunar/lego/utils/PitcherConductor;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    .line 133
    :cond_b
    check-cast p1, Lqunar/lego/utils/PitcherConductor;

    .line 135
    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->content:[B

    iget-object v3, p1, Lqunar/lego/utils/PitcherConductor;->content:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    .line 136
    :cond_19
    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    iget-object v3, p1, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_27
    move v0, v1

    .line 137
    goto :goto_4

    .line 136
    :cond_29
    iget-object v2, p1, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    if-nez v2, :cond_27

    .line 138
    :cond_2d
    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    iget-object v3, p1, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_3b
    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p1, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3b
.end method

.method public findCache(Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEmpId()I
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lqunar/lego/utils/PitcherConductor;->hashCode()I

    move-result v0

    return v0
.end method

.method protected getEmpName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getRespHeader()Lqunar/lego/utils/HttpHeader;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->respHeader:Lqunar/lego/utils/HttpHeader;

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lqunar/lego/utils/PitcherConductor;->getResult()[B

    move-result-object v0

    return-object v0
.end method

.method public getResult()[B
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/mqunar/libtask/AbsConductor;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 146
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->content:[B

    if-eqz v0, :cond_28

    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->content:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    if-eqz v2, :cond_24

    iget-object v1, p0, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_24
    add-int/2addr v0, v1

    .line 148
    return v0

    :cond_26
    move v0, v1

    .line 145
    goto :goto_b

    :cond_28
    move v0, v1

    .line 146
    goto :goto_17
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    instance-of v0, p1, Lqunar/lego/utils/PitcherConductor;

    if-nez v0, :cond_7

    .line 161
    :cond_6
    :goto_6
    return v2

    :cond_7
    move-object v0, p1

    .line 156
    check-cast v0, Lqunar/lego/utils/PitcherConductor;

    iget-object v0, v0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    .line 157
    iget-object v3, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 158
    if-nez v0, :cond_15

    move v0, v1

    :goto_13
    move v2, v0

    goto :goto_6

    :cond_15
    move v0, v2

    goto :goto_13

    .line 160
    :cond_17
    iget-object v3, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lqunar/lego/utils/PitcherConductor;->content:[B

    check-cast p1, Lqunar/lego/utils/PitcherConductor;

    iget-object v3, p1, Lqunar/lego/utils/PitcherConductor;->content:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2d

    :goto_2b
    move v2, v1

    goto :goto_6

    :cond_2d
    move v1, v2

    goto :goto_2b
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AbsConductor;->setParams([Ljava/lang/Object;)V

    .line 41
    if-eqz p1, :cond_58

    .line 43
    const/4 v0, -0x1

    .line 44
    :goto_6
    :try_start_6
    array-length v2, p1

    add-int/lit8 v1, v0, 0x1

    if-le v2, v1, :cond_58

    .line 45
    aget-object v0, p1, v1

    .line 46
    if-nez v1, :cond_15

    .line 47
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lqunar/lego/utils/PitcherConductor;->url:Ljava/lang/String;

    :cond_13
    :goto_13
    move v0, v1

    .line 61
    goto :goto_6

    .line 48
    :cond_15
    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 49
    if-eqz v0, :cond_2e

    instance-of v2, v0, [B

    if-eqz v2, :cond_2e

    .line 50
    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lqunar/lego/utils/PitcherConductor;->content:[B
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    goto :goto_13

    .line 62
    :catch_25
    move-exception v0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input params must be String, byte[]/List, Map "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2e
    if-eqz v0, :cond_13

    :try_start_30
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_13

    .line 52
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lqunar/lego/utils/PitcherConductor;->formParts:Ljava/util/List;

    goto :goto_13

    .line 54
    :cond_39
    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 55
    if-eqz v0, :cond_4a

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_4a

    .line 56
    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lqunar/lego/utils/HttpHeader;->addHeaders(Ljava/util/Map;)V

    goto :goto_13

    .line 57
    :cond_4a
    if-eqz v0, :cond_13

    instance-of v2, v0, Lqunar/lego/utils/HttpHeader;

    if-eqz v2, :cond_13

    .line 58
    iget-object v2, p0, Lqunar/lego/utils/PitcherConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    check-cast v0, Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v2, v0}, Lqunar/lego/utils/HttpHeader;->addHeaders(Lqunar/lego/utils/HttpHeader;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_57} :catch_25

    goto :goto_13

    .line 66
    :cond_58
    return-void
.end method
