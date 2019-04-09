.class public Lcom/taobao/android/runtime/OatFile;
.super Lcom/taobao/android/runtime/b;
.source "SourceFile"


# static fields
.field private static final c:[B

.field private static final d:[B


# instance fields
.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/taobao/android/runtime/OatFile;->c:[B

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/taobao/android/runtime/OatFile;->d:[B

    return-void

    .line 44
    :array_10
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
    .end array-data

    .line 46
    :array_16
    .array-data 1
        0x6ft
        0x61t
        0x74t
        0xat
    .end array-data
.end method

.method public constructor <init>([BJ)V
    .registers 9
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 75
    invoke-direct {p0, p1}, Lcom/taobao/android/runtime/b;-><init>([B)V

    .line 77
    array-length v0, p1

    const/16 v1, 0x34

    if-ge v0, v1, :cond_11

    .line 78
    new-instance v0, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;

    invoke-direct {v0}, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;-><init>()V

    throw v0

    .line 81
    :cond_11
    invoke-static {p1}, Lcom/taobao/android/runtime/OatFile;->a([B)V

    .line 83
    aget-byte v0, p1, v3

    if-ne v0, v2, :cond_3f

    .line 84
    iput-boolean v4, p0, Lcom/taobao/android/runtime/OatFile;->e:Z

    .line 93
    :goto_1a
    iget-boolean v0, p0, Lcom/taobao/android/runtime/OatFile;->e:Z

    if-eqz v0, :cond_5e

    .line 94
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/taobao/android/runtime/OatFile;->c(I)I

    move-result v2

    .line 95
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/taobao/android/runtime/OatFile;->b(I)I

    move-result v1

    .line 96
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/taobao/android/runtime/OatFile;->b(I)I

    move-result v0

    .line 103
    :goto_30
    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    int-to-long v0, v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_71

    .line 104
    new-instance v0, Lcom/taobao/android/runtime/OatFile$InvalidOatFileException;

    const-string v1, "The ELF section headers extend past the end of the file"

    invoke-direct {v0, v1}, Lcom/taobao/android/runtime/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3f
    aget-byte v0, p1, v3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_47

    .line 86
    iput-boolean v2, p0, Lcom/taobao/android/runtime/OatFile;->e:Z

    goto :goto_1a

    .line 88
    :cond_47
    new-instance v0, Lcom/taobao/android/runtime/OatFile$InvalidOatFileException;

    const-string v1, "Invalid word-size value: %x"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/runtime/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_5e
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/taobao/android/runtime/OatFile;->a(I)I

    move-result v2

    .line 99
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/taobao/android/runtime/OatFile;->b(I)I

    move-result v1

    .line 100
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/taobao/android/runtime/OatFile;->b(I)I

    move-result v0

    goto :goto_30

    .line 127
    :cond_71
    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/taobao/android/runtime/OatFile;
    .registers 6
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 140
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputStream must support mark"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_18

    .line 161
    :catchall_18
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 143
    :cond_1d
    const/4 v0, 0x4

    :try_start_1e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [B
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_18

    .line 146
    :try_start_24
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_24 .. :try_end_27} :catch_44
    .catchall {:try_start_24 .. :try_end_27} :catchall_4b

    .line 150
    :try_start_27
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 153
    invoke-static {v0}, Lcom/taobao/android/runtime/OatFile;->a([B)V

    .line 155
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 157
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 158
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 159
    new-instance v2, Lcom/taobao/android/runtime/OatFile;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lcom/taobao/android/runtime/OatFile;-><init>([BJ)V
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_18

    .line 161
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 159
    return-object v2

    .line 147
    :catch_44
    move-exception v0

    .line 148
    :try_start_45
    new-instance v0, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;

    invoke-direct {v0}, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;-><init>()V

    throw v0
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4b

    .line 150
    :catchall_4b
    move-exception v0

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    throw v0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_18
.end method

.method private static a([B)V
    .registers 4

    .prologue
    .line 130
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/taobao/android/runtime/OatFile;->c:[B

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 131
    aget-byte v1, p0, v0

    sget-object v2, Lcom/taobao/android/runtime/OatFile;->c:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_14

    .line 132
    new-instance v0, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;

    invoke-direct {v0}, Lcom/taobao/android/runtime/OatFile$NotAnOatFileException;-><init>()V

    throw v0

    .line 130
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_17
    return-void
.end method
