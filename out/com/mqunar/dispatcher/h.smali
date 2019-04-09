.class final Lcom/mqunar/dispatcher/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 398
    iput-object p1, p0, Lcom/mqunar/dispatcher/h;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mqunar/dispatcher/h;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/mqunar/dispatcher/h;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mqunar/dispatcher/h;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/mqunar/dispatcher/DispatcherLogic;->processIntentInner(Ljava/lang/Object;Landroid/content/Intent;)V

    .line 402
    return-void
.end method
