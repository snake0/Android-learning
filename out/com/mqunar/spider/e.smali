.class Lcom/mqunar/spider/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lqunar/lego/utils/Pitcher;

.field final synthetic b:Lcom/mqunar/spider/d;


# direct methods
.method constructor <init>(Lcom/mqunar/spider/d;Lqunar/lego/utils/Pitcher;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mqunar/spider/e;->b:Lcom/mqunar/spider/d;

    iput-object p2, p0, Lcom/mqunar/spider/e;->a:Lqunar/lego/utils/Pitcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mqunar/spider/e;->a:Lqunar/lego/utils/Pitcher;

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->request()Lqunar/lego/utils/PitcherResponse;

    .line 101
    return-void
.end method
