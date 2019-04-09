.class Lcom/mqunar/hy/res/libtask/NetHttpConductor;
.super Lcom/mqunar/hy/res/libtask/AbsConductor;
.source "SourceFile"


# instance fields
.field private content:[B

.field private cut:Z

.field private netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;

.field private final reqHeader:Lqunar/lego/utils/HttpHeader;

.field private final respHeader:Lqunar/lego/utils/HttpHeader;

.field private url:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/hy/res/libtask/TaskCallback;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/AbsConductor;-><init>([Lcom/mqunar/hy/res/libtask/TaskCallback;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    .line 24
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0}, Lqunar/lego/utils/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    .line 25
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0}, Lqunar/lego/utils/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->respHeader:Lqunar/lego/utils/HttpHeader;

    .line 31
    return-void
.end method

.method private interceptRequest(Lcom/mqunar/hy/res/libtask/NetRequest;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 178
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->onInterceptRequest(Lcom/mqunar/hy/res/libtask/NetRequest;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    .line 182
    :cond_9
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->onInterceptRequest()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 185
    :goto_f
    return v1

    :cond_10
    move v1, v0

    goto :goto_f
.end method

.method private interceptResponse(Lcom/mqunar/hy/res/libtask/NetResponse;)Z
    .registers 3

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->onInterceptResponse(Lcom/mqunar/hy/res/libtask/NetResponse;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public beforeAdd()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0}, Lcom/mqunar/hy/res/libtask/AbsConductor;->beforeAdd()V

    .line 90
    const-string v0, "com.mqunar.qav.uelog.QAVLog"

    const-string v1, "getRequestId"

    invoke-static {v0, v1, v2, v2}, Lcom/mqunar/hy/res/libtask/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 92
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    const-string v2, "qrid"

    invoke-virtual {v1, v2, v0}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1b
    return-void
.end method

.method protected buildResult([BJI)V
    .registers 5

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->result:Ljava/lang/Object;

    .line 269
    iput-wide p2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->resultTotal:J

    .line 270
    iput p4, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->currentLength:I

    .line 271
    return-void
.end method

.method public cancel(Z)Z
    .registers 4

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/AbsConductor;->cancel(Z)Z

    move-result v0

    .line 79
    if-eqz v0, :cond_f

    .line 80
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;

    if-eqz v1, :cond_f

    .line 81
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/libtask/NetRequest;->cancel()V

    .line 84
    :cond_f
    return v0
.end method

.method protected checkTicket(Lcom/mqunar/hy/res/libtask/Ticket;)V
    .registers 3

    .prologue
    .line 36
    iget-boolean v0, p1, Lcom/mqunar/hy/res/libtask/Ticket;->multiTrasnfer:Z

    iput-boolean v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->cut:Z

    .line 37
    return-void
.end method

.method protected doingTask()V
    .registers 9

    .prologue
    const/4 v7, -0x3

    const/4 v6, 0x0

    .line 98
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    if-ne v0, v1, :cond_d

    .line 169
    :cond_c
    :goto_c
    return-void

    .line 102
    :cond_d
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->prepareParams()V

    .line 103
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->newNetRequstObj()Lcom/mqunar/hy/res/libtask/NetRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;

    .line 104
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;

    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->onInterceptRequest(Lcom/mqunar/hy/res/libtask/NetRequest;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 110
    :try_start_1e
    invoke-static {}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->getInstance()Lcom/mqunar/hy/res/libtask/NetRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->train:Lcom/mqunar/hy/res/libtask/TaskTrain;

    iget-object v2, v2, Lcom/mqunar/hy/res/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->request(Lcom/mqunar/hy/res/libtask/NetRequest;Landroid/content/Context;)Lcom/mqunar/hy/res/libtask/NetResponse;

    move-result-object v2

    .line 111
    iget-object v3, v2, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    .line 112
    if-eqz v3, :cond_71

    .line 113
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 114
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 115
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    iget-object v5, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->respHeader:Lqunar/lego/utils/HttpHeader;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_4f} :catch_50

    goto :goto_38

    .line 160
    :catch_50
    move-exception v0

    .line 161
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    if-eq v1, v2, :cond_c

    .line 162
    iput v7, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->error:I

    .line 164
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V

    goto :goto_c

    .line 120
    :cond_71
    :try_start_71
    invoke-virtual {p0, v2}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->onInterceptResponse(Lcom/mqunar/hy/res/libtask/NetResponse;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 124
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    if-eq v0, v1, :cond_c

    .line 125
    iget v0, v2, Lcom/mqunar/hy/res/libtask/NetResponse;->error:I

    packed-switch v0, :pswitch_data_f2

    .line 150
    const/4 v0, -0x3

    iput v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->error:I

    .line 154
    :goto_89
    iget-object v0, v2, Lcom/mqunar/hy/res/libtask/NetResponse;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_97

    .line 155
    iget-object v0, v2, Lcom/mqunar/hy/res/libtask/NetResponse;->e:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_97
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V

    goto/16 :goto_c

    .line 127
    :pswitch_a7
    const-string v0, "response code"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "code=%d"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget v4, v2, Lcom/mqunar/hy/res/libtask/NetResponse;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget v0, v2, Lcom/mqunar/hy/res/libtask/NetResponse;->code:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_e9

    .line 130
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_ca} :catch_50

    .line 132
    :try_start_ca
    iget-object v0, v2, Lcom/mqunar/hy/res/libtask/NetResponse;->result:[B

    iget-wide v3, v2, Lcom/mqunar/hy/res/libtask/NetResponse;->total:J

    iget v1, v2, Lcom/mqunar/hy/res/libtask/NetResponse;->resultLen:I

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->buildResult([BJI)V

    .line 133
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->getStatus()Lcom/mqunar/hy/res/libtask/TaskCode;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_dc} :catch_de

    goto/16 :goto_c

    .line 135
    :catch_de
    move-exception v0

    .line 136
    const/4 v1, 0x0

    :try_start_e0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->error:I

    goto :goto_89

    .line 141
    :cond_e9
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->error:I

    goto :goto_89

    .line 147
    :pswitch_ed
    const/4 v0, -0x2

    iput v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->error:I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f0} :catch_50

    goto :goto_89

    .line 125
    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_ed
        :pswitch_ed
        :pswitch_ed
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    if-ne p0, p1, :cond_5

    .line 313
    :cond_4
    :goto_4
    return v0

    .line 306
    :cond_5
    instance-of v2, p1, Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    .line 308
    :cond_b
    check-cast p1, Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    .line 310
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    iget-object v3, p1, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    .line 311
    :cond_19
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_27
    move v0, v1

    goto :goto_4

    :cond_29
    iget-object v2, p1, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_27
.end method

.method public findCache(Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContent()[B
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    return-object v0
.end method

.method protected getEmpId()I
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->hashCode()I

    move-result v0

    return v0
.end method

.method protected getEmpName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

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
    .line 363
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v0}, Lqunar/lego/utils/HttpHeader;->getHeadersMap()Ljava/util/Map;

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
    .line 367
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->respHeader:Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v0}, Lqunar/lego/utils/HttpHeader;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 319
    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    if-eqz v2, :cond_17

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    .line 320
    return v0

    :cond_19
    move v0, v1

    .line 318
    goto :goto_b
.end method

.method protected newNetRequstObj()Lcom/mqunar/hy/res/libtask/NetRequest;
    .registers 5

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->cut:Z

    if-eqz v0, :cond_4b

    .line 245
    new-instance v1, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;-><init>(Lcom/mqunar/hy/res/libtask/NetHttpConductor;)V

    .line 246
    new-instance v0, Lcom/mqunar/hy/res/libtask/NetRequest;

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    invoke-direct {v0, v2, v3, v1}, Lcom/mqunar/hy/res/libtask/NetRequest;-><init>(Ljava/lang/String;[BLandroid/os/Handler$Callback;)V

    .line 247
    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->setNetRequest(Lcom/mqunar/hy/res/libtask/NetRequest;)V

    move-object v2, v0

    .line 251
    :goto_16
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lqunar/lego/utils/HttpHeader;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 252
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v3}, Lqunar/lego/utils/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_29
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v0}, Lqunar/lego/utils/HttpHeader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 255
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/mqunar/hy/res/libtask/NetRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 249
    :cond_4b
    new-instance v0, Lcom/mqunar/hy/res/libtask/NetRequest;

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mqunar/hy/res/libtask/NetRequest;-><init>(Ljava/lang/String;[BLandroid/os/Handler$Callback;)V

    move-object v2, v0

    goto :goto_16

    .line 257
    :cond_57
    return-object v2
.end method

.method protected onInterceptRequest()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method protected onInterceptRequest(Lcom/mqunar/hy/res/libtask/NetRequest;)Z
    .registers 3

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected onInterceptResponse(Lcom/mqunar/hy/res/libtask/NetResponse;)Z
    .registers 3

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareParams()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.method public sameAs(Lcom/mqunar/hy/res/libtask/AbsConductor;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mqunar/hy/res/libtask/AbsConductor;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    instance-of v0, p1, Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    if-nez v0, :cond_7

    .line 300
    :cond_6
    :goto_6
    return v2

    :cond_7
    move-object v0, p1

    .line 295
    check-cast v0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    .line 296
    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 297
    if-nez v0, :cond_15

    move v0, v1

    :goto_13
    move v2, v0

    goto :goto_6

    :cond_15
    move v0, v2

    goto :goto_13

    .line 299
    :cond_17
    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    check-cast p1, Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    iget-object v3, p1, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

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
    .line 343
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B

    .line 344
    return-void
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/AbsConductor;->setParams([Ljava/lang/Object;)V

    .line 51
    if-eqz p1, :cond_4d

    .line 53
    const/4 v0, -0x1

    .line 54
    :goto_6
    :try_start_6
    array-length v2, p1

    add-int/lit8 v1, v0, 0x1

    if-le v2, v1, :cond_4d

    .line 55
    aget-object v0, p1, v1

    .line 56
    if-nez v1, :cond_15

    .line 57
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    :cond_13
    :goto_13
    move v0, v1

    .line 69
    goto :goto_6

    .line 58
    :cond_15
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 59
    if-eqz v0, :cond_13

    instance-of v2, v0, [B

    if-eqz v2, :cond_13

    .line 60
    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->content:[B
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    goto :goto_13

    .line 70
    :catch_25
    move-exception v0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input params must be String, byte[]/List, Map "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 63
    if-eqz v0, :cond_3f

    :try_start_33
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_3f

    .line 64
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lqunar/lego/utils/HttpHeader;->addHeaders(Ljava/util/Map;)V

    goto :goto_13

    .line 65
    :cond_3f
    if-eqz v0, :cond_13

    instance-of v2, v0, Lqunar/lego/utils/HttpHeader;

    if-eqz v2, :cond_13

    .line 66
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    check-cast v0, Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v2, v0}, Lqunar/lego/utils/HttpHeader;->addHeaders(Lqunar/lego/utils/HttpHeader;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4c} :catch_25

    goto :goto_13

    .line 74
    :cond_4d
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
    .line 357
    if-eqz p1, :cond_7

    .line 358
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v0, p1}, Lqunar/lego/utils/HttpHeader;->addHeaders(Ljava/util/Map;)V

    .line 360
    :cond_7
    return-void
.end method

.method protected setReqHeader(Lqunar/lego/utils/HttpHeader;)V
    .registers 3

    .prologue
    .line 351
    if-eqz p1, :cond_7

    .line 352
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->reqHeader:Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v0, p1}, Lqunar/lego/utils/HttpHeader;->addHeaders(Lqunar/lego/utils/HttpHeader;)V

    .line 354
    :cond_7
    return-void
.end method

.method protected setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 335
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->url:Ljava/lang/String;

    .line 336
    return-void
.end method
