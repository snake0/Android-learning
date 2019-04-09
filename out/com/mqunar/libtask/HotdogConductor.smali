.class public Lcom/mqunar/libtask/HotdogConductor;
.super Lcom/mqunar/libtask/o;
.source "SourceFile"


# static fields
.field private static final n:Landroid/net/Uri;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/FormPart;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/mqunar/libtask/HttpHeader;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:[Ljava/lang/StackTraceElement;

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 564
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mqunar/libtask/HotdogConductor;->n:Landroid/net/Uri;

    return-void
.end method

.method public varargs constructor <init>([Lcom/mqunar/libtask/TaskCallback;)V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/o;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 72
    new-instance v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-direct {v0}, Lcom/mqunar/libtask/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/StackTraceElement;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 606
    .line 609
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 612
    :try_start_7
    const-string v0, "com.mqunar.core.QunarApkLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_c} :catch_d6

    move-result-object v0

    .line 616
    :goto_d
    if-eqz v0, :cond_ed

    .line 618
    :try_start_f
    const-string v3, "isSpiderClass"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 619
    const-string v3, "getPackageName"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 620
    const-string v0, "qunar_sys"

    invoke-static {p0, v0}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 621
    const-string v3, "sys_atom"

    const-string v7, "[]"

    invoke-virtual {v0, v3, v7}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mqunar/json/JsonUtils;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 622
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_43
    if-lez v3, :cond_e7

    .line 623
    aget-object v0, p1, v3

    .line 624
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 625
    const/4 v0, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v5, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 626
    if-eqz v0, :cond_122

    .line 627
    const/4 v0, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_122

    .line 629
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 630
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_73
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 631
    invoke-static {v0}, Lcom/mqunar/json/JsonUtils;->fromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 632
    const-string v10, "packageName"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_73

    .line 633
    const-string v2, "version"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 638
    :cond_9b
    if-nez v1, :cond_120

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    :goto_b4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "_"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_ce} :catch_da

    move v1, v2

    .line 622
    :goto_cf
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_43

    .line 613
    :catch_d6
    move-exception v0

    move-object v0, v1

    goto/16 :goto_d

    .line 648
    :catch_da
    move-exception v0

    .line 650
    invoke-static {}, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->a()Lcom/mqunar/libtask/ACRAErrorReporterBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->a(Ljava/lang/Throwable;)V

    .line 651
    const-string v1, "atomerror0_0"

    .line 652
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_e7
    :goto_e7
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 655
    :cond_ed
    if-eqz p0, :cond_e7

    .line 657
    :try_start_ef
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_118
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ef .. :try_end_118} :catch_119

    goto :goto_e7

    .line 661
    :catch_119
    move-exception v0

    .line 662
    const-string v1, "atomerror1_0"

    .line 663
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    :cond_120
    move-object v0, v1

    goto :goto_b4

    :cond_122
    move-object v0, v1

    move v1, v2

    goto :goto_cf
.end method

.method private a(Lcom/mqunar/libtask/HttpHeader;)Lcom/mqunar/libtask/HttpHeader;
    .registers 4

    .prologue
    .line 296
    const-string v0, "ProxyType"

    invoke-virtual {p1, v0}, Lcom/mqunar/libtask/HttpHeader;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/mqunar/libtask/HotdogConductor;->l:Z

    if-eqz v0, :cond_13

    .line 297
    const-string v0, "Pitcher-Type"

    const-string v1, "hotdog"

    invoke-virtual {p1, v0, v1}, Lcom/mqunar/libtask/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_13
    return-object p1
.end method

