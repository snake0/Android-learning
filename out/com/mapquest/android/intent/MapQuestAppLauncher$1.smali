.class final Lcom/mapquest/android/intent/MapQuestAppLauncher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mapquest/android/intent/MapQuestAppLauncher$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/mapquest/android/intent/MapQuestAppLauncher$1;->val$intent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mapquest/android/intent/MapQuestAppLauncher$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapquest/android/intent/MapQuestAppLauncher$1;->val$intent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mapquest/android/intent/MapQuestAppLauncher;->writeIntentToDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/mapquest/android/intent/MapQuestAppLauncher$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.mapquest.android.ace"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method
