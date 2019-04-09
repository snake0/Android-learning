.class Lcom/mqunar/dispatcher/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/splash/AgreeListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/mqunar/dispatcher/DispatcherActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/dispatcher/DispatcherActivity;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mqunar/dispatcher/e;->b:Lcom/mqunar/dispatcher/DispatcherActivity;

    iput-object p2, p0, Lcom/mqunar/dispatcher/e;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agreeClick()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mqunar/dispatcher/e;->b:Lcom/mqunar/dispatcher/DispatcherActivity;

    iget-object v1, p0, Lcom/mqunar/dispatcher/e;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/mqunar/dispatcher/DispatcherActivity;->a(Lcom/mqunar/dispatcher/DispatcherActivity;Landroid/content/Intent;)V

    .line 111
    return-void
.end method
