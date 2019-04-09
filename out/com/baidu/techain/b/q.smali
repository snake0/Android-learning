.class public final Lcom/baidu/techain/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 38
    :try_start_1
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_15

    move-result v1

    .line 39
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 45
    :goto_12
    return v0

    .line 42
    :cond_13
    const/4 v0, 0x1

    goto :goto_12

    .line 44
    :catch_15
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_12
.end method
