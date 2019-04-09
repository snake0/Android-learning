.class public Lcom/mqunar/tools/log/UELog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/mqunar/storage/Storage;

.field private static b:Lcom/mqunar/storage/Storage;

.field private static final c:Ljava/lang/Object;

.field private static final e:Ljava/util/Calendar;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mqunar/tools/log/UELog;->c:Ljava/lang/Object;

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/mqunar/tools/log/UELog;->e:Ljava/util/Calendar;

    .line 70
    sget-object v0, Lcom/mqunar/tools/log/UELog;->e:Ljava/util/Calendar;

    const/16 v1, 0x7dc

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;
    .registers 3

    .prologue
    .line 32
    sget-object v0, Lcom/mqunar/tools/log/UELog;->a:Lcom/mqunar/storage/Storage;

    if-nez v0, :cond_14

    .line 33
    const-string v1, "qunar_ue"

    monitor-enter v1

    .line 34
    :try_start_7
    sget-object v0, Lcom/mqunar/tools/log/UELog;->a:Lcom/mqunar/storage/Storage;

    if-nez v0, :cond_13

    .line 35
    const-string v0, "qunar_ue"

    invoke-static {p0, v0}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    sput-object v0, Lcom/mqunar/tools/log/UELog;->a:Lcom/mqunar/storage/Storage;

    .line 37
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_17

    .line 39
    :cond_14
    sget-object v0, Lcom/mqunar/tools/log/UELog;->a:Lcom/mqunar/storage/Storage;

    return-object v0

    .line 37
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private a(Ljava/lang/CharSequence;Z)V
    .registers 9

    .prologue
    .line 240
    if-eqz p2, :cond_b

    .line 241
    const-string v0, "UELogUtils"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/tools/log/UELog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_b
    sget-object v1, Lcom/mqunar/tools/log/UELog;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_e
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->b(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v2, "beta_key_show_ue_log"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 246
    const-string v0, "UELogUtils"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_26
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v2, "crazy"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 249
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v2, "cc"

    iget-object v3, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v3

    const-string v4, "cc"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/mqunar/storage/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/mqunar/storage/Storage;->putInt(Ljava/lang/String;I)Z

    .line 250
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v2, "ue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mqunar/storage/Storage;->append(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 252
    :cond_71
    monitor-exit v1

    .line 253
    return-void

    .line 252
    :catchall_73
    move-exception v0

    monitor-exit v1
    :try_end_75
    .catchall {:try_start_e .. :try_end_75} :catchall_73

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 274
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v1, "crazy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 275
    const-string v0, "com.mqunar.qav.uelog.QAVLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 276
    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 277
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 278
    const-string v1, "log"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mqunar/tools/log/UELog;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_4d

    .line 283
    :cond_4c
    :goto_4c
    return-void

    .line 280
    :catch_4d
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4c
.end method

.method private static b(Landroid/content/Context;)Lcom/mqunar/storage/Storage;
    .registers 3

    .prologue
    .line 43
    sget-object v0, Lcom/mqunar/tools/log/UELog;->b:Lcom/mqunar/storage/Storage;

    if-nez v0, :cond_14

    .line 44
    const-string v1, "qunar_beta"

    monitor-enter v1

    .line 45
    :try_start_7
    sget-object v0, Lcom/mqunar/tools/log/UELog;->b:Lcom/mqunar/storage/Storage;

    if-nez v0, :cond_13

    .line 46
    const-string v0, "qunar_beta"

    invoke-static {p0, v0}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    sput-object v0, Lcom/mqunar/tools/log/UELog;->b:Lcom/mqunar/storage/Storage;

    .line 48
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_17

    .line 50
    :cond_14
    sget-object v0, Lcom/mqunar/tools/log/UELog;->b:Lcom/mqunar/storage/Storage;

    return-object v0

    .line 48
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static getSecond()J
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lcom/mqunar/tools/log/UELog;->e:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->getSecond(Ljava/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSecond(Ljava/util/Calendar;)J
    .registers 5

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 129
    :goto_7
    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 131
    :try_start_f
    invoke-virtual {v2, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 133
    invoke-virtual {v0, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_1a} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_1a} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_1a} :catch_2c

    move-result-object v1

    .line 148
    :cond_1b
    return-object v1

    .line 134
    :catch_1c
    move-exception v0

    .line 136
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_7

    .line 137
    :catch_22
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :catch_2c
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :cond_36
    if-eqz v0, :cond_1b

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public appendLog(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mqunar/tools/log/UELog;->a(Ljava/lang/CharSequence;Z)V

    .line 237
    return-void
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v1, "cc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public log(JLjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 192
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/mqunar/tools/log/UELog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v1, "crazy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 203
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-static {}, Lcom/mqunar/tools/log/UELog;->getSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ":set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mqunar/tools/log/UELog;->a(Ljava/lang/CharSequence;Z)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_38} :catch_39

    .line 215
    :cond_38
    :goto_38
    return-void

    .line 211
    :catch_39
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_38
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 123
    return-void
.end method

.method public logIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 232
    return-void
.end method

.method public pop()Ljava/lang/String;
    .registers 5

    .prologue
    .line 260
    sget-object v1, Lcom/mqunar/tools/log/UELog;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v2, "ue"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/storage/Storage;->clean()Z

    .line 263
    monitor-exit v1

    return-object v0

    .line 264
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public setUELogtoTag(Landroid/view/View;I)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v1, "crazy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 111
    const-string v0, "com.mqunar.qav.uelog.QAVLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 112
    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    const-string v1, "setUELogtoTag"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mqunar/tools/log/UELog;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_51

    .line 119
    :cond_50
    :goto_50
    return-void

    .line 116
    :catch_51
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_50
.end method

.method public setUELogtoTag(Landroid/view/View;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/tools/log/UELog;->a(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    const-string v1, "crazy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 94
    const-string v0, "com.mqunar.qav.uelog.QAVLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mqunar/tools/log/UELog;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    const-string v1, "setUELogtoTag"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mqunar/tools/log/UELog;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_4d

    .line 102
    :cond_4c
    :goto_4c
    return-void

    .line 99
    :catch_4d
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4c
.end method
