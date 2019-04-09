.class public final Lcom/baidu/techain/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static d:Lcom/baidu/techain/b/k$a;


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xc

    .line 27
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_3a

    .line 28
    invoke-static {v1}, Lcom/baidu/techain/b/c;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/baidu/techain/b/k;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_44

    .line 30
    invoke-static {v1}, Lcom/baidu/techain/b/c;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/baidu/techain/b/k;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/techain/b/k;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/techain/b/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/techain/b/k;->c:Ljava/lang/String;

    .line 31
    return-void

    .line 27
    :array_3a
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

    .line 29
    :array_44
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
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/baidu/techain/b/k;->e:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    invoke-static {p0}, Lcom/baidu/techain/b/k;->b(Landroid/content/Context;)Lcom/baidu/techain/b/k$a;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_b

    .line 79
    invoke-virtual {v0}, Lcom/baidu/techain/b/k$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 51
    .line 53
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_3b
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    .line 54
    const/16 v2, 0x2000

    :try_start_8
    new-array v2, v2, [C

    .line 55
    new-instance v3, Ljava/io/CharArrayWriter;

    invoke-direct {v3}, Ljava/io/CharArrayWriter;-><init>()V

    .line 57
    :goto_f
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-lez v4, :cond_21

    .line 58
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_1a
    .catchall {:try_start_8 .. :try_end_19} :catchall_39

    goto :goto_f

    .line 65
    :catch_1a
    move-exception v2

    :goto_1b
    if-eqz v1, :cond_20

    .line 67
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_35

    .line 73
    :cond_20
    :goto_20
    return-object v0

    .line 60
    :cond_21
    :try_start_21
    invoke-virtual {v3}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_1a
    .catchall {:try_start_21 .. :try_end_24} :catchall_39

    move-result-object v0

    .line 67
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_20

    :catch_29
    move-exception v1

    goto :goto_20

    .line 65
    :catchall_2b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2f
    if-eqz v1, :cond_34

    .line 67
    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_37

    .line 70
    :cond_34
    :goto_34
    throw v0

    :catch_35
    move-exception v1

    goto :goto_20

    :catch_37
    move-exception v1

    goto :goto_34

    .line 65
    :catchall_39
    move-exception v0

    goto :goto_2f

    :catch_3b
    move-exception v1

    move-object v1, v0

    goto :goto_1b
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/b/k;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 47
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic a()V
    .registers 0

    .prologue
    .line 19
    return-void
.end method

.method private b()Lcom/baidu/techain/b/k$a;
    .registers 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    :try_start_1
    const-string v1, "com.baidu.deviceid.v2"

    invoke-direct {p0, v1}, Lcom/baidu/techain/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/techain/b/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/techain/b/k$a;->a(Ljava/lang/String;)Lcom/baidu/techain/b/k$a;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_12

    .line 125
    :cond_11
    :goto_11
    return-object v0

    .line 103
    :cond_12
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lcom/baidu/techain/b/k;->e(Ljava/lang/String;)Z

    move-result v1

    .line 104
    if-eqz v1, :cond_1e

    .line 105
    invoke-static {}, Lcom/baidu/techain/b/k;->c()Lcom/baidu/techain/b/k$a;

    move-result-object v0

    .line 108
    :cond_1e
    if-nez v0, :cond_11

    .line 112
    invoke-direct {p0}, Lcom/baidu/techain/b/k;->d()Lcom/baidu/techain/b/k$a;

    move-result-object v0

    .line 113
    if-nez v0, :cond_11

    .line 117
    if-eqz v1, :cond_11

    .line 118
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/baidu/techain/b/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/baidu/techain/b/k;->b(Ljava/lang/String;)Lcom/baidu/techain/b/k$a;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_11

    :catch_33
    move-exception v1

    goto :goto_11
.end method

.method private static b(Landroid/content/Context;)Lcom/baidu/techain/b/k$a;
    .registers 3

    .prologue
    .line 85
    sget-object v0, Lcom/baidu/techain/b/k;->d:Lcom/baidu/techain/b/k$a;

    if-nez v0, :cond_17

    .line 86
    const-class v1, Lcom/baidu/techain/b/k$a;

    monitor-enter v1

    .line 87
    :try_start_7
    sget-object v0, Lcom/baidu/techain/b/k;->d:Lcom/baidu/techain/b/k$a;

    if-nez v0, :cond_16

    .line 88
    new-instance v0, Lcom/baidu/techain/b/k;

    invoke-direct {v0, p0}, Lcom/baidu/techain/b/k;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/baidu/techain/b/k;->b()Lcom/baidu/techain/b/k$a;

    move-result-object v0

    sput-object v0, Lcom/baidu/techain/b/k;->d:Lcom/baidu/techain/b/k$a;

    .line 90
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 92
    :cond_17
    sget-object v0, Lcom/baidu/techain/b/k;->d:Lcom/baidu/techain/b/k$a;

    return-object v0

    .line 90
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static b(Ljava/lang/String;)Lcom/baidu/techain/b/k$a;
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 150
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v1, v3, :cond_14

    move v5, v0

    .line 151
    :goto_a
    if-eqz v5, :cond_16

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v2

    .line 207
    :goto_13
    return-object v0

    :cond_14
    move v5, v6

    .line 150
    goto :goto_a

    .line 154
    :cond_16
    const-string v1, ""

    .line 155
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "baidu/.cuid"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_34

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "backups/.SystemConfig/.cuid"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    :cond_34
    :try_start_34
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_39} :catch_e1
    .catchall {:try_start_34 .. :try_end_39} :catchall_c9

    .line 163
    :try_start_39
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3e} :catch_e7
    .catchall {:try_start_39 .. :try_end_3e} :catchall_dc

    .line 164
    :try_start_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    :goto_43
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_72

    .line 167
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_51} :catch_52
    .catchall {:try_start_3e .. :try_end_51} :catchall_df

    goto :goto_43

    :catch_52
    move-exception v0

    move-object v0, p0

    .line 189
    :goto_54
    if-eqz v3, :cond_59

    .line 190
    :try_start_56
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 192
    :cond_59
    if-eqz v4, :cond_5e

    .line 193
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5e} :catch_c4

    :cond_5e
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 201
    :goto_61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d7

    .line 202
    new-instance v2, Lcom/baidu/techain/b/k$a;

    invoke-direct {v2, v6}, Lcom/baidu/techain/b/k$a;-><init>(B)V

    .line 203
    iput-object v0, v2, Lcom/baidu/techain/b/k$a;->a:Ljava/lang/String;

    .line 204
    iput-object v1, v2, Lcom/baidu/techain/b/k$a;->b:Ljava/lang/String;

    move-object v0, v2

    .line 205
    goto :goto_13

    .line 170
    :cond_72
    :try_start_72
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 171
    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/baidu/techain/b/k;->c:Ljava/lang/String;

    sget-object v9, Lcom/baidu/techain/b/k;->c:Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/c;->a([B)[B

    move-result-object v0

    invoke-static {v8, v9, v0}, Lcom/baidu/techain/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 173
    const-string v0, "="

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_ec

    array-length v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_ec

    .line 175
    if-eqz v5, :cond_b3

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 176
    const/4 v5, 0x1

    aget-object v1, v0, v5
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_a8} :catch_52
    .catchall {:try_start_72 .. :try_end_a8} :catchall_df

    move-object v0, v1

    move-object v1, p0

    .line 190
    :goto_aa
    :try_start_aa
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 193
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_b0} :catch_b1

    goto :goto_61

    .line 200
    :catch_b1
    move-exception v3

    goto :goto_61

    .line 177
    :cond_b3
    if-nez v5, :cond_ec

    .line 178
    :try_start_b5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 179
    const/4 v5, 0x1

    aget-object p0, v0, v5

    .line 181
    :cond_be
    const/4 v5, 0x1

    aget-object v1, v0, v5
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_c1} :catch_52
    .catchall {:try_start_b5 .. :try_end_c1} :catchall_df

    move-object v0, v1

    move-object v1, p0

    goto :goto_aa

    .line 200
    :catch_c4
    move-exception v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_61

    .line 188
    :catchall_c9
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    .line 189
    :goto_cc
    if-eqz v3, :cond_d1

    .line 190
    :try_start_ce
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 192
    :cond_d1
    if-eqz v4, :cond_d6

    .line 193
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_d6} :catch_da

    .line 198
    :cond_d6
    :goto_d6
    throw v0

    :cond_d7
    move-object v0, v2

    .line 207
    goto/16 :goto_13

    :catch_da
    move-exception v1

    goto :goto_d6

    .line 188
    :catchall_dc
    move-exception v0

    move-object v3, v2

    goto :goto_cc

    :catchall_df
    move-exception v0

    goto :goto_cc

    :catch_e1
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v0, p0

    goto/16 :goto_54

    :catch_e7
    move-exception v0

    move-object v3, v2

    move-object v0, p0

    goto/16 :goto_54

    :cond_ec
    move-object v0, v1

    move-object v1, p0

    goto :goto_aa
