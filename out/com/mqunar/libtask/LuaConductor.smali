.class public Lcom/mqunar/libtask/LuaConductor;
.super Lcom/mqunar/libtask/AbsConductor;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/libtask/TaskCallback;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/AbsConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 18
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;
    .registers 3

    .prologue
    .line 165
    const-string v0, "lua.error"

    invoke-static {v0, p0, p1}, Lcom/mqunar/libtask/LuaConductor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 180
    new-instance v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;

    invoke-direct {v1}, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;-><init>()V

    .line 183
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 185
    :cond_13
    iput v4, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->type:I

    .line 186
    new-instance v0, Ljava/lang/String;

    const-string v2, "NOT ALLOW NULL!"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->msg:Ljava/lang/String;

    move-object v0, v1

    .line 229
    :goto_1f
    return-object v0

    .line 190
    :cond_20
    const/4 v0, 0x0

    .line 193
    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    const-string v2, "json"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v2, "request"

    const-string v3, "params = %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/mqunar/tools/log/QLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_40
    :try_start_40
    const-string v2, "request"

    const-string v3, "luaCode = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/mqunar/tools/log/QLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 202
    invoke-static {p0, p1, v0}, Lqunar/lego/utils/Hallua;->runLua(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    if-nez v0, :cond_6f

    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "the lua reuslt is null..."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_63} :catch_63

    .line 223
    :catch_63
    move-exception v0

    .line 225
    const/4 v2, 0x2

    iput v2, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->type:I

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->msg:Ljava/lang/String;

    :goto_6d
    move-object v0, v1

    .line 229
    goto :goto_1f

    .line 208
    :cond_6f
    :try_start_6f
    iput-wide v2, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->starttime:J

    .line 209
    iput-wide v4, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->endtime:J

    .line 210
    sub-long v2, v4, v2

    iput-wide v2, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->runtime:J

    .line 211
    iput-object v0, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->mapping:Ljava/util/Map;

    .line 213
    const-string v2, "json"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 215
    const/4 v2, 0x0

    iput v2, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->type:I

    .line 216
    new-instance v2, Ljava/lang/String;

    const-string v3, "json"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->msg:Ljava/lang/String;

    .line 222
    :goto_93
    const-string v0, "response"

    iget-object v2, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->msg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6d

    .line 219
    :cond_a2
    const/4 v2, 0x1

    iput v2, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->type:I

    .line 220
    new-instance v2, Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v1, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->msg:Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_b2} :catch_63

    goto :goto_93
.end method


# virtual methods
.method protected doingTask()V
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    if-ne v0, v1, :cond_b

    .line 80
    :cond_a
    :goto_a
    return-void

    .line 55
    :cond_b
    iget-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/libtask/LuaConductor;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mqunar/libtask/LuaConductor;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;

    move-result-object v0

    .line 56
    const-string v1, "statistics_TaskRunBegin"

    iget-wide v2, v0, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->starttime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mqunar/libtask/LuaConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "statistics_TaskRunEnd"

    iget-wide v2, v0, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->endtime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mqunar/libtask/LuaConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/mqunar/libtask/LuaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    if-eq v1, v2, :cond_a

    .line 59
    iget v1, v0, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->type:I

    packed-switch v1, :pswitch_data_70

    .line 72
    iget-object v1, p0, Lcom/mqunar/libtask/LuaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 73
    const/4 v1, -0x3

    iput v1, p0, Lcom/mqunar/libtask/LuaConductor;->c:I

    .line 76
    :goto_42
    iput-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->result:Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/mqunar/libtask/LuaConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    iget-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1, v0, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    goto :goto_a

    .line 61
    :pswitch_52
    iget-object v1, p0, Lcom/mqunar/libtask/LuaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_42

    .line 64
    :pswitch_5a
    iget-object v1, p0, Lcom/mqunar/libtask/LuaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/mqunar/libtask/LuaConductor;->c:I

    goto :goto_42

    .line 68
    :pswitch_65
    iget-object v1, p0, Lcom/mqunar/libtask/LuaConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    const/4 v1, -0x2

    iput v1, p0, Lcom/mqunar/libtask/LuaConductor;->c:I

    goto :goto_42

    .line 59
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_52
        :pswitch_5a
        :pswitch_65
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p0, p1, :cond_5

    .line 99
    :cond_4
    :goto_4
    return v0

    .line 91
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 93
    :cond_13
    check-cast p1, Lcom/mqunar/libtask/LuaConductor;

    .line 95
    iget-object v2, p0, Lcom/mqunar/libtask/LuaConductor;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/libtask/LuaConductor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    goto :goto_4

    .line 96
    :cond_21
    iget-object v2, p0, Lcom/mqunar/libtask/LuaConductor;->b:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/mqunar/libtask/LuaConductor;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/libtask/LuaConductor;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2f
    move v0, v1

    .line 97
    goto :goto_4

    .line 96
    :cond_31
    iget-object v2, p1, Lcom/mqunar/libtask/LuaConductor;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_2f
.end method

.method public findCache(Z)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "implement later"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getEmpId()I
    .registers 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/mqunar/libtask/LuaConductor;->hashCode()I

    move-result v0

    return v0
.end method

.method protected getEmpName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;
    .registers 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/mqunar/libtask/AbsConductor;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/mqunar/libtask/LuaConductor;->getResult()Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 110
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->b:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v1

    .line 111
    return v0

    .line 110
    :cond_14
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public sameAs(Lcom/mqunar/libtask/AbsConductor;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mqunar/libtask/AbsConductor;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/LuaConductor;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AbsConductor;->setParams([Ljava/lang/Object;)V

    .line 33
    if-eqz p1, :cond_1a

    .line 35
    :try_start_6
    array-length v0, p1

    if-lez v0, :cond_10

    .line 36
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->a:Ljava/lang/String;

    .line 38
    :cond_10
    array-length v0, p1

    if-le v0, v1, :cond_1a

    .line 39
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/libtask/LuaConductor;->b:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 45
    :cond_1a
    return-void

    .line 41
    :catch_1b
    move-exception v0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input params must be String and String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
