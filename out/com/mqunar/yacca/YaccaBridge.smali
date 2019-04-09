.class public Lcom/mqunar/yacca/YaccaBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final READ_BUFFER_SIZE:I = 0x10000

.field public static final WRITE_BUFFER_SIZE:I = 0x10000


# instance fields
.field private callback:Lcom/mqunar/yacca/YaccaCallback;

.field private final hostname:Ljava/lang/String;

.field private msgCallback:Lcom/mqunar/yacca/Msg$OnMsg;

.field private final port:I

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mqunar/yacca/Cmd;",
            ">;"
        }
    .end annotation
.end field

.field private readBuffer:Ljava/nio/ByteBuffer;

.field private runFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final runnable:Ljava/lang/Runnable;

.field private selector:Ljava/nio/channels/Selector;

.field private socketChannel:Ljava/nio/channels/SocketChannel;

.field private startTime:J

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private timeout:J

.field private final uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private writeBuffer:Ljava/nio/ByteBuffer;

.field private yaccaThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6

    .prologue
    const/high16 v2, 0x10000

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->runFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/mqunar/yacca/YaccaBridge;->timeout:J

    .line 51
    iput-object p1, p0, Lcom/mqunar/yacca/YaccaBridge;->hostname:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/mqunar/yacca/YaccaBridge;->port:I

    .line 53
    new-instance v0, Lcom/mqunar/yacca/YaccaBridge$1;

    invoke-direct {v0, p0}, Lcom/mqunar/yacca/YaccaBridge$1;-><init>(Lcom/mqunar/yacca/YaccaBridge;)V

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->runnable:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lcom/mqunar/yacca/YaccaBridge$2;

    invoke-direct {v0, p0}, Lcom/mqunar/yacca/YaccaBridge$2;-><init>(Lcom/mqunar/yacca/YaccaBridge;)V

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 79
    new-instance v0, Lcom/mqunar/yacca/YaccaBridge$3;

    invoke-direct {v0, p0}, Lcom/mqunar/yacca/YaccaBridge$3;-><init>(Lcom/mqunar/yacca/YaccaBridge;)V

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 89
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->queue:Ljava/util/Queue;

    .line 92
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->readBuffer:Ljava/nio/ByteBuffer;

    .line 93
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/yacca/YaccaBridge;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mqunar/yacca/YaccaBridge;->initConn()V

    return-void
.end method

.method static synthetic access$100(Lcom/mqunar/yacca/YaccaBridge;)Lcom/mqunar/yacca/YaccaCallback;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->callback:Lcom/mqunar/yacca/YaccaCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mqunar/yacca/YaccaBridge;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mqunar/yacca/YaccaBridge;->loop2()V

    return-void
.end method

.method static synthetic access$302(Lcom/mqunar/yacca/YaccaBridge;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mqunar/yacca/YaccaBridge;->yaccaThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mqunar/yacca/YaccaBridge;)Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->readBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mqunar/yacca/YaccaBridge;)Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mqunar/yacca/YaccaBridge;)Ljava/util/Queue;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mqunar/yacca/YaccaBridge;Lcom/mqunar/yacca/Msg$OnMsg;)Lcom/mqunar/yacca/Msg$OnMsg;
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mqunar/yacca/YaccaBridge;->msgCallback:Lcom/mqunar/yacca/Msg$OnMsg;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mqunar/yacca/YaccaBridge;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private initConn()V
    .registers 5

    .prologue
    .line 99
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 101
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 102
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 105
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    .line 107
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 109
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->socketChannel:Ljava/nio/channels/SocketChannel;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->hostname:Ljava/lang/String;

    iget v3, p0, Lcom/mqunar/yacca/YaccaBridge;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 110
    return-void
.end method

