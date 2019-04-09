.class public Lcom/mqunar/core/QunarApkLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SIGNATURE_DEBUG:Z

.field private static a:Ljava/lang/ClassLoader;

.field private static b:Ljava/lang/ClassLoader;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Lcom/mqunar/core/Loaders;

.field private static g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/mqunar/BuildConfig;->SIGNATURE_DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/mqunar/core/QunarApkLoader;->SIGNATURE_DEBUG:Z

    .line 70
    new-instance v0, Lcom/mqunar/core/Loaders;

    invoke-direct {v0}, Lcom/mqunar/core/Loaders;-><init>()V

    sput-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mqunar/core/QunarApkLoader;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .registers 1

    .prologue
    .line 299
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0}, Lcom/mqunar/core/Loaders;->size()I

    move-result v0

    return v0
.end method

.method private static a(Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/core/BaseApkLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 927
    .line 929
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0}, Lcom/mqunar/core/Loaders;->mapCopy()Ljava/util/Map;

    move-result-object v8

    .line 930
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 931
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/BaseApkLoader;

    .line 932
    if-eqz v0, :cond_9a

    if-eq v0, p0, :cond_9a

    .line 934
    invoke-virtual {v0, p1}, Lcom/mqunar/core/BaseApkLoader;->loadClassFromCurrentCache(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 935
    if-eqz v0, :cond_9b

    .line 941
    :goto_26
    if-nez v0, :cond_1aa

    .line 942
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 943
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/BaseApkLoader;

    .line 944
    if-eqz v0, :cond_9e

    if-eq v0, p0, :cond_9e

    .line 947
    :try_start_41
    invoke-virtual {v0, p1}, Lcom/mqunar/core/BaseApkLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_44} :catch_197

    move-result-object v1

    .line 950
    :goto_45
    if-eqz v1, :cond_9e

    move-object v6, v1

    .line 958
    :goto_48
    if-nez v6, :cond_ad

    .line 963
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v0}, Lcom/mqunar/module/Modules;->mapCopy()Ljava/util/Map;

    move-result-object v3

    .line 964
    const/4 v4, -0x1

    .line 966
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v2

    :goto_5a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 967
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 969
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 971
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    invoke-virtual {v1}, Lcom/mqunar/module/ModuleInfo;->hasUnloadMultiDex()Z

    move-result v9

    if-eqz v9, :cond_1a3

    .line 973
    :cond_91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 974
    if-le v0, v4, :cond_1a3

    :goto_97
    move v4, v0

    move-object v5, v1

    .line 980
    goto :goto_5a

    :cond_9a
    move-object v0, v1

    :cond_9b
    move-object v1, v0

    .line 939
    goto/16 :goto_10

    :cond_9e
    move-object v0, v1

    move-object v1, v0

    .line 954
    goto :goto_31

    .line 982
    :cond_a1
    if-eqz v5, :cond_129

    .line 984
    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 987
    :try_start_a9
    invoke-virtual {v5, p1}, Lcom/mqunar/module/ModuleInfo;->loadFromMultiDex(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_b2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a9 .. :try_end_ac} :catch_19a

    move-result-object v6

    .line 1059
    :cond_ad
    :goto_ad
    if-nez v6, :cond_1a0

    if-eqz v2, :cond_1a0

    .line 1060
    throw v2

    .line 988
    :catch_b2
    move-exception v0

    .line 989
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 996
    :cond_b9
    :try_start_b9
    invoke-static {v5}, Lcom/mqunar/core/QunarApkLoader;->add(Lcom/mqunar/module/ModuleInfo;)Z
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bc} :catch_df

    move-result v0

    .line 997
    if-eqz v0, :cond_10e

    .line 1000
    :try_start_bf
    iget-object v0, v5, Lcom/mqunar/module/ModuleInfo;->loader:Lcom/mqunar/core/BaseApkLoader;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/BaseApkLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bf .. :try_end_c4} :catch_d5
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_c4} :catch_df

    move-result-object v1

    move-object v0, v2

    .line 1004
    :goto_c6
    if-nez v1, :cond_d2

    :try_start_c8
    invoke-virtual {v5}, Lcom/mqunar/module/ModuleInfo;->hasUnloadMultiDex()Z
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cb} :catch_df

    move-result v2

    if-eqz v2, :cond_d2

    .line 1006
    :try_start_ce
    invoke-virtual {v5, p1}, Lcom/mqunar/module/ModuleInfo;->loadFromMultiDex(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ce .. :try_end_d1} :catch_19d
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_d1} :catch_df

    move-result-object v1

    :cond_d2
    :goto_d2
    move-object v2, v0

    move-object v6, v1

    .line 1026
    goto :goto_ad

    .line 1001
    :catch_d5
    move-exception v0

    move-object v1, v6

    .line 1002
    goto :goto_c6

    .line 1007
    :catch_d8
    move-exception v0

    .line 1008
    :try_start_d9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_df} :catch_df

    .line 1016
    :catch_df
    move-exception v0

    .line 1017
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1019
    new-instance v0, Ljava/io/File;

    iget-object v2, v5, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1020
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/core/QunarApkLoader;->getDexCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1021
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_128

    .line 1023
    new-instance v2, Lcom/mqunar/exception/AtomFileNotFoundException;

    invoke-direct {v2, v0, v1}, Lcom/mqunar/exception/AtomFileNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1014
    :cond_10e
    :try_start_10e
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found,isInstalled is false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_126} :catch_df

    move-object v1, v6

    goto :goto_d2

    .line 1025
    :cond_128
    throw v1

    .line 1032
    :cond_129
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v4

    move-object v4, v5

    move-object v5, v2

    :goto_134
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_176

    .line 1033
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 1035
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 1036
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 1038
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1039
    if-le v2, v7, :cond_1a1

    .line 1042
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/BaseApkLoader;

    move-object v5, v0

    move-object v4, v1

    move v0, v2

    :goto_174
    move v7, v0

    .line 1046
    goto :goto_134

    .line 1048
    :cond_176
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/mqunar/core/ErrorMsg;->a(Landroid/content/Context;Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;Ljava/util/Map;Lcom/mqunar/module/ModuleInfo;Lcom/mqunar/core/BaseApkLoader;)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 1050
    if-eqz v4, :cond_ad

    .line 1051
    new-instance v0, Ljava/io/File;

    iget-object v1, v4, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1053
    new-instance v0, Lcom/mqunar/exception/AtomFileNotFoundException;

    iget-object v1, v4, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mqunar/exception/AtomFileNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 948
    :catch_197
    move-exception v0

    goto/16 :goto_45

    .line 990
    :catch_19a
    move-exception v2

    goto/16 :goto_ad

    .line 1009
    :catch_19d
    move-exception v0

    goto/16 :goto_d2

    .line 1063
    :cond_1a0
    return-object v6

    :cond_1a1
    move v0, v7

    goto :goto_174

    :cond_1a3
    move v0, v4

    move-object v1, v5

    goto/16 :goto_97

    :cond_1a7
    move-object v6, v1

    goto/16 :goto_48

    :cond_1aa
    move-object v6, v0

    goto/16 :goto_48

    :cond_1ad
    move-object v0, v1

    goto/16 :goto_26
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 875
    :try_start_0
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->b:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 876
    :catch_7
    move-exception v0

    .line 877
    throw v0
