.class public Lcom/mqunar/yacca/Cmd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private protocol:B


# direct methods
.method public constructor <init>(BLjava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-byte p1, p0, Lcom/mqunar/yacca/Cmd;->protocol:B

    .line 71
    iput-object p2, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    .line 72
    return-void
.end method


# virtual methods
.method public getByteBuffer2(Ljava/nio/ByteBuffer;)V
    .registers 8

    .prologue
    .line 75
    iget-byte v0, p0, Lcom/mqunar/yacca/Cmd;->protocol:B

    sparse-switch v0, :sswitch_data_aa

    .line 105
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 77
    :sswitch_b
    iget-object v0, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    const-string v1, "clientId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 78
    iget-byte v1, p0, Lcom/mqunar/yacca/Cmd;->protocol:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    :goto_1f
    return-void

    .line 82
    :sswitch_20
    iget-object v0, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    const-string v1, "sizeBin"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 83
    iget-object v0, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    const-string v1, "sizeAppName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 84
    iget-object v0, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    const-string v1, "appName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    const-string v4, "agentId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    .line 86
    iget-object v1, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    const-string v5, "msg"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 87
    iget-byte v5, p0, Lcom/mqunar/yacca/Cmd;->protocol:B

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1f

    .line 95
    :sswitch_79
    iget-object v0, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    const-string v1, "mainVer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 96
    iget-object v0, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    const-string v2, "subVer"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 97
    iget-byte v2, p0, Lcom/mqunar/yacca/Cmd;->protocol:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1f

    .line 102
    :sswitch_a2
    iget-byte v0, p0, Lcom/mqunar/yacca/Cmd;->protocol:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1f

    .line 75
    nop

    :sswitch_data_aa
    .sparse-switch
        0x0 -> :sswitch_a2
        0x1 -> :sswitch_b
        0x2 -> :sswitch_20
        0x42 -> :sswitch_79
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cmd { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v1, "protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/mqunar/yacca/Cmd;->protocol:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    if-eqz v1, :cond_21

    .line 115
    const-string v1, ", args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/yacca/Cmd;->args:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    :cond_21
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