.method private a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 570
    const-string v6, ""

    .line 572
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/libtask/HotdogConductor;->n:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_41

    .line 575
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 576
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 577
    if-eqz v0, :cond_7a

    .line 578
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 579
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 582
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 602
    :goto_40
    return-object v0

    .line 585
    :cond_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/libtask/HotdogConductor;->n:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 586
    if-eqz v1, :cond_78

    .line 587
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 588
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_40

    .line 592
    :catch_62
    move-exception v0

    .line 594
    :try_start_63
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 596
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_74

    move-result-object v0

    goto :goto_40

    .line 598
    :catch_74
    move-exception v0

    .line 599
    const-string v0, ""

    goto :goto_40

    :cond_78
    move-object v0, v6

    goto :goto_40

    :cond_7a
    move-object v0, v6

    goto :goto_3d
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 550
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 551
    const-string v0, ""

    .line 560
    :goto_8
    return-object v0

    .line 555
    :cond_9
    :try_start_9
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v0

    goto :goto_8

    .line 556
    :catch_10
    move-exception v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 558
    const-string v0, ""

    goto :goto_8
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 531
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 532
    const-string v0, ""

    .line 542
    :goto_8
    return-object v0

    .line 536
    :cond_9
    if-nez p1, :cond_d

    :try_start_b
    const-string p1, ""

    :cond_d
    invoke-static {p0, p1}, Lqunar/lego/utils/Goblin;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_8

    .line 538
    :catch_18
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 540
    const-string v0, ""

    goto :goto_8
.end method

.method private static b()Ljava/lang/String;
    .registers 7

    .prologue
    .line 761
    const-string v1, "unknown"

    .line 763
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_96

    .line 764
    new-instance v1, Lcom/mqunar/libtask/m;

    invoke-direct {v1}, Lcom/mqunar/libtask/m;-><init>()V

    invoke-virtual {v1}, Lcom/mqunar/libtask/m;->a()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 772
    :goto_12
    const-string v1, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 774
    :try_start_1a
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 775
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 776
    const/4 v1, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "unknown"

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_47} :catch_8d

    .line 777
    :try_start_47
    const-string v2, "unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 778
    const/4 v2, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "gsm.device.sn"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "unknown"

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_65} :catch_90

    move-object v2, v1

    .line 780
    :goto_66
    :try_start_66
    const-string v1, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 781
    const/4 v1, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ril.serialnumber"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "unknown"

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_82} :catch_8d

    .line 788
    :goto_82
    const-string v2, "unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 789
    const-string v1, ""

    .line 792
    :cond_8c
    return-object v1

    .line 784
    :catch_8d
    move-exception v1

    move-object v1, v2

    goto :goto_82

    :catch_90
    move-exception v2

    goto :goto_82

    :cond_92
    move-object v1, v2

    goto :goto_82

    :cond_94
    move-object v2, v1

    goto :goto_66

    :cond_96
    move-object v2, v1

    goto/16 :goto_12
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 678
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 679
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 680
    return-object v0
.end method

