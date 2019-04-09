.class Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$1;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 102
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 103
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 104
    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 105
    sput v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->LAST_GET_BATTERYLEVEL_PERCENT:I

    .line 106
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$1;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setBatteryLevel()V

    .line 107
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$1;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$1;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    # getter for: Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->access$000(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    :cond_34
    return-void
.end method
