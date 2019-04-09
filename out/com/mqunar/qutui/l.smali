.class Lcom/mqunar/qutui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Lcom/mqunar/qutui/k;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/k;Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mqunar/qutui/l;->b:Lcom/mqunar/qutui/k;

    iput-object p2, p0, Lcom/mqunar/qutui/l;->a:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mqunar/qutui/l;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method
