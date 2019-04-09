.class public Lcom/mqunar/tools/RoundedScreenUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;I)I
    .registers 6

    .prologue
    .line 56
    int-to-float v0, p1

    invoke-static {p0}, Lcom/mqunar/tools/RoundedScreenUtil;->getScreenDensity(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 52
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 47
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenRoundRadiusInDp(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/16 v0, 0x2c

    .line 16
    invoke-static {}, Lcom/mqunar/tools/RoundedScreenUtil;->isHWBigRoundScreen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 22
    :cond_8
    :goto_8
    return v0

    .line 19
    :cond_9
    invoke-static {p0}, Lcom/mqunar/tools/RoundedScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x438

    if-lt v1, v2, :cond_19

    invoke-static {p0}, Lcom/mqunar/tools/RoundedScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x906

    if-ge v1, v2, :cond_8

    .line 22
    :cond_19
    const/16 v0, 0x14

    goto :goto_8
.end method

.method public static getScreenRoundRadiusInPx(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 26
    invoke-static {p0}, Lcom/mqunar/tools/RoundedScreenUtil;->getScreenRoundRadiusInDp(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/RoundedScreenUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 42
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static isHWBigRoundScreen()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "VCE-AL00"

    aput-object v2, v3, v1

    const-string v2, "VCE-TL00"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "VCE-L22"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "PCT-AL10"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "PCT-TL10"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "PCT-TL10"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "TNY-AL00"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "TNY-TL00"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "GNA-AL00"

    aput-object v4, v3, v2

    .line 32
    array-length v4, v3

    move v2, v1

    :goto_34
    if-ge v2, v4, :cond_44

    aget-object v5, v3, v2

    .line 33
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 37
    :goto_40
    return v0

    .line 32
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_44
    move v0, v1

    .line 37
    goto :goto_40
.end method
