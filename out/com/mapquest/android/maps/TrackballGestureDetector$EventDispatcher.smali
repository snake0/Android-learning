.class Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/TrackballGestureDetector;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/TrackballGestureDetector;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->this$0:Lcom/mapquest/android/maps/TrackballGestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/TrackballGestureDetector;Lcom/mapquest/android/maps/TrackballGestureDetector$1;)V
    .registers 3

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;-><init>(Lcom/mapquest/android/maps/TrackballGestureDetector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 180
    :cond_5
    :goto_5
    return-void

    .line 164
    :pswitch_6
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->this$0:Lcom/mapquest/android/maps/TrackballGestureDetector;

    const/4 v1, 0x1

    # setter for: Lcom/mapquest/android/maps/TrackballGestureDetector;->longPress:Z
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/TrackballGestureDetector;->access$102(Lcom/mapquest/android/maps/TrackballGestureDetector;Z)Z

    .line 165
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->this$0:Lcom/mapquest/android/maps/TrackballGestureDetector;

    # getter for: Lcom/mapquest/android/maps/TrackballGestureDetector;->longPressRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/mapquest/android/maps/TrackballGestureDetector;->access$200(Lcom/mapquest/android/maps/TrackballGestureDetector;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->this$0:Lcom/mapquest/android/maps/TrackballGestureDetector;

    # getter for: Lcom/mapquest/android/maps/TrackballGestureDetector;->longPressRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/mapquest/android/maps/TrackballGestureDetector;->access$200(Lcom/mapquest/android/maps/TrackballGestureDetector;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 170
    :pswitch_1e
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->this$0:Lcom/mapquest/android/maps/TrackballGestureDetector;

    const/4 v1, 0x0

    # setter for: Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/TrackballGestureDetector;->access$302(Lcom/mapquest/android/maps/TrackballGestureDetector;Z)Z

    .line 172
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->this$0:Lcom/mapquest/android/maps/TrackballGestureDetector;

    # getter for: Lcom/mapquest/android/maps/TrackballGestureDetector;->tapRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/mapquest/android/maps/TrackballGestureDetector;->access$400(Lcom/mapquest/android/maps/TrackballGestureDetector;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->this$0:Lcom/mapquest/android/maps/TrackballGestureDetector;

    # getter for: Lcom/mapquest/android/maps/TrackballGestureDetector;->tapRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/mapquest/android/maps/TrackballGestureDetector;->access$400(Lcom/mapquest/android/maps/TrackballGestureDetector;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 177
    :pswitch_36
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->this$0:Lcom/mapquest/android/maps/TrackballGestureDetector;

    # invokes: Lcom/mapquest/android/maps/TrackballGestureDetector;->reset()V
    invoke-static {v0}, Lcom/mapquest/android/maps/TrackballGestureDetector;->access$500(Lcom/mapquest/android/maps/TrackballGestureDetector;)V

    goto :goto_5

    .line 162
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1e
        :pswitch_36
    .end packed-switch
.end method
