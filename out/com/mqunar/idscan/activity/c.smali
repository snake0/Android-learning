.class final Lcom/mqunar/idscan/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/idscan/activity/QrScanPassportActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/idscan/activity/QrScanPassportActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mqunar/idscan/activity/c;->a:Lcom/mqunar/idscan/activity/QrScanPassportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mqunar/idscan/activity/c;->a:Lcom/mqunar/idscan/activity/QrScanPassportActivity;

    invoke-static {v0}, Lcom/mqunar/idscan/activity/QrScanPassportActivity;->a(Lcom/mqunar/idscan/activity/QrScanPassportActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
