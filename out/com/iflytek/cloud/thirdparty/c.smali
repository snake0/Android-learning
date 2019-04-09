.class public final Lcom/iflytek/cloud/thirdparty/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/b;->a:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