.end method

.method private static c()Lcom/baidu/techain/b/k$a;
    .registers 4

    .prologue
    .line 131
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 133
    invoke-static {v0}, Lcom/baidu/techain/b/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_35

    move-result v1

    if-nez v1, :cond_36

    .line 136
    :try_start_1b
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/baidu/techain/b/k;->c:Ljava/lang/String;

    sget-object v3, Lcom/baidu/techain/b/k;->c:Ljava/lang/String;

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/c;->a([B)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/techain/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 136
    invoke-static {v1}, Lcom/baidu/techain/b/k$a;->a(Ljava/lang/String;)Lcom/baidu/techain/b/k$a;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_33} :catch_38

    move-result-object v0

    .line 146
    :goto_34
    return-object v0

    :catch_35
    move-exception v0

    :cond_36
    :goto_36
    const/4 v0, 0x0

    goto :goto_34

    :catch_38
    move-exception v0

    goto :goto_36
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 2237
    :try_start_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/baidu/techain/b/k;->e(Ljava/lang/String;)Z

    move-result v0

    .line 252
    if-nez v0, :cond_a

    .line 266
    :cond_9
    :goto_9
    return-object p1

    .line 255
    :cond_a
    iget-object v0, p0, Lcom/baidu/techain/b/k;->e:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 256
    if-eqz v0, :cond_2f

    .line 257
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_2e

    move-result-object v0

    .line 2270
    :goto_1a
    if-eqz v0, :cond_26

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2271
    const-string v0, ""

    .line 263
    :cond_26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object p1, v0

    goto :goto_9

    :catch_2e
    move-exception v0

    :cond_2f
    move-object v0, v1

    goto :goto_1a
