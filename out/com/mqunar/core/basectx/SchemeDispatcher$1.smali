.class final Lcom/mqunar/core/basectx/SchemeDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/support/v4/app/Fragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$1;->val$context:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$1;->val$context:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
