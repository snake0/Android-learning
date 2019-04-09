.class Lcom/mqunar/libtask/o;
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

.field private d:Z

.field private final e:Lcom/mqunar/libtask/HttpHeader;

.field private final f:Lcom/mqunar/libtask/HttpHeader;

.field private g:Lcom/mqunar/network/NetRequest;

.field private h:Lcom/mqunar/network/NetResponse;


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/libtask/TaskCallback;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/AbsConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 29
    iput-object v0, p0, Lcom/mqunar/libtask/o;->b:[B

    .line 30
    iput-object v0, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-direct {v0}, Lcom/mqunar/libtask/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

    .line 33
    new-instance v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-direct {v0}, Lcom/mqunar/libtask/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/o;->f:Lcom/mqunar/libtask/HttpHeader;

    .line 43
    return-void
.end method


# virtual methods
.method public beforeAdd()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-super {p0}, Lcom/mqunar/libtask/AbsConductor;->beforeAdd()V

    .line 104
    const-string v0, "com.mqunar.qav.uelog.QAVLog"

    const-string v1, "getRequestId"

    invoke-static {v0, v1, v2, v2}, Lcom/mqunar/libtask/r;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 106
    iget-object v1, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

    const-string v2, "qrid"

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/libtask/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1b
    return-void
.end method

.method protected buildResult([BJI)V
    .registers 5

    .prologue
    .line 302
    iput-object p1, p0, Lcom/mqunar/libtask/o;->result:Ljava/lang/Object;

    .line 303
    iput-wide p2, p0, Lcom/mqunar/libtask/o;->resultTotal:J

    .line 304
    iput p4, p0, Lcom/mqunar/libtask/o;->currentLength:I

    .line 305
    return-void
.end method

.method public cancel(Z)Z
    .registers 4

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AbsConductor;->cancel(Z)Z

    move-result v0

    .line 93
    if-eqz v0, :cond_f

    .line 94
    iget-object v1, p0, Lcom/mqunar/libtask/o;->g:Lcom/mqunar/network/NetRequest;

    if-eqz v1, :cond_f

    .line 95
    iget-object v1, p0, Lcom/mqunar/libtask/o;->g:Lcom/mqunar/network/NetRequest;

    invoke-virtual {v1}, Lcom/mqunar/network/NetRequest;->cancel()V

    .line 98
    :cond_f
    return v0
.end method

.method protected checkTicket(Lcom/mqunar/libtask/Ticket;)V
    .registers 3

    .prologue
    .line 48
    iget-boolean v0, p1, Lcom/mqunar/libtask/Ticket;->multiTrasnfer:Z

    iput-boolean v0, p0, Lcom/mqunar/libtask/o;->d:Z

    .line 49
    return-void
.end method

.method protected doingTask()V
    .registers 7

    .prologue
    const/4 v5, -0x3

    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/mqunar/libtask/o;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    if-ne v1, v2, :cond_d

    .line 187
    :cond_c
    :goto_c
    return-void

    .line 116
    :cond_d
    invoke-virtual {p0}, Lcom/mqunar/libtask/o;->prepareParams()V

    .line 117
    invoke-virtual {p0}, Lcom/mqunar/libtask/o;->newNetRequstObj()Lcom/mqunar/network/NetRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/libtask/o;->g:Lcom/mqunar/network/NetRequest;

    .line 118
    iget-object v1, p0, Lcom/mqunar/libtask/o;->g:Lcom/mqunar/network/NetRequest;

    invoke-virtual {p0, v1}, Lcom/mqunar/libtask/o;->onInterceptRequest(Lcom/mqunar/network/NetRequest;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    .line 124
    :try_start_21
    const-string v1, "statistics_TaskRunBegin"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mqunar/libtask/o;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Lcom/mqunar/network/NetRequestManager;->getInstance()Lcom/mqunar/network/NetRequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/libtask/o;->g:Lcom/mqunar/network/NetRequest;

    iget-object v3, p0, Lcom/mqunar/libtask/o;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v3, v3, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/network/NetRequestManager;->request(Lcom/mqunar/network/NetRequest;Landroid/content/Context;)Lcom/mqunar/network/NetResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    .line 126
    const-string v1, "statistics_TaskRunEnd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mqunar/libtask/o;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget-object v1, v1, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    .line 128
    if-eqz v1, :cond_67

    .line 129
    :goto_51
    invoke-virtual {v1}, Lcom/mqunar/network/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_67

    .line 130
    iget-object v2, p0, Lcom/mqunar/libtask/o;->f:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v1, v0}, Lcom/mqunar/network/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/mqunar/network/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mqunar/libtask/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 134
    :cond_67
    iget-object v0, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget v0, v0, Lcom/mqunar/network/NetResponse;->code:I

    const/16 v1, 0x29a

    if-ne v0, v1, :cond_90

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6709\u767d\u540d\u5355\u7ba1\u7406\uff0c\u8bf7\u627e\u76f8\u5173\u540c\u5b66\u914d\u7f6e\u8bbe\u5907\u767d\u540d\u5355\uff01\uff01\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_90
    iget-object v0, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/o;->onInterceptResponse(Lcom/mqunar/network/NetResponse;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 142
    iget-object v0, p0, Lcom/mqunar/libtask/o;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    if-eq v0, v1, :cond_c

    .line 143
    iget-object v0, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget v0, v0, Lcom/mqunar/network/NetResponse;->error:I

    packed-switch v0, :pswitch_data_140

    .line 168
    const/4 v0, -0x3

    iput v0, p0, Lcom/mqunar/libtask/o;->error:I

    .line 172
    :goto_ac
    iget-object v0, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget-object v0, v0, Lcom/mqunar/network/NetResponse;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_be

    .line 173
    iget-object v0, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget-object v0, v0, Lcom/mqunar/network/NetResponse;->e:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_be
    iget-object v0, p0, Lcom/mqunar/libtask/o;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/mqunar/libtask/o;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_cc} :catch_ce

    goto/16 :goto_c

    .line 178
    :catch_ce
    move-exception v0

    .line 179
    iget-object v1, p0, Lcom/mqunar/libtask/o;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    if-eq v1, v2, :cond_c

    .line 180
    iput v5, p0, Lcom/mqunar/libtask/o;->error:I

    .line 182
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Lcom/mqunar/libtask/o;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/mqunar/libtask/o;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    goto/16 :goto_c

    .line 145
    :pswitch_ee
    :try_start_ee
    const-string v0, "response code"

    const-string v1, "code=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget v4, v4, Lcom/mqunar/network/NetResponse;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget v0, v0, Lcom/mqunar/network/NetResponse;->code:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_135

    .line 148
    iget-object v0, p0, Lcom/mqunar/libtask/o;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_112} :catch_ce

    .line 150
    :try_start_112
    iget-object v0, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget-object v0, v0, Lcom/mqunar/network/NetResponse;->result:[B

    iget-object v1, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget-wide v1, v1, Lcom/mqunar/network/NetResponse;->total:J

    iget-object v3, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

    iget v3, v3, Lcom/mqunar/network/NetResponse;->resultLen:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mqunar/libtask/o;->buildResult([BJI)V

    .line 151
    iget-object v0, p0, Lcom/mqunar/libtask/o;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    invoke-virtual {p0}, Lcom/mqunar/libtask/o;->getStatus()Lcom/mqunar/libtask/TaskCode;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_12a} :catch_12c

    goto/16 :goto_c

    .line 153
    :catch_12c
    move-exception v0

    .line 154
    :try_start_12d
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/libtask/o;->error:I

    goto/16 :goto_ac

    .line 159
    :cond_135
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/libtask/o;->error:I

    goto/16 :goto_ac

    .line 165
    :pswitch_13a
    const/4 v0, -0x2

    iput v0, p0, Lcom/mqunar/libtask/o;->error:I
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_13d} :catch_ce

    goto/16 :goto_ac

    .line 143
    nop

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_13a
        :pswitch_13a
        :pswitch_13a
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    if-ne p0, p1, :cond_5

    .line 349
    :cond_4
    :goto_4
    return v0

    .line 340
    :cond_5
    instance-of v2, p1, Lcom/mqunar/libtask/o;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    .line 342
    :cond_b
    check-cast p1, Lcom/mqunar/libtask/o;

    .line 344
    iget-object v2, p0, Lcom/mqunar/libtask/o;->b:[B

    iget-object v3, p1, Lcom/mqunar/libtask/o;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    .line 345
    :cond_19
    iget-object v2, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_27
    move v0, v1

    .line 346
    goto :goto_4

    .line 345
    :cond_29
    iget-object v2, p1, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    if-nez v2, :cond_27

    .line 347
    :cond_2d
    iget-object v2, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_3b
    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p1, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3b
.end method

.method public findCache(Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContent()[B
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mqunar/libtask/o;->b:[B

    return-object v0
.end method

.method protected getEmpId()I
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/mqunar/libtask/o;->hashCode()I

    move-result v0

    return v0
.end method

.method protected getEmpName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

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
    .line 408
    iget-object v0, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    return-object v0
.end method

.method public getOriginResponse()Lcom/mqunar/network/NetResponse;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mqunar/libtask/o;->h:Lcom/mqunar/network/NetResponse;

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
    .line 400
    iget-object v0, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

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
    .line 412
    iget-object v0, p0, Lcom/mqunar/libtask/o;->f:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Lcom/mqunar/libtask/HttpHeader;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 355
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/libtask/o;->b:[B

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/mqunar/libtask/o;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    .line 356
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    if-eqz v2, :cond_24

    iget-object v1, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_24
    add-int/2addr v0, v1

    .line 357
    return v0

    :cond_26
    move v0, v1

    .line 354
    goto :goto_b

    :cond_28
    move v0, v1

    .line 355
    goto :goto_17
.end method

.method protected newNetRequstObj()Lcom/mqunar/network/NetRequest;
    .registers 7

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/mqunar/libtask/o;->d:Z

    if-eqz v0, :cond_53

    .line 263
    new-instance v1, Lcom/mqunar/libtask/p;

    invoke-direct {v1, p0}, Lcom/mqunar/libtask/p;-><init>(Lcom/mqunar/libtask/o;)V

    .line 264
    new-instance v0, Lcom/mqunar/network/NetRequest;

    iget-object v2, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mqunar/libtask/o;->b:[B

    invoke-direct {v0, v2, v3, v1}, Lcom/mqunar/network/NetRequest;-><init>(Ljava/lang/String;[BLandroid/os/Handler$Callback;)V

    .line 265
    invoke-virtual {v1, v0}, Lcom/mqunar/libtask/p;->a(Lcom/mqunar/network/NetRequest;)V

    move-object v2, v0

    .line 269
    :goto_16
    iget-object v0, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/HttpHeader;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 270
    iget-object v0, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v3}, Lcom/mqunar/libtask/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_31
    iget-object v0, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Lcom/mqunar/libtask/HttpHeader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 273
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/mqunar/network/NetRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 267
    :cond_53
    new-instance v0, Lcom/mqunar/network/NetRequest;

    iget-object v1, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mqunar/libtask/o;->b:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mqunar/network/NetRequest;-><init>(Ljava/lang/String;[BLandroid/os/Handler$Callback;)V

    move-object v2, v0

    goto :goto_16

    .line 275
    :cond_5f
    iget-object v0, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    if-eqz v0, :cond_a1

    .line 277
    :try_start_63
    iget-object v0, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/FormPart;

    .line 278
    iget-object v3, v0, Lcom/mqunar/libtask/FormPart;->name:Ljava/lang/String;

    .line 279
    iget-object v4, v0, Lcom/mqunar/libtask/FormPart;->value:Ljava/lang/String;

    .line 281
    if-eqz v4, :cond_8e

    .line 282
    iget-object v0, v0, Lcom/mqunar/libtask/FormPart;->header:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Lcom/mqunar/libtask/HttpHeader;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/mqunar/network/NetRequest;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/mqunar/network/NetRequest;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_84} :catch_85

    goto :goto_69

    .line 287
    :catch_85
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "multiPart params error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 284
    :cond_8e
    :try_start_8e
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/mqunar/libtask/FormPart;->file:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/mqunar/libtask/FormPart;->metaData:Ljava/lang/String;

    iget-object v0, v0, Lcom/mqunar/libtask/FormPart;->header:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Lcom/mqunar/libtask/HttpHeader;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mqunar/network/NetRequest;->addFormDataPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)Lcom/mqunar/network/NetRequest;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a0} :catch_85

    goto :goto_69

    .line 291
    :cond_a1
    return-object v2
.end method

.method protected onInterceptRequest()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method protected onInterceptRequest(Lcom/mqunar/network/NetRequest;)Z
    .registers 3

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method protected onInterceptResponse(Lcom/mqunar/network/NetResponse;)Z
    .registers 3

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareParams()V
    .registers 1

    .prologue
    .line 192
    return-void
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

    .line 326
    instance-of v0, p1, Lcom/mqunar/libtask/o;

    if-nez v0, :cond_7

    .line 334
    :cond_6
    :goto_6
    return v2

    :cond_7
    move-object v0, p1

    .line 329
    check-cast v0, Lcom/mqunar/libtask/o;

    iget-object v0, v0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    .line 330
    iget-object v3, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 331
    if-nez v0, :cond_15

    move v0, v1

    :goto_13
    move v2, v0

    goto :goto_6

    :cond_15
    move v0, v2

    goto :goto_13

    .line 333
    :cond_17
    iget-object v3, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 334
    iget-object v0, p0, Lcom/mqunar/libtask/o;->b:[B

    check-cast p1, Lcom/mqunar/libtask/o;

    iget-object v3, p1, Lcom/mqunar/libtask/o;->b:[B

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
    .line 380
    iput-object p1, p0, Lcom/mqunar/libtask/o;->b:[B

    .line 381
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
    .line 404
    iput-object p1, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    .line 405
    return-void
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AbsConductor;->setParams([Ljava/lang/Object;)V

    .line 63
    if-eqz p1, :cond_58

    .line 65
    const/4 v0, -0x1

    .line 66
    :goto_6
    :try_start_6
    array-length v2, p1

    add-int/lit8 v1, v0, 0x1

    if-le v2, v1, :cond_58

    .line 67
    aget-object v0, p1, v1

    .line 68
    if-nez v1, :cond_15

    .line 69
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    :cond_13
    :goto_13
    move v0, v1

    .line 83
    goto :goto_6

    .line 70
    :cond_15
    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 71
    if-eqz v0, :cond_2e

    instance-of v2, v0, [B

    if-eqz v2, :cond_2e

    .line 72
    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/mqunar/libtask/o;->b:[B
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    goto :goto_13

    .line 84
    :catch_25
    move-exception v0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input params must be String, byte[]/List, Map "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2e
    if-eqz v0, :cond_13

    :try_start_30
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_13

    .line 74
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mqunar/libtask/o;->c:Ljava/util/List;

    goto :goto_13

    .line 76
    :cond_39
    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 77
    if-eqz v0, :cond_4a

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_4a

    .line 78
    iget-object v2, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Ljava/util/Map;)V

    goto :goto_13

    .line 79
    :cond_4a
    if-eqz v0, :cond_13

    instance-of v2, v0, Lcom/mqunar/libtask/HttpHeader;

    if-eqz v2, :cond_13

    .line 80
    iget-object v2, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

    check-cast v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v2, v0}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Lcom/mqunar/libtask/HttpHeader;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_57} :catch_25

    goto :goto_13

    .line 88
    :cond_58
    return-void
.end method

.method protected setReqHeader(Lcom/mqunar/libtask/HttpHeader;)V
    .registers 3

    .prologue
    .line 388
    if-eqz p1, :cond_7

    .line 389
    iget-object v0, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0, p1}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Lcom/mqunar/libtask/HttpHeader;)V

    .line 391
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
    .line 394
    if-eqz p1, :cond_7

    .line 395
    iget-object v0, p0, Lcom/mqunar/libtask/o;->e:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0, p1}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Ljava/util/Map;)V

    .line 397
    :cond_7
    return-void
.end method

.method protected setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 372
    iput-object p1, p0, Lcom/mqunar/libtask/o;->a:Ljava/lang/String;

    .line 373
    return-void
.end method
