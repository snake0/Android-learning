.class public final Lorg/acra/collector/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 18

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    .line 64
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 65
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 66
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 67
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 68
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 69
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 70
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 71
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 72
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 74
    const-class v1, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v13, v12

    const/4 v1, 0x0

    move v2, v1

    :goto_42
    if-ge v2, v13, :cond_117

    aget-object v1, v12, v2

    .line 75
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_6e

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v14

    if-eqz v14, :cond_6e

    .line 76
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 78
    :try_start_5e
    const-string v15, "HARDKEYBOARDHIDDEN_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_72

    .line 79
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    :cond_6e
    :goto_6e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_42

    .line 80
    :cond_72
    const-string v15, "KEYBOARD_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_90

    .line 81
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v4, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_82} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_5e .. :try_end_82} :catch_a1

    goto :goto_6e

    .line 97
    :catch_83
    move-exception v1

    .line 98
    sget-object v14, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v15, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v16, "Error while inspecting device configuration: "

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v0, v1}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    .line 82
    :cond_90
    :try_start_90
    const-string v15, "KEYBOARDHIDDEN_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_ae

    .line 83
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v5, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_90 .. :try_end_a0} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_90 .. :try_end_a0} :catch_a1

    goto :goto_6e

    .line 99
    :catch_a1
    move-exception v1

    .line 100
    sget-object v14, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v15, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v16, "Error while inspecting device configuration: "

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v0, v1}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    .line 84
    :cond_ae
    :try_start_ae
    const-string v15, "NAVIGATION_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_bf

    .line 85
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v6, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6e

    .line 86
    :cond_bf
    const-string v15, "NAVIGATIONHIDDEN_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d0

    .line 87
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v7, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6e

    .line 88
    :cond_d0
    const-string v15, "ORIENTATION_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e1

    .line 89
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v8, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6e

    .line 90
    :cond_e1
    const-string v15, "SCREENLAYOUT_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f3

    .line 91
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v9, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_6e

    .line 92
    :cond_f3
    const-string v15, "TOUCHSCREEN_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_105

    .line 93
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v10, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_6e

    .line 94
    :cond_105
    const-string v15, "UI_MODE_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6e

    .line 95
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v11, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_115
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ae .. :try_end_115} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_ae .. :try_end_115} :catch_a1

    goto/16 :goto_6e

    .line 105
    :cond_117
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v2, "HARDKEYBOARDHIDDEN_"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v2, "KEYBOARD_"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v2, "KEYBOARDHIDDEN_"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v2, "NAVIGATION_"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v2, "NAVIGATIONHIDDEN_"

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v2, "ORIENTATION_"

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v2, "SCREENLAYOUT_"

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v2, "TOUCHSCREEN_"

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v2, "UI_MODE_"

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 230
    :try_start_0
    new-instance v0, Lorg/acra/collector/b;

    invoke-direct {v0}, Lorg/acra/collector/b;-><init>()V

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 232
    invoke-direct {v0, v1}, Lorg/acra/collector/b;->a(Landroid/content/res/Configuration;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 235
    :goto_11
    return-object v0

    .line 233
    :catch_12
    move-exception v0

    .line 234
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve CrashConfiguration for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    const-string v0, "Couldn\'t retrieve crash config"

    goto :goto_11
.end method

.method private a(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 10
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v4, :cond_6f

    aget-object v0, v3, v1

    .line 130
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_43

    .line 131
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 134
    invoke-direct {p0, p1, v0}, Lorg/acra/collector/b;->a(Landroid/content/res/Configuration;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_3e
    :goto_3e
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_43
    :goto_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 135
    :cond_47
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3e

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_58} :catch_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_58} :catch_64

    goto :goto_3e

    .line 140
    :catch_59
    move-exception v0

    .line 141
    sget-object v5, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v6, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v7, "Error while inspecting device configuration: "

    invoke-interface {v5, v6, v7, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 142
    :catch_64
    move-exception v0

    .line 143
    sget-object v5, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v6, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v7, "Error while inspecting device configuration: "

    invoke-interface {v5, v6, v7, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 146
    :cond_6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/res/Configuration;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 6
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Field;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "mcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mnc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 167
    :cond_14
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_1c
    :goto_1c
    return-object v0

    .line 168
    :cond_1d
    const-string v1, "uiMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 169
    iget-object v0, p0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v1, "UI_MODE_"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/acra/collector/b;->a(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 170
    :cond_38
    const-string v1, "screenLayout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 171
    iget-object v0, p0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    const-string v1, "SCREENLAYOUT_"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/acra/collector/b;->a(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 173
    :cond_53
    iget-object v1, p0, Lorg/acra/collector/b;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 174
    if-nez v0, :cond_7d

    .line 176
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 179
    :cond_7d
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    if-nez v0, :cond_1c

    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method private static a(Landroid/util/SparseArray;I)Ljava/lang/String;
    .registers 7
    .param p0    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    .line 207
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 208
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "_MASK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 209
    and-int v0, p1, v3

    .line 210
    if-lez v0, :cond_37

    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2e

    .line 212
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 218
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
