.class final Lcom/mqunar/core/android/content/res/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Z)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/core/android/content/res/c;->a(Ljava/io/InputStream;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 79
    if-ltz p1, :cond_7

    const/4 v1, 0x4

    if-le p1, v1, :cond_d

    .line 80
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 83
    :cond_d
    iget-boolean v1, p0, Lcom/mqunar/core/android/content/res/c;->b:Z

    if-eqz v1, :cond_32

    .line 84
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x8

    :goto_15
    if-ltz v1, :cond_52

    .line 85
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/c;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 86
    if-ne v2, v5, :cond_25

    .line 87
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 89
    :cond_25
    iget v3, p0, Lcom/mqunar/core/android/content/res/c;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mqunar/core/android/content/res/c;->c:I

    .line 90
    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    .line 84
    add-int/lit8 v0, v1, -0x8

    move v1, v0

    move v0, v2

    goto :goto_15

    .line 93
    :cond_32
    mul-int/lit8 v3, p1, 0x8

    move v1, v0

    .line 94
    :goto_35
    if-eq v1, v3, :cond_52

    .line 95
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/c;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 96
    if-ne v2, v5, :cond_45

    .line 97
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 99
    :cond_45
    iget v4, p0, Lcom/mqunar/core/android/content/res/c;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mqunar/core/android/content/res/c;->c:I

    .line 100
    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    .line 94
    add-int/lit8 v0, v1, 0x8

    move v1, v0

    move v0, v2

    goto :goto_35

    .line 103
    :cond_52
    return v0
.end method

.method final a()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/c;->a:Ljava/io/InputStream;

    if-nez v0, :cond_5

    .line 55
    :goto_4
    return-void

    .line 50
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_10

    .line 54
    :goto_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/core/android/content/res/c;->a(Ljava/io/InputStream;Z)V

    goto :goto_4

    .line 52
    :catch_10
    move-exception v0

    goto :goto_a
.end method

.method final a(Ljava/io/InputStream;Z)V
    .registers 4

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mqunar/core/android/content/res/c;->a:Ljava/io/InputStream;

    .line 41
    iput-boolean p2, p0, Lcom/mqunar/core/android/content/res/c;->b:Z

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/core/android/content/res/c;->c:I

    .line 43
    return-void
.end method

.method final a([III)V
    .registers 6

    .prologue
    .line 113
    :goto_0
    if-lez p3, :cond_e

    .line 114
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    aput v1, p1, p2

    .line 113
    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    .line 116
    :cond_e
    return-void
.end method

.method final b()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mqunar/core/android/content/res/c;->a(I)I

    move-result v0

    return v0
.end method

.method final b(I)[I
    .registers 4

    .prologue
    .line 107
    new-array v0, p1, [I

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/mqunar/core/android/content/res/c;->a([III)V

    .line 109
    return-object v0
.end method

.method final c()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mqunar/core/android/content/res/c;->c(I)V

    .line 141
    return-void
.end method

.method final c(I)V
    .registers 6

    .prologue
    .line 129
    if-gtz p1, :cond_3

    .line 137
    :cond_2
    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/c;->a:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 133
    iget v2, p0, Lcom/mqunar/core/android/content/res/c;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/mqunar/core/android/content/res/c;->c:I

    .line 134
    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method
