.class public Lcom/mqunar/atomenv/version/VersionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATOM_VERSION_NOT_FOUND:I = -0x1

.field public static final ATOM_VERSION_PARSE_ERROR:I = -0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static getAtomFileWithUpdate(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 58
    :try_start_1
    invoke-static {p1}, Lcom/mqunar/atomenv/version/VersionUtils;->getAtomVersionInfoFromUpdate(Ljava/lang/String;)Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;

    move-result-object v1

    .line 59
    if-nez v1, :cond_8

    .line 68
    :goto_7
    return-object v0

    .line 62
    :cond_8
    iget-object v1, v1, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;->url:Ljava/lang/String;

    .line 63
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 65
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/mqunar/atomenv/version/VersionUtils;->getAtomFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_20

    move-object v0, v1

    goto :goto_7

    .line 66
    :catch_20
    move-exception v1

    .line 67
    const-string v2, "get atom file error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public static getAtomFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .annotation runtime Lcom/mqunar/atomenv/annotation/Since;
        compile = "1.1.5"
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mqunar/storage/Storage;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAtomVersionCode(Lcom/mqunar/atomenv/version/VersionUtils$Atom;)I
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/mqunar/atomenv/version/VersionUtils$Atom;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/atomenv/version/VersionUtils;->getAtomVersionCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAtomVersionCode(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getVersionInfo()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;

    .line 83
    iget-object v2, v0, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 84
    iget v0, v0, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;->version:I
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_27

    .line 90
    :goto_24
    return v0

    .line 87
    :cond_25
    const/4 v0, 0x0

    goto :goto_24

    .line 88
    :catch_27
    move-exception v0

    .line 89
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 90
    const/4 v0, -0x1

    goto :goto_24
.end method

.method public static getAtomVersionInfoFromUpdate(Lcom/mqunar/atomenv/version/VersionUtils$Atom;)Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;
    .registers 2
    .annotation runtime Lcom/mqunar/atomenv/annotation/Since;
        compile = "1.1.5"
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/mqunar/atomenv/version/VersionUtils$Atom;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/atomenv/version/VersionUtils;->getAtomVersionInfoFromUpdate(Ljava/lang/String;)Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getAtomVersionInfoFromUpdate(Ljava/lang/String;)Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;
    .registers 5
    .annotation runtime Lcom/mqunar/atomenv/annotation/Since;
        compile = "1.1.5"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    :try_start_1
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "spider_minfo"

    invoke-static {v0, v2}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 36
    const-string v2, "minfo_json"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-class v2, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;

    .line 39
    iget-object v3, v0, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2e} :catch_34

    move-result v3

    if-eqz v3, :cond_1d

    .line 46
    :goto_31
    return-object v0

    :cond_32
    move-object v0, v1

    .line 43
    goto :goto_31

    .line 44
    :catch_34
    move-exception v0

    .line 45
    const-string v2, "get atom version error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 46
    goto :goto_31
.end method