.end method

.method private d()Lcom/baidu/techain/b/k$a;
    .registers 5

    .prologue
    .line 212
    :try_start_0
    const-string v0, "com.baidu.deviceid"

    invoke-direct {p0, v0}, Lcom/baidu/techain/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "bd_setting_i"

    invoke-direct {p0, v1}, Lcom/baidu/techain/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 215
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/baidu/techain/b/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 217
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 218
    iget-object v0, p0, Lcom/baidu/techain/b/k;->e:Landroid/content/Context;

    .line 1242
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1244
    const-string v0, ""

    .line 219
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "com.baidu"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/baidu/techain/b/o;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-direct {p0, v0}, Lcom/baidu/techain/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 224
    :goto_53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 225
    new-instance v0, Lcom/baidu/techain/b/k$a;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/baidu/techain/b/k$a;-><init>(B)V

    .line 226
    iput-object v1, v0, Lcom/baidu/techain/b/k$a;->a:Ljava/lang/String;

    .line 227
    iput-object v2, v0, Lcom/baidu/techain/b/k$a;->b:Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_63} :catch_64

    .line 233
    :goto_63
    return-object v0

    :catch_64
    move-exception v0

    :cond_65
    const/4 v0, 0x0

    goto :goto_63

    :cond_67
    move-object v1, v0

    goto :goto_53

    :cond_69
    move-object v2, v1

    goto :goto_19
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 277
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 278
    const/4 v0, 0x0

    .line 285
    :goto_7
    return-object v0

    .line 281
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/techain/b/k;->c:Ljava/lang/String;

    sget-object v2, Lcom/baidu/techain/b/k;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/techain/b/c;->a([B)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/techain/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1d} :catch_1e

    goto :goto_7

    .line 285
    :catch_1e
    move-exception v0

    const-string v0, ""

    goto :goto_7
.end method

.method private e(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 289
    iget-object v0, p0, Lcom/baidu/techain/b/k;->e:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 290
    if-nez v0, :cond_12

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
