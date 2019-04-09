.class Lcom/mqunar/dispatcher/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mqunar/dispatcher/DispatcherActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/dispatcher/DispatcherActivity;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mqunar/dispatcher/c;->a:Lcom/mqunar/dispatcher/DispatcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 73
    iget-object v0, p0, Lcom/mqunar/dispatcher/c;->a:Lcom/mqunar/dispatcher/DispatcherActivity;

    invoke-virtual {v0}, Lcom/mqunar/dispatcher/DispatcherActivity;->finish()V

    .line 74
    return-void
.end method
