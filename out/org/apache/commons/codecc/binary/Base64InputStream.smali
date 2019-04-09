.class public Lorg/apache/commons/codecc/binary/Base64InputStream;
.super Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codecc/binary/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5

    .prologue
    .line 66
    new-instance v0, Lorg/apache/commons/codecc/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/codecc/binary/BaseNCodec;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI[B)V
    .registers 6

    .prologue
    .line 86
    new-instance v0, Lorg/apache/commons/codecc/binary/Base64;

    invoke-direct {v0, p3, p4}, Lorg/apache/commons/codecc/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codecc/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/codecc/binary/BaseNCodec;Z)V

    .line 87
    return-void
.end method
