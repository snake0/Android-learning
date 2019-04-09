.class public Lcom/iflytek/cloud/thirdparty/as;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "CAELog"

    sput-object v0, Lcom/iflytek/cloud/thirdparty/as;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/as;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/as;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/as;->c:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/iflytek/cloud/thirdparty/as;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static a(Z)V
    .registers 2

    sput-boolean p0, Lcom/iflytek/cloud/thirdparty/as;->c:Z

    invoke-static {}, Lcom/iflytek/cae/jni/CAEJni;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/iflytek/cae/jni/CAEJni;->DebugLog(Z)V

    :cond_b
    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/as;->c:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/as;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
