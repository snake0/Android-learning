.class public final Lcom/iflytek/aiui/AIUIAgent;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/aiui/AIUIAgent;


# instance fields
.field private b:Lcom/iflytek/cloud/thirdparty/p;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/aiui/AIUIListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AIUIAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AIUI params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/p;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/aiui/AIUIAgent;->b:Lcom/iflytek/cloud/thirdparty/p;

    iget-object v0, p0, Lcom/iflytek/aiui/AIUIAgent;->b:Lcom/iflytek/cloud/thirdparty/p;

    invoke-virtual {v0, p2, p3}, Lcom/iflytek/cloud/thirdparty/p;->a(Ljava/lang/String;Lcom/iflytek/aiui/AIUIListener;)I

    return-void
.end method

.method public static createAgent(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/aiui/AIUIListener;)Lcom/iflytek/aiui/AIUIAgent;
    .registers 5

    const-class v0, Lcom/iflytek/aiui/AIUIAgent;

    monitor-enter v0

    if-nez p0, :cond_11

    :try_start_5
    const-string v0, "AIUIAgent"

    const-string v1, "parameter context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1f

    const/4 v0, 0x0

    :goto_d
    const-class v1, Lcom/iflytek/aiui/AIUIAgent;

    monitor-exit v1

    return-object v0

    :cond_11
    :try_start_11
    sget-object v0, Lcom/iflytek/aiui/AIUIAgent;->a:Lcom/iflytek/aiui/AIUIAgent;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/iflytek/aiui/AIUIAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/aiui/AIUIAgent;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/aiui/AIUIListener;)V

    sput-object v0, Lcom/iflytek/aiui/AIUIAgent;->a:Lcom/iflytek/aiui/AIUIAgent;

    :cond_1c
    sget-object v0, Lcom/iflytek/aiui/AIUIAgent;->a:Lcom/iflytek/aiui/AIUIAgent;
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1f

    goto :goto_d

    :catchall_1f
    move-exception v0

    const-class v1, Lcom/iflytek/aiui/AIUIAgent;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/aiui/AIUIAgent;->b:Lcom/iflytek/cloud/thirdparty/p;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/iflytek/aiui/AIUIAgent;->b:Lcom/iflytek/cloud/thirdparty/p;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/p;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/aiui/AIUIAgent;->b:Lcom/iflytek/cloud/thirdparty/p;

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/aiui/AIUIAgent;->a:Lcom/iflytek/aiui/AIUIAgent;

    const-string v0, "AIUIAgent"

    const-string v1, "AIUIAgent destroyed."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public sendMessage(Lcom/iflytek/aiui/AIUIMessage;)V
    .registers 4

    if-nez p1, :cond_a

    const-string v0, "AIUIAgent"

    const-string v1, "message is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :cond_a
    monitor-enter p0

    :try_start_b
    iget-object v0, p0, Lcom/iflytek/aiui/AIUIAgent;->b:Lcom/iflytek/cloud/thirdparty/p;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/iflytek/aiui/AIUIAgent;->b:Lcom/iflytek/cloud/thirdparty/p;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/p;->a(Lcom/iflytek/aiui/AIUIMessage;)V

    :goto_14
    monitor-exit p0

    goto :goto_9

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    :try_start_19
    const-string v0, "AIUIAgent"

    const-string v1, "AIUIAgent has been destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    goto :goto_14
.end method
