.class final Lcom/mqunar/idscan/decode/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mqunar/idscan/decode/a;


# direct methods
.method constructor <init>(Lcom/mqunar/idscan/decode/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mqunar/idscan/decode/b;->a:Lcom/mqunar/idscan/decode/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/mqunar/idscan/decode/b;->a:Lcom/mqunar/idscan/decode/a;

    invoke-static {v0}, Lcom/mqunar/idscan/decode/a;->a(Lcom/mqunar/idscan/decode/a;)Lcom/mqunar/idscan/activity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/idscan/activity/a;->finish()V

    return-void
.end method
