.class final Lcom/mqunar/idscan/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mqunar/idscan/activity/QrScanPassportActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/idscan/activity/QrScanPassportActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mqunar/idscan/activity/d;->a:Lcom/mqunar/idscan/activity/QrScanPassportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/d;->a:Lcom/mqunar/idscan/activity/QrScanPassportActivity;

    invoke-virtual {v0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->finish()V

    return-void
.end method
