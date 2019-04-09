.class Lcom/mapquest/android/maps/FSTileCache$5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/FSTileCache;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/FSTileCache;)V
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcom/mapquest/android/maps/FSTileCache$5;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache$5;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/FSTileCache;->updateExternalStorageState(Landroid/content/Context;)V

    .line 317
    return-void
.end method
