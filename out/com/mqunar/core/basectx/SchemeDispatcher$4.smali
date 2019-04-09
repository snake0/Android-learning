.class final Lcom/mqunar/core/basectx/SchemeDispatcher$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$4;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$4;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$4;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/mqunar/core/basectx/SchemeDispatcher$4;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    return-void
.end method
