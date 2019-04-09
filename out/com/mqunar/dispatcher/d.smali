.class Lcom/mqunar/dispatcher/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/mqunar/dispatcher/DispatcherActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/dispatcher/DispatcherActivity;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mqunar/dispatcher/d;->a:Lcom/mqunar/dispatcher/DispatcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 86
    packed-switch p2, :pswitch_data_10

    .line 92
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 88
    :pswitch_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 89
    iget-object v0, p0, Lcom/mqunar/dispatcher/d;->a:Lcom/mqunar/dispatcher/DispatcherActivity;

    invoke-virtual {v0}, Lcom/mqunar/dispatcher/DispatcherActivity;->finish()V

    .line 90
    const/4 v0, 0x0

    goto :goto_4

    .line 86
    nop

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
