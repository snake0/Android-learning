.class public Lcom/baidu/platform/comapi/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x2505c087

    sput v0, Lcom/baidu/platform/comapi/a/a;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/baidu/platform/comapi/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_5
    const-string v2, "com.baidu.BaiduMap"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_17

    move-result v0

    :goto_16
    return v0

    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/baidu/platform/comapi/a/a;->b(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/baidu/platform/comapi/a/a;->a:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
