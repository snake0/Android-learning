.class public final Lcom/baidu/mapsdkplatform/comapi/util/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/baidu/mapsdkplatform/comapi/util/d;


# instance fields
.field private b:Z

.field private c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/util/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/mapsdkplatform/comapi/util/c;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/d;->a:Lcom/baidu/mapsdkplatform/comapi/util/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    return-void
.end method

.method public static a()Lcom/baidu/mapsdkplatform/comapi/util/d;
    .registers 2

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/d;->a:Lcom/baidu/mapsdkplatform/comapi/util/d;

    if-nez v0, :cond_13

    const-class v1, Lcom/baidu/mapsdkplatform/comapi/util/d;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/d;->a:Lcom/baidu/mapsdkplatform/comapi/util/d;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/util/d;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/util/d;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/d;->a:Lcom/baidu/mapsdkplatform/comapi/util/d;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/d;->a:Lcom/baidu/mapsdkplatform/comapi/util/d;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/test.0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_22
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_30

    move-result v0

    :try_start_26
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_38

    :cond_2f
    :goto_2f
    return v0

    :catch_30
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    :catch_38
    move-exception v1

    goto :goto_34
.end method

.method private c(Landroid/content/Context;)V
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    :try_start_0
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumeList"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getVolumeState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v2, "android.os.storage.StorageVolume"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isRemovable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v3, "getPath"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    if-eqz v1, :cond_111

    array-length v10, v1

    const/4 v2, 0x0

    move v6, v2

    :goto_4f
    if-ge v6, v10, :cond_112

    aget-object v3, v1, v6

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v9, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a5

    const-string v4, "mounted"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    invoke-virtual {v7, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a9

    const/4 v3, 0x1

    move v5, v3

    :goto_87
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_b2

    invoke-direct {p0, v2}, Lcom/baidu/mapsdkplatform/comapi/util/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v11, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    new-instance v12, Lcom/baidu/mapsdkplatform/comapi/util/c;

    if-nez v5, :cond_ac

    const/4 v3, 0x1

    move v4, v3

    :goto_9b
    if-eqz v5, :cond_af

    const-string v3, "\u5185\u7f6e\u5b58\u50a8\u5361"

    :goto_9f
    invoke-direct {v12, v2, v4, v3, p1}, Lcom/baidu/mapsdkplatform/comapi/util/c;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a5
    :goto_a5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4f

    :cond_a9
    const/4 v3, 0x0

    move v5, v3

    goto :goto_87

    :cond_ac
    const/4 v3, 0x0

    move v4, v3

    goto :goto_9b

    :cond_af
    const-string v3, "\u5916\u7f6e\u5b58\u50a8\u5361"

    goto :goto_9f

    :cond_b2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_a5

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BaiduMapSDKNew"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a5

    const-string v3, "map_pref"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PREFFERED_SD_CARD"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BaiduMapSDKNew"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->f:Ljava/lang/String;
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10c} :catch_10d

    goto :goto_a5

    :catch_10d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_111
    :goto_111
    return-void

    :cond_112
    :try_start_112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_111

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    move v2, v0

    :goto_129
    array-length v0, v3

    if-ge v2, v0, :cond_130

    aget-object v0, v3, v2

    if-nez v0, :cond_13b

    :cond_130
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_111

    :cond_13b
    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_148
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/util/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_148

    const/4 v0, 0x1

    :goto_15f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_184

    if-nez v0, :cond_184

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_184

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/util/c;

    const/4 v1, 0x1

    const-string v6, "\u5916\u7f6e\u5b58\u50a8\u5361"

    invoke-direct {v0, v5, v1, v6, p1}, Lcom/baidu/mapsdkplatform/comapi/util/c;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_184} :catch_10d

    :cond_184
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_129

    :cond_188
    move v0, v1

    goto :goto_15f
.end method

