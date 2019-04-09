.class public Lcom/mqunar/storage/Storage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEAFAULT_USER:Ljava/lang/String; = "visitor"

.field public static final DEFAULT_SANDBOX:Ljava/lang/String; = "hen"

.field private static a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/mqunar/storage/IStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/mqunar/storage/Storage;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 186
    invoke-static {p1}, Lcom/mqunar/storage/Storage;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/mqunar/storage/Storage;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/mqunar/storage/Storage;->b:Ljava/lang/String;

    .line 161
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 162
    const-string p3, "visitor"

    .line 166
    :cond_e
    :try_start_e
    const-string v1, "com.mqunar.core.QunarApkLoader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_54

    move-result-object v1

    .line 167
    if-eqz v1, :cond_17

    const/4 v0, 0x1

    .line 171
    :cond_17
    :goto_17
    if-eqz v0, :cond_22

    .line 172
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->b:Ljava/lang/String;

    invoke-static {p1, v0, p3}, Lcom/mqunar/storage/SpStorage;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/storage/IStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    .line 182
    :goto_21
    return-void

    .line 175
    :cond_22
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 176
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "qunar_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mqunar/storage/Storage;->b:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/mqunar/storage/FileStorage;->newInstance(Landroid/content/Context;Ljava/io/File;)Lcom/mqunar/storage/IStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    goto :goto_21

    .line 179
    :cond_4c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u4e0d\u5728spider\u8fd0\u884c\u65f6,\u624b\u673a\u5fc5\u987b\u5f97\u5b89\u88c5sdcard!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :catch_54
    move-exception v1

    goto :goto_17
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 197
    .line 199
    :try_start_2
    const-string v2, "com.mqunar.core.QunarApkLoader"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 200
    const-string v3, "isSpiderClass"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 201
    const-string v3, "getPackageName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 204
    const/4 v2, 0x2

    aget-object v3, v7, v2

    .line 205
    const-class v2, Lcom/mqunar/storage/Storage;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v8

    .line 206
    array-length v9, v7

    move v4, v0

    :goto_3b
    if-ge v4, v9, :cond_be

    aget-object v2, v7, v4

    .line 207
    const/4 v0, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 208
    if-eqz v0, :cond_af

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    move-object v0, v2

    .line 215
    :goto_91
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 217
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_bc

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_a5} :catch_b3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a5} :catch_b9

    move-result-object v0

    .line 226
    :goto_a6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 227
    const-string v0, "hen"

    .line 229
    :cond_ae
    return-object v0

    .line 206
    :cond_af
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3b

    .line 221
    :catch_b3
    move-exception v0

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a6

    .line 223
    :catch_b9
    move-exception v0

    move-object v0, v1

    goto :goto_a6

    :cond_bc
    move-object v0, v1

    goto :goto_a6

    :cond_be
    move-object v0, v3

    goto :goto_91
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/mqunar/storage/Storage;->hasFroyo()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_e

    .line 92
    :goto_d
    return-object v0

    .line 86
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_d

    .line 91
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static getAppDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .prologue
    .line 139
    invoke-static {p0}, Lcom/mqunar/storage/Storage;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAppFileDir(Landroid/content/Context;)Ljava/io/File;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 97
    :try_start_2
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 98
    invoke-static {p0}, Lcom/mqunar/storage/Storage;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 99
    sget v2, Lcom/mqunar/storage/Storage;->a:I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_14} :catch_59

    if-nez v2, :cond_4f

    .line 103
    :try_start_16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 106
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 108
    :cond_2c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_31} :catch_62
    .catchall {:try_start_16 .. :try_end_31} :catchall_7c

    .line 109
    :try_start_31
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_36} :catch_9d
    .catchall {:try_start_31 .. :try_end_36} :catchall_93

    .line 110
    const/4 v1, 0x0

    :try_start_37
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 111
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 112
    const/4 v1, 0x1

    sput v1, Lcom/mqunar/storage/Storage;->a:I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_40} :catch_a2
    .catchall {:try_start_37 .. :try_end_40} :catchall_97

    .line 116
    if-eqz v3, :cond_4f

    .line 118
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_59

    .line 122
    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 127
    :cond_4f
    :goto_4f
    sget v1, Lcom/mqunar/storage/Storage;->a:I

    if-ne v1, v5, :cond_5d

    .line 135
    :goto_53
    return-object v0

    .line 119
    :catch_54
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_58} :catch_59

    goto :goto_45

    .line 131
    :catch_59
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    :cond_5d
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_53

    .line 113
    :catch_62
    move-exception v2

    move-object v2, v1

    .line 114
    :goto_64
    const/4 v3, 0x2

    :try_start_65
    sput v3, Lcom/mqunar/storage/Storage;->a:I
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_9a

    .line 116
    if-eqz v2, :cond_4f

    .line 118
    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_77
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_59

    .line 122
    :goto_6c
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_4f

    .line 119
    :catch_77
    move-exception v2

    .line 120
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_7b} :catch_59

    goto :goto_6c

    .line 116
    :catchall_7c
    move-exception v0

    move-object v3, v1

    :goto_7e
    if-eqz v3, :cond_8d

    .line 118
    :try_start_80
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_8e
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_59

    .line 122
    :goto_83
    :try_start_83
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_8d
    throw v0

    .line 119
    :catch_8e
    move-exception v2

    .line 120
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_92} :catch_59

    goto :goto_83

    .line 116
    :catchall_93
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_7e

    :catchall_97
    move-exception v0

    move-object v1, v2

    goto :goto_7e

    :catchall_9a
    move-exception v0

    move-object v3, v2

    goto :goto_7e

    .line 113
    :catch_9d
    move-exception v3

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_64

    :catch_a2
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_64
.end method

