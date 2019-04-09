.class final Lcom/mqunar/module/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 384
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/module/a;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20

    .prologue
    .line 397
    const-string v2, "filePath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 398
    const-string v2, "preFilepPath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 400
    const-string v2, "scheme"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 402
    :try_start_18
    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v2}, Lcom/mqunar/module/Modules;->mapCopy()Ljava/util/Map;

    move-result-object v10

    .line 404
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cc

    move-object v6, v7

    .line 405
    :goto_25
    const/4 v5, 0x0

    .line 407
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 408
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 409
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 410
    iget-object v4, v2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 412
    iget-object v3, v2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    const/4 v4, 0x1

    iput v4, v3, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    move-object v5, v2

    .line 416
    :cond_4e
    const/4 v2, 0x0

    .line 417
    if-nez v5, :cond_3c1

    .line 418
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 420
    if-eqz v11, :cond_db

    .line 421
    const/4 v2, 0x0

    move v4, v2

    :goto_62
    array-length v2, v11

    if-ge v4, v2, :cond_db

    .line 422
    aget-object v2, v11, v4

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 423
    aget-object v2, v11, v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 425
    const/4 v3, 0x0

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mqunar/module/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3be

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 427
    iget-object v2, v2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 428
    const/4 v2, 0x1

    .line 432
    :goto_91
    if-nez v2, :cond_c8

    .line 433
    const/4 v3, 0x0

    .line 434
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3bb

    .line 435
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 436
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 437
    iget-object v14, v2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_b3} :catch_d4

    move-result v14

    if-eqz v14, :cond_9c

    .line 444
    :goto_b6
    if-nez v2, :cond_c8

    .line 446
    :try_start_b8
    invoke-static {v12}, Lcom/mqunar/core/ModuleParser;->parseModuleDependency(Ljava/lang/String;)Lcom/mqunar/module/ModuleInfo;
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_bb} :catch_cf

    move-result-object v2

    .line 450
    :goto_bc
    if-eqz v2, :cond_c8

    .line 451
    const/4 v3, 0x1

    :try_start_bf
    iput-boolean v3, v2, Lcom/mqunar/module/ModuleInfo;->isDataFile:Z

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mqunar/module/a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_c8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_62

    :cond_cc
    move-object v6, v8

    .line 404
    goto/16 :goto_25

    .line 447
    :catch_cf
    move-exception v3

    .line 448
    invoke-static {v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_d3} :catch_d4

    goto :goto_bc

    .line 671
    :catch_d4
    move-exception v2

    .line 672
    const-string v3, "parse error in onReceive"

    invoke-static {v2, v3}, Lcom/mqunar/tools/log/QLog;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 675
    :cond_da
    :goto_da
    return-void

    .line 462
    :cond_db
    :try_start_db
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 463
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mqunar/module/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ed
    :goto_ed
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 466
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v12, v2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v12, v12, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v13, -0x16

    if-eq v12, v13, :cond_ed

    .line 468
    iget-object v2, v2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    const/4 v12, 0x0

    iput v12, v2, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    goto :goto_ed

    .line 472
    :cond_10a
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_112
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 473
    iget-object v10, v2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    const/4 v12, 0x1

    iput v12, v10, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    .line 474
    iget-boolean v10, v2, Lcom/mqunar/module/ModuleInfo;->isDataFile:Z

    if-eqz v10, :cond_12b

    .line 475
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_112

    .line 477
    :cond_12b
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_112

    .line 482
    :cond_12f
    invoke-static {v4}, Lcom/mqunar/module/ModuleInfoController;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 485
    new-instance v12, Lcom/mqunar/module/c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/mqunar/module/c;-><init>(Lcom/mqunar/module/a;Landroid/content/Context;)V

    .line 491
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 494
    :cond_141
    const/4 v3, 0x1

    .line 495
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_146
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_163

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/core/dependency/AtomNode;

    .line 496
    invoke-virtual {v2}, Lcom/mqunar/core/dependency/AtomNode;->needCheck()Z

    move-result v15

    if-eqz v15, :cond_160

    .line 497
    const/4 v3, 0x0

    .line 498
    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->b()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15, v11, v10, v12}, Lcom/mqunar/core/dependency/AtomNode;->getCanLoadDependency([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/mqunar/core/dependency/AtomNode$DeleteSoCallback;)Lcom/mqunar/module/ModuleInfo;

    :cond_160
    move v2, v3

    move v3, v2

    .line 500
    goto :goto_146

    .line 501
    :cond_163
    if-eqz v3, :cond_141

    .line 506
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_169
    :goto_169
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_183

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/core/dependency/AtomNode;

    .line 507
    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->b()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14, v11, v10, v12}, Lcom/mqunar/core/dependency/AtomNode;->getCanLoadDependency([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/mqunar/core/dependency/AtomNode$DeleteSoCallback;)Lcom/mqunar/module/ModuleInfo;

    move-result-object v2

    .line 508
    if-eqz v2, :cond_169

    .line 509
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_169

    .line 513
    :cond_183
    const/4 v3, 0x0

    .line 514
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_188
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 515
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mqunar/module/a;->a:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_19b
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_19b} :catch_d4

    .line 517
    :try_start_19b
    invoke-static {v2}, Lcom/mqunar/module/ModuleInfoController;->a(Lcom/mqunar/module/ModuleInfo;)V

    .line 518
    const/4 v3, 0x1

    .line 519
    sget-object v11, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v11, v2}, Lcom/mqunar/module/Modules;->put(Lcom/mqunar/module/ModuleInfo;)V
    :try_end_1a4
    .catch Ljava/lang/Throwable; {:try_start_19b .. :try_end_1a4} :catch_1a7

    move v2, v3

    :goto_1a5
    move v3, v2

    .line 523
    goto :goto_188

    .line 520
    :catch_1a7
    move-exception v2

    move-object/from16 v16, v2

    move v2, v3

    move-object/from16 v3, v16

    .line 521
    :try_start_1ad
    const-string v11, "update error"

    invoke-static {v3, v11}, Lcom/mqunar/tools/log/QLog;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1a5

    .line 525
    :cond_1b3
    if-eqz v3, :cond_1b8

    .line 526
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->onRegisterOk()V

    .line 529
    :cond_1b8
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23e

    .line 531
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    invoke-static/range {p1 .. p1}, Lcom/mqunar/core/QunarApkLoader;->getDexCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 534
    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v2}, Lcom/mqunar/module/Modules;->mapCopy()Ljava/util/Map;

    move-result-object v11

    .line 535
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1d5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21a

    .line 536
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 539
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    new-instance v14, Ljava/io/File;

    iget-object v15, v2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v13}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    .line 541
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v14, v2, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    if-eqz v14, :cond_1d5

    .line 545
    iget-object v2, v2, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_204
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo$DexInfo;

    .line 546
    iget-object v2, v2, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-static {v2, v13}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_204

    .line 552
    :cond_21a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 554
    if-eqz v10, :cond_23e

    array-length v2, v10

    if-lez v2, :cond_23e

    .line 555
    array-length v11, v10

    const/4 v2, 0x0

    :goto_22a
    if-ge v2, v11, :cond_23e

    aget-object v12, v10, v2

    .line 556
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_23b

    .line 557
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 555
    :cond_23b
    add-int/lit8 v2, v2, 0x1

    goto :goto_22a

    .line 563
    :cond_23e
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b8

    .line 564
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_248
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 565
    iget-object v10, v2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_248

    move-object v3, v2

    .line 572
    :goto_25d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_261
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 573
    iget-object v2, v2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v2, v2, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v6, -0x16

    if-ne v2, v6, :cond_261

    .line 574
    new-instance p2, Landroid/content/Intent;

    const-string v2, "com.mqunar.spider.MESSAGE_NEED_KILL_PROCESS"

    move-object/from16 v0, p2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-static/range {p1 .. p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-object v2, v4

    .line 582
    :goto_288
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_da

    .line 583
    const-string v4, "bundle"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 584
    new-instance v6, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 585
    if-eqz v5, :cond_2a6

    .line 586
    invoke-virtual {v6, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 588
    :cond_2a6
    const/high16 v4, 0x10000000

    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 590
    if-nez v3, :cond_2b9

    .line 592
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v2, v3}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto/16 :goto_da

    .line 594
    :cond_2b9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    iget-object v4, v3, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v4, v4, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/4 v10, 0x1

    if-eq v4, v10, :cond_2cf

    iget-object v4, v3, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v4, v4, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v10, -0x16

    if-ne v4, v10, :cond_2d6

    .line 597
    :cond_2cf
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/mqunar/dispatcher/DispatcherLogic;->processIntentNotLog(Ljava/lang/Object;Landroid/content/Intent;)V

    goto/16 :goto_da

    .line 605
    :cond_2d6
    iget-object v4, v3, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v4, v4, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v10, -0xa

    if-eq v4, v10, :cond_2e6

    iget-object v4, v3, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v4, v4, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v10, -0xb

    if-ne v4, v10, :cond_2f2

    .line 607
    :cond_2e6
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v2, v3}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto/16 :goto_da

    .line 609
    :cond_2f2
    new-instance v10, Ljava/util/HashSet;

    const/4 v4, 0x1

    invoke-direct {v10, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 610
    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->getMInfoList()Ljava/util/List;

    move-result-object v11

    .line 612
    iget-object v3, v3, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    invoke-virtual {v3, v2}, Lcom/mqunar/core/dependency/Dependency;->getFailAtomList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 614
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_306
    :goto_306
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_361

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/core/dependency/Atom;

    .line 615
    const/4 v4, 0x0

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mqunar/module/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_31b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mqunar/module/ModuleInfo;

    .line 617
    iget-object v3, v3, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v3, v3, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    iget-object v14, v2, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31b

    .line 618
    const/4 v3, 0x1

    .line 622
    :goto_334
    if-nez v3, :cond_306

    sget-object v3, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    iget-object v4, v2, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mqunar/module/Modules;->hasItem(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_306

    .line 624
    const/4 v4, 0x0

    .line 625
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_345
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mqunar/module/MInfo;

    .line 626
    iget-object v14, v3, Lcom/mqunar/module/MInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_345

    .line 632
    :goto_35b
    if-eqz v3, :cond_306

    .line 633
    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_306

    .line 639
    :cond_361
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_373

    .line 641
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v2, v3}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto/16 :goto_da

    .line 643
    :cond_373
    const-string v2, "com.mqunar.spider.MESSAGE_INSTRUCTION_MINFO_SERVER"

    .line 645
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-static {v10}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 648
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 649
    const-string v6, "command"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v2, "scheme"

    invoke-virtual {v4, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3ab

    .line 652
    const-string v2, "preFilepPath"

    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :goto_398
    if-eqz v5, :cond_39f

    .line 657
    const-string v2, "bundle"

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 659
    :cond_39f
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 661
    invoke-static/range {p1 .. p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_da

    .line 654
    :cond_3ab
    const-string v2, "preFilepPath"

    invoke-virtual {v4, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b0
    .catch Ljava/lang/Throwable; {:try_start_1ad .. :try_end_3b0} :catch_d4

    goto :goto_398

    :cond_3b1
    move-object v3, v4

    goto :goto_35b

    :cond_3b3
    move v3, v4

    goto :goto_334

    :cond_3b5
    move-object v2, v4

    goto/16 :goto_288

    :cond_3b8
    move-object v3, v5

    goto/16 :goto_25d

    :cond_3bb
    move-object v2, v3

    goto/16 :goto_b6

    :cond_3be
    move v2, v3

    goto/16 :goto_91

    :cond_3c1
    move-object v3, v5

    goto/16 :goto_288
.end method

.method static synthetic a(Lcom/mqunar/module/a;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Lcom/mqunar/module/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 388
    new-instance v0, Lcom/mqunar/module/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/mqunar/module/b;-><init>(Lcom/mqunar/module/a;Landroid/content/Context;Landroid/content/Intent;)V

    .line 393
    invoke-virtual {v0}, Lcom/mqunar/module/b;->start()V

    .line 394
    return-void
.end method
