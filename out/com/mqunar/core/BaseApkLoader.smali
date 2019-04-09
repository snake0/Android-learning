.class public Lcom/mqunar/core/BaseApkLoader;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# instance fields
.field private final a:Lcom/mqunar/core/DexPathList;

.field private b:Lcom/mqunar/module/ModuleInfo;

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/mqunar/module/ModuleInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 7

    .prologue
    .line 35
    invoke-direct {p0, p4}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 36
    iput-object p1, p0, Lcom/mqunar/core/BaseApkLoader;->b:Lcom/mqunar/module/ModuleInfo;

    .line 37
    new-instance v0, Lcom/mqunar/core/DexPathList;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mqunar/core/BaseApkLoader;->c:Ljava/io/File;

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/mqunar/core/DexPathList;-><init>(Ljava/lang/ClassLoader;Lcom/mqunar/module/ModuleInfo;Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lcom/mqunar/core/BaseApkLoader;->a:Lcom/mqunar/core/DexPathList;

    .line 38
    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
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
    .line 50
    iget-object v0, p0, Lcom/mqunar/core/BaseApkLoader;->a:Lcom/mqunar/core/DexPathList;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/DexPathList;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mqunar/core/BaseApkLoader;->a:Lcom/mqunar/core/DexPathList;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/DexPathList;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mqunar/core/BaseApkLoader;->a:Lcom/mqunar/core/DexPathList;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/DexPathList;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mqunar/core/BaseApkLoader;->a:Lcom/mqunar/core/DexPathList;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/DexPathList;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getDebugOutputPath()Ljava/io/File;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mqunar/core/BaseApkLoader;->c:Ljava/io/File;

    return-object v0
.end method

.method public getModuleInfo()Lcom/mqunar/module/ModuleInfo;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mqunar/core/BaseApkLoader;->b:Lcom/mqunar/module/ModuleInfo;

    return-object v0
.end method

.method public getMultiDexElement(I)Lcom/mqunar/core/DexPathList$Element;
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mqunar/core/BaseApkLoader;->a:Lcom/mqunar/core/DexPathList;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/DexPathList;->getMultiDexElement(I)Lcom/mqunar/core/DexPathList$Element;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 93
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 94
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    .line 95
    if-nez v0, :cond_21

    .line 96
    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/mqunar/core/BaseApkLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_23

    move-result-object v0

    .line 101
    :cond_21
    monitor-exit p0

    return-object v0

    .line 93
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
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
    .line 116
    invoke-static {p0, p1}, Lcom/mqunar/core/QunarApkLoader;->loadFromDexs(Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
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
    .line 120
    invoke-virtual {p0, p1}, Lcom/mqunar/core/BaseApkLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    if-nez v0, :cond_a

    .line 122
    invoke-virtual {p0, p1}, Lcom/mqunar/core/BaseApkLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 124
    :cond_a
    return-object v0
.end method

.method public loadClassFromCurrentCache(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
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
    .line 128
    invoke-virtual {p0, p1}, Lcom/mqunar/core/BaseApkLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public loadClassFromSuper(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
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
    .line 132
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public loadMultiDex(I)V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/core/BaseApkLoader;->a:Lcom/mqunar/core/DexPathList;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/DexPathList;->loadMultiDex(I)V

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/core/BaseApkLoader;->b:Lcom/mqunar/module/ModuleInfo;

    iget-object v1, v1, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
