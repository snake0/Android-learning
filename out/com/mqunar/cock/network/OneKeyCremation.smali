.class public Lcom/mqunar/cock/network/OneKeyCremation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/cock/network/OnCockMessage;


# static fields
.field public static final MESSAGE_QUEQUE_RETENTION_TIMEOUT:I = 0x101

.field public static final MESSAGE_TCP_REQUEST_TIMEOUT:I = 0x103

.field public static final MESSAGE_YACCA_CONNECT_TIMEOUT:I = 0x102

.field public static final STATUS_AUTHFAIL:I = 0x4

.field public static final STATUS_CONNECTED:I = 0x2

.field public static final STATUS_CONNECTING:I = 0x3

.field public static final STATUS_DISCONNECTED:I = 0x1

.field public static final TCP_RESULT_CODE_RECEIPT:I = 0xc8

.field public static final TCP_RESULT_CODE_TIMEOUT:I = 0x12c

.field private static volatile a:Lcom/mqunar/cock/network/OneKeyCremation;

.field private static d:I


# instance fields
.field private b:Lcom/mqunar/cock/network/RemoteSvcProxy;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:I

.field private f:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/mqunar/cock/model/BaseHttpMessage;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mqunar/cock/network/callback/TcpMessageCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/cock/model/YaccaListResult$YaccaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;

.field private j:Landroid/os/Handler;

.field private k:Lcom/mqunar/cock/network/state/ChannelState;

.field public yaccaConnectedState:Lcom/mqunar/cock/network/state/YaccaConnectedState;

.field public yaccaConnectingState:Lcom/mqunar/cock/network/state/YaccaConnectingState;

.field public yaccaDisconnectState:Lcom/mqunar/cock/network/state/YaccaDisconnectState;

.field public yaccaListGettingState:Lcom/mqunar/cock/network/state/YaccaListGettingState;

.field public yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

