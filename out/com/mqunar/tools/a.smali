.class Lcom/mqunar/tools/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/mqunar/tools/AndroidBug5497Workaround;


# direct methods
.method constructor <init>(Lcom/mqunar/tools/AndroidBug5497Workaround;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mqunar/tools/a;->a:Lcom/mqunar/tools/AndroidBug5497Workaround;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mqunar/tools/a;->a:Lcom/mqunar/tools/AndroidBug5497Workaround;

    invoke-static {v0}, Lcom/mqunar/tools/AndroidBug5497Workaround;->a(Lcom/mqunar/tools/AndroidBug5497Workaround;)V

    .line 25
    return-void
.end method
