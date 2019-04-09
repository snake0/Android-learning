.class final Lcom/mqunar/idscan/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/SurfaceHolder;

.field final synthetic b:Lcom/mqunar/idscan/activity/a;


# direct methods
.method constructor <init>(Lcom/mqunar/idscan/activity/a;Landroid/view/SurfaceHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/mqunar/idscan/activity/b;->b:Lcom/mqunar/idscan/activity/a;

    iput-object p2, p0, Lcom/mqunar/idscan/activity/b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mqunar/idscan/activity/b;->b:Lcom/mqunar/idscan/activity/a;

    iget-object v1, p0, Lcom/mqunar/idscan/activity/b;->a:Landroid/view/SurfaceHolder;

    invoke-static {v0, v1}, Lcom/mqunar/idscan/activity/a;->a(Lcom/mqunar/idscan/activity/a;Landroid/view/SurfaceHolder;)V

    return-void
.end method
