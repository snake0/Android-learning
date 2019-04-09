.class public Lcom/mqunar/core/res/compat/WebViewCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/StringBuilder;

.field public static isC106:Z

.field public static isCustomization:Z

.field public static isCustomization2:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/mqunar/core/res/compat/WebViewCompat;->c:Ljava/lang/StringBuilder;

    .line 34
    const-string v0, "ONEPLUS A3000"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mqunar/core/res/compat/WebViewCompat;->a:Z

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_e1

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 37
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "OPPO A53m"

    aput-object v2, v1, v5

    const-string v2, "OPPO A53"

    aput-object v2, v1, v4

    const-string v2, "R7Plusm"

    aput-object v2, v1, v6

    const-string v2, "OPPO R7sm"

    aput-object v2, v1, v7

    const-string v2, "OPPO A33"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "OPPO A33m"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "OPPO A33t"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "OPPO R7sPlus"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "A51"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "A51kc"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "OPPO A30"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "OPPO A53t"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 40
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mqunar/core/res/compat/WebViewCompat;->isCustomization:Z

    .line 55
    :goto_6f
    const-string v0, "C106-9"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    const-string v0, "6.0.1"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 56
    sput-boolean v4, Lcom/mqunar/core/res/compat/WebViewCompat;->isC106:Z

    .line 59
    :cond_85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "OPPO R9 Plusm A"

    aput-object v2, v1, v5

    const-string v2, "OPPO R9m"

    aput-object v2, v1, v4

    const-string v2, "OPPO R7s"

    aput-object v2, v1, v6

    const-string v2, "OPPO R9tm"

    aput-object v2, v1, v7

    const-string v2, "OPPO R9t"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "OPPO A59m"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "OPPO A37m"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "OPPO R9km"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "OPPO R9 Plustm A"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "OPPO A37t"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "OPPO R7"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "OPPO R9 Plust A"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 61
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_e0

    .line 62
    sput-boolean v4, Lcom/mqunar/core/res/compat/WebViewCompat;->isCustomization2:Z

    .line 64
    :cond_e0
    return-void

    .line 41
    :cond_e1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_103

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 43
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "OPPO R6091"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 44
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mqunar/core/res/compat/WebViewCompat;->isCustomization:Z

    goto/16 :goto_6f

    .line 45
    :cond_103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_125

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "G8142"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 50
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mqunar/core/res/compat/WebViewCompat;->isCustomization:Z

    goto/16 :goto_6f

    .line 52
    :cond_125
    sput-boolean v5, Lcom/mqunar/core/res/compat/WebViewCompat;->isCustomization:Z

    goto/16 :goto_6f
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/util/SparseArray;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 68
    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_26

    .line 70
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 71
    :goto_10
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 72
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 74
    :cond_20
    const-string v0, "com.le.android.webview"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    :cond_26
    return v0
.end method

.method public static append(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 93
    sget-object v0, Lcom/mqunar/core/res/compat/WebViewCompat;->c:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_f

    .line 94
    sget-object v0, Lcom/mqunar/core/res/compat/WebViewCompat;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_f
    return-void
.end method

.method private static b(Landroid/util/SparseArray;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 80
    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_26

    .line 82
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 83
    :goto_10
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 84
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 86
    :cond_20
    const-string v0, "androidhwext"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    :cond_26
    return v0
.end method

.method public static check(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)Z
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 103
    .line 104
    sget-object v0, Lcom/mqunar/core/res/compat/WebViewCompat;->b:Ljava/util/Set;

    if-nez v0, :cond_1a3

    .line 106
    const-class v5, Lcom/mqunar/core/res/compat/WebViewCompat;

    monitor-enter v5

    .line 107
    :try_start_8
    sget-object v0, Lcom/mqunar/core/res/compat/WebViewCompat;->b:Ljava/util/Set;

    if-nez v0, :cond_1a2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build.VERSION.SDK_INT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 111
    const-string v0, "getAssignedPackageIdentifiers"

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lcom/mqunar/core/ReflectUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 112
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 113
    if-eqz v0, :cond_188

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_188

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 117
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    move v2, v3

    .line 118
    :goto_65
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_93

    .line 119
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    invoke-static {v7, v1}, Lcom/mqunar/core/QunarApkLoader;->getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_65

    .line 123
    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sa:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 125
    const-string v1, "getAssignedPackageIdentifiers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v4}, Lcom/mqunar/core/ReflectUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 127
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    move v4, v3

    .line 128
    :goto_bd
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_eb

    .line 129
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-static {v7, v2}, Lcom/mqunar/core/QunarApkLoader;->getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_bd

    .line 133
    :cond_eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mySa:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    move v2, v3

    .line 135
    :goto_102
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_112

    .line 136
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_102

    .line 139
    :cond_112
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    move v4, v3

    .line 140
    :goto_118
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_146

    .line 141
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    invoke-static {v7, v2}, Lcom/mqunar/core/QunarApkLoader;->getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_118

    .line 145
    :cond_146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 147
    sget-boolean v2, Lcom/mqunar/core/res/compat/WebViewCompat;->a:Z

    if-nez v2, :cond_170

    sget-boolean v2, Lcom/mqunar/core/res/compat/WebViewCompat;->isCustomization:Z

    if-nez v2, :cond_170

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->a(Landroid/util/SparseArray;)Z

    move-result v2

    if-nez v2, :cond_170

    invoke-static {v1}, Lcom/mqunar/core/res/compat/WebViewCompat;->b(Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_188

    :cond_170
    move v2, v3

    .line 148
    :goto_171
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_188

    .line 149
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    invoke-static {v7, v1}, Lcom/mqunar/core/QunarApkLoader;->getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_171

    .line 155
    :cond_188
    sput-object v6, Lcom/mqunar/core/res/compat/WebViewCompat;->b:Ljava/util/Set;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mqunar/core/res/compat/WebViewCompat;->b:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 158
    :cond_1a2
    monitor-exit v5
    :try_end_1a3
    .catchall {:try_start_8 .. :try_end_1a3} :catchall_1b2

    .line 161
    :cond_1a3
    sget-object v0, Lcom/mqunar/core/res/compat/WebViewCompat;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b5

    .line 162
    sget-object v0, Lcom/mqunar/core/res/compat/WebViewCompat;->b:Ljava/util/Set;

    invoke-static {p1, p2, v0}, Lcom/mqunar/core/QunarApkLoader;->addWebViewRes(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/util/Set;)Z

    move-result v0

    .line 165
    :goto_1b1
    return v0

    .line 158
    :catchall_1b2
    move-exception v0

    :try_start_1b3
    monitor-exit v5
    :try_end_1b4
    .catchall {:try_start_1b3 .. :try_end_1b4} :catchall_1b2

    throw v0

    :cond_1b5
    move v0, v3

    goto :goto_1b1
.end method

.method public static getLog()Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/mqunar/core/res/compat/WebViewCompat;->c:Ljava/lang/StringBuilder;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/mqunar/core/res/compat/WebViewCompat;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
