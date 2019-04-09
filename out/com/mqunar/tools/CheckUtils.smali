.class public Lcom/mqunar/tools/CheckUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method public static getCurrentRuntimeValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 103
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_62

    move-result-object v0

    .line 105
    :try_start_6
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    if-nez v1, :cond_1e

    .line 107
    const-string v0, "WTF?!"
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1d} :catch_5e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1d} :catch_62

    .line 132
    :cond_1d
    :goto_1d
    return-object v0

    .line 110
    :cond_1e
    const/4 v2, 0x2

    :try_start_1f
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "persist.sys.dalvik.vm.lib"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Dalvik"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    const-string v1, "libdvm.so"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 113
    const-string v0, "Dalvik"

    goto :goto_1d

    .line 114
    :cond_3c
    const-string v1, "libart.so"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 115
    const-string v0, "ART"

    goto :goto_1d

    .line 116
    :cond_47
    const-string v1, "libartd.so"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 117
    const-string v0, "ART debug build"
    :try_end_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_51} :catch_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_51} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_51} :catch_5a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_51} :catch_5e
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_51} :catch_62

    goto :goto_1d

    .line 121
    :catch_52
    move-exception v0

    .line 122
    :try_start_53
    const-string v0, "IllegalAccessException"

    goto :goto_1d

    .line 123
    :catch_56
    move-exception v0

    .line 124
    const-string v0, "IllegalArgumentException"

    goto :goto_1d

    .line 125
    :catch_5a
    move-exception v0

    .line 126
    const-string v0, "InvocationTargetException"
    :try_end_5d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_53 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_5d} :catch_62

    goto :goto_1d

    .line 128
    :catch_5e
    move-exception v0

    .line 129
    :try_start_5f
    const-string v0, "SystemProperties.get(String key, String def) method is not found"
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_61} :catch_62

    goto :goto_1d

    .line 131
    :catch_62
    move-exception v0

    .line 132
    const-string v0, "SystemProperties class is not found"

    goto :goto_1d
.end method

.method public static hasRootAccess(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 182
    :try_start_0
    const-string v0, "exit 0"

    invoke-static {p0, v0}, Lcom/mqunar/tools/CheckUtils;->runScriptAsRoot(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_a

    move-result v0

    if-nez v0, :cond_b

    .line 183
    const/4 v0, 0x1

    .line 187
    :goto_9
    return v0

    .line 185
    :catch_a
    move-exception v0

    .line 187
    :cond_b
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static varargs isContainsEmpty([Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 91
    :cond_8
    :goto_8
    return v0

    .line 86
    :cond_9
    array-length v3, p0

    move v2, v1

    :goto_b
    if-ge v2, v3, :cond_18

    aget-object v4, p0, v2

    .line 87
    invoke-static {v4}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    move v0, v1

    .line 91
    goto :goto_8
.end method

.method public static isContainsEnum([Ljava/lang/Enum;Ljava/lang/Enum;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/lang/Enum",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 177
    :cond_7
    :goto_7
    return v0

    .line 172
    :cond_8
    array-length v2, p0

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_7

    aget-object v3, p0, v1

    .line 173
    if-ne v3, p1, :cond_12

    .line 174
    const/4 v0, 0x1

    goto :goto_7

    .line 172
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_5

    .line 67
    :cond_4
    :goto_4
    return v0

    .line 32
    :cond_5
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_10

    .line 34
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    goto :goto_4

    .line 35
    :cond_10
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_1b

    .line 37
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    goto :goto_4

    .line 38
    :cond_1b
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_29

    .line 40
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 41
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 44
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_40

    .line 45
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 46
    :cond_40
    instance-of v2, p0, [I

    if-eqz v2, :cond_4d

    .line 47
    check-cast p0, [I

    check-cast p0, [I

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 48
    :cond_4d
    instance-of v2, p0, [J

    if-eqz v2, :cond_5a

    .line 49
    check-cast p0, [J

    check-cast p0, [J

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 50
    :cond_5a
    instance-of v2, p0, [S

    if-eqz v2, :cond_67

    .line 51
    check-cast p0, [S

    check-cast p0, [S

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 52
    :cond_67
    instance-of v2, p0, [D

    if-eqz v2, :cond_74

    .line 53
    check-cast p0, [D

    check-cast p0, [D

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 54
    :cond_74
    instance-of v2, p0, [F

    if-eqz v2, :cond_81

    .line 55
    check-cast p0, [F

    check-cast p0, [F

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 56
    :cond_81
    instance-of v2, p0, [Z

    if-eqz v2, :cond_8f

    .line 57
    check-cast p0, [Z

    check-cast p0, [Z

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    .line 58
    :cond_8f
    instance-of v2, p0, [C

    if-eqz v2, :cond_9d

    .line 59
    check-cast p0, [C

    check-cast p0, [C

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    .line 60
    :cond_9d
    instance-of v2, p0, [B

    if-eqz v2, :cond_b7

    .line 61
    check-cast p0, [B

    check-cast p0, [B

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    .line 63
    :cond_ab
    instance-of v0, p0, Lcom/mqunar/tools/EmptyCheckable;

    if-eqz v0, :cond_b7

    .line 64
    check-cast p0, Lcom/mqunar/tools/EmptyCheckable;

    invoke-interface {p0}, Lcom/mqunar/tools/EmptyCheckable;->isEmpty()Z

    move-result v0

    goto/16 :goto_4

    :cond_b7
    move v0, v1

    .line 67
    goto/16 :goto_4
.end method

.method public static isEven(I)Z
    .registers 2

    .prologue
    .line 155
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isExist(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 79
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isOdd(I)Z
    .registers 2

    .prologue
    .line 144
    rem-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static runScriptAsRoot(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "secopt.sh"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    new-instance v2, Lcom/mqunar/tools/b;

    invoke-direct {v2, v1, p1, v0}, Lcom/mqunar/tools/b;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 194
    invoke-virtual {v2}, Lcom/mqunar/tools/b;->start()V

    .line 196
    const-wide/32 v0, 0x9c40

    :try_start_1b
    invoke-virtual {v2, v0, v1}, Lcom/mqunar/tools/b;->join(J)V

    .line 197
    invoke-virtual {v2}, Lcom/mqunar/tools/b;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 198
    invoke-virtual {v2}, Lcom/mqunar/tools/b;->interrupt()V

    .line 199
    const-wide/16 v0, 0x96

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/tools/b;->join(J)V

    .line 200
    invoke-virtual {v2}, Lcom/mqunar/tools/b;->destroy()V

    .line 201
    const-wide/16 v0, 0x32

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/tools/b;->join(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_34} :catch_37

    .line 205
    :cond_34
    :goto_34
    iget v0, v2, Lcom/mqunar/tools/b;->a:I

    return v0

    .line 203
    :catch_37
    move-exception v0

    goto :goto_34
.end method
