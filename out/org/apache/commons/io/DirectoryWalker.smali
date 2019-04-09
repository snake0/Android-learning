.class public abstract Lorg/apache/commons/io/DirectoryWalker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final depthLimit:I

.field private final filter:Ljava/io/FileFilter;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 266
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/DirectoryWalker;-><init>(Ljava/io/FileFilter;I)V

    .line 267
    return-void
.end method

.method protected constructor <init>(Ljava/io/FileFilter;I)V
    .registers 3

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 283
    iput p2, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 284
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V
    .registers 8

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 310
    :goto_a
    iput p3, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 311
    return-void

    .line 304
    :cond_d
    if-eqz p1, :cond_29

    .line 305
    :goto_f
    if-eqz p2, :cond_2c

    .line 306
    :goto_11
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeDirectoryOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    .line 307
    invoke-static {p2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeFileOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    .line 308
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    goto :goto_a

    .line 304
    :cond_29
    sget-object p1, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_f

    .line 305
    :cond_2c
    sget-object p2, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_11
.end method

.method private walk(Ljava/io/File;ILjava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 352
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 353
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V

    .line 354
    add-int/lit8 v1, p2, 0x1

    .line 355
    iget v0, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-ltz v0, :cond_16

    iget v0, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-gt v1, v0, :cond_2a

    .line 356
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 357
    iget-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    if-nez v0, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 358
    :goto_21
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/DirectoryWalker;->filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 359
    if-nez v2, :cond_38

    .line 360
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleRestricted(Ljava/io/File;ILjava/util/Collection;)V

    .line 373
    :cond_2a
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V

    .line 375
    :cond_2d
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 376
    return-void

    .line 357
    :cond_31
    iget-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_21

    .line 362
    :cond_38
    array-length v3, v2

    const/4 v0, 0x0

    :goto_3a
    if-ge v0, v3, :cond_2a

    aget-object v4, v2, v0

    .line 363
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 364
    invoke-direct {p0, v4, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 362
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 366
    :cond_4a
    invoke-virtual {p0, v4, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 367
    invoke-virtual {p0, v4, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleFile(Ljava/io/File;ILjava/util/Collection;)V

    .line 368
    invoke-virtual {p0, v4, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    goto :goto_47
.end method


# virtual methods
.method protected final checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 395
    new-instance v0, Lorg/apache/commons/io/DirectoryWalker$CancelException;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker$CancelException;-><init>(Ljava/io/File;I)V

    throw v0

    .line 397
    :cond_c
    return-void
.end method

.method protected filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;
    .registers 4

    .prologue
    .line 520
    return-object p3
.end method

.method protected handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lorg/apache/commons/io/DirectoryWalker$CancelException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 456
    throw p3
.end method

.method protected handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method protected handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 563
    return-void
.end method

.method protected handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 505
    return-void
.end method

.method protected handleEnd(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 575
    return-void
.end method

.method protected handleFile(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 535
    return-void
.end method

.method protected handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRestricted(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 549
    return-void
.end method

.method protected handleStart(Ljava/io/File;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 471
    return-void
.end method

.method protected final walk(Ljava/io/File;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 330
    if-nez p1, :cond_a

    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Start Directory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleStart(Ljava/io/File;Ljava/util/Collection;)V

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 336
    invoke-virtual {p0, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleEnd(Ljava/util/Collection;)V
    :try_end_14
    .catch Lorg/apache/commons/io/DirectoryWalker$CancelException; {:try_start_a .. :try_end_14} :catch_15

    .line 340
    :goto_14
    return-void

    .line 337
    :catch_15
    move-exception v0

    .line 338
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/DirectoryWalker;->handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V

    goto :goto_14
.end method
