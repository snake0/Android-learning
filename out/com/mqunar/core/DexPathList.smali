.class public final Lcom/mqunar/core/DexPathList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ClassLoader;

.field private b:[Lcom/mqunar/core/DexPathList$Element;

.field private final c:[Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lcom/mqunar/module/ModuleInfo;Ljava/lang/String;Ljava/io/File;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_f

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingContext == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_f
    if-eqz p2, :cond_19

    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 72
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dexPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_21
    if-eqz p4, :cond_2a

    .line 75
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_82

    move-object p4, v1

    .line 83
    :cond_2a
    :goto_2a
    iput-object p1, p0, Lcom/mqunar/core/DexPathList;->a:Ljava/lang/ClassLoader;

    .line 84
    invoke-static {p3}, Lcom/mqunar/core/DexPathList;->a(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/core/DexPathList;->c:[Ljava/io/File;

    .line 86
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    if-nez v0, :cond_90

    const/4 v0, 0x1

    :goto_37
    new-array v0, v0, [Lcom/mqunar/core/DexPathList$Element;

    iput-object v0, p0, Lcom/mqunar/core/DexPathList;->b:[Lcom/mqunar/core/DexPathList$Element;

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v3, p2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {v0, p4}, Lcom/mqunar/core/DexPathList;->a(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/mqunar/core/DexPathList;->b:[Lcom/mqunar/core/DexPathList$Element;

    new-instance v5, Lcom/mqunar/core/DexPathList$Element;

    iget-object v6, p2, Lcom/mqunar/module/ModuleInfo;->zipFile:Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0, v0, v6, v3}, Lcom/mqunar/core/DexPathList$Element;-><init>(Lcom/mqunar/core/DexPathList;Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;)V

    aput-object v5, v4, v2

    .line 93
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    if-eqz v0, :cond_99

    .line 94
    :goto_55
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_99

    .line 95
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo$DexInfo;

    .line 96
    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->indexInElement:I

    .line 97
    iget-object v3, p0, Lcom/mqunar/core/DexPathList;->b:[Lcom/mqunar/core/DexPathList$Element;

    iget v4, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->indexInElement:I

    new-instance v5, Lcom/mqunar/core/DexPathList$Element;

    iget-object v6, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-direct {v5, p0, v6, v1, v1}, Lcom/mqunar/core/DexPathList$Element;-><init>(Lcom/mqunar/core/DexPathList;Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;)V

    aput-object v5, v3, v4

    .line 98
    iget-object v3, p0, Lcom/mqunar/core/DexPathList;->b:[Lcom/mqunar/core/DexPathList$Element;

    iget v0, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->indexInElement:I

    aget-object v0, v3, v0

    iput-object p4, v0, Lcom/mqunar/core/DexPathList$Element;->optimizedDirectory:Ljava/io/File;

    .line 94
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_55

    .line 77
    :cond_82
    invoke-virtual {p4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 78
    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_8e
    move-object p4, v1

    .line 79
    goto :goto_2a

    .line 86
    :cond_90
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 101
    :cond_99
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    .registers 8

    .prologue
    .line 190
    if-nez p1, :cond_8

    .line 191
    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, p0}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    .line 201
    :goto_7
    return-object v0

    .line 193
    :cond_8
    invoke-static {p0, p1}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 196
    :try_start_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1c

    .line 197
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    goto :goto_7

    .line 199
    :cond_1c
    invoke-static {}, Lcom/taobao/android/runtime/a;->a()Lcom/taobao/android/runtime/a;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/runtime/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2d} :catch_2f

    move-result-object v0

    goto :goto_7

    .line 202
    :catch_2f
    move-exception v0

    .line 203
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load file error,file is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",md5 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/mqunar/core/DexPathList;)Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/core/DexPathList;->a:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-static {p0, p2, v0}, Lcom/mqunar/core/DexPathList;->a(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 149
    invoke-static {p1, p2, v0}, Lcom/mqunar/core/DexPathList;->a(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 150
    return-object v0
.end method

.method private static a(Ljava/lang/String;ZLjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    if-nez p0, :cond_3

    .line 182
    :cond_2
    return-void

    .line 161
    :cond_3
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 162
    array-length v2, v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 163
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_27

    .line 162
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 171
    :cond_27
    if-eqz p1, :cond_33

    .line 172
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 180
    :cond_2f
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 176
    :cond_33
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_24
.end method

.method private static a(Ljava/lang/String;)[Ljava/io/File;
    .registers 3

    .prologue
    .line 132
    const-string v0, "java.library.path"

    const-string v1, "."

    .line 133
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 132
    invoke-static {p0, v0, v1}, Lcom/mqunar/core/DexPathList;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method public static optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0, p1}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static optimizedPathFor(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 232
    const-string v0, ".dex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 233
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 234
    if-gez v0, :cond_2d

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 243
    :cond_23
    :goto_23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, ".dex"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_23
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6

    .prologue
    .line 257
    iget-object v2, p0, Lcom/mqunar/core/DexPathList;->b:[Lcom/mqunar/core/DexPathList$Element;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 258
    invoke-virtual {v0, p1}, Lcom/mqunar/core/DexPathList$Element;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_10

    .line 263
    :goto_f
    return-object v0

    .line 257
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 263
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 309
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/mqunar/core/DexPathList;->c:[Ljava/io/File;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_2b

    aget-object v4, v2, v0

    .line 311
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 313
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_27
    return-object v0

    .line 310
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 316
    :cond_2b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 6

    .prologue
    .line 275
    iget-object v2, p0, Lcom/mqunar/core/DexPathList;->b:[Lcom/mqunar/core/DexPathList$Element;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 276
    invoke-virtual {v0, p1}, Lcom/mqunar/core/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_10

    .line 281
    :goto_f
    return-object v0

    .line 275
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 281
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 7
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
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v2, p0, Lcom/mqunar/core/DexPathList;->b:[Lcom/mqunar/core/DexPathList$Element;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 291
    invoke-virtual {v4, p1}, Lcom/mqunar/core/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 292
    if-eqz v4, :cond_16

    .line 293
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 296
    :cond_19
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMultiDexElement(I)Lcom/mqunar/core/DexPathList$Element;
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mqunar/core/DexPathList;->b:[Lcom/mqunar/core/DexPathList$Element;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public loadMultiDex(I)V
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mqunar/core/DexPathList;->b:[Lcom/mqunar/core/DexPathList$Element;

    aget-object v0, v0, p1

    .line 105
    iget-object v1, v0, Lcom/mqunar/core/DexPathList$Element;->file:Ljava/io/File;

    iget-object v2, v0, Lcom/mqunar/core/DexPathList$Element;->optimizedDirectory:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/mqunar/core/DexPathList;->a(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;

    move-result-object v1

    .line 106
    iput-object v1, v0, Lcom/mqunar/core/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    .line 107
    return-void
.end method
