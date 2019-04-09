.class final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field closed:Z

.field frameBytesRead:J

.field final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field isMasked:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field opcode:I

.field final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .registers 6

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 76
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    .line 79
    if-nez p2, :cond_18

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_18
    if-nez p3, :cond_22

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_22
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 82
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 83
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 84
    return-void
.end method

.method private readControlFrame()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 169
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 170
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 171
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_52

    .line 172
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-wide v1, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v6, v1, v2}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 185
    :cond_19
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_c6

    .line 208
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_3d
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    int-to-long v1, v7

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 179
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-virtual {v6, v0, v8, v7}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 180
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    int-to-long v2, v7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 174
    :cond_52
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 175
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 176
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-interface {v1, v2, v8, v0}, Lokio/BufferedSource;->read([BII)I

    move-result v7

    .line 177
    const/4 v0, -0x1

    if-ne v7, v0, :cond_3d

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 187
    :pswitch_79
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    .line 210
    :goto_82
    return-void

    .line 190
    :pswitch_83
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    goto :goto_82

    .line 193
    :pswitch_8d
    const/16 v1, 0x3ed

    .line 194
    const-string v0, ""

    .line 195
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 196
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_a3

    .line 197
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed close payload length of 1."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_a3
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_bd

    .line 199
    invoke-virtual {v6}, Lokio/Buffer;->readShort()S

    move-result v1

    .line 200
    invoke-virtual {v6}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v1}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_bd

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_bd
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v2, v1, v0}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    goto :goto_82

    .line 185
    :pswitch_data_c6
    .packed-switch 0x8
        :pswitch_8d
        :pswitch_79
        :pswitch_83
    .end packed-switch
.end method

.method private readHeader()V
    .registers 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_10
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    .line 111
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 113
    :try_start_23
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_58

    move-result v0

    and-int/lit16 v5, v0, 0xff

    .line 115
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 118
    and-int/lit8 v0, v5, 0xf

    iput v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 119
    and-int/lit16 v0, v5, 0x80

    if-eqz v0, :cond_65

    move v0, v1

    :goto_3f
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 120
    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_67

    move v0, v1

    :goto_46
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 123
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_69

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v0, :cond_69

    .line 124
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :catchall_58
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw v0

    :cond_65
    move v0, v2

    .line 119
    goto :goto_3f

    :cond_67
    move v0, v2

    .line 120
    goto :goto_46

    .line 127
    :cond_69
    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_86

    move v4, v1

    .line 128
    :goto_6e
    and-int/lit8 v0, v5, 0x20

    if-eqz v0, :cond_88

    move v3, v1

    .line 129
    :goto_73
    and-int/lit8 v0, v5, 0x10

    if-eqz v0, :cond_8a

    move v0, v1

    .line 130
    :goto_78
    if-nez v4, :cond_7e

    if-nez v3, :cond_7e

    if-eqz v0, :cond_8c

    .line 132
    :cond_7e
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    move v4, v2

    .line 127
    goto :goto_6e

    :cond_88
    move v3, v2

    .line 128
    goto :goto_73

    :cond_8a
    move v0, v2

    .line 129
    goto :goto_78

    .line 135
    :cond_8c
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 137
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_ac

    :goto_98
    iput-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    .line 138
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v1, v2, :cond_b1

    .line 140
    new-instance v1, Ljava/net/ProtocolException;

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_ae

    const-string v0, "Server-sent frames must not be masked."

    :goto_a8
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ac
    move v1, v2

    .line 137
    goto :goto_98

    .line 140
    :cond_ae
    const-string v0, "Client-sent frames must be masked."

    goto :goto_a8

    .line 146
    :cond_b1
    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 147
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_e1

    .line 148
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 156
    :cond_cb
    iput-wide v7, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 158
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_11c

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7d

    cmp-long v0, v0, v2

    if-lez v0, :cond_11c

    .line 159
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_e1
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7f

    cmp-long v0, v0, v2

    if-nez v0, :cond_cb

    .line 150
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 151
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_cb

    .line 152
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame length 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 153
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_11c
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v0, :cond_127

    .line 164
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    .line 166
    :cond_127
    return-void
.end method

.method private readMessage(Lokio/Buffer;)V
    .registers 11

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    .line 246
    :goto_3
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_f
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4e

    .line 249
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v0, :cond_1c

    .line 256
    :cond_1b
    return-void

    .line 251
    :cond_1c
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    .line 252
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eqz v0, :cond_42

    .line 253
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_42
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v0, :cond_4e

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 260
    :cond_4e
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v0, v2

    .line 263
    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v2, :cond_8a

    .line 264
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 265
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    long-to-int v0, v0

    invoke-interface {v2, v3, v6, v0}, Lokio/BufferedSource;->read([BII)I

    move-result v0

    int-to-long v1, v0

    .line 266
    cmp-long v0, v1, v7

    if-nez v0, :cond_73

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 267
    :cond_73
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 268
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    long-to-int v3, v1

    invoke-virtual {p1, v0, v6, v3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 274
    :cond_82
    iget-wide v3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    add-long v0, v3, v1

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    goto/16 :goto_3

    .line 270
    :cond_8a
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, p1, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v1

    .line 271
    cmp-long v0, v1, v7

    if-nez v0, :cond_82

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private readMessageFrame()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 213
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 214
    if-eq v0, v2, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    .line 215
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_25
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 219
    invoke-direct {p0, v1}, Lokhttp3/internal/ws/WebSocketReader;->readMessage(Lokio/Buffer;)V

    .line 221
    if-ne v0, v2, :cond_39

    .line 222
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    .line 226
    :goto_38
    return-void

    .line 224
    :cond_39
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    goto :goto_38
.end method


# virtual methods
.method processNextFrame()V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 98
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_b

    .line 99
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    .line 103
    :goto_a
    return-void

    .line 101
    :cond_b
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_a
.end method

.method readUntilNonControlFrame()V
    .registers 2

    .prologue
    .line 230
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_b

    .line 231
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 232
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_c

    .line 237
    :cond_b
    return-void

    .line 235
    :cond_c
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method
