.class final Lcom/mqunar/core/basectx/SchemeDispatcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/support/v4/app/Fragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 4

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$3;->val$activity:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$3;->val$activity:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$3;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$3;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
    return-void
.end method
