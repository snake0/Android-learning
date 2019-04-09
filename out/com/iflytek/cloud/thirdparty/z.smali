.class public Lcom/iflytek/cloud/thirdparty/z;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/iflytek/cloud/thirdparty/z$a;

.field private c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x140

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/z;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/z;->d:J

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/z;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/z$a;

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/z;->a:I

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/z$a;-><init>(Lcom/iflytek/cloud/thirdparty/z;I)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/z;->b:Lcom/iflytek/cloud/thirdparty/z$a;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x140

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/z;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/z;->d:J

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/z;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/z;->a:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/z$a;

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/z;->a:I

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/z$a;-><init>(Lcom/iflytek/cloud/thirdparty/z;I)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/z;->b:Lcom/iflytek/cloud/thirdparty/z$a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/z;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/z;->d:J

    return-void
.end method

.method public a([BI)V
    .registers 7

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-eq v0, p2, :cond_22

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/z;->b:Lcom/iflytek/cloud/thirdparty/z$a;

    invoke-virtual {v1, p1, v0}, Lcom/iflytek/cloud/thirdparty/z$a;->a([BI)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/z;->b:Lcom/iflytek/cloud/thirdparty/z$a;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/z$a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/z;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/z;->b:Lcom/iflytek/cloud/thirdparty/z$a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/z$a;->b()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/z;->b:Lcom/iflytek/cloud/thirdparty/z$a;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/z$a;->a()V

    goto :goto_1

    :cond_22
    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/z;->d:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/z;->d:J

    return-void
.end method

.method public a(I)[B
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/z;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-gt p1, v0, :cond_d

    :goto_9
    if-nez p1, :cond_14

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/z;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    goto :goto_9

    :cond_14
    new-instance v3, Lcom/iflytek/cloud/thirdparty/z$a;

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/z;->a:I

    mul-int/2addr v0, p1

    invoke-direct {v3, p0, v0}, Lcom/iflytek/cloud/thirdparty/z$a;-><init>(Lcom/iflytek/cloud/thirdparty/z;I)V

    move v1, v2

    :goto_1d
    if-ge v1, p1, :cond_2e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/z;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v3, v0, v2}, Lcom/iflytek/cloud/thirdparty/z$a;->a([BI)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_2e
    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/z$a;->b()[B

    move-result-object v0

    goto :goto_c
.end method
