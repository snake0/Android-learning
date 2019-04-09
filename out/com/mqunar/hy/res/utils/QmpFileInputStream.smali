.class public Lcom/mqunar/hy/res/utils/QmpFileInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private cursor:I

.field private length:I

.field private randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 7

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    .line 18
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 19
    iput p3, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->length:I

    .line 20
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 21
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->length:I

    iget v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 3

    .prologue
    .line 25
    iget v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    iget v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->length:I

    if-ge v0, v1, :cond_11

    .line 26
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 28
    :goto_10
    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public read([B)I
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 33
    iget v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    iget v2, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->length:I

    if-lt v1, v2, :cond_9

    .line 45
    :goto_8
    return v0

    .line 37
    :cond_9
    array-length v1, p1

    iget v2, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->length:I

    if-gt v1, v2, :cond_21

    .line 38
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    array-length v2, p1

    invoke-virtual {v1, p1, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 42
    :goto_18
    if-eq v1, v0, :cond_1f

    .line 43
    iget v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    :cond_1f
    move v0, v1

    .line 45
    goto :goto_8

    .line 40
    :cond_21
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->length:I

    iget v3, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, p1, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    goto :goto_18
.end method

.method public read([BII)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 50
    iget v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    iget v2, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->length:I

    if-lt v1, v2, :cond_8

    .line 62
    :goto_7
    return v0

    .line 54
    :cond_8
    iget v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    add-int/2addr v1, p3

    iget v2, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->length:I

    if-gt v1, v2, :cond_1e

    .line 55
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 59
    :goto_15
    if-eq v1, v0, :cond_1c

    .line 60
    iget v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    :cond_1c
    move v0, v1

    .line 62
    goto :goto_7

    .line 57
    :cond_1e
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->length:I

    iget v3, p0, Lcom/mqunar/hy/res/utils/QmpFileInputStream;->cursor:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    goto :goto_15
.end method
