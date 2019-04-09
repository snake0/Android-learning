.class public final Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static f:Lorg/acra/c/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public static g:Ljava/lang/String;

.field private static h:Landroid/app/Application;

.field private static i:Lorg/acra/config/ACRAConfiguration;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static j:Lorg/acra/ErrorReporter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static k:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static l:Lorg/acra/ErrorReporter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput v0, Lorg/acra/ACRA;->a:I

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lorg/acra/ACRA;->b:Z

    .line 71
    const-class v0, Lorg/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->e:Ljava/lang/String;

    .line 74
    new-instance v0, Lorg/acra/c/b;

    invoke-direct {v0}, Lorg/acra/c/b;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    .line 234
    const-string v0, ""

    sput-object v0, Lorg/acra/ACRA;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 474
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/proc/self/cmdline"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/acra/util/g;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 476
    :goto_f
    return-object v0

    .line 475
    :catch_10
    move-exception v0

    .line 476
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 210
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    const-string v2, "vid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v3, "cid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 214
    const-string v3, "cid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->d:Ljava/lang/String;

    .line 217
    :cond_21
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 218
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C\u53c2\u6570pid\u4e0d\u7b26\u5408\u8981\u6c42 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_42
    return-object v0

    .line 220
    :cond_43
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 221
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C\u53c2\u6570vid\u4e0d\u7b26\u5408\u8981\u6c42 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 225
    :cond_65
    sput-object v2, Lorg/acra/ACRA;->c:Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_69

    .line 230
    const/4 v0, 0x0

    goto :goto_42

    .line 226
    :catch_69
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C\u53c2\u6570\u683c\u5f0f\u9519\u8bef "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42
.end method

