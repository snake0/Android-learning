.class final Lcom/mqunar/yvideo/multivideo/VideoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4

    .prologue
    .line 153
    packed-switch p1, :pswitch_data_20

    .line 171
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 157
    :pswitch_4
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->releaseAllVideos()V

    goto :goto_3

    .line 161
    :pswitch_8
    :try_start_8
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 162
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_3

    .line 164
    :catch_1b
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 153
    :pswitch_data_20
    .packed-switch -0x2
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
