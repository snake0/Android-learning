.class public Lcom/mqunar/cock/network/YaccaConductor;
.super Lcom/mqunar/libtask/AbsConductor;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/FormPart;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/mqunar/libtask/HttpHeader;

.field private final e:Lcom/mqunar/libtask/HttpHeader;


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/libtask/TaskCallback;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/AbsConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 25
    iput-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

    .line 26
    iput-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-direct {v0}, Lcom/mqunar/libtask/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->d:Lcom/mqunar/libtask/HttpHeader;

    .line 29
    new-instance v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-direct {v0}, Lcom/mqunar/libtask/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->e:Lcom/mqunar/libtask/HttpHeader;

    .line 33
    return-void
.end method


# virtual methods
.method protected buildResult([BJI)V
    .registers 5

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mqunar/cock/network/YaccaConductor;->result:Ljava/lang/Object;

    .line 111
    iput-wide p2, p0, Lcom/mqunar/cock/network/YaccaConductor;->resultTotal:J

    .line 112
    iput p4, p0, Lcom/mqunar/cock/network/YaccaConductor;->currentLength:I

    .line 113
    return-void
.end method

.method protected doingTask()V
    .registers 7

    .prologue
    .line 67
    new-instance v1, Lcom/mqunar/cock/model/TcpRequest;

    invoke-direct {v1}, Lcom/mqunar/cock/model/TcpRequest;-><init>()V

    .line 68
    new-instance v2, Lcom/mqunar/cock/model/RequestHeader;

    invoke-direct {v2}, Lcom/mqunar/cock/model/RequestHeader;-><init>()V

    .line 69
    const-string v0, "hotdog"

    iput-object v0, v2, Lcom/mqunar/cock/model/RequestHeader;->pitcherType:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/mqunar/cock/model/RequestHeader;->pitcherUrl:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/mqunar/cock/model/RequestHeader;->header:Ljava/util/Map;

    .line 72
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->d:Lcom/mqunar/libtask/HttpHeader;

    const-string v3, "Content-Type"

    invoke-virtual {v0, v3}, Lcom/mqunar/libtask/HttpHeader;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 73
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->d:Lcom/mqunar/libtask/HttpHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3, v4}, Lcom/mqunar/libtask/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_34
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->d:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Lcom/mqunar/libtask/HttpHeader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 76
    iget-object v4, v2, Lcom/mqunar/cock/model/RequestHeader;->header:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 78
    :cond_54
    iput-object v2, v1, Lcom/mqunar/cock/model/TcpRequest;->requestHeader:Lcom/mqunar/cock/model/RequestHeader;

    .line 79
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

    iput-object v0, v1, Lcom/mqunar/cock/model/TcpRequest;->bytes:[B

    .line 80
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->sendRequest(Lcom/mqunar/cock/model/TcpRequest;)Lcom/mqunar/cock/model/TcpResult;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/mqunar/cock/network/YaccaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    if-eq v1, v2, :cond_7f

    .line 82
    iget v1, v0, Lcom/mqunar/cock/model/TcpResult;->resultcode:I

    sparse-switch v1, :sswitch_data_a4

    .line 95
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    .line 98
    :cond_7f
    :goto_7f
    return-void

    .line 85
    :sswitch_80
    iget-object v1, p0, Lcom/mqunar/cock/network/YaccaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 86
    iget-object v0, v0, Lcom/mqunar/cock/model/TcpResult;->bytes:[B

    iput-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->result:Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    invoke-virtual {p0}, Lcom/mqunar/cock/network/YaccaConductor;->getStatus()Lcom/mqunar/libtask/TaskCode;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    goto :goto_7f

    .line 91
    :sswitch_95
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    goto :goto_7f

    .line 82
    :sswitch_data_a4
    .sparse-switch
        0xc8 -> :sswitch_80
        0x12c -> :sswitch_95
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    if-ne p0, p1, :cond_5

    .line 157
    :cond_4
    :goto_4
    return v0

    .line 148
    :cond_5
    instance-of v2, p1, Lcom/mqunar/cock/network/YaccaConductor;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    .line 150
    :cond_b
    check-cast p1, Lcom/mqunar/cock/network/YaccaConductor;

    .line 152
    iget-object v2, p0, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

    iget-object v3, p1, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    .line 153
    :cond_19
    iget-object v2, p0, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_27
    move v0, v1

    .line 154
    goto :goto_4

    .line 153
    :cond_29
    iget-object v2, p1, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    if-nez v2, :cond_27

    .line 155
    :cond_2d
    iget-object v2, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_3b
    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p1, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3b
.end method

.method public findCache(Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContent()[B
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

    return-object v0
.end method

.method protected getEmpId()I
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/mqunar/cock/network/YaccaConductor;->hashCode()I

    move-result v0

    return v0
.end method

.method protected getEmpName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFormParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/FormPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    return-object v0
.end method

.method protected getReqHeader()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->d:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Lcom/mqunar/libtask/HttpHeader;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRespHeader()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->e:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Lcom/mqunar/libtask/HttpHeader;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 163
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    if-eqz v2, :cond_24

    iget-object v1, p0, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_24
    add-int/2addr v0, v1

    .line 165
    return v0

    :cond_26
    move v0, v1

    .line 162
    goto :goto_b

    :cond_28
    move v0, v1

    .line 163
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

    .line 134
    instance-of v0, p1, Lcom/mqunar/cock/network/YaccaConductor;

    if-nez v0, :cond_7

    .line 142
    :cond_6
    :goto_6
    return v2

    :cond_7
    move-object v0, p1

    .line 137
    check-cast v0, Lcom/mqunar/cock/network/YaccaConductor;

    iget-object v0, v0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    .line 138
    iget-object v3, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 139
    if-nez v0, :cond_15

    move v0, v1

    :goto_13
    move v2, v0

    goto :goto_6

    :cond_15
    move v0, v2

    goto :goto_13

    .line 141
    :cond_17
    iget-object v3, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

    check-cast p1, Lcom/mqunar/cock/network/YaccaConductor;

    iget-object v3, p1, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

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

.method protected setContent([B)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mqunar/cock/network/YaccaConductor;->b:[B

    .line 189
    return-void
.end method

.method protected setFormParts(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/FormPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    .line 213
    return-void
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AbsConductor;->setParams([Ljava/lang/Object;)V

    .line 38
    if-eqz p1, :cond_58

    .line 40
    const/4 v0, -0x1

    .line 41
    :goto_6
    :try_start_6
    array-length v2, p1

    add-int/lit8 v1, v0, 0x1

    if-le v2, v1, :cond_58

    .line 42
    aget-object v0, p1, v1

    .line 43
    if-nez v1, :cond_15

    .line 44
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    :cond_13
    :goto_13
    move v0, v1

    .line 58
    goto :goto_6

    .line 45
    :cond_15
    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 46
    if-eqz v0, :cond_2e

    instance-of v2, v0, [B

    if-eqz v2, :cond_2e

    .line 47
    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->b:[B
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    goto :goto_13

    .line 59
    :catch_25
    move-exception v0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input params must be String, byte[]/List, Map "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2e
    if-eqz v0, :cond_13

    :try_start_30
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_13

    .line 49
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->c:Ljava/util/List;

    goto :goto_13

    .line 51
    :cond_39
    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 52
    if-eqz v0, :cond_4a

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_4a

    .line 53
    iget-object v2, p0, Lcom/mqunar/cock/network/YaccaConductor;->d:Lcom/mqunar/libtask/HttpHeader;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Ljava/util/Map;)V

    goto :goto_13

    .line 54
    :cond_4a
    if-eqz v0, :cond_13

    instance-of v2, v0, Lcom/mqunar/libtask/HttpHeader;

    if-eqz v2, :cond_13

    .line 55
    iget-object v2, p0, Lcom/mqunar/cock/network/YaccaConductor;->d:Lcom/mqunar/libtask/HttpHeader;

    check-cast v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v2, v0}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Lcom/mqunar/libtask/HttpHeader;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_57} :catch_25

    goto :goto_13

    .line 63
    :cond_58
    return-void
.end method

.method protected setReqHeader(Lcom/mqunar/libtask/HttpHeader;)V
    .registers 3

    .prologue
    .line 196
    if-eqz p1, :cond_7

    .line 197
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->d:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0, p1}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Lcom/mqunar/libtask/HttpHeader;)V

    .line 199
    :cond_7
    return-void
.end method

.method protected setReqHeader(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p1, :cond_7

    .line 203
    iget-object v0, p0, Lcom/mqunar/cock/network/YaccaConductor;->d:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0, p1}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Ljava/util/Map;)V

    .line 205
    :cond_7
    return-void
.end method

.method protected setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mqunar/cock/network/YaccaConductor;->a:Ljava/lang/String;

    .line 181
    return-void
.end method
