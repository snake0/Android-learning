.class public Lorg/apache/commons/codecc/binary/Base32OutputStream;
.super Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codecc/binary/Base32OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 5

    .prologue
    .line 61
    new-instance v0, Lorg/apache/commons/codecc/binary/Base32;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/binary/Base32;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/codecc/binary/BaseNCodec;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .registers 6

    .prologue
    .line 81
    new-instance v0, Lorg/apache/commons/codecc/binary/Base32;

    invoke-direct {v0, p3, p4}, Lorg/apache/commons/codecc/binary/Base32;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codecc/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/codecc/binary/BaseNCodec;Z)V

    .line 82
    return-void
.end method
