.class Lcom/mqunar/cock/network/n;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/cock/network/RemoteSvcProxy;


# direct methods
.method private constructor <init>(Lcom/mqunar/cock/network/RemoteSvcProxy;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mqunar/cock/network/n;->a:Lcom/mqunar/cock/network/RemoteSvcProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/cock/network/RemoteSvcProxy;Lcom/mqunar/cock/network/k;)V
    .registers 3

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/mqunar/cock/network/n;-><init>(Lcom/mqunar/cock/network/RemoteSvcProxy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 280
    .line 321
    return-void
.end method
