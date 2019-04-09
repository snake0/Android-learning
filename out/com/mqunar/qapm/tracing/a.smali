.class Lcom/mqunar/qapm/tracing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mqunar/qapm/tracing/WatchMan;


# direct methods
.method constructor <init>(Lcom/mqunar/qapm/tracing/WatchMan;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mqunar/qapm/tracing/a;->c:Lcom/mqunar/qapm/tracing/WatchMan;

    iput-object p2, p0, Lcom/mqunar/qapm/tracing/a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mqunar/qapm/tracing/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mqunar/qapm/tracing/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_18

    .line 96
    iget-object v0, p0, Lcom/mqunar/qapm/tracing/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mqunar/qapm/utils/AndroidUtils;->getPageName(Landroid/content/Context;)Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/mqunar/qapm/tracing/a;->c:Lcom/mqunar/qapm/tracing/WatchMan;

    iget-object v1, p0, Lcom/mqunar/qapm/tracing/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/tracing/WatchMan;->a(Lcom/mqunar/qapm/tracing/WatchMan;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    :cond_18
    return-void
.end method
