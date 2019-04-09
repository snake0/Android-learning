.class public Lcom/baidu/techain/ac/TH;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_VERSION:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getPInfo(II)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_4c

    .line 145
    const-string v0, ""

    .line 148
    :goto_5
    return-object v0

    .line 120
    :pswitch_6
    if-gtz p0, :cond_b

    .line 121
    const-string v0, ""

    goto :goto_5

    .line 123
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v0

    .line 124
    if-nez v0, :cond_14

    .line 125
    const-string v0, ""

    goto :goto_5

    .line 127
    :cond_14
    invoke-virtual {v0}, Lcom/baidu/techain/core/g;->b()Ljava/util/List;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_23

    .line 129
    :cond_20
    const-string v0, ""

    goto :goto_5

    .line 131
    :cond_23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 132
    iget v2, v0, Lcom/baidu/techain/core/ApkInfo;->key:I

    if-ne v2, p0, :cond_27

    .line 133
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_3e

    .line 134
    const-string v0, ""

    goto :goto_5

    .line 136
    :cond_3e
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_40} :catch_44

    goto :goto_5

    .line 140
    :cond_41
    const-string v0, ""

    goto :goto_5

    .line 147
    :catch_44
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 148
    const-string v0, ""

    goto :goto_5

    .line 118
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    const-string v0, "3.1.6.1"

    return-object v0
.end method

.method public static gz(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    invoke-static {p0}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gzfi(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gzfi(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 157
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V

    .line 27
    return-void
.end method

.method public static varargs initDelay(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/techain/core/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V

    .line 33
    return-void
.end method

.method public static isInitSuc(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1112
    :try_start_2
    sget-object v2, Lcom/baidu/techain/a/a;->d:Lcom/baidu/techain/a/a;

    .line 96
    if-nez v2, :cond_7

    .line 112
    :cond_6
    :goto_6
    return v0

    .line 100
    :cond_7
    invoke-virtual {v2, p0}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_6

    iget v3, v2, Lcom/baidu/techain/core/ApkInfo;->initStatus:I

    if-ne v3, v1, :cond_6

    .line 105
    invoke-static {}, Lcom/baidu/techain/core/g;->a()Lcom/baidu/techain/core/g;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_6

    .line 109
    iget-object v2, v2, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1c} :catch_21

    move-result-object v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 111
    :catch_21
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_6
.end method

.method public static tinvoke(ILjava/lang/String;)Z
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/techain/ac/TH;->tinvoke(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;)Z

    move-result v0

    return v0
.end method

.method public static tinvoke(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;)Z
    .registers 5

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/baidu/techain/ac/TH;->tinvoke(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs tinvoke(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/baidu/techain/ac/Callback;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/techain/core/e;->a(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs tinvoke(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/baidu/techain/ac/TH;->tinvoke(ILjava/lang/String;Lcom/baidu/techain/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static tinvokeSync(ILjava/lang/String;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/baidu/techain/ac/TH;->tinvokeSync(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static varargs tinvokeSync(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/techain/core/e;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
