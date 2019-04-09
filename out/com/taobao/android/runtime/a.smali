.class public Lcom/taobao/android/runtime/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile g:Lcom/taobao/android/runtime/a;

.field private static h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static i:Z

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Z

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Z


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Landroid/content/SharedPreferences;

.field private f:Lcom/taobao/android/runtime/IMonitor;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static a()Lcom/taobao/android/runtime/a;
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/taobao/android/runtime/a;->g:Lcom/taobao/android/runtime/a;

    if-nez v0, :cond_13

    .line 64
    const-class v1, Lcom/taobao/android/runtime/a;

    monitor-enter v1

    .line 65
    :try_start_7
    sget-object v0, Lcom/taobao/android/runtime/a;->g:Lcom/taobao/android/runtime/a;

    if-nez v0, :cond_12

    .line 66
    new-instance v0, Lcom/taobao/android/runtime/a;

    invoke-direct {v0}, Lcom/taobao/android/runtime/a;-><init>()V

    sput-object v0, Lcom/taobao/android/runtime/a;->g:Lcom/taobao/android/runtime/a;

    .line 68
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 70
    :cond_13
    sget-object v0, Lcom/taobao/android/runtime/a;->g:Lcom/taobao/android/runtime/a;

    return-object v0

    .line 68
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2d

    .line 342
    const/16 v0, 0x2f

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 343
    if-ne v0, v3, :cond_2e

    .line 344
    const-string v0, "RuntimeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dex location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_2d
    :goto_2d
    return-object p1

    .line 347
    :cond_2e
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "oat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/taobao/android/runtime/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 362
    if-ne v2, v3, :cond_99

    .line 363
    const-string v0, "RuntimeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dex location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no extension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_8f} :catch_90

    goto :goto_2d

    .line 370
    :catch_90
    move-exception v0

    .line 371
    const-string v1, "RuntimeUtils"

    const-string v2, "Failed to get current instruction set"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 366
    :cond_99
    const/4 v3, 0x0

    :try_start_9a
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".odex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_ba} :catch_90

    move-result-object p1

    goto/16 :goto_2d
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6

    .prologue
    .line 507
    iget-object v0, p0, Lcom/taobao/android/runtime/a;->f:Lcom/taobao/android/runtime/IMonitor;

    if-eqz v0, :cond_41

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "typeID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/taobao/android/runtime/a;->f:Lcom/taobao/android/runtime/IMonitor;

    if-nez p2, :cond_42

    const/4 v0, 0x0

    :goto_3e
    invoke-interface {v2, p1, v1, v0}, Lcom/taobao/android/runtime/IMonitor;->trace(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 518
    :cond_41
    return-void

    .line 516
    :cond_42
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3e
.end method

.method public static b()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-static {}, Lcom/taobao/android/runtime/a;->d()V

    .line 299
    sget-object v0, Lcom/taobao/android/runtime/a;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_21

    .line 301
    :try_start_8
    sget-object v0, Lcom/taobao/android/runtime/a;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_14} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_14} :catch_15

    .line 308
    :goto_14
    return-object v0

    .line 304
    :catch_15
    move-exception v0

    .line 305
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 302
    :catch_20
    move-exception v0

    :cond_21
    move-object v0, v1

    .line 308
    goto :goto_14
.end method