.method private d(Landroid/content/Context;)V
    .registers 11

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_b
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/mounts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_108
    .catchall {:try_start_b .. :try_end_1d} :catchall_113

    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    const-string v5, "/dev/block/vold/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v5, 0x9

    const/16 v6, 0x20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    array-length v5, v0

    if-lez v5, :cond_1d

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_48} :catch_49
    .catchall {:try_start_1d .. :try_end_48} :catchall_115

    goto :goto_1d

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_118

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    :cond_52
    :goto_52
    return-void

    :cond_53
    :try_start_53
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_49
    .catchall {:try_start_53 .. :try_end_56} :catchall_115

    :cond_56
    :try_start_56
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/vold.fstab"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b2

    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_68} :catch_108
    .catchall {:try_start_56 .. :try_end_68} :catchall_113

    :cond_68
    :goto_68
    :try_start_68
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    const-string v5, "dev_mount"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    const/16 v5, 0x9

    const/16 v6, 0x20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    array-length v5, v0

    if-lez v5, :cond_68

    const/4 v5, 0x2

    aget-object v0, v0, v5

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a3

    const/4 v5, 0x0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_a3
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_a6} :catch_49
    .catchall {:try_start_68 .. :try_end_a6} :catchall_a7

    goto :goto_68

    :catchall_a7
    move-exception v0

    move-object v2, v1

    :goto_a9
    if-eqz v2, :cond_ae

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_ae
    throw v0

    :cond_af
    :try_start_af
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_49
    .catchall {:try_start_af .. :try_end_b2} :catchall_a7

    :cond_b2
    :try_start_b2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    new-instance v5, Lcom/baidu/mapsdkplatform/comapi/util/c;

    const/4 v6, 0x0

    const-string v7, "Auto"

    invoke-direct {v5, v1, v6, v7, p1}, Lcom/baidu/mapsdkplatform/comapi/util/c;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_cb
    :goto_cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cb

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cb

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_cb

    iget-object v5, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    new-instance v6, Lcom/baidu/mapsdkplatform/comapi/util/c;

    const/4 v7, 0x0

    const-string v8, "Auto"

    invoke-direct {v6, v0, v7, v8, p1}, Lcom/baidu/mapsdkplatform/comapi/util/c;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_107} :catch_108
    .catchall {:try_start_b2 .. :try_end_107} :catchall_113

    goto :goto_cb

    :catch_108
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4a

    :cond_10c
    if-eqz v2, :cond_52

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto/16 :goto_52

    :catchall_113
    move-exception v0

    goto :goto_a9

    :catchall_115
    move-exception v0

    move-object v2, v1

    goto :goto_a9

    :catchall_118
    move-exception v0

    move-object v2, v1

    goto :goto_a9
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->b:Z

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iput-boolean v6, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->b:Z

    :try_start_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_44

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/util/d;->c(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_48

    :goto_12
    :try_start_12
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_82

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/util/c;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_39} :catch_dd

    move-result v4

    if-eqz v4, :cond_101

    add-int/lit8 v1, v1, 0x1

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_41
    move-object v2, v1

    move v1, v0

    goto :goto_21

    :cond_44
    :try_start_44
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/util/d;->d(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_12

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    :cond_4d
    if-nez v1, :cond_d2

    :try_start_4f
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/util/d;->b(Landroid/content/Context;)Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/util/c;

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mapsdkplatform/comapi/util/d;->a(Landroid/content/Context;Lcom/baidu/mapsdkplatform/comapi/util/c;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/util/c;

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_82} :catch_dd

    :cond_82
    :goto_82
    :try_start_82
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/util/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a6

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_a6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/util/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_ba

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_ba
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_ca} :catch_cc

    goto/16 :goto_6

    :catch_cc
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_d2
    if-ne v1, v6, :cond_e2

    :try_start_d4
    invoke-virtual {p0, p1, v2}, Lcom/baidu/mapsdkplatform/comapi/util/d;->a(Landroid/content/Context;Lcom/baidu/mapsdkplatform/comapi/util/c;)Z

    move-result v0

    if-eqz v0, :cond_73

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_dc} :catch_dd

    goto :goto_73

    :catch_dd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82

    :cond_e2
    :try_start_e2
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/util/d;->b(Landroid/content/Context;)Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e8} :catch_dd

    goto :goto_73

    :cond_e9
    const/4 v0, 0x0

    :try_start_ea
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->c:Z

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/util/c;

    invoke-direct {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/util/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ff} :catch_cc

    goto/16 :goto_6

    :cond_101
    move v0, v1

    move-object v1, v2

    goto/16 :goto_41
.end method

.method public a(Landroid/content/Context;Lcom/baidu/mapsdkplatform/comapi/util/c;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/util/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    :goto_b
    return v0

    :cond_c
    const-string v2, "map_pref"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "PREFFERED_SD_CARD"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_b
.end method

.method public b()Lcom/baidu/mapsdkplatform/comapi/util/c;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->e:Lcom/baidu/mapsdkplatform/comapi/util/c;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lcom/baidu/mapsdkplatform/comapi/util/c;
    .registers 6

    const-string v0, "map_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREFFERED_SD_CARD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/util/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_33
    return-object v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method
