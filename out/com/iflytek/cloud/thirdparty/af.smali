.class public Lcom/iflytek/cloud/thirdparty/af;
.super Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/iflytek/aiui/AIUIListener;

.field private f:Lcom/iflytek/cloud/thirdparty/ah;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Lcom/iflytek/cloud/thirdparty/o;

.field private j:Ljava/lang/String;

.field private k:Lcom/iflytek/cloud/thirdparty/q;

.field private l:Lcom/iflytek/cloud/thirdparty/ag;

.field private m:Lcom/iflytek/cloud/thirdparty/t;

.field private n:Lcom/iflytek/cloud/thirdparty/s;

.field private o:Lcom/iflytek/cloud/thirdparty/ai;

.field private p:I

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/iflytek/aiui/AIUIListener;)V
    .registers 7

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->j:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/af;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/af;->d:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/af;->p:I

    const-string v0, "cloud"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->c:Ljava/lang/String;

    const-string v0, "continuous"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->q:Ljava/lang/String;

    const-string v0, "auto"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/af;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/af;->e:Lcom/iflytek/aiui/AIUIListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ah;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/ah;-><init>(Lcom/iflytek/cloud/thirdparty/af;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/o;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/o;-><init>(Lcom/iflytek/cloud/thirdparty/ah;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->i:Lcom/iflytek/cloud/thirdparty/o;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ai;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/ai;-><init>(Lcom/iflytek/cloud/thirdparty/ah;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->o:Lcom/iflytek/cloud/thirdparty/ai;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/q;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/q;-><init>(Lcom/iflytek/cloud/thirdparty/af;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->k:Lcom/iflytek/cloud/thirdparty/q;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ag;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/ag;-><init>(Lcom/iflytek/cloud/thirdparty/af;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->l:Lcom/iflytek/cloud/thirdparty/ag;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/t;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/iflytek/cloud/thirdparty/t;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/s;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/iflytek/cloud/thirdparty/s;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->n:Lcom/iflytek/cloud/thirdparty/s;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ao;->a(Lcom/iflytek/cloud/thirdparty/ah;)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/t;->a(Landroid/os/Message;)V

    :cond_9
    return-void
.end method

.method private a(Landroid/os/Message;Z)V
    .registers 12

    const/4 v8, 0x3

    const-string v0, "AIUIScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeup, isoutter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_50

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;)V

    :cond_22
    :goto_22
    const-string v0, "intent"

    const-string v1, "speech"

    const-string v2, "work_mode"

    const-string v3, "intent"

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "cloud"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/af;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bz;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6d

    const/16 v0, 0x4e21

    const-string v1, "no network."

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    :goto_4f
    return-void

    :cond_50
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/t;->a(I)V

    :cond_5b
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/am;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/aiui/Version;->isMobileVersion()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;)V

    goto :goto_22

    :cond_6d
    sget-object v5, Lcom/iflytek/cloud/thirdparty/o;->a:[B

    const-string v7, "sdk"

    if-eqz p2, :cond_75

    const-string v7, "user"

    :cond_75
    invoke-direct {p0, v8}, Lcom/iflytek/cloud/thirdparty/af;->b(I)Z

    move-result v0

    if-nez v0, :cond_ea

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->g:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/af;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/al;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "wake"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wakeup"

    const-string v2, "working"

    const-string v3, "ready"

    const-string v4, ""

    const-string v6, "audio"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "continuous"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string v0, "auto"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string v1, "cmd"

    const-string v2, "working"

    const-string v3, "ready"

    const-string v4, "clean_history"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    :cond_c4
    const-string v0, "wakeup"

    const-string v1, "ready"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/al;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_cf
    invoke-direct {p0, v8}, Lcom/iflytek/cloud/thirdparty/af;->c(I)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/af;->h()V

    if-eqz p2, :cond_e0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Landroid/os/Message;)V

    :cond_e0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Landroid/os/Message;)V

    goto/16 :goto_4f

    :cond_ea
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ah;->a()V

    const-string v1, "re_wakeup"

    const-string v2, "working"

    const-string v3, "working"

    const-string v4, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "wakeup"

    const-string v1, "working"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/al;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cf
.end method

.method private a(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 15

    const/16 v5, 0xb

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Lcom/iflytek/aiui/AIUIMessage;->msgType:I

    sparse-switch v0, :sswitch_data_25c

    :cond_b
    :goto_b
    return-void

    :sswitch_c
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_RESET"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->k()V

    goto :goto_b

    :sswitch_17
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_GET_STATE"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->i()V

    goto :goto_b

    :sswitch_22
    const-string v0, "AIUIScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_SET_PARAMS, params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->e(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->j()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->l:Lcom/iflytek/cloud/thirdparty/ag;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->l:Lcom/iflytek/cloud/thirdparty/ag;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ag;->a()V

    :cond_4d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Landroid/os/Message;)V

    goto :goto_b

    :sswitch_59
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_START"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Z)I

    goto :goto_b

    :sswitch_64
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_STOP"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/af;->a()V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->n()V

    goto :goto_b

    :sswitch_72
    const-string v0, "AIUIScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_WAKEUP, beam="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    iget v1, p1, Lcom/iflytek/aiui/AIUIMessage;->arg2:I

    iget-object v3, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {p0, v2, v0, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Landroid/os/Message;Z)V

    goto/16 :goto_b

    :sswitch_9b
    const-string v0, "AIUIScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_RESET_WAKEUP, restType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", delayTime="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/iflytek/aiui/AIUIMessage;->arg2:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/iflytek/cloud/thirdparty/af;->a(I)V

    iget v0, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    if-ne v2, v0, :cond_e4

    iget v0, p1, Lcom/iflytek/aiui/AIUIMessage;->arg2:I

    if-gez v0, :cond_db

    move v0, v3

    :cond_cd
    :goto_cd
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v6, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    :cond_db
    const v1, 0x2bf20

    if-le v0, v1, :cond_cd

    const v0, 0x2bf20

    goto :goto_cd

    :cond_e4
    invoke-direct {p0, v6}, Lcom/iflytek/cloud/thirdparty/af;->b(I)Z

    move-result v0

    if-eqz v0, :cond_105

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v1, 0x5

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    const-string v6, "reset_wakeup"

    const-string v7, "ready"

    const-string v8, "working"

    const-string v9, ""

    const-string v11, ""

    const-string v12, "user"

    move-object v5, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v12}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    :cond_105
    invoke-direct {p0, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->c(I)V

    goto/16 :goto_b

    :sswitch_10e
    const-string v0, "AIUIScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_SET_BEAM, beam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    iget v1, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/t;->a(I)V

    goto/16 :goto_b

    :sswitch_135
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/af;->h(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_13a
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/af;->g(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_13f
    iget-object v0, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    iget v1, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/af;->k:Lcom/iflytek/cloud/thirdparty/q;

    invoke-virtual {v2, v0, v1}, Lcom/iflytek/cloud/thirdparty/q;->a(Ljava/lang/String;I)V

    goto/16 :goto_b

    :sswitch_14a
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_SYNC"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->n:Lcom/iflytek/cloud/thirdparty/s;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->n:Lcom/iflytek/cloud/thirdparty/s;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/s;->b(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_15c
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_START_SAVE"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/af;->d(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_168
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_STOP_SAVE"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/af;->f(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_174
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_UPLOAD_LEXICON"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/t;->d(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_186
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_BUILD_GRAMMAR"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/t;->a(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_198
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_UPDATE_LOCAL_LEXICON"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/t;->c(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_1aa
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_START_THROW_AUDIO"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/t;->b(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_1bc
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_STOP_THROW_AUDIO"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->l()V

    goto/16 :goto_b

    :sswitch_1ce
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/t;->e(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_1d9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/t;->f(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_1e4
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_RESULT_VALIDATION_ACK"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/af;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_200

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/af;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/af;->h()V

    const-string v0, "AIUIScheduler"

    const-string v1, "interact timeout has been reset."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_200
    const-string v0, "AIUIScheduler"

    const-string v1, "result ack timeout."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :sswitch_209
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_CLEAN_DIALOG_HISTORY"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/af;->h:I

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/o;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v6, "cmd"

    const-string v9, "clean_history"

    const-string v11, ""

    const-string v12, "user"

    move-object v5, p0

    move-object v8, v7

    move-object v10, v4

    invoke-direct/range {v5 .. v12}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :sswitch_226
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_START_RECORD"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/af;->c(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_232
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_STOP_RECORD"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/af;->e(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_23e
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_QUERY_SYNC_STATUS"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->n:Lcom/iflytek/cloud/thirdparty/s;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->n:Lcom/iflytek/cloud/thirdparty/s;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/s;->a(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_250
    const-string v0, "AIUIScheduler"

    const-string v1, "CMD_QUERY_PARAMS"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/af;->b(Lcom/iflytek/aiui/AIUIMessage;)V

    goto/16 :goto_b

    :sswitch_data_25c
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_135
        0x3 -> :sswitch_13a
        0x4 -> :sswitch_c
        0x5 -> :sswitch_59
        0x6 -> :sswitch_64
        0x7 -> :sswitch_72
        0x8 -> :sswitch_9b
        0x9 -> :sswitch_10e
        0xa -> :sswitch_22
        0xb -> :sswitch_174
        0xc -> :sswitch_13f
        0xd -> :sswitch_14a
        0xe -> :sswitch_15c
        0xf -> :sswitch_168
        0x10 -> :sswitch_186
        0x11 -> :sswitch_198
        0x12 -> :sswitch_1aa
        0x13 -> :sswitch_1bc
        0x14 -> :sswitch_1e4
        0x15 -> :sswitch_209
        0x16 -> :sswitch_226
        0x17 -> :sswitch_232
        0x18 -> :sswitch_23e
        0x19 -> :sswitch_250
        0x3e8 -> :sswitch_1ce
        0x3e9 -> :sswitch_1d9
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v1, 0x4

    const/4 v5, 0x0

    move v3, v2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 16

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->i:Lcom/iflytek/cloud/thirdparty/o;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->i:Lcom/iflytek/cloud/thirdparty/o;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_4

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->printStackTrace()V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    goto :goto_4
.end method

.method private b(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 8

    :try_start_0
    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/16 v1, 0x8

    const/16 v2, 0x19

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "params_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_23
.end method

.method private b(Z)V
    .registers 5

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(I)V

    const-string v0, "continuous"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ah;->a()V

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->g()V

    if-eqz p1, :cond_3e

    const-string v0, "reset"

    const-string v1, "outer"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/al;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    const-string v0, "AIUIScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeup satatus reset, forced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    const-string v0, "reset"

    const-string v1, "inner"

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/al;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private b(I)Z
    .registers 3

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/af;->h:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private c(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/af;->h:I

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->i()V

    return-void
.end method

.method private c(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 5

    const-string v0, "audio"

    iget-object v1, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "data_type"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->i()V

    :cond_1d
    return-void
.end method

.method private d(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 5

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    iget-object v1, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;)V

    const-string v1, "raw_audio"

    const-string v2, "data_type"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Landroid/os/Message;)V

    :cond_22
    return-void
.end method

.method private e(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 5

    const-string v0, "audio"

    iget-object v1, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "data_type"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->k()V

    :cond_1d
    return-void
.end method

.method private f(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 5

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    iget-object v1, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;)V

    const-string v1, "raw_audio"

    const-string v2, "data_type"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Landroid/os/Message;)V

    :cond_22
    return-void
.end method

.method private g(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 9

    iget-object v0, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "audio"

    const-string v2, "data_type"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v1, :cond_30

    const-string v1, "sample_rate"

    const v2, 0x17700

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    iget-object v2, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    iget v4, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    iget v5, p1, Lcom/iflytek/aiui/AIUIMessage;->arg2:I

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v3, 0x4

    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/cloud/thirdparty/t;->a([BLjava/lang/String;IIII)V

    :cond_30
    return-void
.end method

.method private h(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 10

    iget-object v0, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x277a

    const-string v1, "invalid write data params, empty or null."

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "data_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v1, :cond_f

    const-string v1, "sample_rate"

    const v2, 0x17700

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    const-string v1, "user"

    iget-object v2, p1, Lcom/iflytek/aiui/AIUIMessage;->data:[B

    iget-object v3, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p1, Lcom/iflytek/aiui/AIUIMessage;->arg1:I

    iget v6, p1, Lcom/iflytek/aiui/AIUIMessage;->arg2:I

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/t;->a(Ljava/lang/String;[BLjava/lang/String;IIII)V

    goto :goto_f

    :cond_42
    const-string v0, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->o:Lcom/iflytek/cloud/thirdparty/ai;

    if-eqz v0, :cond_f

    :try_start_55
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->o:Lcom/iflytek/cloud/thirdparty/ai;

    iget-object v1, p1, Lcom/iflytek/aiui/AIUIMessage;->params:Ljava/lang/String;

    iget-object v2, p1, Lcom/iflytek/aiui/AIUIMessage;->data:[B

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ai;->a(Ljava/lang/String;[B)V
    :try_end_5e
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_55 .. :try_end_5e} :catch_5f

    goto :goto_f

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->printStackTrace()V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    goto :goto_f

    :cond_6f
    const/16 v0, 0x521e

    const-string v1, "AIUI not working, please wakeup first."

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    goto :goto_f
.end method

.method private i()V
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x3

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/af;->h:I

    const/4 v3, 0x0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/af;->h:I

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/t;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/aiui/AIUIEvent;->info:Ljava/lang/String;

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    return-void
.end method

.method private j()V
    .registers 6

    const v4, 0x2bf20

    const/16 v3, 0x2710

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->a:Ljava/lang/String;

    const-string v0, "interact"

    const-string v1, "interact_timeout"

    invoke-static {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/af;->d:I

    const-string v0, "speech"

    const-string v1, "intent_engine_type"

    const-string v2, "cloud"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->c:Ljava/lang/String;

    const-string v0, "interact"

    const-string v1, "result_timeout"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/af;->p:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/af;->p:I

    const-string v0, "speech"

    const-string v1, "interact_mode"

    const-string v2, "continuous"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->q:Ljava/lang/String;

    const-string v0, "global"

    const-string v1, "clean_dialog_history"

    const-string v2, "auto"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/af;->d:I

    if-eq v0, v1, :cond_50

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/af;->d:I

    if-ge v0, v3, :cond_63

    iput v3, p0, Lcom/iflytek/cloud/thirdparty/af;->d:I

    :cond_50
    :goto_50
    invoke-static {}, Lcom/iflytek/aiui/Version;->isMobileVersion()Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "speech"

    const-string v1, "interact_mode"

    const-string v2, "oneshot"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->q:Ljava/lang/String;

    :cond_62
    return-void

    :cond_63
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/af;->d:I

    if-le v0, v4, :cond_50

    iput v4, p0, Lcom/iflytek/cloud/thirdparty/af;->d:I

    goto :goto_50
.end method

.method private k()V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(I)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->n()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Z)I

    const-string v0, "AIUIScheduler"

    const-string v1, "AIUIScheduler reset."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .registers 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/af;->d:I

    if-eq v0, v1, :cond_c

    const/4 v0, 0x3

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/af;->d:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(IJ)V

    :cond_c
    return-void
.end method

.method private m()I
    .registers 8

    const-string v0, "aiui_ssb"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    :cond_d
    const-string v1, "delay_init"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rslt_timeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/af;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2e
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/ah;->c(Lcom/iflytek/cloud/thirdparty/ce;)I

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    const-string v1, "resultCb"

    const-string v2, "statusCb"

    const-string v3, "errorCb"

    const-string v4, "syncDataCb"

    const-string v5, "pushCb"

    iget-object v6, p0, Lcom/iflytek/cloud/thirdparty/af;->l:Lcom/iflytek/cloud/thirdparty/ag;

    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/cloud/thirdparty/ah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    :try_end_47
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_2e .. :try_end_47} :catch_49

    :cond_47
    const/4 v0, 0x0

    :goto_48
    return v0

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_48
.end method

.method private n()V
    .registers 9

    monitor-enter p0

    const-string v3, ""

    const/4 v0, 0x2

    :try_start_4
    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->b(I)Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_40

    move-result v0

    if-eqz v0, :cond_36

    const-string v3, "ready"

    :cond_c
    :goto_c
    :try_start_c
    const-string v1, "stop"

    const-string v2, "idle"

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, "sdk"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "stop"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->j()V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->o()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->c(I)V

    const-string v0, "AIUIScheduler"

    const-string v1, "AIUIScheduler stopped."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_40

    monitor-exit p0

    return-void

    :cond_36
    const/4 v0, 0x3

    :try_start_37
    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->b(I)Z
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_40

    move-result v0

    if-eqz v0, :cond_c

    const-string v3, "working"

    goto :goto_c

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private o()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ah;->d()V
    :try_end_5
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method public a(Z)I
    .registers 11

    const/4 v8, 0x0

    const/4 v0, -0x1

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Lcom/iflytek/cloud/thirdparty/af;->b(I)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v0, "AIUIScheduler"

    const-string v1, "AIUIScheduler was already started."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_26

    move v0, v8

    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    if-eqz p1, :cond_29

    :try_start_16
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    const/16 v1, 0x277a

    const-string v2, "invalid params json format."

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_26

    goto :goto_12

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->l:Lcom/iflytek/cloud/thirdparty/ag;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ag;->a()V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->l:Lcom/iflytek/cloud/thirdparty/ag;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ag;->b()V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->j()V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->m()I
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_26

    move-result v1

    if-nez v1, :cond_12

    :try_start_3c
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/t;->h()I

    move-result v1

    if-nez v1, :cond_48

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/iflytek/cloud/thirdparty/af;->c(I)V

    :cond_48
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->k:Lcom/iflytek/cloud/thirdparty/q;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/t;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/q;->a(I)V
    :try_end_53
    .catch Lcom/iflytek/cloud/thirdparty/n; {:try_start_3c .. :try_end_53} :catch_73
    .catchall {:try_start_3c .. :try_end_53} :catchall_26

    :try_start_53
    const-string v1, "start"

    const-string v2, "ready"

    const-string v3, "idle"

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, "sdk"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "start"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AIUIScheduler"

    const-string v1, "AIUIScheduler started."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_12

    :catch_73
    move-exception v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/n;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(ILjava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_53 .. :try_end_7f} :catchall_26

    goto :goto_12
.end method

.method public a()V
    .registers 3

    const-string v0, "AIUIScheduler"

    const-string v1, "clear all messages."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_8
    const/16 v1, 0xd

    if-ge v0, v1, :cond_12

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public a(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/af;->removeMessages(I)V

    return-void
.end method

.method public a(IIILjava/lang/Object;J)V
    .registers 8

    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p5, p6}, Lcom/iflytek/cloud/thirdparty/af;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public a(IJ)V
    .registers 5

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/iflytek/cloud/thirdparty/af;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 10

    const/4 v6, 0x7

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v6, v0}, Lcom/iflytek/cloud/thirdparty/af;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/iflytek/aiui/AIUIEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->e:Lcom/iflytek/aiui/AIUIListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->e:Lcom/iflytek/aiui/AIUIListener;

    invoke-interface {v0, p1}, Lcom/iflytek/aiui/AIUIListener;->onEvent(Lcom/iflytek/aiui/AIUIEvent;)V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/af;->a()V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->n()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->m:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->c()V

    :cond_f
    return-void
.end method

.method public c()Lcom/iflytek/cloud/thirdparty/ah;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->g:Landroid/content/Context;

    return-object v0
.end method

.method public f()Lcom/iflytek/cloud/thirdparty/ag;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->l:Lcom/iflytek/cloud/thirdparty/ag;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->q:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .registers 3

    const-string v0, "AIUIScheduler"

    const-string v1, "reset interact timeout."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(I)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->l()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1aa

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Landroid/os/Message;Z)V

    goto :goto_5

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/aiui/AIUIMessage;

    const/4 v1, 0x5

    iget v2, v0, Lcom/iflytek/aiui/AIUIMessage;->msgType:I

    if-eq v1, v2, :cond_3c

    const/4 v1, 0x1

    iget v2, v0, Lcom/iflytek/aiui/AIUIMessage;->msgType:I

    if-eq v1, v2, :cond_3c

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ah;->b()Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "AIUIScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIUISession has not began yet. ignore msgType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/iflytek/aiui/AIUIMessage;->msgType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3c
    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIMessage;)V

    goto :goto_5

    :pswitch_40
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_4d
    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ah;->c()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ae;->a()Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_61
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/af;->p:I

    int-to-long v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/cloud/thirdparty/af;->a(IIILjava/lang/Object;J)V

    goto :goto_5

    :cond_71
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->b(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xa

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_a4

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    const/4 v1, 0x3

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-wide/16 v5, 0x2710

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/cloud/thirdparty/af;->a(IIILjava/lang/Object;J)V

    const-string v0, "AIUIScheduler"

    const-string v1, "prepare to sleep, sleep after 10000ms"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a4
    const-string v0, "AIUIScheduler"

    const-string v1, "interact timeout, reset wakeup."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ah;->a()V

    const-string v1, "sleep"

    const-string v2, "ready"

    const-string v3, "working"

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, "sdk"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->b(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->c(I)V

    goto/16 :goto_5

    :pswitch_d8
    const/4 v0, 0x5

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_ee

    const-string v0, "continuous"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_ee
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/aiui/AIUIEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    goto/16 :goto_5

    :pswitch_f7
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/af;->h()V

    goto/16 :goto_5

    :pswitch_103
    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v1, 0x6

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_11c

    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_5

    :cond_11c
    const-string v0, "oneshot"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/af;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->b(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->c(I)V

    goto/16 :goto_5

    :pswitch_13d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/aiui/AIUIEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    const/16 v1, 0x2bd0

    iget v0, v0, Lcom/iflytek/aiui/AIUIEvent;->arg1:I

    if-ne v1, v0, :cond_5

    const/4 v6, 0x2

    new-instance v0, Lcom/iflytek/aiui/AIUIMessage;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIMessage;-><init>(IIILjava/lang/String;[B)V

    invoke-virtual {p0, v6, v0}, Lcom/iflytek/cloud/thirdparty/af;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :pswitch_15f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/aiui/AIUIEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Lcom/iflytek/aiui/AIUIEvent;)V

    goto/16 :goto_5

    :pswitch_168
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1c6

    goto/16 :goto_5

    :pswitch_16f
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    :pswitch_186
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/af;->removeMessages(I)V

    goto/16 :goto_5

    :pswitch_18d
    const-string v0, "AIUIScheduler"

    const-string v1, "lost connection to server for long time, reset AIUI session."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->f:Lcom/iflytek/cloud/thirdparty/ah;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->o()V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/af;->m()I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->l:Lcom/iflytek/cloud/thirdparty/ag;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/af;->l:Lcom/iflytek/cloud/thirdparty/ag;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ag;->b()V

    goto/16 :goto_5

    nop

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_6
        :pswitch_b
        :pswitch_40
        :pswitch_f7
        :pswitch_d8
        :pswitch_103
        :pswitch_13d
        :pswitch_d8
        :pswitch_15f
        :pswitch_d8
        :pswitch_168
        :pswitch_18d
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_16f
        :pswitch_186
    .end packed-switch
.end method
