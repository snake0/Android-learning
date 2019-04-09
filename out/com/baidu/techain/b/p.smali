.class public final Lcom/baidu/techain/b/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, ""

    sput-object v0, Lcom/baidu/techain/b/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/baidu/techain/b/p;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 65
    new-instance v0, Lcom/baidu/techain/b/p;

    invoke-direct {v0}, Lcom/baidu/techain/b/p;-><init>()V

    .line 66
    invoke-static {p0}, Lcom/baidu/techain/b/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/techain/b/p;->a:Ljava/lang/String;

    .line 68
    :cond_13
    sget-object v0, Lcom/baidu/techain/b/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 126
    :goto_8
    return-object v0

    .line 124
    :catch_9
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 126
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 130
    .line 132
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_47
    .catchall {:try_start_1 .. :try_end_6} :catchall_36

    .line 133
    const/16 v2, 0x2000

    :try_start_8
    new-array v2, v2, [C

    .line 134
    new-instance v3, Ljava/io/CharArrayWriter;

    invoke-direct {v3}, Ljava/io/CharArrayWriter;-><init>()V

    .line 136
    :goto_f
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-lez v4, :cond_24

    .line 137
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_1a
    .catchall {:try_start_8 .. :try_end_19} :catchall_45

    goto :goto_f

    .line 142
    :catch_1a
    move-exception v2

    :goto_1b
    :try_start_1b
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_45

    .line 144
    if-eqz v1, :cond_23

    .line 146
    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_31

    .line 152
    :cond_23
    :goto_23
    return-object v0

    .line 139
    :cond_24
    :try_start_24
    invoke-virtual {v3}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_1a
    .catchall {:try_start_24 .. :try_end_27} :catchall_45

    move-result-object v0

    .line 146
    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_23

    .line 148
    :catch_2c
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_23

    :catch_31
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_23

    .line 144
    :catchall_36
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3a
    if-eqz v1, :cond_3f

    .line 146
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_40

    .line 149
    :cond_3f
    :goto_3f
    throw v0

    .line 148
    :catch_40
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_3f

    .line 144
    :catchall_45
    move-exception v0

    goto :goto_3a

    .line 142
    :catch_47
    move-exception v1

    move-object v1, v0

    goto :goto_1b
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 175
    :goto_8
    return v0

    .line 173
    :catch_9
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 175
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    .line 33
    invoke-static {p0}, Lcom/baidu/techain/b/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 36
    invoke-static {p0}, Lcom/baidu/techain/b/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 39
    invoke-static {p0}, Lcom/baidu/techain/b/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 1072
    invoke-static {p0}, Lcom/baidu/techain/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {p0}, Lcom/baidu/techain/b/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1075
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "1|"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    move-object v2, v0

    move v3, v1

    move v0, v1

    .line 47
    :goto_52
    if-nez v3, :cond_5e

    invoke-static {p0}, Lcom/baidu/techain/b/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 48
    :cond_5e
    new-instance v3, Lcom/baidu/techain/e;

    invoke-direct {v3, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1342
    iget-object v4, v3, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    const-string v5, "rpnewuid"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1343
    iget-object v3, v3, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    :cond_6f
    if-nez v1, :cond_7b

    invoke-static {p0}, Lcom/baidu/techain/b/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 53
    :cond_7b
    const-string v1, "com.q.zi.i"

    invoke-static {p0, v1, v2}, Lcom/baidu/techain/b/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    :cond_80
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/baidu/techain/b/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 57
    if-eqz v1, :cond_c8

    if-nez v0, :cond_94

    invoke-static {p0}, Lcom/baidu/techain/b/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 2179
    :cond_94
    const/4 v0, 0x0

    .line 2181
    :try_start_95
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, ".zp"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2182
    new-instance v3, Ljava/io/File;

    const-string v4, ".icosc"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2183
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 2184
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_b9

    .line 2185
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2186
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2192
    :cond_b9
    :goto_b9
    new-instance v1, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_bf} :catch_f3
    .catchall {:try_start_95 .. :try_end_bf} :catchall_107

    .line 2193
    :try_start_bf
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_c5} :catch_11d
    .catchall {:try_start_bf .. :try_end_c5} :catchall_116

    .line 2200
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_c8} :catch_102

    .line 60
    :cond_c8
    :goto_c8
    return-object v2

    .line 1078
    :cond_c9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4f

    .line 2189
    :cond_ef
    :try_start_ef
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_f2} :catch_f3
    .catchall {:try_start_ef .. :try_end_f2} :catchall_107

    goto :goto_b9

    .line 2196
    :catch_f3
    move-exception v1

    :goto_f4
    :try_start_f4
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_118

    .line 2198
    if-eqz v0, :cond_c8

    .line 2200
    :try_start_f9
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_c8

    .line 2202
    :catch_fd
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_c8

    :catch_102
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_c8

    .line 2198
    :catchall_107
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_10b
    if-eqz v1, :cond_110

    .line 2200
    :try_start_10d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_110} :catch_111

    .line 2203
    :cond_110
    :goto_110
    throw v0

    .line 2202
    :catch_111
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_110

    .line 2198
    :catchall_116
    move-exception v0

    goto :goto_10b

    :catchall_118
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_10b

    .line 2196
    :catch_11d
    move-exception v0

    move-object v0, v1

    goto :goto_f4

    :cond_120
    move v3, v1

    move v6, v2

    move-object v2, v0

    move v0, v6

    goto/16 :goto_52

    :cond_126
    move v3, v1

    move v1, v2

    move v6, v2

    move-object v2, v0

    move v0, v6

    goto/16 :goto_52

    :cond_12d
    move v1, v2

    move v3, v2

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    goto/16 :goto_52
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 157
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_11

    move-result v1

    .line 158
    if-nez v1, :cond_10

    .line 159
    const/4 v0, 0x1

    .line 166
    :cond_10
    :goto_10
    return v0

    .line 164
    :catch_11
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_10
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 85
    :try_start_0
    new-instance v0, Lcom/baidu/techain/e;

    invoke-direct {v0, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 2338
    iget-object v0, v0, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    const-string v1, "rpnewuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 90
    :goto_f
    return-object v0

    .line 88
    :catch_10
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 90
    const-string v0, ""

    goto :goto_f
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    :try_start_0
    const-string v0, "com.q.zi.i"

    invoke-static {p0, v0}, Lcom/baidu/techain/b/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 100
    :goto_6
    return-object v0

    .line 98
    :catch_7
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 100
    const-string v0, ""

    goto :goto_6
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 105
    :try_start_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/baidu/techain/b/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 106
    if-nez v0, :cond_b

    .line 107
    const-string v0, ""

    .line 117
    :goto_a
    return-object v0

    .line 110
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".zp/.icosc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 112
    invoke-static {v0}, Lcom/baidu/techain/b/p;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_a

    .line 115
    :catch_21
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 117
    :cond_25
    const-string v0, ""

    goto :goto_a
.end method
