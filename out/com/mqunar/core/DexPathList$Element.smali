.class public Lcom/mqunar/core/DexPathList$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/core/DexPathList;

.field public dexFile:Ldalvik/system/DexFile;

.field public final file:Ljava/io/File;

.field public optimizedDirectory:Ljava/io/File;

.field public final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Lcom/mqunar/core/DexPathList;Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;)V
    .registers 5

    .prologue
    .line 327
    iput-object p1, p0, Lcom/mqunar/core/DexPathList$Element;->a:Lcom/mqunar/core/DexPathList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/mqunar/core/DexPathList$Element;->file:Ljava/io/File;

    .line 329
    iput-object p3, p0, Lcom/mqunar/core/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    .line 330
    iput-object p4, p0, Lcom/mqunar/core/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    .line 331
    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mqunar/core/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    if-eqz v0, :cond_13

    .line 335
    iget-object v0, p0, Lcom/mqunar/core/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    iget-object v1, p0, Lcom/mqunar/core/DexPathList$Element;->a:Lcom/mqunar/core/DexPathList;

    invoke-static {v1}, Lcom/mqunar/core/DexPathList;->a(Lcom/mqunar/core/DexPathList;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_13

    .line 340
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mqunar/core/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mqunar/core/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_e

    .line 350
    :cond_c
    const/4 v0, 0x0

    .line 360
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/core/DexPathList$Element;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_36} :catch_37

    goto :goto_d

    .line 361
    :catch_37
    move-exception v0

    .line 362
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
