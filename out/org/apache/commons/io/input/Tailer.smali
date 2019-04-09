.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_BUFSIZE:I = 0x1000

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .registers 5

    .prologue
    .line 156
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .registers 11

    .prologue
    .line 166
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .registers 13

    .prologue
    .line 177
    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .registers 15

    .prologue
    .line 201
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .registers 15

    .prologue
    .line 189
    const/16 v7, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 9

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 214
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    .line 215
    iput-wide p3, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    .line 216
    iput-boolean p5, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    .line 218
    new-array v0, p7, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 221
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 222
    invoke-interface {p2, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 223
    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 224
    return-void
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .registers 5

    .prologue
    .line 312
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .registers 5

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .registers 11

    .prologue
    .line 274
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .registers 13

    .prologue
    .line 237
    new-instance v0, Lorg/apache/commons/io/input/Tailer;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 238
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 240
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 241
    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .registers 13

    .prologue
    .line 288
    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 15

    .prologue
    .line 257
    new-instance v0, Lorg/apache/commons/io/input/Tailer;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 258
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 259
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 260
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 261
    return-object v0
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .registers 14

    .prologue
    const-wide/16 v10, 0x1

    const/4 v1, 0x0

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    move v0, v1

    move-wide v4, v2

    .line 456
    :goto_e
    iget-boolean v6, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v6, :cond_5d

    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    const/4 v6, -0x1

    if-eq v8, v6, :cond_5d

    move v6, v1

    .line 457
    :goto_1c
    if-ge v6, v8, :cond_58

    .line 458
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v9, v9, v6

    .line 459
    packed-switch v9, :pswitch_data_62

    .line 473
    :pswitch_25
    if-eqz v0, :cond_37

    .line 475
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 477
    int-to-long v2, v6

    add-long/2addr v2, v4

    add-long/2addr v2, v10

    move v0, v1

    .line 479
    :cond_37
    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 462
    :pswitch_3e
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 464
    int-to-long v2, v6

    add-long/2addr v2, v4

    add-long/2addr v2, v10

    move v0, v1

    .line 465
    goto :goto_3b

    .line 467
    :pswitch_4f
    if-eqz v0, :cond_56

    .line 468
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    :cond_56
    const/4 v0, 0x1

    .line 471
    goto :goto_3b

    .line 483
    :cond_58
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    goto :goto_e

    .line 486
    :cond_5d
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 487
    return-wide v2

    .line 459
    nop

    :pswitch_data_62
    .packed-switch 0xa
        :pswitch_3e
        :pswitch_25
        :pswitch_25
        :pswitch_4f
    .end packed-switch
.end method


# virtual methods
.method public getDelay()J
    .registers 3

    .prologue
    .line 330
    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object v0
.end method

.method public run()V
    .registers 14

    .prologue
    const-wide/16 v2, 0x0

    .line 337
    const/4 v1, 0x0

    move-wide v4, v2

    move-wide v6, v2

    .line 342
    :goto_5
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_26
    .catchall {:try_start_5 .. :try_end_7} :catchall_42

    if-eqz v0, :cond_49

    if-nez v1, :cond_49

    .line 344
    :try_start_b
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v0, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_26
    .catchall {:try_start_b .. :try_end_14} :catchall_42

    move-object v1, v0

    .line 349
    :goto_15
    if-nez v1, :cond_30

    .line 351
    :try_start_17
    iget-wide v8, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_26
    .catchall {:try_start_17 .. :try_end_1c} :catchall_42

    goto :goto_5

    .line 352
    :catch_1d
    move-exception v0

    goto :goto_5

    .line 345
    :catch_1f
    move-exception v0

    .line 346
    :try_start_20
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_42

    goto :goto_15

    .line 425
    :catch_26
    move-exception v0

    .line 427
    :goto_27
    :try_start_27
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_42

    .line 430
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    :goto_2f
    return-void

    .line 356
    :cond_30
    :try_start_30
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 357
    :goto_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 358
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_41} :catch_26
    .catchall {:try_start_30 .. :try_end_41} :catchall_42

    goto :goto_5

    .line 430
    :catchall_42
    move-exception v0

    :goto_43
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_47
    move-wide v4, v2

    .line 356
    goto :goto_3a

    .line 362
    :cond_49
    :goto_49
    :try_start_49
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v0, :cond_bc

    .line 364
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v0, v6, v7}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    .line 367
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 369
    cmp-long v10, v8, v4

    if-gez v10, :cond_7e

    .line 372
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_62} :catch_26
    .catchall {:try_start_49 .. :try_end_62} :catchall_42

    .line 378
    :try_start_62
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v0, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_6b} :catch_71
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6b} :catch_26
    .catchall {:try_start_62 .. :try_end_6b} :catchall_42

    .line 381
    :try_start_6b
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_6e} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_d1
    .catchall {:try_start_6b .. :try_end_6e} :catchall_c1

    move-wide v4, v2

    move-object v1, v0

    .line 385
    goto :goto_49

    .line 382
    :catch_71
    move-exception v0

    move-wide v11, v4

    move-object v4, v1

    move-wide v0, v11

    .line 384
    :goto_75
    :try_start_75
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v5}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7a} :catch_d7
    .catchall {:try_start_75 .. :try_end_7a} :catchall_c7

    move-wide v11, v0

    move-object v1, v4

    move-wide v4, v11

    .line 386
    goto :goto_49

    .line 392
    :cond_7e
    cmp-long v8, v8, v4

    if-lez v8, :cond_ac

    .line 395
    :try_start_82
    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 412
    :cond_8a
    :goto_8a
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v0, :cond_91

    .line 413
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_91} :catch_26
    .catchall {:try_start_82 .. :try_end_91} :catchall_42

    .line 416
    :cond_91
    :try_start_91
    iget-wide v8, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_96} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_96} :catch_26
    .catchall {:try_start_91 .. :try_end_96} :catchall_42

    .line 419
    :goto_96
    :try_start_96
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v0, :cond_e7

    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v0, :cond_e7

    .line 420
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v0, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a7} :catch_26
    .catchall {:try_start_96 .. :try_end_a7} :catchall_42

    .line 421
    :try_start_a7
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_db
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_cb

    :goto_aa
    move-object v1, v0

    .line 423
    goto :goto_49

    .line 398
    :cond_ac
    if-eqz v0, :cond_8a

    .line 404
    const-wide/16 v4, 0x0

    .line 405
    :try_start_b0
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 408
    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_ba} :catch_26
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_42

    move-result-wide v6

    goto :goto_8a

    .line 430
    :cond_bc
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_2f

    :catchall_c1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_43

    :catchall_c7
    move-exception v0

    move-object v1, v4

    goto/16 :goto_43

    :catchall_cb
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_43

    .line 425
    :catch_d1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_27

    :catch_d7
    move-exception v0

    move-object v1, v4

    goto/16 :goto_27

    :catch_db
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_27

    .line 417
    :catch_e1
    move-exception v0

    goto :goto_96

    .line 382
    :catch_e3
    move-exception v1

    move-object v4, v0

    move-wide v0, v2

    goto :goto_75

    :cond_e7
    move-object v0, v1

    goto :goto_aa
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 439
    return-void
.end method
