.class final Lcom/mqunar/core/basectx/SchemeDispatcher$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 366
    iput-object p1, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 370
    return-void
.end method