.method public static buildCVwithParams(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    :try_start_7
    invoke-static {p0}, Lcom/mqunar/libtask/HotdogConductor;->cp(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 312
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getVid()Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-static {}, Lcom/mqunar/tools/DateTimeUtils;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v4, "vid"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v4, "ke"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 317
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_4f

    goto :goto_37

    .line 331
    :catch_4f
    move-exception v0

    .line 332
    const-string v2, "build cv error"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :goto_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 321
    :cond_5e
    :try_start_5e
    invoke-static {}, Lqunar/lego/utils/Goblin;->version()Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_4f

    move-result-object v0

    .line 324
    :try_start_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7d} :catch_99

    move-result-object v3

    .line 328
    :try_start_7e
    invoke-static {v2}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mqunar/libtask/HotdogConductor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    const-string v3, "c="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v2, "&v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 325
    :catch_99
    move-exception v0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "vid error or netKey error, check first !!!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_a2} :catch_4f
.end method

.method public static buildCVwithT(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    const-string v1, "t"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {p0, v0}, Lcom/mqunar/libtask/HotdogConductor;->buildCVwithParams(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()I
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 823
    .line 826
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 828
    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_c
    if-ge v2, v4, :cond_75

    aget-object v5, v3, v2

    .line 829
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.internal.os.ZygoteInit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 830
    add-int/lit8 v1, v1, 0x1

    .line 831
    const/4 v6, 0x2

    if-ne v1, v6, :cond_23

    .line 833
    add-int/lit8 v0, v0, 0x1

    .line 836
    :cond_23
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.saurik.substrate.MS$2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "invoked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 839
    add-int/lit8 v0, v0, 0x2

    .line 841
    :cond_3d
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "main"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 844
    add-int/lit8 v0, v0, 0x4

    .line 846
    :cond_57
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "handleHookedMethod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6c} :catch_74

    move-result v5

    if-eqz v5, :cond_71

    .line 849
    add-int/lit8 v0, v0, 0x8

    .line 828
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 852
    :catch_74
    move-exception v1

    .line 854
    :cond_75
    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 684
    .line 686
    if-eqz p0, :cond_37

    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 688
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 690
    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    move v1, v0

    goto :goto_1f
.end method

.method private static cp(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 339
    const-string v0, "usid"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "un"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "uid"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "osVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "gid"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getGid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "sid"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v0, "pid"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "msg"

    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v1

    invoke-interface {v1}, Lcom/mqunar/atomenv/pc/IPhoneCall;->toMsgString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v0, "cid"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, "ma"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v0, "adid"

    invoke-static {p0}, Lcom/mqunar/libtask/HotdogConductor;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, "nt"

    invoke-static {p0}, Lcom/mqunar/libtask/HotdogConductor;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v0, "mno"

    invoke-static {p0}, Lcom/mqunar/libtask/HotdogConductor;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v0, "tsv"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "resolution"

    invoke-static {p0}, Lcom/mqunar/libtask/HotdogConductor;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-static {p0}, Lcom/mqunar/libtask/HotdogConductor;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 357
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e5

    .line 358
    const-string v1, "netType"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_e5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_139

    .line 363
    const-string v0, "lt"

    const-string v3, "0"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_f7
    const-string v0, "brush"

    invoke-static {v1}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :try_start_100
    const-string v0, "qunar.sdk.location.LocationFacade"

    const-string v1, "getNewestCacheLocation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/mqunar/libtask/r;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 379
    if-eqz v0, :cond_138

    .line 380
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string v3, "lat"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_128

    const-string v1, ""

    :cond_128
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v1, "lgt"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_135

    const-string v0, ""

    :cond_135
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_138} :catch_14f

    .line 389
    :cond_138
    :goto_138
    return-object v2

    .line 365
    :cond_139
    const/4 v0, -0x1

    .line 367
    :try_start_13a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mock_location"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_144} :catch_151

    move-result v0

    .line 371
    :goto_145
    const-string v3, "lt"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    .line 385
    :catch_14f
    move-exception v0

    goto :goto_138

    .line 369
    :catch_151
    move-exception v3

    goto :goto_145
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 694
    const-string v1, "unknown"

    .line 695
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 697
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 700
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 702
    const-string v0, "wifi"

    .line 740
    :goto_1f
    return-object v0

    .line 704
    :cond_20
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_52

    .line 706
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 709
    packed-switch v0, :pswitch_data_54

    .line 731
    const-string v0, "TD-SCDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "WCDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "CDMA2000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 734
    :cond_49
    const-string v0, "2g/3g"

    goto :goto_1f

    .line 724
    :pswitch_4c
    const-string v0, "2g/3g"

    goto :goto_1f

    .line 727
    :pswitch_4f
    const-string v0, "4g"

    goto :goto_1f

    :cond_52
    move-object v0, v1

    goto :goto_1f

    .line 709
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4f
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 744
    const/4 v1, 0x0

    .line 746
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 748
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_26

    move-result-object v0

    .line 751
    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 752
    invoke-static {}, Lcom/mqunar/libtask/HotdogConductor;->b()Ljava/lang/String;

    move-result-object v0

    .line 754
    :cond_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 755
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getGid()Ljava/lang/String;

    move-result-object v0

    .line 757
    :cond_25
    return-object v0

    .line 749
    :catch_26
    move-exception v0

    move-object v0, v1

    goto :goto_d
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 804
    :cond_18
    invoke-static {p0}, Lcom/mqunar/libtask/HotdogConductor;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 806
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public beforeAdd()V
    .registers 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/mqunar/libtask/o;->beforeAdd()V

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->k:[Ljava/lang/StackTraceElement;

    .line 159
    return-void
.end method

.method protected buildResult([BJI)V
    .registers 8

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/mqunar/libtask/HotdogConductor;->l:Z

    if-eqz v0, :cond_3a

    .line 445
    invoke-static {p1}, Lqunar/lego/utils/Pitcher;->buildResult([B)[B

    move-result-object p1

    .line 453
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mqunar/libtask/HotdogConductor;->l:Z

    invoke-static {v0, p1, v1, v2}, Lcom/mqunar/libtask/s;->a(Landroid/content/Context;[BLjava/lang/String;Z)[Ljava/io/Serializable;

    move-result-object v0

    .line 454
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->resultType:Ljava/lang/Object;

    .line 455
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->result:Ljava/lang/Object;

    .line 456
    iget-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    invoke-virtual {v1}, Lcom/mqunar/libtask/TaskTrain;->getTicket()Lcom/mqunar/libtask/Ticket;

    move-result-object v1

    iget v1, v1, Lcom/mqunar/libtask/Ticket;->cacheType:I

    .line 457
    if-eqz v1, :cond_39

    .line 458
    iget-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v1, v1, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    const-string v2, "hotdog_ca"

    invoke-static {v1, v2}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v1

    .line 459
    invoke-direct {p0}, Lcom/mqunar/libtask/HotdogConductor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_39} :catch_48

    .line 464
    :cond_39
    return-void

    .line 447
    :cond_3a
    array-length v0, p1

    int-to-long v0, v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_8

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not parse result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :catch_48
    move-exception v0

    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not parse result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic cancel(Z)Z
    .registers 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 474
    if-ne p0, p1, :cond_5

    .line 487
    :cond_4
    :goto_4
    return v0

    .line 475
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 476
    :cond_13
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    move v0, v1

    goto :goto_4

    .line 478
    :cond_1b
    check-cast p1, Lcom/mqunar/libtask/HotdogConductor;

    .line 480
    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    :cond_2b
    move v0, v1

    .line 481
    goto :goto_4

    .line 480
    :cond_2d
    iget-object v2, p1, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    if-nez v2, :cond_2b

    .line 482
    :cond_31
    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    :cond_3f
    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v2, p1, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    if-nez v2, :cond_3f

    .line 483
    :cond_45
    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    iget-object v3, p1, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    :cond_53
    move v0, v1

    goto :goto_4

    :cond_55
    iget-object v2, p1, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    if-nez v2, :cond_53

    .line 484
    :cond_59
    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    :cond_67
    move v0, v1

    goto :goto_4

    :cond_69
    iget-object v2, p1, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    if-nez v2, :cond_67

    .line 485
    :cond_6d
    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_7b
    move v0, v1

    goto :goto_4

    :cond_7d
    iget-object v2, p1, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_7b
.end method

.method public bridge synthetic findCache(Z)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/HotdogConductor;->findCache(Z)[Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public findCache(Z)[Ljava/io/Serializable;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    const-string v2, "hotdog_ca"

    invoke-static {v0, v2}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 504
    invoke-direct {p0}, Lcom/mqunar/libtask/HotdogConductor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/mqunar/storage/Storage;->getSerializable(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/io/Serializable;

    .line 505
    if-eqz p1, :cond_1a

    .line 506
    if-nez v0, :cond_1b

    move-object v0, v1

    .line 517
    :cond_1a
    :goto_1a
    return-object v0

    .line 509
    :cond_1b
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->resultType:Ljava/lang/Object;

    .line 510
    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->result:Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/mqunar/libtask/HotdogConductor;->resultTotal:J

    .line 512
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lcom/mqunar/libtask/HotdogConductor;->currentLength:I

    .line 513
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_CACHE_HIT:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_CACHE_HIT:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v2, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    move-object v0, v1

    .line 515
    goto :goto_1a
.end method

.method public bridge synthetic getFormParts()Ljava/util/List;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getFormParts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginResponse()Lcom/mqunar/network/NetResponse;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getOriginResponse()Lcom/mqunar/network/NetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRespHeader()Ljava/util/Map;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getRespHeader()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mqunar/libtask/HotdogConductor;->getResult()[B

    move-result-object v0

    return-object v0
.end method

.method public getResult()[B
    .registers 2

    .prologue
    .line 468
    invoke-super {p0}, Lcom/mqunar/libtask/o;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 492
    invoke-super {p0}, Lcom/mqunar/libtask/o;->hashCode()I

    move-result v0

    .line 493
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    .line 494
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1e
    add-int/2addr v0, v2

    .line 495
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2b
    add-int/2addr v0, v2

    .line 496
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_38
    add-int/2addr v0, v2

    .line 497
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    if-eqz v2, :cond_45

    iget-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    :cond_45
    add-int/2addr v0, v1

    .line 498
    return v0

    :cond_47
    move v0, v1

    .line 493
    goto :goto_11

    :cond_49
    move v0, v1

    .line 494
    goto :goto_1e

    :cond_4b
    move v0, v1

    .line 495
    goto :goto_2b

    :cond_4d
    move v0, v1

    .line 496
    goto :goto_38
.end method

.method protected onInterceptRequest(Lcom/mqunar/network/NetRequest;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 400
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->onInterceptRequest(Lcom/mqunar/network/NetRequest;)Z

    .line 403
    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v2, v2, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mqunar/libtask/q;->a(Landroid/content/Context;Lcom/mqunar/network/NetRequest;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->m:Ljava/lang/String;

    .line 405
    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    invoke-virtual {v2}, Lcom/mqunar/libtask/TaskTrain;->getTicket()Lcom/mqunar/libtask/Ticket;

    move-result-object v2

    iget v2, v2, Lcom/mqunar/libtask/Ticket;->cacheType:I

    .line 406
    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/HotdogConductor;->findCache(Z)[Ljava/io/Serializable;

    move-result-object v3

    .line 407
    packed-switch v2, :pswitch_data_48

    .line 430
    :cond_1e
    :goto_1e
    :pswitch_1e
    return v0

    .line 410
    :pswitch_1f
    if-eqz v3, :cond_1e

    .line 413
    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->resultType:Ljava/lang/Object;

    .line 414
    aget-object v0, v3, v1

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->result:Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/mqunar/libtask/HotdogConductor;->resultTotal:J

    .line 416
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lcom/mqunar/libtask/HotdogConductor;->currentLength:I

    .line 417
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v2, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    move v0, v1

    .line 418
    goto :goto_1e

    :pswitch_45
    move v0, v1

    .line 424
    goto :goto_1e

    .line 407
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_45
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method

.method protected onInterceptResponse(Lcom/mqunar/network/NetResponse;)Z
    .registers 5

    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/mqunar/libtask/o;->onInterceptResponse(Lcom/mqunar/network/NetResponse;)Z

    .line 438
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mqunar/libtask/HotdogConductor;->getRespHeader()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mqunar/libtask/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareParams()V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 166
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&qrt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    .line 171
    :goto_29
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/HotdogConductor;->setUrl(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-static {}, Lqunar/lego/utils/Goblin;->version()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getVid()Ljava/lang/String;

    move-result-object v2

    .line 177
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/libtask/HotdogConductor;->cp(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v5

    .line 178
    const-string v0, "vid"

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "t"

    iget-object v6, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "cust"

    iget-object v6, p0, Lcom/mqunar/libtask/HotdogConductor;->f:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "cqp"

    iget-object v6, p0, Lcom/mqunar/libtask/HotdogConductor;->g:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "hk"

    invoke-direct {p0}, Lcom/mqunar/libtask/HotdogConductor;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/mqunar/libtask/HotdogConductor;->k:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v6}, Lcom/mqunar/libtask/HotdogConductor;->a(Landroid/content/Context;[Ljava/lang/StackTraceElement;)Landroid/util/Pair;

    move-result-object v6

    .line 185
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 186
    const-string v0, "catom"

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_88
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    .line 190
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 192
    aget-object v0, v6, v10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 193
    :goto_ad
    array-length v8, v6

    if-ge v0, v8, :cond_dc

    .line 194
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    aget-object v8, v6, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 169
    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?qrt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    goto/16 :goto_29

    .line 197
    :cond_dc
    const-string v0, "cas"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_e5
    const-string v0, "ke"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :try_start_ea
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    invoke-virtual {v0}, Lcom/mqunar/libtask/MsgDispatcher;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f4
    :goto_f4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskCallback;

    .line 204
    const-string v7, "com.mqunar.patch.task.PatchTaskCallback"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 206
    const-string v7, "networkListener"

    invoke-static {v0, v7}, Lcom/mqunar/libtask/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 207
    const-string v0, "fromActivityName"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v7, v8, v9}, Lcom/mqunar/libtask/r;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    if-nez v0, :cond_132

    .line 209
    const-string v0, "networkListener"

    invoke-static {v7, v0}, Lcom/mqunar/libtask/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    const-string v7, "fromActivityName"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v0, v8, v9}, Lcom/mqunar/libtask/r;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    :cond_132
    const-string v7, "ref"

    if-nez v0, :cond_138

    const-string v0, ""

    :cond_138
    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13b
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_13b} :catch_13c

    goto :goto_f4

    .line 215
    :catch_13c
    move-exception v0

    .line 219
    :cond_13d
    invoke-static {v5}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v5, "cparam"

    const-string v6, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v10

    invoke-static {v5, v6, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :try_start_14c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_167} :catch_1e9

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v2, v2, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    const-string v5, "qunar_hd"

    invoke-static {v2, v5}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v2

    const-string v5, "ext"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    iget-boolean v2, p0, Lcom/mqunar/libtask/HotdogConductor;->l:Z

    if-eqz v2, :cond_1f2

    .line 234
    invoke-static {v0}, Lcom/mqunar/libtask/HotdogConductor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/libtask/HotdogConductor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v5}, Lcom/mqunar/libtask/HotdogConductor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v11

    .line 243
    :goto_190
    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor;->d:Ljava/util/List;

    invoke-static {v3}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_251

    .line 244
    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor;->d:Ljava/util/List;

    new-instance v5, Lcom/mqunar/libtask/FormPart;

    const-string v6, "c"

    invoke-direct {v5, v6, v1}, Lcom/mqunar/libtask/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->d:Ljava/util/List;

    new-instance v3, Lcom/mqunar/libtask/FormPart;

    const-string v5, "b"

    invoke-direct {v3, v5, v0}, Lcom/mqunar/libtask/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->d:Ljava/util/List;

    new-instance v1, Lcom/mqunar/libtask/FormPart;

    const-string v3, "v"

    invoke-direct {v1, v3, v4}, Lcom/mqunar/libtask/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_205

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 248
    iget-object v4, p0, Lcom/mqunar/libtask/HotdogConductor;->d:Ljava/util/List;

    new-instance v5, Lcom/mqunar/libtask/FormPart;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lcom/mqunar/libtask/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c6

    .line 225
    :catch_1e9
    move-exception v0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vid error or netKey error, check first !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1f2
    invoke-static {v0, v1}, Lcom/mqunar/libtask/HotdogConductor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mqunar/libtask/HotdogConductor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v5, v3}, Lcom/mqunar/libtask/HotdogConductor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v11

    goto :goto_190

    .line 250
    :cond_205
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->d:Ljava/util/List;

    new-instance v1, Lcom/mqunar/libtask/FormPart;

    const-string v3, "ext"

    invoke-direct {v1, v3, v2}, Lcom/mqunar/libtask/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/HotdogConductor;->setFormParts(Ljava/util/List;)V

    .line 271
    :goto_216
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/HotdogConductor;->setReqHeader(Lcom/mqunar/libtask/HttpHeader;)V

    .line 273
    iget-boolean v0, p0, Lcom/mqunar/libtask/HotdogConductor;->l:Z

    if-eqz v0, :cond_324

    .line 275
    invoke-virtual {p0}, Lcom/mqunar/libtask/HotdogConductor;->getFormParts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_325

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-virtual {p0}, Lcom/mqunar/libtask/HotdogConductor;->getFormParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_232
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/FormPart;

    .line 278
    iget-object v3, v0, Lcom/mqunar/libtask/FormPart;->value:Ljava/lang/String;

    if-nez v3, :cond_2c9

    .line 279
    new-instance v3, Lqunar/lego/utils/FormPart;

    iget-object v4, v0, Lcom/mqunar/libtask/FormPart;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/mqunar/libtask/FormPart;->file:Ljava/lang/String;

    iget-object v0, v0, Lcom/mqunar/libtask/FormPart;->metaData:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_232

    .line 253
    :cond_251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    const-string v5, "&c="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, "&b="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-boolean v0, p0, Lcom/mqunar/libtask/HotdogConductor;->l:Z

    if-nez v0, :cond_275

    .line 258
    const-string v0, "&v="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_275
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27f

    .line 266
    :cond_2a8
    const-string v0, "&ext="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v0, "request"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/HotdogConductor;->setContent([B)V

    goto/16 :goto_216

    .line 281
    :cond_2c9
    new-instance v3, Lqunar/lego/utils/FormPart;

    iget-object v4, v0, Lcom/mqunar/libtask/FormPart;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/mqunar/libtask/FormPart;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_232

    .line 283
    :cond_2d7
    new-instance v0, Lqunar/lego/utils/Pitcher;

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v2, v2, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mqunar/libtask/HotdogConductor;->getUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lqunar/lego/utils/HttpHeader;

    invoke-virtual {p0}, Lcom/mqunar/libtask/HotdogConductor;->getReqHeader()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lqunar/lego/utils/HttpHeader;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v2, v3, v1, v4}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)V

    .line 288
    :goto_2ed
    new-instance v1, Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->getReqHeader()Lqunar/lego/utils/HttpHeader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mqunar/libtask/HttpHeader;-><init>(Lqunar/lego/utils/HttpHeader;)V

    invoke-direct {p0, v1}, Lcom/mqunar/libtask/HotdogConductor;->a(Lcom/mqunar/libtask/HttpHeader;)Lcom/mqunar/libtask/HttpHeader;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/libtask/HotdogConductor;->setReqHeader(Lcom/mqunar/libtask/HttpHeader;)V

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->getProxyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?qrt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/libtask/HotdogConductor;->setUrl(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->getContent()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/HotdogConductor;->setContent([B)V

    .line 292
    :cond_324
    return-void

    .line 285
    :cond_325
    new-instance v0, Lqunar/lego/utils/Pitcher;

    iget-object v1, p0, Lcom/mqunar/libtask/HotdogConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    iget-object v1, v1, Lcom/mqunar/libtask/TaskTrain;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mqunar/libtask/HotdogConductor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mqunar/libtask/HotdogConductor;->getContent()[B

    move-result-object v3

    new-instance v4, Lqunar/lego/utils/HttpHeader;

    invoke-virtual {p0}, Lcom/mqunar/libtask/HotdogConductor;->getReqHeader()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lqunar/lego/utils/HttpHeader;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;[BLqunar/lego/utils/HttpHeader;)V

    goto :goto_2ed
.end method

.method public sameAs(Lcom/mqunar/libtask/AbsConductor;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mqunar/libtask/AbsConductor;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 145
    instance-of v1, p1, Lcom/mqunar/libtask/HotdogConductor;

    if-nez v1, :cond_6

    .line 152
    :cond_5
    :goto_5
    return v0

    .line 148
    :cond_6
    check-cast p1, Lcom/mqunar/libtask/HotdogConductor;

    iget-object v1, p1, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 150
    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    .line 152
    :cond_12
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public setCqp(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 814
    iput-object p1, p0, Lcom/mqunar/libtask/HotdogConductor;->g:Ljava/lang/String;

    .line 815
    return-void
.end method

.method public setCust(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 811
    iput-object p1, p0, Lcom/mqunar/libtask/HotdogConductor;->f:Ljava/lang/String;

    .line 812
    return-void
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/HotdogConductor;->initParam([Ljava/lang/Object;)V

    .line 103
    if-eqz p1, :cond_94

    .line 105
    const/4 v0, -0x1

    .line 106
    :goto_7
    :try_start_7
    array-length v3, p1

    add-int/lit8 v2, v0, 0x1

    if-le v3, v2, :cond_6f

    .line 107
    aget-object v0, p1, v2

    .line 108
    if-nez v2, :cond_16

    .line 109
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->a:Ljava/lang/String;

    :cond_14
    :goto_14
    move v0, v2

    .line 130
    goto :goto_7

    .line 110
    :cond_16
    if-ne v2, v1, :cond_26

    .line 111
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->c:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    goto :goto_14

    .line 136
    :catch_1d
    move-exception v0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input params must be String,String,String,Map,boolean,Map,List"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_26
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    .line 113
    :try_start_29
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    goto :goto_14

    .line 114
    :cond_2e
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4d

    .line 115
    if-eqz v0, :cond_3f

    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_3f

    .line 116
    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Ljava/util/Map;)V

    goto :goto_14

    .line 117
    :cond_3f
    if-eqz v0, :cond_14

    instance-of v3, v0, Lcom/mqunar/libtask/HttpHeader;

    if-eqz v3, :cond_14

    .line 118
    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor;->i:Lcom/mqunar/libtask/HttpHeader;

    check-cast v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v3, v0}, Lcom/mqunar/libtask/HttpHeader;->addHeaders(Lcom/mqunar/libtask/HttpHeader;)V

    goto :goto_14

    .line 120
    :cond_4d
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5a

    .line 121
    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->b:Ljava/lang/String;

    :goto_54
    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->h:Ljava/lang/String;

    goto :goto_14

    :cond_57
    check-cast v0, Ljava/lang/String;

    goto :goto_54

    .line 122
    :cond_5a
    const/4 v3, 0x5

    if-ne v2, v3, :cond_67

    .line 123
    check-cast v0, Ljava/util/Map;

    .line 124
    if-eqz v0, :cond_14

    .line 125
    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_14

    .line 127
    :cond_67
    const/4 v3, 0x6

    if-ne v2, v3, :cond_14

    .line 128
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->d:Ljava/util/List;

    goto :goto_14

    .line 132
    :cond_6f
    iget-boolean v0, p0, Lcom/mqunar/libtask/HotdogConductor;->l:Z

    if-nez v0, :cond_86

    .line 133
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->j:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    move v0, v1

    :goto_84
    iput-boolean v0, p0, Lcom/mqunar/libtask/HotdogConductor;->l:Z

    .line 135
    :cond_86
    invoke-static {}, Lcom/mqunar/tools/DateTimeUtils;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor;->e:Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_94} :catch_1d

    .line 141
    :cond_94
    return-void

    .line 133
    :cond_95
    const/4 v0, 0x0

    goto :goto_84
.end method

.method public setProxy(Z)V
    .registers 2

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mqunar/libtask/HotdogConductor;->l:Z

    .line 88
    return-void
.end method
