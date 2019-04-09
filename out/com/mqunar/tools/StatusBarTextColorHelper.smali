.class public Lcom/mqunar/tools/StatusBarTextColorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method private static a(Landroid/app/Activity;Z)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 55
    const-string v4, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 56
    const-string v5, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 58
    const-string v5, "setExtraFlags"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 59
    if-eqz p1, :cond_45

    .line 60
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :goto_44
    return v0

    .line 62
    :cond_45
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_59} :catch_5a

    goto :goto_44

    .line 65
    :catch_5a
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 68
    goto :goto_44
.end method

.method private static b(Landroid/app/Activity;Z)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 79
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 81
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 82
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "meizuFlags"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 83
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 87
    if-eqz p1, :cond_36

    .line 88
    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v5

    .line 92
    :goto_2f
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 93
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_38

    .line 98
    :goto_35
    return v0

    .line 90
    :cond_36
    or-int/2addr v1, v5

    goto :goto_2f

    .line 95
    :catch_38
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    const/4 v0, 0x0

    goto :goto_35
.end method

.method private static c(Landroid/app/Activity;Z)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 109
    if-eqz p1, :cond_11

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 120
    :goto_10
    return v0

    .line 114
    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_25

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_10

    .line 120
    :cond_25
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static setStatusBarTextColor(Landroid/app/Activity;Z)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 33
    .line 34
    invoke-static {}, Lcom/mqunar/tools/c;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 35
    invoke-static {p0, p1}, Lcom/mqunar/tools/StatusBarTextColorHelper;->a(Landroid/app/Activity;Z)Z

    move-result v0

    .line 39
    :goto_b
    invoke-static {p0, p1}, Lcom/mqunar/tools/StatusBarTextColorHelper;->c(Landroid/app/Activity;Z)Z

    move-result v2

    .line 40
    if-nez v2, :cond_13

    if-eqz v0, :cond_14

    :cond_13
    const/4 v1, 0x1

    :cond_14
    return v1

    .line 36
    :cond_15
    invoke-static {}, Lcom/mqunar/tools/c;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 37
    invoke-static {p0, p1}, Lcom/mqunar/tools/StatusBarTextColorHelper;->b(Landroid/app/Activity;Z)Z

    move-result v0

    goto :goto_b

    :cond_20
    move v0, v1

    goto :goto_b
.end method
