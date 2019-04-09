.class final Lcom/squareup/wire/Stringer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/Stringer;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 34
    sget-object v0, Lcom/squareup/wire/Stringer;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 35
    new-instance v1, Lcom/squareup/wire/Stringer$Decoder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lcom/squareup/wire/Stringer$Decoder;-><init>([B)V

    .line 36
    array-length v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/squareup/wire/Stringer$Decoder;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_23

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_23
    # getter for: Lcom/squareup/wire/Stringer$Decoder;->op:I
    invoke-static {v1}, Lcom/squareup/wire/Stringer$Decoder;->access$000(Lcom/squareup/wire/Stringer$Decoder;)I

    move-result v0

    # getter for: Lcom/squareup/wire/Stringer$Decoder;->output:[B
    invoke-static {v1}, Lcom/squareup/wire/Stringer$Decoder;->access$100(Lcom/squareup/wire/Stringer$Decoder;)[B

    move-result-object v2

    array-length v2, v2

    if-ne v0, v2, :cond_33

    .line 40
    # getter for: Lcom/squareup/wire/Stringer$Decoder;->output:[B
    invoke-static {v1}, Lcom/squareup/wire/Stringer$Decoder;->access$100(Lcom/squareup/wire/Stringer$Decoder;)[B

    move-result-object v0

    .line 44
    :goto_32
    return-object v0

    .line 42
    :cond_33
    # getter for: Lcom/squareup/wire/Stringer$Decoder;->op:I
    invoke-static {v1}, Lcom/squareup/wire/Stringer$Decoder;->access$000(Lcom/squareup/wire/Stringer$Decoder;)I

    move-result v0

    new-array v0, v0, [B

    .line 43
    # getter for: Lcom/squareup/wire/Stringer$Decoder;->output:[B
    invoke-static {v1}, Lcom/squareup/wire/Stringer$Decoder;->access$100(Lcom/squareup/wire/Stringer$Decoder;)[B

    move-result-object v2

    # getter for: Lcom/squareup/wire/Stringer$Decoder;->op:I
    invoke-static {v1}, Lcom/squareup/wire/Stringer$Decoder;->access$000(Lcom/squareup/wire/Stringer$Decoder;)I

    move-result v1

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_32
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 5

    .prologue
    .line 48
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 49
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_c

    .line 50
    add-int/lit8 v0, v0, 0x4

    .line 52
    :cond_c
    new-instance v1, Lcom/squareup/wire/Stringer$Encoder;

    new-array v0, v0, [B

    invoke-direct {v1, v0}, Lcom/squareup/wire/Stringer$Encoder;-><init>([B)V

    .line 53
    const/4 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/squareup/wire/Stringer$Encoder;->process([BIIZ)V

    .line 54
    new-instance v0, Ljava/lang/String;

    # getter for: Lcom/squareup/wire/Stringer$Encoder;->output:[B
    invoke-static {v1}, Lcom/squareup/wire/Stringer$Encoder;->access$200(Lcom/squareup/wire/Stringer$Encoder;)[B

    move-result-object v1

    sget-object v2, Lcom/squareup/wire/Stringer;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
