.class Lcom/mapquest/android/maps/TrafficManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/TrafficManager;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/TrafficManager;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager$1;->this$0:Lcom/mapquest/android/maps/TrafficManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 41
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_2c

    .line 56
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 43
    :sswitch_8
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager$1;->this$0:Lcom/mapquest/android/maps/TrafficManager;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/TrafficManager;->refreshFlow()V

    goto :goto_7

    .line 46
    :sswitch_e
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager$1;->this$0:Lcom/mapquest/android/maps/TrafficManager;

    # getter for: Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;
    invoke-static {v1}, Lcom/mapquest/android/maps/TrafficManager;->access$000(Lcom/mapquest/android/maps/TrafficManager;)Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 47
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager$1;->this$0:Lcom/mapquest/android/maps/TrafficManager;

    # getter for: Lcom/mapquest/android/maps/TrafficManager;->flowOverlay:Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;
    invoke-static {v1}, Lcom/mapquest/android/maps/TrafficManager;->access$000(Lcom/mapquest/android/maps/TrafficManager;)Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/TrafficManager$TrafficOverlay;->destroy()V

    .line 50
    :cond_1f
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager$1;->this$0:Lcom/mapquest/android/maps/TrafficManager;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/TrafficManager;->refreshFlow()V

    goto :goto_7

    .line 53
    :sswitch_25
    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager$1;->this$0:Lcom/mapquest/android/maps/TrafficManager;

    # invokes: Lcom/mapquest/android/maps/TrafficManager;->handleMove()V
    invoke-static {v1}, Lcom/mapquest/android/maps/TrafficManager;->access$100(Lcom/mapquest/android/maps/TrafficManager;)V

    goto :goto_7

    .line 41
    nop

    :sswitch_data_2c
    .sparse-switch
        0x5 -> :sswitch_8
        0xc -> :sswitch_e
        0x17 -> :sswitch_25
    .end sparse-switch
.end method
