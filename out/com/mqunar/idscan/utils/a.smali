.class public final Lcom/mqunar/idscan/utils/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(F)I
    .registers 3

    invoke-static {p0}, Lcom/mqunar/idscan/utils/a;->c(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static b(F)F
    .registers 2

    invoke-static {p0}, Lcom/mqunar/idscan/utils/a;->c(F)F

    move-result v0

    return v0
.end method

.method private static c(F)F
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/mqunar/idscan/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method