.method private loop2()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x2

    const/4 v1, 0x1

    .line 114
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->runFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 116
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    :goto_17
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->runFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 121
    sub-long v0, v4, v0

    iget-wide v2, p0, Lcom/mqunar/yacca/YaccaBridge;->timeout:J

    div-long/2addr v2, v10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_33

    .line 122
    invoke-static {}, Lcom/mqunar/yacca/Cmd$Builder;->heartbeat()Lcom/mqunar/yacca/Cmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/yacca/YaccaBridge;->send(Lcom/mqunar/yacca/Cmd;)Z

    .line 126
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    iget-wide v1, p0, Lcom/mqunar/yacca/YaccaBridge;->timeout:J

    const-wide/16 v6, 0x2

    div-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3d} :catch_74

    .line 131
    :goto_3d
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 133
    :cond_47
    :goto_47
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_139

    .line 134
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 135
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 138
    :try_start_56
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_79

    .line 139
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_62} :catch_62

    .line 201
    :catch_62
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    :try_start_66
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6d} :catch_146

    .line 208
    :goto_6d
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 209
    invoke-virtual {p0}, Lcom/mqunar/yacca/YaccaBridge;->stop()V

    goto :goto_47

    .line 127
    :catch_74
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    .line 141
    :cond_79
    :try_start_79
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 143
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 144
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 145
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 148
    :cond_8c
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 150
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a1

    .line 151
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 153
    :cond_a1
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 155
    :cond_a6
    :goto_a6
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/mqunar/yacca/Msg;->readMsg(Ljava/nio/ByteBuffer;)Lcom/mqunar/yacca/Msg;

    move-result-object v7

    .line 156
    if-nez v7, :cond_d4

    .line 158
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 177
    :cond_b3
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 178
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_110

    .line 179
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v1, v1

    .line 181
    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-gtz v1, :cond_110

    .line 182
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 162
    :cond_d4
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->msgCallback:Lcom/mqunar/yacca/Msg$OnMsg;

    if-eqz v2, :cond_a6

    .line 163
    iget v2, v7, Lcom/mqunar/yacca/Msg;->protocol:I

    sparse-switch v2, :sswitch_data_14a

    goto :goto_a6

    .line 168
    :sswitch_de
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->msgCallback:Lcom/mqunar/yacca/Msg$OnMsg;

    invoke-interface {v2}, Lcom/mqunar/yacca/Msg$OnMsg;->onConnected()V

    goto :goto_a6

    .line 165
    :sswitch_e4
    iget-object v8, p0, Lcom/mqunar/yacca/YaccaBridge;->msgCallback:Lcom/mqunar/yacca/Msg$OnMsg;

    iget-object v2, v7, Lcom/mqunar/yacca/Msg;->data:Ljava/util/Map;

    const-string v3, "appName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    iget-object v3, v7, Lcom/mqunar/yacca/Msg;->data:Ljava/util/Map;

    const-string v9, "agentId"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v3, v7, Lcom/mqunar/yacca/Msg;->data:Ljava/util/Map;

    const-string v7, "msg"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v8, v2, v9, v3}, Lcom/mqunar/yacca/Msg$OnMsg;->onMessage([BI[B)V

    goto :goto_a6

    .line 186
    :cond_110
    iget-object v1, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_47

    .line 190
    iget-object v1, p0, Lcom/mqunar/yacca/YaccaBridge;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/yacca/Cmd;

    .line 191
    if-eqz v1, :cond_133

    .line 192
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 193
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Lcom/mqunar/yacca/Cmd;->getByteBuffer2(Ljava/nio/ByteBuffer;)V

    .line 194
    iget-object v1, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/16 :goto_47

    .line 197
    :cond_133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_137} :catch_62

    goto/16 :goto_47

    :cond_139
    move-wide v0, v4

    .line 212
    goto/16 :goto_17

    .line 213
    :cond_13c
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->callback:Lcom/mqunar/yacca/YaccaCallback;

    if-eqz v0, :cond_145

    .line 214
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->callback:Lcom/mqunar/yacca/YaccaCallback;

    invoke-interface {v0, p0}, Lcom/mqunar/yacca/YaccaCallback;->onClose(Lcom/mqunar/yacca/YaccaBridge;)V

    .line 216
    :cond_145
    return-void

    .line 206
    :catch_146
    move-exception v1

    goto/16 :goto_6d

    .line 163
    nop

    :sswitch_data_14a
    .sparse-switch
        0x0 -> :sswitch_de
        0xf -> :sswitch_e4
    .end sparse-switch
.end method


# virtual methods
.method public listen()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->yaccaThread:Ljava/lang/Thread;

    if-nez v0, :cond_13

    .line 224
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    iget-object v1, p0, Lcom/mqunar/yacca/YaccaBridge;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->yaccaThread:Ljava/lang/Thread;

    .line 225
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->yaccaThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 227
    :cond_13
    return-void
.end method

.method public send(Lcom/mqunar/yacca/Cmd;)Z
    .registers 7

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 243
    if-eqz p1, :cond_27

    .line 244
    iget-object v1, p0, Lcom/mqunar/yacca/YaccaBridge;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 245
    if-eqz v1, :cond_26

    .line 246
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_26

    .line 247
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 249
    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 257
    :goto_21
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_26
    move v0, v1

    .line 262
    :cond_27
    :goto_27
    return v0

    .line 252
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_30
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_21

    .line 253
    :catch_31
    move-exception v1

    goto :goto_27
.end method

.method public setMsgCallback(Lcom/mqunar/yacca/Msg$OnMsg;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/mqunar/yacca/YaccaBridge;->msgCallback:Lcom/mqunar/yacca/Msg$OnMsg;

    .line 271
    return-void
.end method

.method public setTimeout(J)V
    .registers 3

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/mqunar/yacca/YaccaBridge;->timeout:J

    .line 220
    return-void
.end method

.method public setYaccaCallback(Lcom/mqunar/yacca/YaccaCallback;)V
    .registers 2

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mqunar/yacca/YaccaBridge;->callback:Lcom/mqunar/yacca/YaccaCallback;

    .line 267
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->runFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 231
    iput-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->yaccaThread:Ljava/lang/Thread;

    .line 232
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 233
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 234
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 235
    iput-object v2, p0, Lcom/mqunar/yacca/YaccaBridge;->msgCallback:Lcom/mqunar/yacca/Msg$OnMsg;

    .line 236
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_26

    .line 237
    iget-object v0, p0, Lcom/mqunar/yacca/YaccaBridge;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 240
    :cond_26
    return-void
.end method
