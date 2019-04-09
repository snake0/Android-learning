.class public Lcom/iflytek/cloud/thirdparty/bx;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/cloud/thirdparty/bx;->a:I

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .registers 5

    :try_start_0
    const-string v0, "start request music_stream focus"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :catch_14
    move-exception v0

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static b(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .registers 3

    :try_start_0
    const-string v0, "start abandon audio focus"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :catch_12
    move-exception v0

    const/4 v0, 0x0

    goto :goto_11
.end method
