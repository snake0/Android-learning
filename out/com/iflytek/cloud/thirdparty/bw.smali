.class public Lcom/iflytek/cloud/thirdparty/bw;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    sput v0, Lcom/iflytek/cloud/thirdparty/bw;->a:I

    const/16 v0, 0xe

    sput v0, Lcom/iflytek/cloud/thirdparty/bw;->b:I

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/iflytek/cloud/thirdparty/bw;->b:I

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bx;->a(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/iflytek/cloud/thirdparty/bw;->a:I

    if-lt v0, v1, :cond_f

    invoke-static {p0, p2}, Lcom/iflytek/cloud/thirdparty/bx;->a(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/iflytek/cloud/thirdparty/bw;->a:I

    if-lt v0, v1, :cond_11

    invoke-static {p0, p2}, Lcom/iflytek/cloud/thirdparty/bx;->b(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
