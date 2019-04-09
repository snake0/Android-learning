.class public Lcom/mqunar/core/ModuleParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/mqunar/core/ModuleParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/ModuleParser;->a:Ljava/lang/String;

    .line 120
    const-string v0, "_([0-9a-fA-F]{32})\\."

    sput-object v0, Lcom/mqunar/core/ModuleParser;->b:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/mqunar/core/ModuleParser;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/ModuleParser;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEquals(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)Z
    .registers 5

    .prologue
    .line 187
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_16

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u6587\u4ef6\u672a\u8bfb\u5b8c!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :catch_16
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 196
    :cond_1d
    :try_start_1d
    invoke-static {p2}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_24} :catch_26

    move-result v0

    .line 199
    :goto_25
    return v0

    .line 198
    :catch_26
    move-exception v0

    .line 199
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static getMd5(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    invoke-static {v0}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    .line 116
    :goto_9
    return-object v0

    .line 115
    :catch_a
    move-exception v0

    .line 116
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static getMd5(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 146
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 151
    :goto_12
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_25

    .line 152
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 163
    :catchall_1e
    move-exception v0

    if-eqz p0, :cond_24

    .line 165
    :try_start_21
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_4f

    .line 167
    :cond_24
    :goto_24
    throw v0

    .line 155
    :cond_25
    :try_start_25
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 157
    :goto_29
    array-length v3, v1

    if-ge v0, v3, :cond_43

    .line 158
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 161
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_1e

    move-result-object v0

    .line 163
    if-eqz p0, :cond_4c

    .line 165
    :try_start_49
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 167
    :cond_4c
    :goto_4c
    return-object v0

    .line 166
    :catch_4d
    move-exception v1

    goto :goto_4c

    :catch_4f
    move-exception v1

    goto :goto_24
.end method

.method public static getMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 205
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_15
    return-object v0

    .line 211
    :cond_16
    :try_start_16
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1e} :catch_ae
    .catchall {:try_start_16 .. :try_end_1e} :catchall_bf

    .line 212
    :try_start_1e
    const-class v1, Landroid/content/res/AssetManager;

    const-string v3, "addAssetPath"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 213
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 215
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v7, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 216
    if-eqz v1, :cond_a0

    .line 217
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_4f} :catch_d8
    .catchall {:try_start_1e .. :try_end_4f} :catchall_cc

    move-result-object v3

    .line 219
    :try_start_50
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    move v9, v1

    move v1, v5

    move v5, v9

    .line 220
    :goto_57
    if-eq v5, v4, :cond_a1

    .line 221
    packed-switch v5, :pswitch_data_e4

    .line 237
    :cond_5c
    :goto_5c
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    goto :goto_57

    .line 223
    :pswitch_61
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 224
    const-string v6, "meta-data"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 226
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v5, "name"

    invoke-interface {v3, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 228
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v4, "value"

    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_82} :catch_de
    .catchall {:try_start_50 .. :try_end_82} :catchall_d1

    move-result-object v1

    .line 243
    if-eqz v3, :cond_88

    .line 244
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 246
    :cond_88
    if-eqz v0, :cond_8d

    .line 247
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_8d
    move-object v0, v1

    goto :goto_15

    :cond_8f
    move v1, v4

    .line 230
    goto :goto_5c

    .line 231
    :cond_91
    if-eqz v1, :cond_5c

    .line 243
    if-eqz v3, :cond_98

    .line 244
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 246
    :cond_98
    if-eqz v0, :cond_9d

    .line 247
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_9d
    move-object v0, v2

    goto/16 :goto_15

    :cond_a0
    move-object v3, v2

    .line 243
    :cond_a1
    if-eqz v3, :cond_a6

    .line 244
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 246
    :cond_a6
    if-eqz v0, :cond_ab

    .line 247
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_ab
    :goto_ab
    move-object v0, v2

    .line 250
    goto/16 :goto_15

    .line 240
    :catch_ae
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 241
    :goto_b1
    :try_start_b1
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_d5

    .line 243
    if-eqz v3, :cond_b9

    .line 244
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 246
    :cond_b9
    if-eqz v1, :cond_ab

    .line 247
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    goto :goto_ab

    .line 243
    :catchall_bf
    move-exception v0

    move-object v3, v2

    :goto_c1
    if-eqz v3, :cond_c6

    .line 244
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 246
    :cond_c6
    if-eqz v2, :cond_cb

    .line 247
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    :cond_cb
    throw v0

    .line 243
    :catchall_cc
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_c1

    :catchall_d1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_c1

    :catchall_d5
    move-exception v0

    move-object v2, v1

    goto :goto_c1

    .line 240
    :catch_d8
    move-exception v1

    move-object v3, v2

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_b1

    :catch_de
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_b1

    .line 221
    nop

    :pswitch_data_e4
    .packed-switch 0x2
        :pswitch_61
    .end packed-switch
.end method

.method public static isAtom(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    if-eqz p0, :cond_12

    .line 176
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 177
    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 178
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_12
    if-eqz v0, :cond_1e

    const-string v1, "libq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static parseModuleDependency(Ljava/lang/String;)Lcom/mqunar/module/ModuleInfo;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {p0}, Lcom/mqunar/core/ModuleParser;->isAtom(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 90
    :cond_7
    return-object v2

    .line 52
    :cond_8
    :try_start_8
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_d5

    .line 53
    :try_start_d
    const-string v0, "dependencies.dps"

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 54
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 58
    :goto_20
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_54

    .line 59
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2b} :catch_2c

    goto :goto_20

    .line 84
    :catch_2c
    move-exception v0

    move-object v1, v3

    .line 85
    :goto_2e
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v1

    .line 89
    :goto_32
    if-nez v2, :cond_7

    .line 93
    if-eqz v3, :cond_39

    .line 95
    :try_start_36
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_d2

    .line 100
    :cond_39
    :goto_39
    if-nez v0, :cond_98

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u6790dependencies.dps\u65f6\uff0cparseObject return null!filename is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 62
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 66
    const-class v1, Lcom/mqunar/core/dependency/Dependency;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Dependency;

    .line 68
    if-eqz v0, :cond_de

    .line 69
    new-instance v1, Lcom/mqunar/module/ModuleInfo;

    invoke-direct {v1}, Lcom/mqunar/module/ModuleInfo;-><init>()V

    .line 70
    iput-object p0, v1, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    .line 71
    iput-object v0, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    .line 73
    iput-object v3, v1, Lcom/mqunar/module/ModuleInfo;->zipFile:Ljava/util/zip/ZipFile;

    .line 74
    iget-boolean v0, v0, Lcom/mqunar/core/dependency/Dependency;->multiDex:Z

    if-eqz v0, :cond_86

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_86} :catch_2c

    .line 79
    :cond_86
    :try_start_86
    iget-object v0, v1, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    const-string v4, "libq_lib_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_93

    .line 80
    const/4 v0, 0x1

    iput-byte v0, v1, Lcom/mqunar/module/ModuleInfo;->type:B
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_93} :catch_d9

    :cond_93
    move-object v0, v1

    :goto_94
    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    .line 87
    goto :goto_32

    .line 103
    :cond_98
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790dependencies.dps\u6587\u4ef6\u65f6\u5f02\u5e38!filename is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",file.length is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",file md5 is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_d2
    move-exception v1

    goto/16 :goto_39

    .line 84
    :catch_d5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2e

    :catch_d9
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_2e

    :cond_de
    move-object v0, v2

    goto :goto_94
.end method
