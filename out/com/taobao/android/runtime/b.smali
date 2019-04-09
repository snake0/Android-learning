.class public Lcom/taobao/android/runtime/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/runtime/b;-><init>([BI)V

    .line 47
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/taobao/android/runtime/b;->a:[B

    .line 51
    iput p2, p0, Lcom/taobao/android/runtime/b;->b:I

    .line 52
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 7

    .prologue
    .line 55
    iget-object v0, p0, Lcom/taobao/android/runtime/b;->a:[B

    .line 56
    iget v1, p0, Lcom/taobao/android/runtime/b;->b:I

    add-int/2addr v1, p1

    .line 57
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v0, v0, v3

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    .line 61
    if-gez v0, :cond_36

    .line 62
    new-instance v0, Lcom/taobao/android/runtime/ExceptionWithContext;

    const-string v2, "Encountered small uint that is out of range at offset 0x%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/taobao/android/runtime/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 66
    :cond_36
    return v0
.end method

.method public b(I)I
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/android/runtime/b;->a:[B

    .line 86
    iget v1, p0, Lcom/taobao/android/runtime/b;->b:I

    add-int/2addr v1, p1

    .line 87
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    return v0
.end method

.method public c(I)I
    .registers 11

    .prologue
    const-wide/16 v7, 0xff

    .line 108
    iget-object v0, p0, Lcom/taobao/android/runtime/b;->a:[B

    .line 109
    iget v1, p0, Lcom/taobao/android/runtime/b;->b:I

    add-int/2addr v1, p1

    .line 110
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    int-to-long v2, v2

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x7

    aget-byte v0, v0, v4

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 118
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5c

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_6e

    .line 119
    :cond_5c
    new-instance v0, Lcom/taobao/android/runtime/ExceptionWithContext;

    const-string v2, "Encountered out-of-range ulong at offset 0x%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/taobao/android/runtime/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 121
    :cond_6e
    long-to-int v0, v2

    return v0
.end method