.end method

.method private static a(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_15

    .line 117
    const/4 v0, 0x1

    :try_start_7
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_10

    .line 130
    :goto_f
    return-void

    .line 118
    :catch_10
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 123
    :cond_15
    :try_start_15
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPathAsSharedLibrary"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 125
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_32} :catch_33

    goto :goto_f

    .line 126
    :catch_33
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f
.end method

.method private static a(Landroid/content/res/Resources;)V
    .registers 4

    .prologue
    .line 721
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 722
    const-string v1, "mPackageInfo"

    invoke-static {v0, v1}, Lcom/mqunar/core/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 723
    const-string v2, "mResources"

    invoke-static {v2, v1, p0}, Lcom/mqunar/core/ReflectUtils;->setField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 724
    const-string v1, "mResources"

    invoke-static {v1, v0, p0}, Lcom/mqunar/core/ReflectUtils;->setField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 725
    const-string v1, "mTheme"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mqunar/core/ReflectUtils;->setField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 726
    return-void
.end method

.method private static a(Lcom/mqunar/module/ModuleInfo;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 729
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->applicationClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    if-nez v0, :cond_58

    .line 731
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 732
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v2, v2, Lcom/mqunar/core/dependency/Dependency;->applicationClassName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mqunar/core/QunarApkLoader;->loadFromDexs(Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 733
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_59

    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 735
    invoke-static {v1, v0}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    .line 736
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 737
    const-string v0, "QunarApkLoader-WASTE"

    const-string v4, "application (%s) onCreate waste (%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    :cond_58
    :goto_58
    return-void

    .line 739
    :cond_59
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 740
    new-instance v3, Lcom/mqunar/core/c;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/mqunar/core/c;-><init>(Lcom/mqunar/module/ModuleInfo;Ljava/lang/Class;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 764
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 765
    invoke-virtual {v0, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 766
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    :cond_75
    monitor-enter v2

    .line 769
    :try_start_76
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_81

    .line 770
    const-wide/16 v0, 0x7530

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 772
    :cond_81
    monitor-exit v2

    goto :goto_58

    :catchall_83
    move-exception v0

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_83

    throw v0
.end method

.method static a(Ljava/lang/ClassLoader;)V
    .registers 3

    .prologue
    .line 509
    if-eqz p0, :cond_6

    .line 510
    instance-of v0, p0, Lcom/mqunar/core/BaseApkLoader;

    if-eqz v0, :cond_7

    .line 523
    :cond_6
    :goto_6
    return-void

    .line 513
    :cond_7
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->a:Ljava/lang/ClassLoader;

    if-eq p0, v0, :cond_6

    .line 516
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/mqunar/core/QunarApkLoader;->a:Ljava/lang/ClassLoader;

    if-eq v0, v1, :cond_6

    .line 518
    :try_start_13
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->c:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/mqunar/core/QunarApkLoader;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 519
    :catch_1b
    move-exception v0

    goto :goto_6
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 6

    .prologue
    .line 689
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 690
    :cond_9
    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 693
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 694
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static add(Lcom/mqunar/module/ModuleInfo;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 705
    invoke-static {p0}, Lcom/mqunar/core/QunarApkLoader;->addApk(Lcom/mqunar/module/ModuleInfo;)Z

    move-result v5

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 707
    sub-long v3, v6, v3

    .line 710
    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v6

    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mqunar/spider/ModuleMonitor;->readMonitorModule(Lcom/mqunar/module/ModuleInfo;)Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v1

    :goto_1f
    invoke-virtual {v6, p0, v3, v4, v0}, Lcom/mqunar/spider/ModuleMonitor;->monitorModule(Lcom/mqunar/module/ModuleInfo;JZ)V

    .line 711
    const-string v0, "QunarApkLoader-WASTE"

    const-string v6, "path (%s) add (%s) result (%s) waste (%d)ms"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    aput-object v8, v7, v2

    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v2, v2, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    aput-object v2, v7, v1

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0, v6, v7}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    return v5

    :cond_45
    move v0, v2

    .line 710
    goto :goto_1f
.end method

.method public static addApk(Lcom/mqunar/module/ModuleInfo;)Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 786
    const-string v0, "QunarApkLoader-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============add apk for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start ==============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 791
    :try_start_2b
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0, p0}, Lcom/mqunar/core/Loaders;->hasItem(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 792
    monitor-exit v1

    .line 868
    :goto_34
    return v10

    .line 805
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->getSystemLibPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    new-instance v4, Lcom/mqunar/core/BaseApkLoader;

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mqunar/core/QunarApkLoader;->getDexCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mqunar/core/QunarApkLoader;->b:Ljava/lang/ClassLoader;

    invoke-direct {v4, p0, v5, v0, v6}, Lcom/mqunar/core/BaseApkLoader;-><init>(Lcom/mqunar/module/ModuleInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 809
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0, p0, v4}, Lcom/mqunar/core/Loaders;->put(Lcom/mqunar/module/ModuleInfo;Lcom/mqunar/core/BaseApkLoader;)V

    .line 811
    const-string v0, "QunarApkLoader-WASTE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loaders put cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 815
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-boolean v0, v0, Lcom/mqunar/core/dependency/Dependency;->hasRes:Z

    if-eqz v0, :cond_b2

    .line 816
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_121

    .line 817
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/core/res/ResourcesInfo;->genNewResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 818
    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->a(Landroid/content/res/Resources;)V

    .line 824
    :cond_b2
    :goto_b2
    const-string v0, "QunarApkLoader-WASTE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replace res cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 829
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0}, Lcom/mqunar/core/Loaders;->copyKeys()Ljava/util/List;

    move-result-object v0

    .line 831
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 832
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ec
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 833
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 834
    const-string v7, "packageName"

    iget-object v8, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v8, v8, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string v7, "version"

    iget-object v8, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v8, v8, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string v7, "fileName"

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 850
    :catchall_11e
    move-exception v0

    monitor-exit v1
    :try_end_120
    .catchall {:try_start_2b .. :try_end_120} :catchall_11e

    throw v0

    .line 820
    :cond_121
    :try_start_121
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->b()V

    goto :goto_b2

    .line 839
    :cond_125
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "qunar_sys"

    invoke-static {v0, v5}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 840
    const-string v5, "sys_loaded_atom"

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 842
    const-string v0, "QunarApkLoader-WASTE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "put storage cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 847
    invoke-static {p0}, Lcom/mqunar/core/QunarApkLoader;->a(Lcom/mqunar/module/ModuleInfo;)V

    .line 849
    const-string v0, "QunarApkLoader-WASTE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runApplicationOncreate cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    monitor-exit v1
    :try_end_18e
    .catchall {:try_start_121 .. :try_end_18e} :catchall_11e

    .line 852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 855
    invoke-static {p0}, Lcom/mqunar/module/ModuleInfoController;->getDownloadJson(Lcom/mqunar/module/ModuleInfo;)Ljava/lang/String;

    move-result-object v2

    .line 856
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1bb

    .line 857
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 858
    const-string v4, "command"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v2, "com.mqunar.spider.MESSAGE_INSTRUCTION_MINFO_SERVER"

    .line 861
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 863
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 866
    :cond_1bb
    const-string v2, "QunarApkLoader-WASTE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast cost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_34
.end method

.method public static addChromResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    .registers 12

    .prologue
    const/16 v8, 0x18

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    .line 135
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mqunar/core/res/compat/WebViewCompat;->check(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 259
    :cond_12
    :goto_12
    return-void

    .line 138
    :cond_13
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->g:Ljava/util/Set;

    if-nez v0, :cond_1c9

    .line 139
    sget-object v1, Lcom/mqunar/core/QunarApkLoader;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_1a
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->g:Ljava/util/Set;

    if-nez v0, :cond_1c8

    .line 142
    const-string v0, "<====================>"

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 145
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_1d6

    if-lt v0, v8, :cond_8c

    .line 148
    :try_start_34
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v4, "android.webkit.WebViewFactory"

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 149
    const-string v4, "getWebViewContextAndSetProvider"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 150
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 151
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v4, "getLoadedPackageInfo"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 153
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 154
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 155
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/mqunar/core/QunarApkLoader;->getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWebViewContextAndSetProvider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_8c} :catch_1d0
    .catchall {:try_start_34 .. :try_end_8c} :catchall_1d6

    .line 164
    :cond_8c
    :goto_8c
    :try_start_8c
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_1ae

    .line 165
    const-string v0, "com.google.android.webview"

    invoke-static {v3, v0}, Lcom/mqunar/core/QunarApkLoader;->getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a1

    .line 167
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_a1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.google.android.webview:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 171
    const-string v4, "com.android.webview"

    invoke-static {v3, v4}, Lcom/mqunar/core/QunarApkLoader;->getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.webview:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_127

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_127

    .line 175
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 176
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_127

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_127

    .line 178
    sget-boolean v5, Lcom/mqunar/core/res/compat/WebViewCompat;->isCustomization:Z

    if-eqz v5, :cond_1d9

    const-string v5, "WebViewGoogle_42"

    .line 179
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d9

    const-string v5, "com.google.android.webview"

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d9

    .line 182
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 183
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 186
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 187
    const-string v0, "add dir2"

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 219
    :cond_127
    :goto_127
    const-string v0, "android:string/config_webViewPackageName"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {p0, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 220
    if-eqz v0, :cond_185

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "string/config_webViewPackageName:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 223
    invoke-static {v3, v4}, Lcom/mqunar/core/QunarApkLoader;->getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_154
    .catchall {:try_start_8c .. :try_end_154} :catchall_1d6

    move-result v5

    if-eqz v5, :cond_166

    .line 226
    :try_start_157
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_166
    .catch Ljava/lang/Throwable; {:try_start_157 .. :try_end_166} :catch_230
    .catchall {:try_start_157 .. :try_end_166} :catchall_1d6

    .line 230
    :cond_166
    :goto_166
    :try_start_166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_185

    .line 231
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config_webViewPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 238
    :cond_185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_1ae

    .line 239
    const-string v0, "com.android.chrome"

    invoke-static {v3, v0}, Lcom/mqunar/core/QunarApkLoader;->getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_198

    .line 241
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.chrome:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 247
    :cond_1ae
    sput-object v2, Lcom/mqunar/core/QunarApkLoader;->g:Ljava/util/Set;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webviewRes:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/mqunar/core/QunarApkLoader;->g:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    .line 251
    :cond_1c8
    monitor-exit v1
    :try_end_1c9
    .catchall {:try_start_166 .. :try_end_1c9} :catchall_1d6

    .line 255
    :cond_1c9
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->g:Ljava/util/Set;

    invoke-static {p1, p2, v0}, Lcom/mqunar/core/QunarApkLoader;->addWebViewRes(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/util/Set;)Z

    goto/16 :goto_12

    .line 159
    :catch_1d0
    move-exception v0

    .line 160
    :try_start_1d1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8c

    .line 251
    :catchall_1d6
    move-exception v0

    monitor-exit v1
    :try_end_1d8
    .catchall {:try_start_1d1 .. :try_end_1d8} :catchall_1d6

    throw v0

    .line 189
    :cond_1d9
    :try_start_1d9
    sget-boolean v5, Lcom/mqunar/core/res/compat/WebViewCompat;->isC106:Z

    if-eqz v5, :cond_1ff

    .line 190
    const-string v5, "/system/app/WebViewGoogle/WebViewGoogle.apk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1ed

    const-string v5, "/system/app/webview/webview.apk"

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1ed

    .line 194
    :cond_1ed
    const-string v5, "/data/app/com.google.android.webview-1/base.apk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_127

    const-string v0, "/data/app/com.android.webview-1/base.apk"

    .line 195
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_127

    goto/16 :goto_127

    .line 199
    :cond_1ff
    sget-boolean v5, Lcom/mqunar/core/res/compat/WebViewCompat;->isCustomization2:Z

    if-eqz v5, :cond_22b

    const-string v5, "com.google.android.webview"

    .line 200
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22b

    const-string v0, "WebViewGoogle_42"

    .line 201
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 203
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 204
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 207
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 208
    const-string v0, "add dir2"

    invoke-static {v0}, Lcom/mqunar/core/res/compat/WebViewCompat;->append(Ljava/lang/String;)V

    goto/16 :goto_127

    .line 211
    :cond_22b
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_22e
    .catchall {:try_start_1d9 .. :try_end_22e} :catchall_1d6

    goto/16 :goto_127

    .line 227
    :catch_230
    move-exception v4

    goto/16 :goto_166
.end method

.method public static addModulesAssetsPath(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .registers 7

    .prologue
    .line 273
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 275
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 277
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAssetPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return cookie is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-static {p0, p1, v1}, Lcom/mqunar/core/QunarApkLoader;->addChromResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V

    .line 283
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0}, Lcom/mqunar/core/Loaders;->mapCopy()Ljava/util/Map;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_66
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 286
    iget-object v3, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-boolean v3, v3, Lcom/mqunar/core/dependency/Dependency;->hasRes:Z

    if-eqz v3, :cond_66

    .line 287
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_83} :catch_84

    goto :goto_66

    .line 292
    :catch_84
    move-exception v0

    .line 293
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 294
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/acra/ErrorReporter;->handleSilentException(Ljava/lang/Throwable;)V

    .line 296
    :cond_8f
    return-void
.end method

.method public static addWebViewRes(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 104
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-static {p0, p1, v0}, Lcom/mqunar/core/QunarApkLoader;->a(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    goto :goto_b

    .line 109
    :cond_1b
    const/4 v0, 0x1

    .line 111
    :cond_1c
    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 882
    const/4 v1, 0x0

    .line 884
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3d

    .line 886
    :try_start_5
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->e:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1b} :catch_38

    .line 890
    :goto_1b
    if-nez v0, :cond_37

    sget-object v1, Lcom/mqunar/core/QunarApkLoader;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_37

    .line 892
    :try_start_21
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->d:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_37} :catch_3b

    .line 897
    :cond_37
    return-object v0

    .line 887
    :catch_38
    move-exception v0

    move-object v0, v1

    goto :goto_1b

    .line 893
    :catch_3b
    move-exception v0

    .line 894
    throw v0

    :cond_3d
    move-object v0, v1

    goto :goto_1b
.end method

.method private static b()V
    .registers 1

    .prologue
    .line 716
    invoke-static {}, Lcom/mqunar/core/res/ResourcesInfo;->genNewResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 717
    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->a(Landroid/content/res/Resources;)V

    .line 718
    return-void
.end method

.method public static checkClassLoader()V
    .registers 4

    .prologue
    .line 494
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->a(Ljava/lang/ClassLoader;)V

    .line 495
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->a(Ljava/lang/ClassLoader;)V

    .line 498
    :try_start_12
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 499
    const-string v1, "mPackageInfo"

    invoke-static {v0, v1}, Lcom/mqunar/core/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 500
    const-string v1, "getClassLoader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/mqunar/core/ReflectUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 501
    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->a(Ljava/lang/ClassLoader;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_33} :catch_3d

    .line 505
    :goto_33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/mqunar/core/QunarApkLoader;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 506
    return-void

    .line 502
    :catch_3d
    move-exception v0

    goto :goto_33
.end method

.method public static checkModuleIsLoaded(Lcom/mqunar/module/ModuleInfo;)Z
    .registers 2

    .prologue
    .line 543
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0, p0}, Lcom/mqunar/core/Loaders;->hasItem(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static checkResources(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 346
    instance-of v0, p0, Lcom/mqunar/core/res/ResourcesInfo$QResources;

    if-eqz v0, :cond_5

    .line 350
    :goto_4
    return-object p0

    .line 349
    :cond_5
    invoke-static {p1}, Lcom/mqunar/core/QunarApkLoader;->loadResourceWithoutBroadcast(Landroid/content/Context;)V

    .line 350
    invoke-static {}, Lcom/mqunar/core/res/ResourcesInfo;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_4
.end method

.method public static getAllResPackageName()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0}, Lcom/mqunar/core/Loaders;->mapCopy()Ljava/util/Map;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 266
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 268
    :cond_2b
    return-object v1
.end method

.method public static getApkSignatureByFilePath(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 628
    .line 630
    new-instance v6, Ljava/util/jar/JarFile;

    invoke-direct {v6, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 632
    const/16 v0, 0x2000

    :try_start_9
    new-array v7, v0, [B
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_91

    .line 634
    :try_start_b
    const-string v0, "classes.dex"

    invoke-virtual {v6, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 635
    invoke-static {v6, v0, v7}, Lcom/mqunar/core/QunarApkLoader;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_43
    .catchall {:try_start_b .. :try_end_14} :catchall_91

    move-result-object v1

    .line 639
    :goto_15
    if-nez v1, :cond_72

    .line 640
    :try_start_17
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 641
    :cond_1b
    :goto_1b
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 642
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 643
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 644
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "META-INF/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 645
    invoke-static {v6, v0, v7}, Lcom/mqunar/core/QunarApkLoader;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    :try_end_3c
    .catchall {:try_start_17 .. :try_end_3c} :catchall_91

    move-result-object v0

    .line 647
    if-nez v0, :cond_46

    .line 670
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    .line 682
    :goto_42
    return-object v2

    .line 637
    :catch_43
    move-exception v0

    move-object v1, v2

    goto :goto_15

    .line 649
    :cond_46
    if-nez v1, :cond_4a

    :goto_48
    move-object v1, v0

    .line 667
    goto :goto_1b

    :cond_4a
    move v5, v3

    .line 653
    :goto_4b
    :try_start_4b
    array-length v4, v1

    if-ge v5, v4, :cond_9b

    move v4, v3

    .line 655
    :goto_4f
    array-length v9, v0

    if-ge v4, v9, :cond_99

    .line 656
    aget-object v9, v1, v5

    if-eqz v9, :cond_6b

    aget-object v9, v1, v5

    aget-object v10, v0, v4

    .line 657
    invoke-virtual {v9, v10}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 658
    const/4 v4, 0x1

    .line 662
    :goto_61
    if-eqz v4, :cond_67

    array-length v4, v1

    array-length v9, v0
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_91

    if-eq v4, v9, :cond_6e

    .line 670
    :cond_67
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    goto :goto_42

    .line 655
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 653
    :cond_6e
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4b

    .line 670
    :cond_72
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    .line 673
    if-eqz v1, :cond_96

    array-length v0, v1

    if-lez v0, :cond_96

    .line 674
    array-length v4, v1

    .line 675
    array-length v0, v1

    new-array v0, v0, [Landroid/content/pm/Signature;

    move v2, v3

    .line 676
    :goto_7f
    if-ge v2, v4, :cond_97

    .line 677
    new-instance v3, Landroid/content/pm/Signature;

    aget-object v5, v1, v2

    .line 678
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v3, v0, v2

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 670
    :catchall_91
    move-exception v0

    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    throw v0

    :cond_96
    move-object v0, v2

    :cond_97
    move-object v2, v0

    .line 682
    goto :goto_42

    :cond_99
    move v4, v3

    goto :goto_61

    :cond_9b
    move-object v0, v1

    goto :goto_48
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 354
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDexCachePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 303
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "opt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static getLoaderLogStr()Ljava/lang/String;
    .registers 5

    .prologue
    .line 91
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0}, Lcom/mqunar/core/Loaders;->mapCopy()Ljava/util/Map;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 97
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 312
    invoke-static {p0}, Lcom/mqunar/module/ModuleInfoController;->matchModule(Ljava/lang/String;)Lcom/mqunar/module/ModuleInfo;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_f

    iget-byte v1, v0, Lcom/mqunar/module/ModuleInfo;->type:B

    if-nez v1, :cond_f

    .line 314
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    .line 316
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    invoke-static {p0}, Lcom/mqunar/module/ModuleInfoController;->matchModule(Ljava/lang/String;)Lcom/mqunar/module/ModuleInfo;

    move-result-object v0

    .line 326
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    goto :goto_7
.end method

.method public static getSourceDir(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    const/16 v1, 0x2000

    :try_start_3
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_c

    .line 86
    :goto_b
    return-object v0

    .line 83
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static init()V
    .registers 5

    .prologue
    .line 434
    :try_start_0
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->b:Ljava/lang/ClassLoader;

    if-nez v0, :cond_8c

    .line 435
    const-class v0, Ljava/lang/ClassLoader;

    .line 436
    const-string v1, "findClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/mqunar/core/QunarApkLoader;->d:Ljava/lang/reflect/Method;

    .line 437
    sget-object v1, Lcom/mqunar/core/QunarApkLoader;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_9d

    .line 439
    :try_start_1c
    const-string v1, "findLoadedClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/QunarApkLoader;->e:Ljava/lang/reflect/Method;

    .line 440
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_32} :catch_90

    .line 446
    :goto_32
    :try_start_32
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/QunarApkLoader;->b:Ljava/lang/ClassLoader;

    .line 447
    new-instance v0, Lcom/mqunar/core/b;

    sget-object v1, Lcom/mqunar/core/QunarApkLoader;->b:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lcom/mqunar/core/b;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/mqunar/core/QunarApkLoader;->a:Ljava/lang/ClassLoader;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_49} :catch_9d

    .line 455
    :try_start_49
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 456
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 457
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 458
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 459
    const-string v2, "mInstrumentation"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 460
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 461
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 462
    new-instance v3, Lcom/mqunar/core/QInstrumentation;

    check-cast v0, Landroid/app/Instrumentation;

    invoke-direct {v3, v0}, Lcom/mqunar/core/QInstrumentation;-><init>(Landroid/app/Instrumentation;)V

    .line 463
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_7c} :catch_a4

    .line 469
    :goto_7c
    :try_start_7c
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "parent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/QunarApkLoader;->c:Ljava/lang/reflect/Field;

    .line 470
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 474
    :cond_8c
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->checkClassLoader()V

    .line 491
    return-void

    .line 441
    :catch_90
    move-exception v0

    .line 443
    const-string v1, ""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_9c} :catch_9d

    goto :goto_32

    .line 488
    :catch_9d
    move-exception v0

    .line 489
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 464
    :catch_a4
    move-exception v0

    .line 466
    :try_start_a5
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error int init Instrumentation!"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lorg/acra/ErrorReporter;->handleSilentException(Ljava/lang/Throwable;)V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_b3} :catch_9d

    goto :goto_7c
.end method

.method public static isSpiderClass(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 337
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 338
    const-class v2, Lcom/mqunar/core/QunarApkLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, v1, :cond_15

    instance-of v1, v1, Lcom/mqunar/core/BaseApkLoader;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_13} :catch_17

    if-eqz v1, :cond_16

    :cond_15
    const/4 v0, 0x1

    .line 340
    :cond_16
    :goto_16
    return v0

    .line 339
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method public static loadFromDexs(Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/core/BaseApkLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1068
    .line 1071
    if-eqz p0, :cond_125

    .line 1075
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/mqunar/core/BaseApkLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_8} :catch_105

    move-result-object v4

    .line 1081
    :goto_9
    if-nez v4, :cond_f

    .line 1085
    :try_start_b
    invoke-static {p1}, Lcom/mqunar/core/QunarApkLoader;->a(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_114

    move-result-object v4

    .line 1091
    :cond_f
    :goto_f
    if-nez v4, :cond_15

    .line 1094
    :try_start_11
    invoke-static {p1}, Lcom/mqunar/core/QunarApkLoader;->b(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_117

    move-result-object v4

    .line 1100
    :cond_15
    :goto_15
    if-nez v4, :cond_120

    .line 1101
    const-string v0, "com.mqunar."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1102
    if-nez v0, :cond_122

    .line 1104
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v1}, Lcom/mqunar/module/Modules;->mapCopy()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v0

    :goto_2f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1105
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 1106
    if-eqz v0, :cond_10a

    iget-object v8, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    if-eqz v8, :cond_10a

    iget-object v8, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v8, v8, Lcom/mqunar/core/dependency/Dependency;->atomPackages:Ljava/util/List;

    if-eqz v8, :cond_10a

    iget-object v8, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v8, v8, Lcom/mqunar/core/dependency/Dependency;->atomPackages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10a

    .line 1107
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->atomPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_59
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_59

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    move v1, v6

    move v3, v6

    .line 1114
    :cond_86
    if-eqz v1, :cond_10a

    .line 1120
    :cond_88
    :goto_88
    if-eqz v3, :cond_120

    .line 1121
    const-string v0, ""

    .line 1122
    if-eqz p0, :cond_11d

    invoke-virtual {p0}, Lcom/mqunar/core/BaseApkLoader;->getModuleInfo()Lcom/mqunar/module/ModuleInfo;

    move-result-object v1

    if-eqz v1, :cond_11d

    .line 1123
    invoke-virtual {p0}, Lcom/mqunar/core/BaseApkLoader;->getModuleInfo()Lcom/mqunar/module/ModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    move-object v3, v0

    .line 1126
    :goto_9b
    :try_start_9b
    invoke-static {p0, p1}, Lcom/mqunar/core/QunarApkLoader;->a(Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9b .. :try_end_9e} :catch_110

    move-result-object v1

    .line 1127
    :try_start_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFromSo className = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " fileName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9f .. :try_end_c2} :catch_11b

    move-object v0, v5

    move-object v4, v1

    .line 1131
    :goto_c4
    if-nez v4, :cond_e8

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after loadFromSo not search className = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " fileName = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    :cond_e8
    :goto_e8
    if-nez v4, :cond_11a

    if-eqz v0, :cond_11a

    .line 1138
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class not found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1076
    :catch_105
    move-exception v0

    move-object v4, v5

    move-object v5, v0

    .line 1077
    goto/16 :goto_9

    :cond_10a
    move v0, v1

    move v1, v3

    move v3, v1

    move v1, v0

    .line 1118
    goto/16 :goto_2f

    .line 1128
    :catch_110
    move-exception v0

    move-object v1, v4

    :goto_112
    move-object v4, v1

    .line 1129
    goto :goto_c4

    .line 1086
    :catch_114
    move-exception v5

    goto/16 :goto_f

    .line 1095
    :catch_117
    move-exception v5

    goto/16 :goto_15

    .line 1140
    :cond_11a
    return-object v4

    .line 1128
    :catch_11b
    move-exception v0

    goto :goto_112

    :cond_11d
    move-object v3, v0

    goto/16 :goto_9b

    :cond_120
    move-object v0, v5

    goto :goto_e8

    :cond_122
    move v3, v0

    goto/16 :goto_88

    :cond_125
    move-object v4, v5

    goto/16 :goto_9
.end method

.method public static loadResource(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 399
    :try_start_0
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->checkClassLoader()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_32

    .line 404
    :goto_3
    invoke-static {p0}, Lcom/mqunar/core/QunarApkLoader;->loadResourceWithoutBroadcast(Landroid/content/Context;)V

    .line 408
    :try_start_6
    const-string v0, "needOnCreateSendBroadcast"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2}, Lcom/mqunar/core/ReflectUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_31

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_31

    .line 410
    check-cast v0, Ljava/lang/Boolean;

    .line 411
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 413
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 414
    const-string v1, "com.mqunar.spider.MESSAGE_ACTIVITY_ONCREATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_31} :catch_37

    .line 422
    :cond_31
    :goto_31
    return-void

    .line 400
    :catch_32
    move-exception v0

    .line 401
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 418
    :catch_37
    move-exception v0

    .line 419
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method public static loadResourceWithoutBroadcast(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 362
    :try_start_0
    const-string v0, "mBase"

    invoke-static {p0, v0}, Lcom/mqunar/core/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 363
    if-eqz v0, :cond_19

    .line 364
    const-string v1, "mResources"

    invoke-static {}, Lcom/mqunar/core/res/ResourcesInfo;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mqunar/core/ReflectUtils;->setField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 365
    const-string v1, "mTheme"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mqunar/core/ReflectUtils;->setField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_29

    .line 374
    :cond_19
    :goto_19
    :try_start_19
    const-string v0, "mResources"

    invoke-static {}, Lcom/mqunar/core/res/ResourcesInfo;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/mqunar/core/ReflectUtils;->setField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    const-string v0, "mTheme"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/mqunar/core/ReflectUtils;->setField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_28} :catch_2e

    .line 391
    :goto_28
    return-void

    .line 369
    :catch_29
    move-exception v0

    .line 370
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 380
    :catch_2e
    move-exception v0

    .line 381
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public static onRegisterOk()V
    .registers 3

    .prologue
    .line 531
    invoke-static {}, Lcom/mqunar/dispatcher/DispatcherLogic;->gv()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0}, Lcom/mqunar/core/basectx/application/QApplication;->setVersionInfo(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "qunar_sys"

    invoke-static {v1, v2}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v1

    .line 534
    const-string v2, "sys_atom"

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 535
    return-void
.end method

.method public static shouldRestartWhenResNotFound(I)Z
    .registers 6

    .prologue
    .line 901
    const/4 v1, 0x0

    .line 902
    const/high16 v0, 0x30000000

    if-lt p0, v0, :cond_43

    const v0, 0x7effffff

    if-gt p0, v0, :cond_43

    .line 903
    shr-int/lit8 v2, p0, 0x18

    .line 905
    sget-object v0, Lcom/mqunar/core/QunarApkLoader;->f:Lcom/mqunar/core/Loaders;

    invoke-virtual {v0}, Lcom/mqunar/core/Loaders;->mapCopy()Ljava/util/Map;

    move-result-object v0

    .line 906
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 907
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 908
    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v4, v4, Lcom/mqunar/core/dependency/Dependency;->packageId:I

    if-ne v2, v4, :cond_1a

    .line 909
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    .line 915
    :goto_2e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 916
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_41

    .line 918
    const/4 v0, 0x1

    .line 921
    :goto_40
    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_40

    :cond_43
    move-object v0, v1

    goto :goto_2e
.end method
