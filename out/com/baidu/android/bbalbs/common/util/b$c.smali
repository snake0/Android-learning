.class Lcom/baidu/android/bbalbs/common/util/b$c;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/String;I)Z
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/b;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_4
.end method
