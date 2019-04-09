.class Lcom/mqunar/dispatcher/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mqunar/storage/Storage;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lcom/mqunar/dispatcher/DispatcherActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/dispatcher/DispatcherActivity;Lcom/mqunar/storage/Storage;Landroid/widget/CheckBox;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mqunar/dispatcher/b;->d:Lcom/mqunar/dispatcher/DispatcherActivity;

    iput-object p2, p0, Lcom/mqunar/dispatcher/b;->a:Lcom/mqunar/storage/Storage;

    iput-object p3, p0, Lcom/mqunar/dispatcher/b;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/mqunar/dispatcher/b;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 78
    iget-object v1, p0, Lcom/mqunar/dispatcher/b;->a:Lcom/mqunar/storage/Storage;

    const-string v2, "isNotice"

    iget-object v0, p0, Lcom/mqunar/dispatcher/b;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->putBoolean(Ljava/lang/String;Z)Z

    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 80
    iget-object v0, p0, Lcom/mqunar/dispatcher/b;->d:Lcom/mqunar/dispatcher/DispatcherActivity;

    iget-object v1, p0, Lcom/mqunar/dispatcher/b;->c:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/mqunar/dispatcher/DispatcherActivity;->a(Lcom/mqunar/dispatcher/DispatcherActivity;Landroid/content/Intent;)V

    .line 81
    return-void

    .line 78
    :cond_1b
    const/4 v0, 0x0

    goto :goto_d
.end method
