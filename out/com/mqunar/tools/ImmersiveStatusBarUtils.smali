.class public Lcom/mqunar/tools/ImmersiveStatusBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "essential"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->a:[Ljava/lang/String;

    .line 23
    sput-boolean v2, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;)Lcom/mqunar/tools/ImmersiveStatusBarUtils$StatusBarUnderAdr5View;
    .registers 5

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 170
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_19

    .line 171
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_15

    instance-of v3, v0, Lcom/mqunar/tools/ImmersiveStatusBarUtils$StatusBarUnderAdr5View;

    if-eqz v3, :cond_15

    .line 173
    check-cast v0, Lcom/mqunar/tools/ImmersiveStatusBarUtils$StatusBarUnderAdr5View;

    .line 176
    :goto_14
    return-object v0

    .line 170
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 176
    :cond_19
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static a(Ljava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 249
    :try_start_0
    const-string v0, "org.acra.ACRA"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 250
    const-string v1, "getErrorReporter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "handleSilentException"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 254
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "\u5728\u6c89\u6d78\u5c4f\u9002\u914dWindowSetting\u65f6\u9519\u8bef\uff0c\u5df2\u88ab\u6355\u83b7\uff0c\u672c\u6b21\u6062\u590d\u4e3a\u975e\u6c89\u6d78\u5f0f"

    invoke-direct {v2, v3, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3a

    .line 258
    :goto_39
    return-void

    .line 256
    :catch_3a
    move-exception v0

    goto :goto_39
.end method

.method private static a()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 77
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 78
    if-nez v2, :cond_6

    .line 88
    :cond_5
    :goto_5
    return v0

    .line 82
    :cond_6
    sget-object v3, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->a:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_a
    if-ge v1, v4, :cond_17

    aget-object v5, v3, v1

    .line 83
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 88
    :cond_17
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 73
    if-eqz p0, :cond_e

    sget-boolean v0, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->b:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static adaptShowKeyboard(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 202
    new-instance v0, Lcom/mqunar/tools/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/mqunar/tools/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    .line 203
    return-void
.end method

.method public static getImmersiveOffset(Landroid/app/Activity;)I
    .registers 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->isNeedImmersive(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->getImmersiveOffset(Landroid/content/Context;)I

    move-result v0

    goto :goto_7
.end method

.method public static getImmersiveOffset(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 65
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->isNeedImmersive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_7
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 6

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 288
    if-lez v1, :cond_19

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 291
    :cond_19
    return v0
.end method

.method public static initWindowSetting(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/high16 v3, 0x4000000

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 212
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 213
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2b

    .line 214
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 217
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 225
    :cond_25
    :goto_25
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 226
    return-void

    .line 219
    :cond_2b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_25

    .line 220
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_25
.end method

.method public static initWindowSettingForCustomImmersive(Landroid/app/Activity;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 235
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->b:Z

    .line 236
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->isNeedImmersive(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 237
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->initWindowSetting(Landroid/app/Activity;)V

    .line 245
    :goto_d
    return-void

    .line 239
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_d

    .line 241
    :catch_13
    move-exception v0

    .line 242
    sput-boolean v1, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->b:Z

    .line 243
    invoke-static {v0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static isNeedImmersive(Landroid/app/Activity;)Z
    .registers 2

    .prologue
    .line 32
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isNeedImmersive(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static removeStatusBarBgColorAndOffset(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->isNeedImmersive(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 159
    :cond_7
    :goto_7
    return-void

    .line 143
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 145
    if-eqz v1, :cond_7

    .line 149
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 150
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2a

    .line 151
    invoke-static {p0, v3}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->setStatusBarBgColor(Landroid/app/Activity;I)V

    goto :goto_7

    .line 154
    :cond_2a
    invoke-static {v0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->a(Landroid/view/ViewGroup;)Lcom/mqunar/tools/ImmersiveStatusBarUtils$StatusBarUnderAdr5View;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_7

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7
.end method

.method public static setStatusBarBgColor(Landroid/app/Activity;I)V
    .registers 4

    .prologue
    .line 187
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->isNeedImmersive(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 194
    :cond_6
    :goto_6
    return-void

    .line 190
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_6
.end method

.method public static setStatusBarBgColorAndOffset(Landroid/app/Activity;I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->isNeedImmersive(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 127
    :cond_7
    :goto_7
    return-void

    .line 107
    :cond_8
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->getImmersiveOffset(Landroid/app/Activity;)I

    move-result v2

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 110
    if-eqz v1, :cond_7

    .line 114
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 115
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2e

    .line 116
    invoke-static {p0, p1}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->setStatusBarBgColor(Landroid/app/Activity;I)V

    goto :goto_7

    .line 119
    :cond_2e
    invoke-static {v0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->a(Landroid/view/ViewGroup;)Lcom/mqunar/tools/ImmersiveStatusBarUtils$StatusBarUnderAdr5View;

    move-result-object v1

    .line 120
    if-nez v1, :cond_47

    .line 121
    new-instance v1, Lcom/mqunar/tools/ImmersiveStatusBarUtils$StatusBarUnderAdr5View;

    invoke-direct {v1, p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils$StatusBarUnderAdr5View;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 123
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 125
    :goto_43
    invoke-virtual {v0, p1}, Lcom/mqunar/tools/ImmersiveStatusBarUtils$StatusBarUnderAdr5View;->setBackgroundColor(I)V

    goto :goto_7

    :cond_47
    move-object v0, v1

    goto :goto_43
.end method

.method public static setStatusBarTextColor(Landroid/app/Activity;Z)V
    .registers 4

    .prologue
    .line 268
    invoke-static {p0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->isNeedImmersive(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 277
    :cond_6
    :goto_6
    return-void

    .line 272
    :cond_7
    if-nez p1, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    .line 276
    :cond_f
    invoke-static {p0, p1}, Lcom/mqunar/tools/StatusBarTextColorHelper;->setStatusBarTextColor(Landroid/app/Activity;Z)Z

    goto :goto_6
.end method
