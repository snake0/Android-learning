.class Lcom/mqunar/module/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/core/dependency/AtomNode$DeleteSoCallback;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mqunar/module/a;


# direct methods
.method constructor <init>(Lcom/mqunar/module/a;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 485
    iput-object p1, p0, Lcom/mqunar/module/c;->b:Lcom/mqunar/module/a;

    iput-object p2, p0, Lcom/mqunar/module/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lcom/mqunar/module/ModuleInfo;)V
    .registers 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/mqunar/module/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mqunar/module/ModuleInfoController;->deleteSo(Landroid/content/Context;Lcom/mqunar/module/ModuleInfo;)V

    .line 489
    return-void
.end method
