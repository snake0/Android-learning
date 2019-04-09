.class Lcom/mqunar/module/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/mqunar/module/a;


# direct methods
.method constructor <init>(Lcom/mqunar/module/a;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mqunar/module/b;->c:Lcom/mqunar/module/a;

    iput-object p2, p0, Lcom/mqunar/module/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mqunar/module/b;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mqunar/module/b;->c:Lcom/mqunar/module/a;

    iget-object v1, p0, Lcom/mqunar/module/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mqunar/module/b;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/mqunar/module/a;->a(Lcom/mqunar/module/a;Landroid/content/Context;Landroid/content/Intent;)V

    .line 392
    return-void
.end method
