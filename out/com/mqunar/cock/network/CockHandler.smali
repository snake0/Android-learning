.class public Lcom/mqunar/cock/network/CockHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic b:Z

.field private static volatile d:Lcom/mqunar/cock/network/CockHandler;


# instance fields
.field a:[I

.field private final c:Ljava/lang/String;

.field private e:Lcom/mqunar/cock/network/OnIMMessage;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mqunar/cock/network/d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/cock/network/MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/cock/network/callback/OnPubSyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mqunar/cock/network/ImListener;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Lcom/mqunar/cock/network/OnCockMessage;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/mqunar/cock/network/CockHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/mqunar/cock/network/CockHandler;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "CockHandler"

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->c:Ljava/lang/String;

    .line 70
    const-string v0, "com.mqunar.atom.qutui.ACTION_MESSAGE_RECEIVED"

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->j:Ljava/lang/String;

    .line 71
    const-string v0, "com.mqunar.atom.qutui.ACTION_MESSAGE_TRANSPARENT"

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->k:Ljava/lang/String;

    .line 72
    const-string v0, "com.mqunar.atom.qutui.ACTION_MESSAGE_IM"

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->l:Ljava/lang/String;

    .line 74
    const-string v0, "com.mqunar.atom.qutui.OBJ_MESSAGE"

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->m:Ljava/lang/String;

    .line 75
    const-string v0, "qutui.permission.GPushReceiver.com.Qunar"

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->n:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/mqunar/cock/network/CockHandler;->q:Z

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/cock/network/CockHandler;->t:I

    .line 142
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->a:[I

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->s:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->g:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->i:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/mqunar/cock/network/CockHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/mqunar/cock/network/CockHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 415
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 417
    const-string v1, "com.mqunar.atom.qutui.OBJ_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    const-string v2, "qutui.permission.GPushReceiver."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method static synthetic a(Lcom/mqunar/cock/network/CockHandler;)Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mqunar/cock/network/CockHandler;->q:Z

    return v0
.end method

.method static synthetic a(Lcom/mqunar/cock/network/CockHandler;Z)Z
    .registers 2

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mqunar/cock/network/CockHandler;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->e:Lcom/mqunar/cock/network/OnIMMessage;

    return-object v0
.end method

.method static synthetic d(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnCockMessage;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->r:Lcom/mqunar/cock/network/OnCockMessage;

    return-object v0
.end method

.method public static getInstance()Lcom/mqunar/cock/network/CockHandler;
    .registers 2

    .prologue
    .line 145
    sget-object v0, Lcom/mqunar/cock/network/CockHandler;->d:Lcom/mqunar/cock/network/CockHandler;

    if-nez v0, :cond_13

    .line 146
    const-class v1, Lcom/mqunar/cock/network/CockHandler;

    monitor-enter v1

    .line 147
    :try_start_7
    sget-object v0, Lcom/mqunar/cock/network/CockHandler;->d:Lcom/mqunar/cock/network/CockHandler;

    if-nez v0, :cond_12

    .line 148
    new-instance v0, Lcom/mqunar/cock/network/CockHandler;

    invoke-direct {v0}, Lcom/mqunar/cock/network/CockHandler;-><init>()V

    sput-object v0, Lcom/mqunar/cock/network/CockHandler;->d:Lcom/mqunar/cock/network/CockHandler;

    .line 150
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 152
    :cond_13
    sget-object v0, Lcom/mqunar/cock/network/CockHandler;->d:Lcom/mqunar/cock/network/CockHandler;

    return-object v0

    .line 150
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static hexStr2Bytes(Ljava/lang/String;)[B
    .registers 9

    .prologue
    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 473
    new-array v3, v2, [B

    .line 475
    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_54

    .line 476
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 477
    add-int/lit8 v5, v4, 0x1

    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 480
    :cond_54
    return-object v3
.end method


# virtual methods
.method public getYid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->o:Ljava/lang/String;

    return-object v0
.end method

.method public isRelease()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mqunar/cock/network/CockHandler;->p:Z

    return v0
.end method

.method public listen(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 192
    const-string v0, "CockHandler"

    const-string v1, "listen"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 194
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/d;

    .line 195
    invoke-virtual {v0}, Lcom/mqunar/cock/network/d;->stop()V

    .line 196
    iget-object v2, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    .line 199
    :cond_2e
    iput-boolean v3, p0, Lcom/mqunar/cock/network/CockHandler;->u:Z

    .line 202
    :cond_30
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/mqunar/cock/network/d;

    invoke-direct {v1, p1, p2}, Lcom/mqunar/cock/network/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/d;

    .line 204
    new-instance v2, Lcom/mqunar/cock/network/a;

    invoke-direct {v2, p0}, Lcom/mqunar/cock/network/a;-><init>(Lcom/mqunar/cock/network/CockHandler;)V

    invoke-virtual {v0, v2}, Lcom/mqunar/cock/network/d;->setMsgCallback(Lcom/mqunar/yacca/Msg$OnMsg;)V

    .line 371
    new-instance v2, Lcom/mqunar/cock/network/c;

    invoke-direct {v2, p0}, Lcom/mqunar/cock/network/c;-><init>(Lcom/mqunar/cock/network/CockHandler;)V

    invoke-virtual {v0, v2}, Lcom/mqunar/cock/network/d;->setYaccaCallback(Lcom/mqunar/yacca/YaccaCallback;)V

    .line 389
    iget-boolean v2, p0, Lcom/mqunar/cock/network/CockHandler;->u:Z

    if-nez v2, :cond_63

    .line 390
    invoke-virtual {v0}, Lcom/mqunar/cock/network/d;->listen()V

    .line 393
    :cond_63
    invoke-static {v5, v5}, Lcom/mqunar/yacca/Cmd$Builder;->protocal_version(BB)Lcom/mqunar/yacca/Cmd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mqunar/cock/network/d;->send(Lcom/mqunar/yacca/Cmd;)Z

    .line 395
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/cock/network/CockHandler;->getYid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/cock/network/CockHandler;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/yacca/Cmd$Builder;->set_id([B)Lcom/mqunar/yacca/Cmd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mqunar/cock/network/d;->send(Lcom/mqunar/yacca/Cmd;)Z

    goto :goto_40

    .line 400
    :cond_86
    return-void
.end method

.method public registerImListener(Lcom/mqunar/cock/network/ImListener;)V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public registerPubSyncListener(Ljava/lang/String;Lcom/mqunar/cock/network/callback/OnPubSyncListener;)V
    .registers 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public response(ILcom/mqunar/cock/model/ResponseHttpMessage;)V
    .registers 5

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->a:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 437
    return-void
.end method

.method public sendRequest([BLjava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 440
    const-string v0, "QuTui"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 441
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 442
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 443
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 444
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getmReqid()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/d;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {p2, v3, v1}, Lcom/mqunar/yacca/Cmd$Builder;->send(Ljava/lang/String;B[B)Lcom/mqunar/yacca/Cmd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/d;->send(Lcom/mqunar/yacca/Cmd;)Z

    .line 448
    :cond_30
    :goto_30
    return-void

    .line 445
    :cond_31
    const-string v0, "OChat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 446
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getmReqid()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/d;

    invoke-static {p2, v3, p1}, Lcom/mqunar/yacca/Cmd$Builder;->send(Ljava/lang/String;B[B)Lcom/mqunar/yacca/Cmd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/d;->send(Lcom/mqunar/yacca/Cmd;)Z

    goto :goto_30
.end method

.method public serialize(Ljava/lang/Object;)[B
    .registers 5

    .prologue
    .line 452
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 454
    :try_start_4
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/mqunar/tools/DateTimeUtils;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "yyyyMMddHHmmss"

    invoke-static {v1, v2}, Lcom/mqunar/tools/DateTimeUtils;->printCalendarByPattern(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/imp/Imp;->e([B[B)[B
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_1b} :catch_1d

    move-result-object v0

    return-object v0

    .line 455
    :catch_1d
    move-exception v0

    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported encoding...utf-8"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCockMessageListener(Lcom/mqunar/cock/network/OnCockMessage;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mqunar/cock/network/CockHandler;->r:Lcom/mqunar/cock/network/OnCockMessage;

    .line 134
    return-void
.end method

.method public setPush(Z)V
    .registers 5

    .prologue
    .line 100
    const-string v0, "CockHandler"

    const-string v1, "startpush"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iput-boolean p1, p0, Lcom/mqunar/cock/network/CockHandler;->q:Z

    .line 102
    return-void
.end method

.method public setRelease(Z)V
    .registers 2

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/mqunar/cock/network/CockHandler;->p:Z

    .line 93
    return-void
.end method

.method public setYid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mqunar/cock/network/CockHandler;->o:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public stop(Z)V
    .registers 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 404
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/d;

    .line 405
    iput-boolean p1, v0, Lcom/mqunar/cock/network/d;->a:Z

    .line 406
    invoke-virtual {v0}, Lcom/mqunar/cock/network/d;->stop()V

    goto :goto_e

    .line 409
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/cock/network/CockHandler;->u:Z

    .line 410
    return-void
.end method

.method public unregisterImListener(Lcom/mqunar/cock/network/ImListener;)V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public unregisterPubSyncListener(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mqunar/cock/network/CockHandler;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method
