.class Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$1;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$1;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    # invokes: Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->startAnimation()V
    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->access$100(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)V

    .line 128
    return-void
.end method
