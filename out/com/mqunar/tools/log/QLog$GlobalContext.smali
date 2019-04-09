.class public final Lcom/mqunar/tools/log/QLog$GlobalContext;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 274
    :try_start_2
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 275
    const-string v0, "currentActivityThread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 276
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 277
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_97

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_26} :catch_91

    move-result v3

    if-eqz v3, :cond_97

    :goto_29
    move-object v1, v0

    .line 284
    :goto_2a
    if-nez v1, :cond_93

    .line 286
    :try_start_2c
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 287
    const-string v0, "sMainThreadHandler"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 288
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 289
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_40} :catch_8c

    move-result-object v4

    .line 291
    :try_start_41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "this$0"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 292
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 293
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_5c} :catch_8f

    move-result v5

    if-eqz v5, :cond_95

    :goto_5f
    move-object v1, v0

    .line 300
    :goto_60
    if-nez v1, :cond_93

    .line 301
    :try_start_62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 302
    if-eqz v5, :cond_93

    .line 303
    :goto_6c
    array-length v0, v5

    if-ge v2, v0, :cond_93

    .line 304
    aget-object v0, v5, v2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 305
    aget-object v0, v5, v2

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_84} :catch_8c

    move-result v6

    if-eqz v6, :cond_88

    .line 318
    :goto_87
    return-object v0

    .line 303
    :cond_88
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6c

    .line 313
    :catch_8c
    move-exception v0

    move-object v0, v1

    goto :goto_87

    .line 297
    :catch_8f
    move-exception v0

    goto :goto_60

    .line 281
    :catch_91
    move-exception v0

    goto :goto_2a

    :cond_93
    move-object v0, v1

    goto :goto_87

    :cond_95
    move-object v0, v1

    goto :goto_5f

    :cond_97
    move-object v0, v1

    goto :goto_29
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 329
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 330
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 331
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 332
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_85

    move-object v1, v0

    .line 335
    :goto_1f
    if-nez v1, :cond_3e

    .line 337
    invoke-static {}, Lcom/mqunar/tools/log/QLog$GlobalContext;->a()Ljava/lang/Object;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_3e

    .line 341
    :try_start_27
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 342
    const-string v3, "mInitialApplication"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 343
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 344
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_3d} :catch_83

    move-object v1, v0

    .line 350
    :cond_3e
    :goto_3e
    if-nez v1, :cond_5e

    .line 352
    :try_start_40
    const-string v0, "com.mqunar.core.QunarApkLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 353
    const-string v2, "getAppContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 354
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 355
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_5d} :catch_81

    move-object v1, v0

    .line 360
    :cond_5e
    :goto_5e
    if-nez v1, :cond_87

    .line 362
    :try_start_60
    const-string v0, "com.mqunar.core.basectx.application.QApplication"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 363
    const-string v2, "getContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 364
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 365
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_7d} :catch_7e

    .line 369
    :goto_7d
    return-object v0

    .line 366
    :catch_7e
    move-exception v0

    move-object v0, v1

    goto :goto_7d

    .line 356
    :catch_81
    move-exception v0

    goto :goto_5e

    .line 345
    :catch_83
    move-exception v0

    goto :goto_3e

    .line 333
    :catch_85
    move-exception v0

    goto :goto_1f

    :cond_87
    move-object v0, v1

    goto :goto_7d
.end method
