.class final Lcom/mqunar/module/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/core/dependency/AtomNode$DeleteSoCallback;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 807
    iput-object p1, p0, Lcom/mqunar/module/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lcom/mqunar/module/ModuleInfo;)V
    .registers 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/mqunar/module/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mqunar/module/ModuleInfoController;->deleteSo(Landroid/content/Context;Lcom/mqunar/module/ModuleInfo;)V

    .line 811
    return-void
.end method
