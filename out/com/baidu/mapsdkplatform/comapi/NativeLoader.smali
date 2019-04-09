.class public Lcom/baidu/mapsdkplatform/comapi/NativeLoader;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

.field private static e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->c:Ljava/util/Set;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->a:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_d

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    :goto_8
    if-nez v0, :cond_13

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->a:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_8

    :cond_13
    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "v7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->b:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    :cond_27
    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->c:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    :cond_3b
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    :cond_4f
    :goto_4f
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    goto :goto_c

    :cond_52
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->d:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    goto :goto_4f
.end method

.method private a(Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 6

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Failed to load."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_3a
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->b:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    invoke-virtual {p0, p2, v0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->copyNativeLibrary(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0, p2, p1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->a:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    invoke-virtual {p0, p2, v0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->copyNativeLibrary(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p2, p1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const-class v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".so error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->c:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    invoke-virtual {p0, p2, v0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->copyNativeLibrary(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0, p2, p1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->d:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    invoke-virtual {p0, p2, v0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->copyNativeLibrary(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0, p2, p1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    invoke-virtual {p0, p2, v0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->copyNativeLibrary(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0, p2, p1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->getCustomizeNativePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->b:Ljava/util/Set;

    monitor-enter v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_1e

    :try_start_13
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    const/4 v0, 0x1

    :goto_1a
    return v0

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_22
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->c:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2d

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1a

    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/mapsdkplatform/comapi/NativeLoader;
    .registers 2

    const-class v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->d:Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    if-nez v0, :cond_14

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->d:Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a()Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    :cond_14
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->d:Lcom/baidu/mapsdkplatform/comapi/NativeLoader;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected copyNativeLibrary(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;)Z
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a(Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_17
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_49
    .catchall {:try_start_17 .. :try_end_20} :catchall_5e

    :try_start_20
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->getCustomizeNativePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_6e
    .catchall {:try_start_20 .. :try_end_2c} :catchall_6c

    move-result-object v1

    if-nez v1, :cond_35

    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_66

    :cond_34
    :goto_34
    return v0

    :cond_35
    :try_start_35
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1, v4}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->copyStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_6e
    .catchall {:try_start_35 .. :try_end_41} :catchall_6c

    const/4 v1, 0x1

    if-eqz v2, :cond_47

    :try_start_44
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_68

    :cond_47
    move v0, v1

    goto :goto_34

    :catch_49
    move-exception v1

    move-object v2, v3

    :goto_4b
    :try_start_4b
    const-class v3, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "copyError"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_6c

    if-eqz v2, :cond_34

    :try_start_58
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_34

    :catch_5c
    move-exception v1

    goto :goto_34

    :catchall_5e
    move-exception v1

    move-object v2, v3

    :goto_60
    if-eqz v2, :cond_65

    :try_start_62
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6a

    :cond_65
    throw v1

    :catch_66
    move-exception v1

    goto :goto_34

    :catch_68
    move-exception v1

    goto :goto_34

    :catch_6a
    move-exception v1

    goto :goto_34

    :catchall_6c
    move-exception v1

    goto :goto_60

    :catch_6e
    move-exception v1

    goto :goto_4b
.end method

.method protected final copyStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 6

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_4
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_10

    goto :goto_4

    :catchall_10
    move-exception v0

    :try_start_11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_26

    :try_start_14
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_28

    throw v0

    :cond_18
    :try_start_18
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_10

    :try_start_1b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_22

    :try_start_1e
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_24

    :goto_21
    return-void

    :catch_22
    move-exception v0

    goto :goto_21

    :catch_24
    move-exception v0

    goto :goto_21

    :catch_26
    move-exception v0

    goto :goto_21

    :catch_28
    move-exception v0

    goto :goto_21
.end method

.method protected getCodePath()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/16 v0, 0x8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_d

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method protected getCustomizeNativePath()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadCustomizeNativeLibrary(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$1;->a:[I

    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2c

    :goto_12
    return v0

    :pswitch_13
    invoke-direct {p0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_12

    :pswitch_18
    invoke-direct {p0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_12

    :pswitch_1d
    invoke-direct {p0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_12

    :pswitch_22
    invoke-direct {p0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_12

    :pswitch_27
    invoke-direct {p0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_12

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_18
        :pswitch_1d
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public declared-synchronized loadLibrary(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->b:Ljava/util/Set;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_21
    .catchall {:try_start_2 .. :try_end_5} :catchall_2a

    :try_start_5
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->b:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_27

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_27

    :try_start_11
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->b:Ljava/util/Set;

    monitor-enter v1
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_17} :catch_21
    .catchall {:try_start_11 .. :try_end_17} :catchall_2a

    :try_start_17
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->b:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_21} :catch_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_2a

    :catch_21
    move-exception v0

    :try_start_22
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->loadCustomizeNativeLibrary(Ljava/lang/String;)Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    move-result v0

    goto :goto_e

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2a} :catch_21
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