.method private static c()V
    .registers 3

    .prologue
    .line 312
    sget-boolean v0, Lcom/taobao/android/runtime/a;->i:Z

    if-nez v0, :cond_f

    .line 314
    :try_start_4
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/runtime/a;->h:Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_c} :catch_10

    .line 318
    :goto_c
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/android/runtime/a;->i:Z

    .line 320
    :cond_f
    return-void

    .line 315
    :catch_10
    move-exception v0

    .line 316
    const-string v1, "RuntimeUtils"

    const-string v2, "Failed to retrieve VMRuntime class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private static d()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 323
    sget-boolean v0, Lcom/taobao/android/runtime/a;->k:Z

    if-nez v0, :cond_1d

    .line 325
    :try_start_5
    invoke-static {}, Lcom/taobao/android/runtime/a;->c()V

    .line 326
    sget-object v0, Lcom/taobao/android/runtime/a;->h:Ljava/lang/Class;

    const-string v1, "getCurrentInstructionSet"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 327
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/runtime/a;->j:Ljava/lang/reflect/Method;

    .line 328
    sget-object v0, Lcom/taobao/android/runtime/a;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1e

    .line 332
    :goto_1b
    sput-boolean v3, Lcom/taobao/android/runtime/a;->k:Z

    .line 334
    :cond_1d
    return-void

    .line 329
    :catch_1e
    move-exception v0

    .line 330
    const-string v1, "RuntimeUtils"

    const-string v2, "Failed to retrieve getCurrentInstructionSet method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method private e()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 408
    sget-boolean v0, Lcom/taobao/android/runtime/a;->m:Z

    if-nez v0, :cond_37

    .line 410
    :try_start_5
    const-class v0, Ldalvik/system/DexFile;

    const-string v1, "loadDex"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "[Ldalvik.system.DexPathList$Element;"

    .line 415
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 410
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/runtime/a;->l:Ljava/lang/reflect/Method;

    .line 416
    sget-object v0, Lcom/taobao/android/runtime/a;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_35} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_35} :catch_41

    .line 422
    :goto_35
    sput-boolean v5, Lcom/taobao/android/runtime/a;->m:Z

    .line 424
    :cond_37
    return-void

    .line 417
    :catch_38
    move-exception v0

    .line 418
    const-string v1, "RuntimeUtils"

    const-string v2, "Failed to retrieve dalvik.system.DexPathList.Element class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 419
    :catch_41
    move-exception v0

    .line 420
    const-string v1, "RuntimeUtils"

    const-string v2, "Failed to retrieve loadDex method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;Z)Ldalvik/system/DexFile;
    .registers 16

    .prologue
    const/4 v8, 0x1

    .line 209
    invoke-static {p2, p3}, Lcom/taobao/android/runtime/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget-boolean v0, p0, Lcom/taobao/android/runtime/a;->a:Z

    if-nez v0, :cond_15

    .line 211
    const-string v0, "RuntimeUtils"

    const-string v1, "- RuntimeUtils loadDex disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0, p2, v2, p4, p5}, Lcom/taobao/android/runtime/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;)Ldalvik/system/DexFile;

    move-result-object v0

    .line 285
    :goto_14
    return-object v0

    .line 215
    :cond_15
    iget-object v0, p0, Lcom/taobao/android/runtime/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/taobao/android/runtime/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 216
    const-string v0, "RuntimeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- RuntimeUtils loadDex disabled: sourcePathName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mExcludeDexes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/android/runtime/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0, p2, v2, p4, p5}, Lcom/taobao/android/runtime/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;)Ldalvik/system/DexFile;

    move-result-object v0

    goto :goto_14

    .line 229
    :cond_53
    sget-boolean v0, Lcom/taobao/android/runtime/d;->a:Z

    if-eqz v0, :cond_103

    .line 231
    if-eqz p6, :cond_61

    .line 232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 235
    :cond_61
    invoke-virtual {p0, v2, v8}, Lcom/taobao/android/runtime/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 236
    const/4 v0, 0x0

    .line 237
    if-nez v1, :cond_98

    .line 238
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/taobao/android/dex/interpret/ARTUtils;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 239
    const-string v1, "setIsDex2oatEnabled"

    invoke-direct {p0, v1, v0}, Lcom/taobao/android/runtime/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 240
    const-string v1, "RuntimeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- RuntimeUtils setIsDex2oatEnabled: enabled=false, success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", outputPathName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/taobao/android/dex/interpret/ARTUtils;->a()Ljava/lang/Boolean;

    move-result-object v0

    .line 251
    :cond_98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 261
    invoke-virtual {p0, p2, v2, p4, p5}, Lcom/taobao/android/runtime/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;)Ldalvik/system/DexFile;

    move-result-object v1

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    .line 264
    const-string v5, "RuntimeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- RuntimeUtils loadDex: dex2oatEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsVerificationEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 268
    invoke-static {}, Lcom/taobao/android/dex/interpret/ARTUtils;->b()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sourcePathName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", outputPathName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", elapsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-nez p6, :cond_fd

    if-eqz v0, :cond_fd

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_fd

    .line 278
    invoke-static {p1, p2, v2}, Lcom/taobao/android/runtime/Dex2OatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_fd
    invoke-static {v8}, Lcom/taobao/android/dex/interpret/ARTUtils;->a(Z)Ljava/lang/Boolean;

    move-object v0, v1

    .line 283
    goto/16 :goto_14

    .line 285
    :cond_103
    invoke-static {p2, v2, p4}, Lcom/taobao/android/runtime/DalvikUtils;->a(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    goto/16 :goto_14
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;
    .registers 13

    .prologue
    .line 204
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/android/runtime/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;Z)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;)Ldalvik/system/DexFile;
    .registers 11

    .prologue
    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3c

    .line 384
    invoke-direct {p0}, Lcom/taobao/android/runtime/a;->e()V

    .line 385
    sget-object v0, Lcom/taobao/android/runtime/a;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3c

    .line 387
    :try_start_d
    sget-object v0, Lcom/taobao/android/runtime/a;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 390
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    const-string v4, "dalvik.system.DexPathList$Element"

    .line 392
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 387
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_37} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_37} :catch_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_37} :catch_41

    .line 404
    :goto_37
    return-object v0

    .line 396
    :catch_38
    move-exception v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 404
    :cond_3c
    :goto_3c
    invoke-static {p1, p2, p3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    goto :goto_37

    .line 399
    :catch_41
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3c

    .line 394
    :catch_46
    move-exception v0

    goto :goto_3c
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/android/runtime/a;->d:Landroid/content/Context;

    .line 76
    const-string v2, "runtime"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/android/runtime/a;->e:Landroid/content/SharedPreferences;

    .line 78
    iget-object v2, p0, Lcom/taobao/android/runtime/a;->e:Landroid/content/SharedPreferences;

    const-string v3, "enabled"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/taobao/android/runtime/a;->a:Z

    .line 79
    iget-boolean v2, p0, Lcom/taobao/android/runtime/a;->a:Z

    if-nez v2, :cond_3a

    .line 80
    const-string v0, "RuntimeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- RuntimeUtils init: mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/taobao/android/runtime/a;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_39
    return-void

    .line 84
    :cond_3a
    iget-object v2, p0, Lcom/taobao/android/runtime/a;->e:Landroid/content/SharedPreferences;

    const-string v3, "excludeVersions"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/android/runtime/a;->b:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/taobao/android/runtime/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_91

    .line 87
    iget-object v2, p0, Lcom/taobao/android/runtime/a;->b:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    :goto_56
    iput-boolean v0, p0, Lcom/taobao/android/runtime/a;->a:Z

    .line 88
    iget-boolean v0, p0, Lcom/taobao/android/runtime/a;->a:Z

    if-nez v0, :cond_91

    .line 89
    const-string v0, "RuntimeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- RuntimeUtils init: mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/taobao/android/runtime/a;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", excludeVersions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/runtime/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_8f
    move v0, v1

    .line 87
    goto :goto_56

    .line 100
    :cond_91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b5

    .line 101
    const-string v0, "OPPO"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v0, v2, :cond_b5

    .line 102
    const-string v0, "RuntimeUtils"

    const-string v2, "- AndroidRuntime init: Build.VERSION.SDK_INT=23, BRAND=OPPO, is disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-boolean v1, p0, Lcom/taobao/android/runtime/a;->a:Z

    goto :goto_39

    .line 109
    :cond_b5
    const-string v0, "RuntimeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- RuntimeUtils init: mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/taobao/android/runtime/a;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/taobao/android/runtime/a;->e:Landroid/content/SharedPreferences;

    const-string v1, "excludeDexes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/runtime/a;->c:Ljava/lang/String;

    .line 113
    sget-boolean v0, Lcom/taobao/android/runtime/d;->a:Z

    if-eqz v0, :cond_104

    .line 114
    invoke-static {p1, p2}, Lcom/taobao/android/dex/interpret/ARTUtils;->a(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 119
    :goto_e5
    const-string v1, "init"

    invoke-direct {p0, v1, v0}, Lcom/taobao/android/runtime/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    const-string v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- RuntimeUtils init: success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 116
    :cond_104
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e5
.end method

.method public a(Z)V
    .registers 6

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/taobao/android/runtime/a;->a:Z

    if-nez v0, :cond_c

    .line 125
    const-string v0, "RuntimeUtils"

    const-string v1, "- RuntimeUtils setVerificationEnabled disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_b
    return-void

    .line 130
    :cond_c
    sget-boolean v0, Lcom/taobao/android/runtime/d;->a:Z

    if-eqz v0, :cond_3c

    .line 136
    invoke-static {p1}, Lcom/taobao/android/dex/interpret/ARTUtils;->b(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 181
    :goto_14
    const-string v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- RuntimeUtils setVerificationEnabled: enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v1, "setVerificationEnabled"

    invoke-direct {p0, v1, v0}, Lcom/taobao/android/runtime/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_b

    .line 177
    :cond_3c
    if-eqz p1, :cond_44

    const/4 v0, 0x3

    :goto_3f
    invoke-static {v0}, Lcom/taobao/android/runtime/DalvikUtils;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14

    :cond_44
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 438
    sget-boolean v2, Lcom/taobao/android/runtime/d;->a:Z

    if-nez v2, :cond_7

    .line 462
    :goto_6
    return v0

    .line 446
    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5f

    .line 450
    :try_start_1c
    invoke-static {v2}, Lcom/taobao/android/runtime/OatFile;->a(Ljava/io/File;)Lcom/taobao/android/runtime/OatFile;

    .line 451
    const-string v3, "RuntimeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- odexFile is valid: odexFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_38

    goto :goto_6

    .line 453
    :catch_38
    move-exception v0

    .line 454
    if-eqz p2, :cond_3e

    .line 455
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 457
    :cond_3e
    const-string v2, "loadDex"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/taobao/android/runtime/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 458
    const-string v2, "RuntimeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- odexFile is invalid: odexFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5f
    move v0, v1

    .line 462
    goto :goto_6
.end method
