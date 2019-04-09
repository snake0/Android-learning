.class Lcom/mqunar/core/android/content/res/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:[I

.field private c:[I

.field private d:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method private static final a([II)I
    .registers 4

    .prologue
    .line 231
    div-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    .line 232
    rem-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_f

    .line 233
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 235
    :goto_e
    return v0

    :cond_f
    ushr-int/lit8 v0, v0, 0x10

    goto :goto_e
.end method

.method static a(Lcom/mqunar/core/android/content/res/c;)Lcom/mqunar/core/android/content/res/d;
    .registers 7

    .prologue
    .line 36
    const v0, 0x1c0001

    invoke-static {p0, v0}, Lcom/mqunar/core/android/content/res/b;->a(Lcom/mqunar/core/android/content/res/c;I)V

    .line 37
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v0

    .line 39
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v3

    .line 40
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/c;->b()I

    .line 41
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v4

    .line 42
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v2

    .line 44
    new-instance v5, Lcom/mqunar/core/android/content/res/d;

    invoke-direct {v5}, Lcom/mqunar/core/android/content/res/d;-><init>()V

    .line 45
    invoke-virtual {p0, v0}, Lcom/mqunar/core/android/content/res/c;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/mqunar/core/android/content/res/d;->a:[I

    .line 46
    if-eqz v3, :cond_30

    .line 47
    invoke-virtual {p0, v3}, Lcom/mqunar/core/android/content/res/c;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/mqunar/core/android/content/res/d;->c:[I

    .line 50
    :cond_30
    if-nez v2, :cond_57

    move v0, v1

    :goto_33
    sub-int/2addr v0, v4

    .line 51
    rem-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_59

    .line 52
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_57
    move v0, v2

    .line 50
    goto :goto_33

    .line 54
    :cond_59
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mqunar/core/android/content/res/c;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/mqunar/core/android/content/res/d;->b:[I

    .line 56
    if-eqz v2, :cond_90

    .line 57
    sub-int v0, v1, v2

    .line 58
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_88

    .line 59
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Style data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_88
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mqunar/core/android/content/res/c;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/mqunar/core/android/content/res/d;->d:[I

    .line 64
    :cond_90
    return-object v5
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 165
    if-nez p1, :cond_6

    move v0, v2

    .line 185
    :goto_5
    return v0

    :cond_6
    move v0, v1

    .line 168
    :goto_7
    iget-object v3, p0, Lcom/mqunar/core/android/content/res/d;->a:[I

    array-length v3, v3

    if-eq v0, v3, :cond_37

    .line 169
    iget-object v3, p0, Lcom/mqunar/core/android/content/res/d;->a:[I

    aget v3, v3, v0

    .line 170
    iget-object v4, p0, Lcom/mqunar/core/android/content/res/d;->b:[I

    invoke-static {v4, v3}, Lcom/mqunar/core/android/content/res/d;->a([II)I

    move-result v5

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_1f

    .line 168
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    move v4, v3

    move v3, v1

    .line 175
    :goto_21
    if-eq v3, v5, :cond_31

    .line 176
    add-int/lit8 v4, v4, 0x2

    .line 177
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lcom/mqunar/core/android/content/res/d;->b:[I

    invoke-static {v7, v4}, Lcom/mqunar/core/android/content/res/d;->a([II)I

    move-result v7

    if-eq v6, v7, :cond_34

    .line 181
    :cond_31
    if-ne v3, v5, :cond_1c

    goto :goto_5

    .line 175
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_37
    move v0, v2

    .line 185
    goto :goto_5
.end method

.method a(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 80
    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/mqunar/core/android/content/res/d;->a:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mqunar/core/android/content/res/d;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_d

    .line 84
    :cond_b
    const/4 v0, 0x0

    .line 93
    :goto_c
    return-object v0

    .line 86
    :cond_d
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/d;->a:[I

    aget v1, v0, p1

    .line 87
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/d;->b:[I

    invoke-static {v0, v1}, Lcom/mqunar/core/android/content/res/d;->a([II)I

    move-result v0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    :goto_1c
    if-eqz v0, :cond_2d

    .line 90
    add-int/lit8 v1, v1, 0x2

    .line 91
    iget-object v3, p0, Lcom/mqunar/core/android/content/res/d;->b:[I

    invoke-static {v3, v1}, Lcom/mqunar/core/android/content/res/d;->a([II)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 93
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