.field public yaccaListValuebleState:Lcom/mqunar/cock/network/state/YaccaListValuebleState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-direct {v0}, Lcom/mqunar/cock/network/OneKeyCremation;-><init>()V

    sput-object v0, Lcom/mqunar/cock/network/OneKeyCremation;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/mqunar/cock/network/OneKeyCremation;->d:I

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->e:I

    .line 112
    new-instance v0, Lcom/mqunar/cock/network/state/YaccaConnectedState;

    invoke-direct {v0}, Lcom/mqunar/cock/network/state/YaccaConnectedState;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaConnectedState:Lcom/mqunar/cock/network/state/YaccaConnectedState;

    .line 113
    new-instance v0, Lcom/mqunar/cock/network/state/YaccaConnectingState;

    invoke-direct {v0}, Lcom/mqunar/cock/network/state/YaccaConnectingState;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaConnectingState:Lcom/mqunar/cock/network/state/YaccaConnectingState;

    .line 114
    new-instance v0, Lcom/mqunar/cock/network/state/YaccaDisconnectState;

    invoke-direct {v0}, Lcom/mqunar/cock/network/state/YaccaDisconnectState;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaDisconnectState:Lcom/mqunar/cock/network/state/YaccaDisconnectState;

    .line 115
    new-instance v0, Lcom/mqunar/cock/network/state/YaccaListValuebleState;

    invoke-direct {v0}, Lcom/mqunar/cock/network/state/YaccaListValuebleState;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListValuebleState:Lcom/mqunar/cock/network/state/YaccaListValuebleState;

    .line 116
    new-instance v0, Lcom/mqunar/cock/network/state/YaccaListGettingState;

    invoke-direct {v0}, Lcom/mqunar/cock/network/state/YaccaListGettingState;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListGettingState:Lcom/mqunar/cock/network/state/YaccaListGettingState;

    .line 117
    new-instance v0, Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    invoke-direct {v0}, Lcom/mqunar/cock/network/state/YaccaListUnavailableState;-><init>()V

    iput-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    .line 118
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    iput-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->k:Lcom/mqunar/cock/network/state/ChannelState;

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "timeout_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mqunar/cock/network/OneKeyCremation;->j:Landroid/os/Handler;

    .line 122
    new-instance v1, Lcom/mqunar/cock/network/RemoteSvcProxy;

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/cock/network/OneKeyCremation;->j:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/mqunar/cock/network/RemoteSvcProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mqunar/cock/network/OneKeyCremation;->b:Lcom/mqunar/cock/network/RemoteSvcProxy;

    .line 123
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/mqunar/cock/network/OneKeyCremation;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 124
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mqunar/cock/network/OneKeyCremation;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mqunar/cock/network/CockHandler;->setOnCockMessageListener(Lcom/mqunar/cock/network/OnCockMessage;)V

    .line 128
    new-instance v1, Lcom/mqunar/cock/network/g;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mqunar/cock/network/g;-><init>(Lcom/mqunar/cock/network/OneKeyCremation;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mqunar/cock/network/OneKeyCremation;->i:Landroid/os/Handler;

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/List;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/mqunar/cock/network/OneKeyCremation;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mqunar/cock/network/OneKeyCremation;->h:Ljava/util/List;

    return-object p1
.end method

.method private declared-synchronized a(I)V
    .registers 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/mqunar/cock/network/OneKeyCremation;->e:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 200
    monitor-exit p0

    return-void

    .line 199
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/mqunar/cock/model/BaseHttpMessage;J)V
    .registers 6

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 190
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 191
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 192
    const/16 v1, 0x101

    iput v1, v0, Landroid/os/Message;->what:I

    .line 193
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/mqunar/cock/network/OneKeyCremation;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/mqunar/cock/network/OneKeyCremation;I)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/mqunar/cock/network/OneKeyCremation;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 223
    :try_start_1
    const-string v0, "YACCA"

    const-string v1, "connect yacca (%s,%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->a(I)V

    .line 225
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaConnectingState:Lcom/mqunar/cock/network/state/YaccaConnectingState;

    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    .line 226
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->i:Landroid/os/Handler;

    const/16 v1, 0x102

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 227
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/cock/utils/CockConstants;->getAppname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mqunar/cock/network/CockHandler;->listen(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    .line 231
    :goto_32
    return-void

    .line 228
    :catch_33
    move-exception v0

    .line 229
    const-string v0, "OneKeyCremation connect error"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_32
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/cock/model/YaccaListResult$YaccaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v0

    if-eqz v0, :cond_9

    .line 219
    :goto_7
    monitor-exit p0

    return-void

    .line 217
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/model/YaccaListResult$YaccaInfo;

    iget-object v1, v0, Lcom/mqunar/cock/model/YaccaListResult$YaccaInfo;->ip:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/model/YaccaListResult$YaccaInfo;

    iget v0, v0, Lcom/mqunar/cock/model/YaccaListResult$YaccaInfo;->tPort:I

    invoke-direct {p0, v1, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->a(Ljava/lang/String;I)V

    .line 218
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_23

    goto :goto_7

    .line 213
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/mqunar/cock/network/OneKeyCremation;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/mqunar/cock/network/OneKeyCremation;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic d(Lcom/mqunar/cock/network/OneKeyCremation;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e(Lcom/mqunar/cock/network/OneKeyCremation;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/mqunar/cock/network/OneKeyCremation;
    .registers 2

    .prologue
    .line 160
    sget-object v0, Lcom/mqunar/cock/network/OneKeyCremation;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    if-nez v0, :cond_13

    .line 161
    const-class v1, Lcom/mqunar/cock/network/OneKeyCremation;

    monitor-enter v1

    .line 162
    :try_start_7
    sget-object v0, Lcom/mqunar/cock/network/OneKeyCremation;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    if-nez v0, :cond_12

    .line 163
    new-instance v0, Lcom/mqunar/cock/network/OneKeyCremation;

    invoke-direct {v0}, Lcom/mqunar/cock/network/OneKeyCremation;-><init>()V

    sput-object v0, Lcom/mqunar/cock/network/OneKeyCremation;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    .line 165
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 167
    :cond_13
    sget-object v0, Lcom/mqunar/cock/network/OneKeyCremation;->a:Lcom/mqunar/cock/network/OneKeyCremation;

    return-object v0

    .line 165
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getmReqid()I
    .registers 1

    .prologue
    .line 64
    sget v0, Lcom/mqunar/cock/network/OneKeyCremation;->d:I

    return v0
.end method


# virtual methods
.method public connect()V
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 204
    new-instance v0, Lcom/mqunar/cock/model/BaseParam;

    invoke-direct {v0}, Lcom/mqunar/cock/model/BaseParam;-><init>()V

    .line 205
    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->loadYacaAsync(Lcom/mqunar/cock/model/BaseParam;)V

    .line 206
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListGettingState:Lcom/mqunar/cock/network/state/YaccaListGettingState;

    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    .line 210
    :goto_15
    return-void

    .line 208
    :cond_16
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->h:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->a(Ljava/util/List;)V

    goto :goto_15
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public getState()Lcom/mqunar/cock/network/state/ChannelState;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->k:Lcom/mqunar/cock/network/state/ChannelState;

    return-object v0
.end method

.method public loadYacaAsync(Lcom/mqunar/cock/model/BaseParam;)V
    .registers 7

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->b:Lcom/mqunar/cock/network/RemoteSvcProxy;

    sget-object v1, Lcom/mqunar/cock/network/ServiceMap;->IM_GET_YACCA:Lcom/mqunar/cock/network/ServiceMap;

    new-instance v2, Lcom/mqunar/cock/network/i;

    const-class v3, Lcom/mqunar/cock/model/YaccaListResult;

    iget-object v4, p0, Lcom/mqunar/cock/network/OneKeyCremation;->b:Lcom/mqunar/cock/network/RemoteSvcProxy;

    invoke-direct {v2, p0, v3, v4}, Lcom/mqunar/cock/network/i;-><init>(Lcom/mqunar/cock/network/OneKeyCremation;Ljava/lang/Class;Lcom/mqunar/cock/network/RemoteSvcProxy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/mqunar/cock/network/RemoteSvcProxy;->sendAsync(Lcom/mqunar/cock/network/ServiceMap;Lcom/mqunar/cock/model/BaseParam;Lcom/mqunar/cock/network/TaskCallbackAdapter;)Lcom/mqunar/libtask/AbsConductor;

    .line 376
    return-void
.end method

.method public onConnected()V
    .registers 3

    .prologue
    .line 291
    const-string v0, "OneKeyCremation connect success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaConnectedState:Lcom/mqunar/cock/network/state/YaccaConnectedState;

    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    .line 293
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->i:Landroid/os/Handler;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->a(I)V

    .line 295
    return-void
.end method

.method public onMessage(Lcom/mqunar/cock/model/TcpResponseHeader;[B)V
    .registers 5

    .prologue
    .line 319
    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/mqunar/cock/model/TcpResponseHeader;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 320
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/mqunar/cock/model/TcpResponseHeader;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/callback/TcpMessageCallBack;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/cock/network/callback/TcpMessageCallBack;->onReceipt(Lcom/mqunar/cock/model/TcpResponseHeader;[B)V

    .line 322
    :cond_29
    return-void
.end method

.method public onNetEnd(Z)V
    .registers 4

    .prologue
    .line 299
    const-string v0, "OneKeyCremation server disconnect"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    if-nez p1, :cond_1b

    .line 301
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 302
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaListUnavailableState:Lcom/mqunar/cock/network/state/YaccaListUnavailableState;

    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    .line 307
    :goto_17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->a(I)V

    .line 309
    :cond_1b
    return-void

    .line 304
    :cond_1c
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->yaccaDisconnectState:Lcom/mqunar/cock/network/state/YaccaDisconnectState;

    invoke-virtual {p0, v0}, Lcom/mqunar/cock/network/OneKeyCremation;->setState(Lcom/mqunar/cock/network/state/ChannelState;)V

    goto :goto_17
.end method

.method public onRequest(ILcom/mqunar/cock/model/RequestHttpMessage;)V
    .registers 3

    .prologue
    .line 315
    return-void
.end method

.method public oneKeyCremation()Z
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/cock/network/OneKeyCremation;->k:Lcom/mqunar/cock/network/state/ChannelState;

    invoke-interface {v0}, Lcom/mqunar/cock/network/state/ChannelState;->oneKeyCremation()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public pushCremation()Z
    .registers 2

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(Lcom/mqunar/cock/model/BaseHttpMessage;)V
    .registers 5

    .prologue
    .line 178
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->oneKeyCremation()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 179
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/mqunar/cock/network/OneKeyCremation;->serializeWithoutImp(Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "QuTui"

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/cock/network/CockHandler;->sendRequest([BLjava/lang/String;)V

    .line 186
    :goto_17
    return-void

    .line 181
    :cond_18
    const-wide/32 v0, 0xea60

    invoke-direct {p0, p1, v0, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->a(Lcom/mqunar/cock/model/BaseHttpMessage;J)V

    goto :goto_17
.end method

.method public sendRequest(Lcom/mqunar/cock/model/TcpRequest;)Lcom/mqunar/cock/model/TcpResult;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 236
    sget v1, Lcom/mqunar/cock/network/OneKeyCremation;->d:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mqunar/cock/network/OneKeyCremation;->d:I

    .line 237
    sget v1, Lcom/mqunar/cock/network/OneKeyCremation;->d:I

    iput v1, p1, Lcom/mqunar/cock/model/TcpRequest;->reqid:I

    .line 238
    iget-object v1, p1, Lcom/mqunar/cock/model/TcpRequest;->requestHeader:Lcom/mqunar/cock/model/RequestHeader;

    sget v2, Lcom/mqunar/cock/network/OneKeyCremation;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mqunar/cock/model/RequestHeader;->id:Ljava/lang/String;

    .line 239
    iget-object v1, p1, Lcom/mqunar/cock/model/TcpRequest;->requestHeader:Lcom/mqunar/cock/model/RequestHeader;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 242
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 244
    :goto_25
    if-nez v1, :cond_28

    .line 285
    :goto_27
    return-object v0

    .line 248
    :cond_28
    array-length v0, v1

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p1, Lcom/mqunar/cock/model/TcpRequest;->bytes:[B

    array-length v2, v2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 249
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 250
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 251
    iget-object v1, p1, Lcom/mqunar/cock/model/TcpRequest;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 252
    new-instance v0, Lcom/mqunar/cock/model/TcpResult;

    invoke-direct {v0}, Lcom/mqunar/cock/model/TcpResult;-><init>()V

    .line 253
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 259
    new-instance v2, Lcom/mqunar/cock/network/h;

    invoke-direct {v2, p0, v0, v1}, Lcom/mqunar/cock/network/h;-><init>(Lcom/mqunar/cock/network/OneKeyCremation;Lcom/mqunar/cock/model/TcpResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 274
    iget-object v3, p0, Lcom/mqunar/cock/network/OneKeyCremation;->g:Ljava/util/concurrent/ConcurrentHashMap;

    sget v4, Lcom/mqunar/cock/network/OneKeyCremation;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 276
    const/16 v3, 0x103

    iput v3, v2, Landroid/os/Message;->what:I

    .line 277
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    iget-object v3, p0, Lcom/mqunar/cock/network/OneKeyCremation;->i:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    :try_start_6b
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_27

    .line 281
    :catch_6f
    move-exception v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_27

    :cond_74
    move-object v1, v0

    goto :goto_25
.end method

.method public serializeWithoutImp(Ljava/lang/Object;)[B
    .registers 4

    .prologue
    .line 388
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 390
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 392
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setState(Lcom/mqunar/cock/network/state/ChannelState;)V
    .registers 3

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :try_start_1
    iput-object p1, p0, Lcom/mqunar/cock/network/OneKeyCremation;->k:Lcom/mqunar/cock/network/state/ChannelState;

    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public startPush()V
    .registers 3

    .prologue
    .line 403
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/CockHandler;->setPush(Z)V

    .line 404
    return-void
.end method

.method public stopPush()V
    .registers 3

    .prologue
    .line 399
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/CockHandler;->setPush(Z)V

    .line 400
    return-void
.end method

.method public tryConnect()V
    .registers 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/mqunar/cock/network/OneKeyCremation;->oneKeyCremation()Z

    .line 173
    return-void
.end method
