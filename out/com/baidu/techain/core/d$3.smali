.class final Lcom/baidu/techain/core/d$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/ac/Callback;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[Ljava/lang/Class;

.field final synthetic e:[Ljava/lang/Object;

.field final synthetic f:Lcom/baidu/techain/core/d;


# direct methods
.method constructor <init>(Lcom/baidu/techain/core/d;Lcom/baidu/techain/ac/Callback;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/baidu/techain/core/d$3;->f:Lcom/baidu/techain/core/d;

    iput-object p2, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    iput p3, p0, Lcom/baidu/techain/core/d$3;->b:I

    iput-object p4, p0, Lcom/baidu/techain/core/d$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/techain/core/d$3;->d:[Ljava/lang/Class;

    iput-object p6, p0, Lcom/baidu/techain/core/d$3;->e:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .prologue
    const/4 v0, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1120
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1122
    :try_start_8
    iget-object v3, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v3, :cond_14

    .line 1123
    iget-object v3, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/baidu/techain/ac/Callback;->onBegin([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    :cond_14
    iget-object v3, p0, Lcom/baidu/techain/core/d$3;->f:Lcom/baidu/techain/core/d;

    invoke-static {v3}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;

    move-result-object v3

    iget v4, p0, Lcom/baidu/techain/core/d$3;->b:I

    invoke-virtual {v3, v4}, Lcom/baidu/techain/a/a;->d(I)Z

    move-result v3

    .line 1128
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1130
    if-eqz v3, :cond_64

    .line 1131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1132
    :goto_29
    iget-object v5, p0, Lcom/baidu/techain/core/d$3;->f:Lcom/baidu/techain/core/d;

    invoke-static {v5}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;

    move-result-object v5

    iget v6, p0, Lcom/baidu/techain/core/d$3;->b:I

    invoke-virtual {v5, v6}, Lcom/baidu/techain/a/a;->d(I)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-gez v5, :cond_64

    .line 1134
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1135
    const-wide/16 v5, 0x12c

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_4a} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_4a} :catch_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_4a} :catch_127
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_4a} :catch_191

    goto :goto_29

    .line 1216
    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1218
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_63

    .line 1219
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    :cond_63
    :goto_63
    return-void

    .line 1139
    :cond_64
    :try_start_64
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1141
    iget-object v3, p0, Lcom/baidu/techain/core/d$3;->f:Lcom/baidu/techain/core/d;

    invoke-static {v3}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;

    move-result-object v3

    iget v4, p0, Lcom/baidu/techain/core/d$3;->b:I

    invoke-virtual {v3, v4}, Lcom/baidu/techain/a/a;->d(I)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1142
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_63

    .line 1143
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Ljava/lang/NoSuchMethodException; {:try_start_64 .. :try_end_89} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_64 .. :try_end_89} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_89} :catch_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_89} :catch_127
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_89} :catch_191

    goto :goto_63

    .line 1222
    :catch_8a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1224
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_63

    .line 1225
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 1147
    :cond_a3
    :try_start_a3
    iget-object v3, p0, Lcom/baidu/techain/core/d$3;->f:Lcom/baidu/techain/core/d;

    invoke-static {v3}, Lcom/baidu/techain/core/d;->c(Lcom/baidu/techain/core/d;)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 1149
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/baidu/techain/core/d;->a(I)V

    .line 1150
    iget-object v3, p0, Lcom/baidu/techain/core/d$3;->f:Lcom/baidu/techain/core/d;

    .line 2161
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/ac/Callback;)V

    .line 1154
    :cond_b5
    sget-object v3, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 1156
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/techain/core/g;->a(Landroid/content/Context;)Lcom/baidu/techain/core/g;

    move-result-object v4

    .line 1162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1163
    :goto_c3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v9, 0x1d4c0

    cmp-long v3, v7, v9

    if-gtz v3, :cond_1b0

    .line 1164
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1166
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->f:Lcom/baidu/techain/core/d;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/d;)Lcom/baidu/techain/a/a;

    move-result-object v0

    iget v3, p0, Lcom/baidu/techain/core/d$3;->b:I

    invoke-virtual {v0, v3}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    .line 1167
    if-eqz v0, :cond_121

    .line 1168
    iget-object v3, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v3

    if-eqz v3, :cond_11c

    move-object v3, v0

    move v0, v1

    .line 1178
    :goto_ea
    if-nez v0, :cond_141

    .line 1180
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_63

    .line 1181
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_100
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a3 .. :try_end_100} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a3 .. :try_end_100} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a3 .. :try_end_100} :catch_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a3 .. :try_end_100} :catch_127
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_100} :catch_191

    goto/16 :goto_63

    .line 1228
    :catch_102
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1230
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_63

    .line 1231
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_63

    .line 1171
    :cond_11c
    :try_start_11c
    iget v3, v0, Lcom/baidu/techain/core/ApkInfo;->initStatus:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1b0

    .line 1175
    :cond_121
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_126
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11c .. :try_end_126} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11c .. :try_end_126} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_11c .. :try_end_126} :catch_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11c .. :try_end_126} :catch_127
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_126} :catch_191

    goto :goto_c3

    .line 1234
    :catch_127
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1236
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_63

    .line 1237
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_63

    .line 1187
    :cond_141
    :try_start_141
    iget-object v0, v3, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v0

    .line 1189
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Lcom/baidu/techain/core/f;

    .line 1191
    const-string v3, "com.baidu.techain.engine.EngineImpl"

    invoke-virtual {v0, v3}, Lcom/baidu/techain/core/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1194
    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1195
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1204
    iget-object v3, p0, Lcom/baidu/techain/core/d$3;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/techain/core/d$3;->d:[Ljava/lang/Class;

    iget-object v5, p0, Lcom/baidu/techain/core/d$3;->e:[Ljava/lang/Object;

    .line 1205
    invoke-static {v0, v3, v4, v5}, Lcom/baidu/techain/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_174
    .catch Ljava/lang/NoSuchMethodException; {:try_start_141 .. :try_end_174} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_141 .. :try_end_174} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_141 .. :try_end_174} :catch_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_141 .. :try_end_174} :catch_127
    .catch Ljava/lang/Throwable; {:try_start_141 .. :try_end_174} :catch_191

    move-result-object v0

    .line 1207
    :try_start_175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_180
    .catch Ljava/lang/Throwable; {:try_start_175 .. :try_end_180} :catch_1ab
    .catch Ljava/lang/NoSuchMethodException; {:try_start_175 .. :try_end_180} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_175 .. :try_end_180} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_175 .. :try_end_180} :catch_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_175 .. :try_end_180} :catch_127

    .line 1212
    :goto_180
    :try_start_180
    iget-object v3, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v3, :cond_63

    .line 1213
    iget-object v3, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/baidu/techain/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_180 .. :try_end_18f} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_180 .. :try_end_18f} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_180 .. :try_end_18f} :catch_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_180 .. :try_end_18f} :catch_127
    .catch Ljava/lang/Throwable; {:try_start_180 .. :try_end_18f} :catch_191

    goto/16 :goto_63

    .line 1240
    :catch_191
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 1242
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    if-eqz v0, :cond_63

    .line 1243
    iget-object v0, p0, Lcom/baidu/techain/core/d$3;->a:Lcom/baidu/techain/ac/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/techain/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_63

    .line 1209
    :catch_1ab
    move-exception v3

    :try_start_1ac
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_1af
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1ac .. :try_end_1af} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1ac .. :try_end_1af} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1ac .. :try_end_1af} :catch_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ac .. :try_end_1af} :catch_127
    .catch Ljava/lang/Throwable; {:try_start_1ac .. :try_end_1af} :catch_191

    goto :goto_180

    :cond_1b0
    move-object v3, v0

    move v0, v2

    goto/16 :goto_ea
.end method
