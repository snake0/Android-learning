.class public final Lcom/baidu/techain/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    :try_start_1
    invoke-static {p0, p1}, Lcom/baidu/techain/f;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 136
    :goto_5
    return-object v0

    .line 134
    :catch_6
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_5
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/baidu/techain/f;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_a

    .line 101
    :goto_9
    return-object v0

    .line 99
    :catch_a
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_9
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Activity;)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v0, v1

    .line 39
    :cond_7
    return v0

    .line 17
    :cond_8
    const-class v2, Landroid/app/Activity;

    move-object v3, v2

    .line 18
    :goto_b
    if-eqz v3, :cond_7

    const-class v2, Ljava/lang/Object;

    if-eq v3, v2, :cond_7

    .line 19
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 20
    array-length v5, v4

    move v2, v1

    :goto_17
    if-ge v2, v5, :cond_42

    aget-object v6, v4, v2

    .line 23
    const/4 v7, 0x1

    :try_start_1c
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mWindow"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 27
    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 29
    :cond_35
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 30
    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_3c} :catch_3d

    goto :goto_32

    .line 33
    :catch_3d
    move-exception v6

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_32

    .line 36
    :cond_42
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v2

    .line 37
    goto :goto_b
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-eqz p1, :cond_6

    if-nez p2, :cond_c

    :cond_6
    move v0, v1

    .line 64
    :cond_7
    return v0

    .line 61
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 48
    :cond_c
    if-eqz p0, :cond_7

    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_7

    .line 49
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 50
    array-length v4, v3

    move v2, v1

    :goto_18
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    .line 52
    const/4 v6, 0x1

    :try_start_1d
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 54
    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_27} :catch_2a

    .line 50
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 58
    :catch_2a
    move-exception v5

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_27
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7

    move-result-object v0

    .line 107
    if-eqz v0, :cond_b

    .line 120
    :goto_6
    return-object v0

    .line 112
    :catch_7
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 116
    :cond_b
    :goto_b
    if-eqz p0, :cond_1f

    .line 118
    :try_start_d
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_15} :catch_16

    goto :goto_6

    .line 122
    :catch_16
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_b

    .line 126
    :cond_1f
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw v0
.end method

.method private static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7

    move-result-object v0

    .line 71
    if-eqz v0, :cond_b

    .line 84
    :goto_6
    return-object v0

    .line 76
    :catch_7
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 80
    :cond_b
    :goto_b
    if-eqz p0, :cond_1f

    .line 82
    :try_start_d
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_15} :catch_16

    goto :goto_6

    .line 86
    :catch_16
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_b

    .line 90
    :cond_1f
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
.end method
