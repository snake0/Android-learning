.class public final Lcom/baidu/tts/tools/DeviceId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/baidu/tts/tools/DeviceId$b;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xc

    .line 78
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_32

    invoke-static {v1}, Lcom/baidu/tts/tools/Base64;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 81
    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [B

    fill-array-data v2, :array_3c

    invoke-static {v2}, Lcom/baidu/tts/tools/Base64;->decode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    .line 85
    return-void

    .line 78
    :array_32
    .array-data 1
        0x4dt
        0x7at
        0x41t
        0x79t
        0x4dt
        0x54t
        0x49t
        0x78t
        0x4dt
        0x44t
        0x49t
        0x3dt
    .end array-data

    .line 81
    :array_3c
    .array-data 1
        0x5at
        0x47t
        0x6ct
        0x6at
        0x64t
        0x57t
        0x52t
        0x70t
        0x59t
        0x57t
        0x49t
        0x3dt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/baidu/tts/tools/DeviceId;->a()V

    .line 94
    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/baidu/tts/tools/DeviceId$b;
    .registers 3

    .prologue
    .line 185
    sget-object v0, Lcom/baidu/tts/tools/DeviceId;->b:Lcom/baidu/tts/tools/DeviceId$b;

    if-nez v0, :cond_1f

    .line 186
    const-class v0, Lcom/baidu/tts/tools/DeviceId$b;

    .line 187
    const-class v1, Lcom/baidu/tts/tools/DeviceId$b;

    monitor-enter v1

    .line 188
    :try_start_9
    sget-object v0, Lcom/baidu/tts/tools/DeviceId;->b:Lcom/baidu/tts/tools/DeviceId$b;

    if-nez v0, :cond_1e

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 190
    new-instance v0, Lcom/baidu/tts/tools/DeviceId;

    invoke-direct {v0, p0}, Lcom/baidu/tts/tools/DeviceId;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/baidu/tts/tools/DeviceId;->b()Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/tools/DeviceId;->b:Lcom/baidu/tts/tools/DeviceId$b;

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 193
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_22

    .line 196
    :cond_1f
    sget-object v0, Lcom/baidu/tts/tools/DeviceId;->b:Lcom/baidu/tts/tools/DeviceId$b;

    return-object v0

    .line 193
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 150
    .line 153
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_48
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    .line 154
    const/16 v1, 0x2000

    :try_start_8
    new-array v1, v1, [C

    .line 155
    new-instance v3, Ljava/io/CharArrayWriter;

    invoke-direct {v3}, Ljava/io/CharArrayWriter;-><init>()V

    .line 158
    :goto_f
    invoke-virtual {v2, v1}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-lez v4, :cond_24

    .line 159
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a
    .catchall {:try_start_8 .. :try_end_19} :catchall_46

    goto :goto_f

    .line 164
    :catch_1a
    move-exception v1

    .line 165
    :goto_1b
    :try_start_1b
    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_46

    .line 167
    if-eqz v2, :cond_23

    .line 169
    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_33

    .line 177
    :cond_23
    :goto_23
    return-object v0

    .line 162
    :cond_24
    :try_start_24
    invoke-virtual {v3}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_1a
    .catchall {:try_start_24 .. :try_end_27} :catchall_46

    move-result-object v0

    .line 167
    if-eqz v2, :cond_23

    .line 169
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_23

    .line 170
    :catch_2e
    move-exception v1

    .line 171
    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_23

    .line 170
    :catch_33
    move-exception v1

    .line 171
    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_23

    .line 167
    :catchall_38
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3b
    if-eqz v2, :cond_40

    .line 169
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 172
    :cond_40
    :goto_40
    throw v0

    .line 170
    :catch_41
    move-exception v1

    .line 171
    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_40

    .line 167
    :catchall_46
    move-exception v0

    goto :goto_3b

    .line 164
    :catch_48
    move-exception v1

    move-object v2, v0

    goto :goto_1b
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 219
    const/4 v0, 0x0

    .line 229
    :goto_7
    return-object v0

    .line 222
    :cond_8
    :try_start_8
    sget-object v0, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    sget-object v1, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/tts/tools/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/baidu/tts/tools/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_19} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_22

    move-result-object v0

    goto :goto_7

    .line 223
    :catch_1b
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    .line 229
    :goto_1f
    const-string v0, ""

    goto :goto_7

    .line 225
    :catch_22
    move-exception v0

    .line 226
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 97
    if-nez p0, :cond_a

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument b ( byte array ) is null! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_a
    const-string v1, ""

    .line 101
    const-string v0, ""

    .line 103
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_12
    array-length v2, p0

    if-ge v1, v2, :cond_50

    .line 104
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 108
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 112
    :cond_50
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/tools/DeviceId$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 356
    iget-object v0, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 357
    invoke-virtual {v4, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_1d

    .line 359
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 366
    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    .line 425
    :cond_1d
    new-instance v0, Lcom/baidu/tts/tools/DeviceId$1;

    invoke-direct {v0, p0}, Lcom/baidu/tts/tools/DeviceId$1;-><init>(Lcom/baidu/tts/tools/DeviceId;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 445
    return-object v3

    .line 370
    :cond_26
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 371
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_17

    .line 372
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_17

    .line 375
    :try_start_36
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 377
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 378
    if-eqz v6, :cond_17

    .line 379
    const-string v7, "galaxy_data"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 380
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 381
    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/tts/tools/Base64;->decode([B)[B

    move-result-object v7

    .line 382
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    .line 383
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 384
    new-instance v8, Lcom/baidu/tts/tools/DeviceId$a;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/baidu/tts/tools/DeviceId$a;-><init>(Lcom/baidu/tts/tools/DeviceId$1;)V

    .line 385
    const-string v10, "priority"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/baidu/tts/tools/DeviceId$a;->b:I

    .line 386
    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v10, v8, Lcom/baidu/tts/tools/DeviceId$a;->a:Landroid/content/pm/ApplicationInfo;

    .line 387
    iget-object v10, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    .line 388
    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/baidu/tts/tools/DeviceId$a;->d:Z

    .line 391
    :cond_96
    if-eqz p2, :cond_f5

    .line 392
    const-string v10, "galaxy_sf"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f5

    .line 394
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x40

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 396
    const-string v0, "sigs"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 397
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v11, v0, [Ljava/lang/String;

    move v0, v2

    .line 399
    :goto_bd
    array-length v12, v11

    if-ge v0, v12, :cond_c9

    .line 400
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 403
    :cond_c9
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/DeviceId;->a([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-direct {p0, v11, v0}, Lcom/baidu/tts/tools/DeviceId;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 405
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/Base64;->decode([B)[B

    move-result-object v0

    iget-object v6, p0, Lcom/baidu/tts/tools/DeviceId;->e:Ljava/security/PublicKey;

    invoke-static {v0, v6}, Lcom/baidu/tts/tools/DeviceId;->a([BLjava/security/PublicKey;)[B

    move-result-object v0

    .line 407
    invoke-static {v7}, Lcom/baidu/tts/tools/SHA1Util;->sha1([B)[B

    move-result-object v6

    .line 408
    if-eqz v0, :cond_fd

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_fd

    move v0, v1

    .line 409
    :goto_f0
    if-eqz v0, :cond_f5

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/baidu/tts/tools/DeviceId$a;->c:Z

    .line 416
    :cond_f5
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_f8} :catch_fa

    goto/16 :goto_17

    .line 419
    :catch_fa
    move-exception v0

    goto/16 :goto_17

    :cond_fd
    move v0, v2

    .line 408
    goto :goto_f0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 332
    const/4 v1, 0x0

    .line 335
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/baidu/tts/tools/a;->a()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_25
    .catchall {:try_start_1 .. :try_end_a} :catchall_32

    .line 336
    :try_start_a
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 337
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/tts/tools/DeviceId;->e:Ljava/security/PublicKey;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_43
    .catchall {:try_start_a .. :try_end_1a} :catchall_3e

    .line 342
    if-eqz v0, :cond_1f

    .line 344
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 352
    :cond_1f
    :goto_1f
    return-void

    .line 345
    :catch_20
    move-exception v0

    .line 346
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 339
    :catch_25
    move-exception v0

    move-object v0, v1

    .line 342
    :goto_27
    if-eqz v0, :cond_1f

    .line 344
    :try_start_29
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_1f

    .line 345
    :catch_2d
    move-exception v0

    .line 346
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 342
    :catchall_32
    move-exception v0

    :goto_33
    if-eqz v1, :cond_38

    .line 344
    :try_start_35
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    .line 347
    :cond_38
    :goto_38
    throw v0

    .line 345
    :catch_39
    move-exception v1

    .line 346
    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_38

    .line 342
    :catchall_3e
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_33

    .line 339
    :catch_43
    move-exception v1

    goto :goto_27
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "backups/.SystemConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    new-instance v2, Ljava/io/File;

    const-string v3, ".cuid"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    :try_start_28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 289
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 291
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 295
    :cond_41
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_41

    .line 298
    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 299
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 302
    :cond_6d
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 303
    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 304
    sget-object v2, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/tts/tools/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/baidu/tts/tools/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 307
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_95} :catch_98
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_95} :catch_96

    .line 315
    :cond_95
    :goto_95
    return-void

    .line 310
    :catch_96
    move-exception v0

    goto :goto_95

    .line 308
    :catch_98
    move-exception v0

    goto :goto_95
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .registers 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 449
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_2e

    .line 450
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 452
    array-length v3, p1

    move v1, v0

    .line 455
    :goto_10
    if-ge v1, v3, :cond_1a

    .line 456
    aget-object v4, p1, v1

    .line 457
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 460
    :cond_1a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 462
    array-length v3, p2

    .line 464
    :goto_20
    if-ge v0, v3, :cond_2a

    .line 465
    aget-object v4, p2, v0

    .line 466
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 469
    :cond_2a
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 471
    :cond_2e
    return v0
.end method

.method private static a([BLjava/security/PublicKey;)[B
    .registers 4

    .prologue
    .line 117
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 118
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 119
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private a([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 322
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 325
    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/tts/tools/SHA1Util;->sha1([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/tts/tools/DeviceId;->a([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 328
    :cond_1a
    return-object v1
.end method

.method private b()Lcom/baidu/tts/tools/DeviceId$b;
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 519
    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.intent.action.GALAXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/baidu/tts/tools/DeviceId;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_23d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_23d

    .line 525
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/tools/DeviceId$a;

    .line 526
    iget-boolean v1, v0, Lcom/baidu/tts/tools/DeviceId$a;->c:Z

    .line 527
    iget-boolean v0, v0, Lcom/baidu/tts/tools/DeviceId$a;->c:Z

    if-nez v0, :cond_3a

    move v0, v2

    .line 528
    :goto_2e
    if-ge v0, v7, :cond_3a

    .line 529
    const-string v3, "DeviceId"

    const-string v6, "galaxy config err, In the release version of the signature should be matched"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3a
    move v0, v1

    .line 541
    :goto_3b
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v6, "libcuid.so"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_275

    .line 543
    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId$b;->a(Ljava/lang/String;)Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v3

    .line 546
    :goto_5a
    if-nez v3, :cond_26f

    .line 547
    iget v1, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    .line 548
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.baidu.intent.action.GALAXY"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/tools/DeviceId;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v6

    .line 549
    if-eqz v6, :cond_26f

    .line 550
    const-string v0, "files"

    .line 551
    iget-object v1, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 552
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_272

    .line 553
    const-string v0, "DeviceId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fetal error:: app files dir name is unexpectedly :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 557
    :goto_a2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 559
    :goto_a6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26f

    .line 560
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/tools/DeviceId$a;

    .line 561
    iget-boolean v7, v0, Lcom/baidu/tts/tools/DeviceId$a;->d:Z

    if-nez v7, :cond_24a

    .line 562
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v0, v0, Lcom/baidu/tts/tools/DeviceId$a;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "libcuid.so"

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24a

    .line 564
    invoke-static {v7}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId$b;->a(Ljava/lang/String;)Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v3

    .line 565
    if-eqz v3, :cond_24a

    move-object v0, v3

    .line 574
    :goto_db
    if-nez v0, :cond_eb

    .line 575
    const-string v0, "com.baidu.deviceid.v2"

    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId$b;->a(Ljava/lang/String;)Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v0

    .line 579
    :cond_eb
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lcom/baidu/tts/tools/DeviceId;->g(Ljava/lang/String;)Z

    move-result v3

    .line 580
    if-nez v0, :cond_26c

    if-eqz v3, :cond_26c

    .line 581
    iget v0, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    .line 582
    invoke-direct {p0}, Lcom/baidu/tts/tools/DeviceId;->e()Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v0

    move-object v1, v0

    .line 585
    :goto_100
    if-nez v1, :cond_10c

    .line 586
    iget v0, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    .line 587
    invoke-direct {p0}, Lcom/baidu/tts/tools/DeviceId;->d()Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v1

    .line 591
    :cond_10c
    if-nez v1, :cond_269

    if-eqz v3, :cond_269

    .line 592
    iget v0, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    .line 593
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/DeviceId;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/DeviceId;->h(Ljava/lang/String;)Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v1

    move v2, v5

    .line 599
    :goto_121
    if-nez v1, :cond_266

    .line 600
    iget v1, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    .line 601
    if-nez v2, :cond_131

    .line 602
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/DeviceId;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    :cond_131
    new-instance v2, Lcom/baidu/tts/tools/DeviceId$b;

    invoke-direct {v2, v4}, Lcom/baidu/tts/tools/DeviceId$b;-><init>(Lcom/baidu/tts/tools/DeviceId$1;)V

    .line 606
    iget-object v1, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 608
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v3, v6, :cond_24e

    .line 609
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    :goto_15f
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v5}, Lcom/baidu/tts/tools/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/tts/tools/DeviceId$b;->a:Ljava/lang/String;

    .line 616
    iput-object v0, v2, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    move-object v0, v2

    .line 620
    :goto_16c
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "libcuid.so"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 621
    iget v2, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_185

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_197

    .line 622
    :cond_185
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_263

    .line 623
    invoke-virtual {v0}, Lcom/baidu/tts/tools/DeviceId$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    :goto_193
    invoke-direct {p0, v1}, Lcom/baidu/tts/tools/DeviceId;->e(Ljava/lang/String;)Z

    move-object v4, v1

    .line 629
    :cond_197
    invoke-direct {p0}, Lcom/baidu/tts/tools/DeviceId;->c()Z

    move-result v1

    .line 630
    if-eqz v1, :cond_1c2

    iget v2, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1af

    const-string v2, "com.baidu.deviceid.v2"

    invoke-direct {p0, v2}, Lcom/baidu/tts/tools/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 632
    :cond_1af
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    .line 633
    invoke-virtual {v0}, Lcom/baidu/tts/tools/DeviceId$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 636
    :cond_1bd
    const-string v2, "com.baidu.deviceid.v2"

    invoke-direct {p0, v2, v4}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 639
    :cond_1c2
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/baidu/tts/tools/DeviceId;->g(Ljava/lang/String;)Z

    move-result v2

    .line 641
    if-eqz v2, :cond_1f2

    .line 642
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v5, "backups/.SystemConfig/.cuid2"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 643
    iget v3, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1e1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f2

    .line 644
    :cond_1e1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1ef

    .line 645
    invoke-virtual {v0}, Lcom/baidu/tts/tools/DeviceId$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 648
    :cond_1ef
    invoke-static {v4}, Lcom/baidu/tts/tools/DeviceId;->c(Ljava/lang/String;)V

    .line 652
    :cond_1f2
    if-eqz v1, :cond_214

    iget v2, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_206

    const-string v2, "com.baidu.deviceid"

    invoke-direct {p0, v2}, Lcom/baidu/tts/tools/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_214

    .line 654
    :cond_206
    const-string v2, "com.baidu.deviceid"

    iget-object v3, v0, Lcom/baidu/tts/tools/DeviceId$b;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 655
    const-string v2, "bd_setting_i"

    iget-object v3, v0, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 658
    :cond_214
    if-eqz v1, :cond_23c

    iget-object v1, v0, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23c

    .line 659
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "backups/.SystemConfig/.cuid"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 660
    iget v2, p0, Lcom/baidu/tts/tools/DeviceId;->d:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_235

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23c

    .line 661
    :cond_235
    iget-object v1, v0, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/tts/tools/DeviceId$b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_23c
    return-object v0

    :cond_23d
    move v0, v2

    .line 535
    :goto_23e
    if-ge v0, v7, :cond_278

    .line 536
    const-string v1, "DeviceId"

    const-string v3, "galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_23e

    :cond_24a
    move-object v0, v3

    move-object v3, v0

    .line 570
    goto/16 :goto_a6

    .line 612
    :cond_24e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.baidu"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_15f

    :cond_263
    move-object v1, v4

    goto/16 :goto_193

    :cond_266
    move-object v0, v1

    goto/16 :goto_16c

    :cond_269
    move-object v0, v4

    goto/16 :goto_121

    :cond_26c
    move-object v1, v0

    goto/16 :goto_100

    :cond_26f
    move-object v0, v3

    goto/16 :goto_db

    :cond_272
    move-object v1, v0

    goto/16 :goto_a2

    :cond_275
    move-object v3, v4

    goto/16 :goto_5a

    :cond_278
    move v0, v2

    goto/16 :goto_3b
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    const/4 v0, 0x0

    .line 241
    :goto_7
    return-object v0

    .line 238
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    sget-object v2, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/tts/tools/Base64;->decode([B)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/tts/tools/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    goto :goto_7

    .line 239
    :catch_1e
    move-exception v0

    .line 240
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    .line 241
    const-string v0, ""

    goto :goto_7
.end method

.method private static b(Ljava/lang/Throwable;)V
    .registers 1

    .prologue
    .line 123
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 514
    :goto_a
    return v0

    .line 512
    :catch_b
    move-exception v0

    .line 513
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    .line 514
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static c(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 247
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    new-instance v1, Ljava/io/File;

    const-string v2, ".cuid2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_57

    .line 252
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 255
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 258
    :cond_2b
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 261
    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 262
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 265
    :cond_57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 266
    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 267
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 269
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_69} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_69} :catch_6a

    .line 276
    :goto_69
    return-void

    .line 272
    :catch_6a
    move-exception v0

    goto :goto_69

    .line 270
    :catch_6c
    move-exception v0

    goto :goto_69
.end method

.method private c()Z
    .registers 2

    .prologue
    .line 669
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/DeviceId;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d()Lcom/baidu/tts/tools/DeviceId$b;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 681
    const-string v0, "com.baidu.deviceid"

    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    const-string v0, "bd_setting_i"

    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 684
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/DeviceId;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 686
    const-string v2, "bd_setting_i"

    invoke-direct {p0, v2, v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 690
    :cond_24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 691
    iget-object v1, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.baidu"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/tts/tools/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-direct {p0, v1}, Lcom/baidu/tts/tools/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 696
    :cond_54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 697
    new-instance v2, Lcom/baidu/tts/tools/DeviceId$b;

    invoke-direct {v2, v3}, Lcom/baidu/tts/tools/DeviceId$b;-><init>(Lcom/baidu/tts/tools/DeviceId$1;)V

    .line 698
    iput-object v1, v2, Lcom/baidu/tts/tools/DeviceId$b;->a:Ljava/lang/String;

    .line 699
    iput-object v0, v2, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    move-object v0, v2

    .line 702
    :goto_64
    return-object v0

    :cond_65
    move-object v0, v3

    goto :goto_64
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    if-eqz p0, :cond_c

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, ""

    :cond_c
    return-object p0
.end method

.method private e()Lcom/baidu/tts/tools/DeviceId$b;
    .registers 5

    .prologue
    .line 707
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 709
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 712
    :try_start_1b
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/Base64;->decode([B)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/tts/tools/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId$b;->a(Ljava/lang/String;)Lcom/baidu/tts/tools/DeviceId$b;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_33} :catch_35

    move-result-object v0

    .line 720
    :goto_34
    return-object v0

    .line 714
    :catch_35
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 720
    :cond_39
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private e(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 476
    const/4 v1, 0x0

    .line 479
    :try_start_2
    iget-object v2, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    const-string v3, "libcuid.so"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 481
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_20
    .catchall {:try_start_2 .. :try_end_15} :catchall_30

    .line 487
    if-eqz v1, :cond_1a

    .line 489
    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 497
    :cond_1a
    :goto_1a
    return v0

    .line 490
    :catch_1b
    move-exception v1

    .line 491
    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 484
    :catch_20
    move-exception v0

    .line 485
    :try_start_21
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_30

    .line 487
    if-eqz v1, :cond_29

    .line 489
    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2b

    .line 497
    :cond_29
    :goto_29
    const/4 v0, 0x0

    goto :goto_1a

    .line 490
    :catch_2b
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 487
    :catchall_30
    move-exception v0

    if-eqz v1, :cond_36

    .line 489
    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    .line 492
    :cond_36
    :goto_36
    throw v0

    .line 490
    :catch_37
    move-exception v1

    .line 491
    invoke-static {v1}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_36
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 505
    :goto_a
    return-object v0

    .line 503
    :catch_b
    move-exception v0

    .line 504
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->b(Ljava/lang/Throwable;)V

    .line 505
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private g(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 677
    iget-object v0, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 208
    const-string v0, ""

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 211
    const-string v0, ""

    .line 214
    :cond_14
    return-object v0
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    invoke-static {p0}, Lcom/baidu/tts/tools/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/tools/DeviceId$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    invoke-static {p0}, Lcom/baidu/tts/tools/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/tts/tools/DeviceId$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    invoke-static {p0}, Lcom/baidu/tts/tools/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/tts/tools/DeviceId$b;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private h(Ljava/lang/String;)Lcom/baidu/tts/tools/DeviceId$b;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 724
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_14

    move v5, v3

    .line 725
    :goto_a
    if-eqz v5, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v2

    .line 779
    :goto_13
    return-object v0

    :cond_14
    move v5, v4

    .line 724
    goto :goto_a

    .line 729
    :cond_16
    const-string v0, ""

    .line 730
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "baidu/.cuid"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_c3

    .line 732
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v6, "backups/.SystemConfig/.cuid"

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 737
    :goto_34
    :try_start_34
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 738
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    :goto_43
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_65

    .line 743
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_51} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_51} :catch_b7

    goto :goto_43

    .line 765
    :catch_52
    move-exception v1

    move-object v1, p1

    .line 773
    :cond_54
    :goto_54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b4

    .line 774
    new-instance v3, Lcom/baidu/tts/tools/DeviceId$b;

    invoke-direct {v3, v2}, Lcom/baidu/tts/tools/DeviceId$b;-><init>(Lcom/baidu/tts/tools/DeviceId$1;)V

    .line 775
    iput-object v0, v3, Lcom/baidu/tts/tools/DeviceId$b;->a:Ljava/lang/String;

    .line 776
    iput-object v1, v3, Lcom/baidu/tts/tools/DeviceId$b;->b:Ljava/lang/String;

    move-object v0, v3

    .line 777
    goto :goto_13

    .line 747
    :cond_65
    :try_start_65
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 748
    new-instance v1, Ljava/lang/String;

    sget-object v6, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    sget-object v7, Lcom/baidu/tts/tools/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/tts/tools/Base64;->decode([B)[B

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/baidu/tts/tools/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 749
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 750
    if-eqz v1, :cond_c1

    array-length v4, v1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_c1

    .line 751
    if-eqz v5, :cond_a4

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 752
    const/4 v4, 0x1

    aget-object v0, v1, v4
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_9b} :catch_52
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_9b} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_9b} :catch_b7

    move-object v1, p1

    .line 762
    :goto_9c
    if-nez v3, :cond_54

    .line 763
    :try_start_9e
    invoke-static {v1, v0}, Lcom/baidu/tts/tools/DeviceId;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_a1} :catch_a2
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_ba

    goto :goto_54

    .line 765
    :catch_a2
    move-exception v3

    goto :goto_54

    .line 753
    :cond_a4
    if-nez v5, :cond_c1

    .line 754
    :try_start_a6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 755
    const/4 v4, 0x1

    aget-object p1, v1, v4

    .line 758
    :cond_af
    const/4 v4, 0x1

    aget-object v0, v1, v4
    :try_end_b2
    .catch Ljava/io/FileNotFoundException; {:try_start_a6 .. :try_end_b2} :catch_52
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b2} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b2} :catch_b7

    move-object v1, p1

    goto :goto_9c

    :cond_b4
    move-object v0, v2

    .line 779
    goto/16 :goto_13

    .line 769
    :catch_b7
    move-exception v1

    move-object v1, p1

    goto :goto_54

    :catch_ba
    move-exception v3

    goto :goto_54

    .line 767
    :catch_bc
    move-exception v1

    move-object v1, p1

    goto :goto_54

    :catch_bf
    move-exception v3

    goto :goto_54

    :cond_c1
    move-object v1, p1

    goto :goto_9c

    :cond_c3
    move v3, v4

    goto/16 :goto_34
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 785
    const/4 v1, 0x0

    .line 788
    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/tools/DeviceId;->c:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 789
    if-eqz v0, :cond_24

    .line 790
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_1c

    move-result-object v0

    .line 796
    :goto_11
    invoke-static {v0}, Lcom/baidu/tts/tools/DeviceId;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 801
    :goto_1b
    return-object p1

    .line 792
    :catch_1c
    move-exception v0

    .line 793
    const-string v2, "DeviceId"

    const-string v3, "Read IMEI failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    move-object v0, v1

    goto :goto_11

    :cond_26
    move-object p1, v0

    goto :goto_1b
.end method
