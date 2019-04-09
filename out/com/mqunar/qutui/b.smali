.class Lcom/mqunar/qutui/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/qutui/KActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/KActivity;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mqunar/qutui/b;->a:Lcom/mqunar/qutui/KActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mqunar/qutui/b;->a:Lcom/mqunar/qutui/KActivity;

    invoke-virtual {v0}, Lcom/mqunar/qutui/KActivity;->finish()V

    .line 47
    return-void
.end method
