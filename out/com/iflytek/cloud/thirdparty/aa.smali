.class public Lcom/iflytek/cloud/thirdparty/aa;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/iflytek/cloud/thirdparty/y;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->c:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->c:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/aa;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->b:J

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/y;)V
    .registers 6

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/aa;->c:I

    if-lt v0, v1, :cond_1e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    :goto_18
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-void

    :cond_1e
    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->b:J

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->b:J

    goto :goto_18
.end method

.method public b()Lcom/iflytek/cloud/thirdparty/y;
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/y;

    if-eqz v0, :cond_14

    iget-wide v1, p0, Lcom/iflytek/cloud/thirdparty/aa;->b:J

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/iflytek/cloud/thirdparty/aa;->b:J

    :cond_14
    return-object v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/aa;->b:J

    return-wide v0
.end method

.method public d()Lcom/iflytek/cloud/thirdparty/y;
    .registers 6

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v1

    :goto_7
    :try_start_7
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/aa;->b()Lcom/iflytek/cloud/thirdparty/y;

    move-result-object v3

    if-eqz v3, :cond_21

    iget-object v0, v3, Lcom/iflytek/cloud/thirdparty/y;->e:Lcom/iflytek/cloud/thirdparty/ce;

    iget-object v3, v3, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_7

    :catch_15
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    :goto_19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v3

    move-object v3, v2

    :goto_1e
    if-nez v3, :cond_2f

    :goto_20
    return-object v1

    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_15

    move-result-object v3

    :try_start_25
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_1e

    :catch_29
    move-exception v2

    move-object v4, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v4

    goto :goto_19

    :cond_2f
    new-instance v1, Lcom/iflytek/cloud/thirdparty/y;

    invoke-direct {v1, v3, v0}, Lcom/iflytek/cloud/thirdparty/y;-><init>([BLcom/iflytek/cloud/thirdparty/ce;)V

    goto :goto_20
.end method
