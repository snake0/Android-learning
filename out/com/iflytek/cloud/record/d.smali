.class public Lcom/iflytek/cloud/record/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:S

.field private c:I

.field private d:S


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/iflytek/cloud/record/d;->a(Ljava/io/File;SIS)Z

    return-void
.end method

.method private a(Ljava/io/File;SIS)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    iput-short p2, p0, Lcom/iflytek/cloud/record/d;->b:S

    iput p3, p0, Lcom/iflytek/cloud/record/d;->c:I

    iput-short p4, p0, Lcom/iflytek/cloud/record/d;->d:S

    const/16 v0, 0x2c

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x2c

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public a(S)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v0, "RIFF"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(I)V

    const-string v0, "WAVE"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(Ljava/lang/String;)V

    const-string v0, "fmt "

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(S)V

    iget-short v0, p0, Lcom/iflytek/cloud/record/d;->b:S

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(S)V

    iget v0, p0, Lcom/iflytek/cloud/record/d;->c:I

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(I)V

    iget-short v0, p0, Lcom/iflytek/cloud/record/d;->b:S

    iget v1, p0, Lcom/iflytek/cloud/record/d;->c:I

    mul-int/2addr v0, v1

    iget-short v1, p0, Lcom/iflytek/cloud/record/d;->d:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(I)V

    iget-short v0, p0, Lcom/iflytek/cloud/record/d;->b:S

    iget-short v1, p0, Lcom/iflytek/cloud/record/d;->d:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(S)V

    iget-short v0, p0, Lcom/iflytek/cloud/record/d;->d:S

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(S)V

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/d;->a(I)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/d;->a:Ljava/io/RandomAccessFile;

    :cond_c
    return-void
.end method