.method public static getFileDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 147
    invoke-static {p0}, Lcom/mqunar/storage/Storage;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/mqunar/storage/Storage;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_16
    return-object v1
.end method

.method public static hasFroyo()Z
    .registers 2

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static newStorage(Landroid/content/Context;)Lcom/mqunar/storage/Storage;
    .registers 2

    .prologue
    .line 39
    const-string v0, "visitor"

    invoke-static {p0, v0}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    return-object v0
.end method

.method public static newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;
    .registers 3

    .prologue
    .line 50
    new-instance v0, Lcom/mqunar/storage/Storage;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/storage/Storage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static openAsset(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 499
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/mqunar/storage/Storage;->openAsset(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static openAsset(Landroid/content/Context;Ljava/lang/String;Z)[B
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 461
    .line 465
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_68
    .catchall {:try_start_1 .. :try_end_6} :catchall_4c

    .line 466
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_6c
    .catchall {:try_start_6 .. :try_end_d} :catchall_61

    move-result-object v0

    .line 468
    const/16 v3, 0x400

    :try_start_10
    new-array v3, v3, [B

    .line 469
    :goto_12
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_33

    .line 470
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_1e
    .catchall {:try_start_10 .. :try_end_1d} :catchall_63

    goto :goto_12

    .line 474
    :catch_1e
    move-exception v3

    .line 477
    :goto_1f
    if-eqz v0, :cond_24

    .line 479
    :try_start_21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_5b

    .line 483
    :cond_24
    :goto_24
    if-eqz v2, :cond_6f

    .line 485
    :try_start_26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_49

    move-object v0, v1

    .line 491
    :goto_2a
    if-eqz v0, :cond_32

    if-eqz p2, :cond_32

    .line 492
    invoke-static {v0}, Lcom/mqunar/storage/EggRoll;->da([B)[B

    move-result-object v0

    .line 495
    :cond_32
    return-object v0

    .line 472
    :cond_33
    :try_start_33
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 473
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_39} :catch_1e
    .catchall {:try_start_33 .. :try_end_39} :catchall_63

    move-result-object v1

    .line 477
    if-eqz v0, :cond_3f

    .line 479
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_59

    .line 483
    :cond_3f
    :goto_3f
    if-eqz v2, :cond_71

    .line 485
    :try_start_41
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_46

    move-object v0, v1

    .line 487
    goto :goto_2a

    .line 486
    :catch_46
    move-exception v0

    move-object v0, v1

    .line 487
    goto :goto_2a

    .line 486
    :catch_49
    move-exception v0

    move-object v0, v1

    .line 487
    goto :goto_2a

    .line 477
    :catchall_4c
    move-exception v0

    move-object v2, v1

    :goto_4e
    if-eqz v1, :cond_53

    .line 479
    :try_start_50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_5d

    .line 483
    :cond_53
    :goto_53
    if-eqz v2, :cond_58

    .line 485
    :try_start_55
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5f

    .line 487
    :cond_58
    :goto_58
    throw v0

    .line 480
    :catch_59
    move-exception v0

    goto :goto_3f

    :catch_5b
    move-exception v0

    goto :goto_24

    :catch_5d
    move-exception v1

    goto :goto_53

    .line 486
    :catch_5f
    move-exception v1

    goto :goto_58

    .line 477
    :catchall_61
    move-exception v0

    goto :goto_4e

    :catchall_63
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4e

    .line 474
    :catch_68
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_1f

    :catch_6c
    move-exception v0

    move-object v0, v1

    goto :goto_1f

    :cond_6f
    move-object v0, v1

    goto :goto_2a

    :cond_71
    move-object v0, v1

    goto :goto_2a
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 251
    :goto_20
    return v0

    .line 248
    :cond_21
    if-eqz p2, :cond_2c

    .line 249
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_20

    .line 251
    :cond_2c
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public clean()Z
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0}, Lcom/mqunar/storage/IStorage;->cleanAllStorage()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1}, Lcom/mqunar/storage/IStorage;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0}, Lcom/mqunar/storage/IStorage;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .registers 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->getBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/storage/IStorage;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
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
    .line 457
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0}, Lcom/mqunar/storage/IStorage;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 412
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/storage/IStorage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOwner()Ljava/lang/String;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, v1, v1}, Lcom/mqunar/storage/IStorage;->getSerializable(Ljava/lang/String;Ljava/lang/Class;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public getSerializable(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/mqunar/storage/IStorage;->getSerializable(Ljava/lang/String;Ljava/lang/Class;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/Class;Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/storage/IStorage;->getSerializable(Ljava/lang/String;Ljava/lang/Class;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putBytes(Ljava/lang/String;[B)Z
    .registers 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putBytes(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public putDouble(Ljava/lang/String;D)Z
    .registers 5

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/storage/IStorage;->putDouble(Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .registers 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putFloat(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putInt(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .registers 5

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/storage/IStorage;->putLong(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    return v0
.end method

.method public putShort(Ljava/lang/String;S)Z
    .registers 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putShort(Ljava/lang/String;S)Z

    move-result v0

    return v0
.end method

.method public putSmoothBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putSmoothBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putSmoothBytes(Ljava/lang/String;[B)Z
    .registers 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putSmoothBytes(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public putSmoothDouble(Ljava/lang/String;D)Z
    .registers 5

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/storage/IStorage;->putSmoothDouble(Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public putSmoothFloat(Ljava/lang/String;F)Z
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putSmoothFloat(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putSmoothInt(Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putSmoothInt(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putSmoothLong(Ljava/lang/String;J)Z
    .registers 5

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/storage/IStorage;->putSmoothLong(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putSmoothSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putSmoothSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    return v0
.end method

.method public putSmoothShort(Ljava/lang/String;S)Z
    .registers 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putSmoothShort(Ljava/lang/String;S)Z

    move-result v0

    return v0
.end method

.method public putSmoothString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putSmoothString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/storage/IStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mqunar/storage/Storage;->c:Lcom/mqunar/storage/IStorage;

    invoke-interface {v0, p1}, Lcom/mqunar/storage/IStorage;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public smoothAppend(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/storage/Storage;->putSmoothString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 270
    :goto_20
    return v0

    .line 267
    :cond_21
    if-eqz p2, :cond_2c

    .line 268
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/storage/Storage;->putSmoothString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_20

    .line 270
    :cond_2c
    const/4 v0, 0x0

    goto :goto_20
.end method