.method public static a(I)V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 185
    packed-switch p0, :pswitch_data_10

    .line 198
    :goto_4
    return-void

    .line 187
    :pswitch_5
    const/4 v0, 0x0

    sput-boolean v0, Lorg/acra/ACRA;->b:Z

    goto :goto_4

    .line 190
    :pswitch_9
    sput-boolean v0, Lorg/acra/ACRA;->b:Z

    goto :goto_4

    .line 193
    :pswitch_c
    sput-boolean v0, Lorg/acra/ACRA;->b:Z

    goto :goto_4

    .line 185
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private static a(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;)V
    .registers 7
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/acra/ACRA;->a(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Z)V

    .line 336
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->monitorNativeCrash()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 338
    :try_start_a
    const-string v0, "native_monitor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 340
    new-instance v0, Lorg/acra/ne/NativeExceptionHandler;

    invoke-direct {v0}, Lorg/acra/ne/NativeExceptionHandler;-><init>()V

    invoke-virtual {v0, p0}, Lorg/acra/ne/NativeExceptionHandler;->a(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_17} :catch_26

    .line 347
    :cond_17
    :goto_17
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->monitorANR()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 349
    :try_start_1d
    new-instance v0, Lorg/acra/anr/b;

    invoke-direct {v0}, Lorg/acra/anr/b;-><init>()V

    .line 350
    invoke-virtual {v0, p0}, Lorg/acra/anr/b;->a(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_25} :catch_46

    .line 355
    :cond_25
    :goto_25
    return-void

    .line 341
    :catch_26
    move-exception v0

    .line 342
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init native crash monitor is failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 351
    :catch_46
    move-exception v0

    .line 352
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init ANR monitor is failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private static a(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Z)V
    .registers 10
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_22

    move v5, v6

    .line 372
    :goto_9
    if-nez v5, :cond_14

    .line 374
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "ACRA 4.7.0+ requires HONEYCOMB or greater. ACRA is disabled and will NOT catch crashes or send messages."

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_14
    sget-object v0, Lorg/acra/ACRA;->h:Landroid/app/Application;

    if-eqz v0, :cond_24

    .line 378
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "ACRA#init called more than once. Won\'t do anything more."

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_21
    return-void

    :cond_22
    move v5, v4

    .line 371
    goto :goto_9

    .line 381
    :cond_24
    sput-object p0, Lorg/acra/ACRA;->h:Landroid/app/Application;

    .line 384
    if-nez p1, :cond_32

    .line 385
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "ACRA#init called but no ACRAConfiguration provided"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 388
    :cond_32
    sput-object p1, Lorg/acra/ACRA;->i:Lorg/acra/config/ACRAConfiguration;

    .line 391
    new-instance v0, Lorg/acra/d/b;

    sget-object v1, Lorg/acra/ACRA;->h:Landroid/app/Application;

    sget-object v2, Lorg/acra/ACRA;->i:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/d/b;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v0}, Lorg/acra/d/b;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 413
    if-eqz v5, :cond_4a

    invoke-static {v3}, Lorg/acra/ACRA;->b(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_4a

    move v4, v6

    .line 415
    :cond_4a
    new-instance v0, Lorg/acra/ErrorReporter;

    sget-object v1, Lorg/acra/ACRA;->h:Landroid/app/Application;

    sget-object v2, Lorg/acra/ACRA;->i:Lorg/acra/config/ACRAConfiguration;

    invoke-direct/range {v0 .. v6}, Lorg/acra/ErrorReporter;-><init>(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;ZZZ)V

    sput-object v0, Lorg/acra/ACRA;->j:Lorg/acra/ErrorReporter;

    .line 419
    if-eqz p2, :cond_75

    .line 420
    new-instance v0, Lorg/acra/util/e;

    sget-object v1, Lorg/acra/ACRA;->h:Landroid/app/Application;

    invoke-direct {v0, v1, p1}, Lorg/acra/util/e;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    .line 421
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 422
    invoke-virtual {v0}, Lorg/acra/util/e;->a()V

    .line 424
    :cond_67
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 425
    invoke-virtual {v0}, Lorg/acra/util/e;->b()V

    .line 427
    :cond_70
    if-eqz v4, :cond_75

    .line 428
    invoke-virtual {v0}, Lorg/acra/util/e;->c()V

    .line 435
    :cond_75
    new-instance v0, Lorg/acra/ACRA$1;

    invoke-direct {v0}, Lorg/acra/ACRA$1;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->k:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 449
    sget-object v0, Lorg/acra/ACRA;->k:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_21
.end method

.method static synthetic a(Landroid/content/SharedPreferences;)Z
    .registers 2

    .prologue
    .line 54
    invoke-static {p0}, Lorg/acra/ACRA;->b(Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/SharedPreferences;)Z
    .registers 5
    .param p0    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 514
    .line 516
    :try_start_2
    const-string v2, "acra.enable"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 517
    const-string v3, "acra.disable"

    if-nez v2, :cond_12

    :goto_d
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_14

    move-result v0

    .line 521
    :goto_11
    return v0

    :cond_12
    move v1, v0

    .line 517
    goto :goto_d

    .line 518
    :catch_14
    move-exception v1

    goto :goto_11
.end method

.method public static getErrorReporter()Lorg/acra/ErrorReporter;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lorg/acra/ACRA;->j:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_1d

    .line 490
    sget-object v0, Lorg/acra/ACRA;->l:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_17

    .line 491
    const-class v1, Lorg/acra/ACRA;

    monitor-enter v1

    .line 492
    :try_start_b
    sget-object v0, Lorg/acra/ACRA;->l:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_16

    .line 493
    new-instance v0, Lorg/acra/ErrorReporter;

    invoke-direct {v0}, Lorg/acra/ErrorReporter;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->l:Lorg/acra/ErrorReporter;

    .line 495
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1a

    .line 497
    :cond_17
    sget-object v0, Lorg/acra/ACRA;->l:Lorg/acra/ErrorReporter;

    .line 500
    :goto_19
    return-object v0

    .line 495
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0

    .line 500
    :cond_1d
    sget-object v0, Lorg/acra/ACRA;->j:Lorg/acra/ErrorReporter;

    goto :goto_19
.end method

.method public static init(Landroid/app/Application;ILjava/lang/String;)Z
    .registers 9
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 242
    :try_start_1
    new-instance v0, Lorg/acra/config/b;

    invoke-direct {v0, p0}, Lorg/acra/config/b;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0}, Lorg/acra/config/b;->a()Lorg/acra/config/ACRAConfiguration;
    :try_end_9
    .catch Lorg/acra/config/a; {:try_start_1 .. :try_end_9} :catch_29

    move-result-object v2

    .line 249
    invoke-static {p2}, Lorg/acra/ACRA;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_4a

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff0cACRA\u521d\u59cb\u5316\u5931\u8d25\uff01\uff01\uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :catch_29
    move-exception v0

    .line 244
    sget-object v2, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuration Error - ACRA not started : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/acra/config/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 279
    :goto_49
    return v0

    .line 255
    :cond_4a
    new-instance v0, Lorg/acra/util/c;

    invoke-direct {v0}, Lorg/acra/util/c;-><init>()V

    invoke-virtual {v0, p0}, Lorg/acra/util/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->monitorAllProcess()Z

    move-result v0

    if-nez v0, :cond_77

    .line 256
    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->monitorProcess()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_63

    move v0, v1

    .line 257
    goto :goto_49

    .line 258
    :cond_63
    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->monitorProcess()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lorg/acra/util/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    move v0, v1

    .line 259
    goto :goto_49

    .line 263
    :cond_77
    sput p1, Lorg/acra/ACRA;->a:I

    .line 265
    sget v0, Lorg/acra/ACRA;->a:I

    invoke-static {v0}, Lorg/acra/ACRA;->a(I)V

    .line 268
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->g:Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/annotation/ReportsCrashes;

    .line 271
    if-nez v0, :cond_b2

    .line 272
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACRA#init(Application) called but no ReportsCrashes annotation on Application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 273
    goto :goto_49

    .line 276
    :cond_b2
    invoke-static {p0, v2}, Lorg/acra/ACRA;->a(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;)V

    .line 279
    const/4 v0, 0x1

    goto :goto_49
.end method

.method public static isACRASenderServiceProcess()Z
    .registers 5

    .prologue
    .line 465
    invoke-static {}, Lorg/acra/ACRA;->a()Ljava/lang/String;

    move-result-object v0

    .line 466
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACRA processName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-eqz v0, :cond_30

    const-string v1, ":acra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method
