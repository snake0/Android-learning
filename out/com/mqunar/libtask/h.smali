.class Lcom/mqunar/libtask/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/mqunar/libtask/g;


# direct methods
.method constructor <init>(Lcom/mqunar/libtask/g;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mqunar/libtask/h;->b:Lcom/mqunar/libtask/g;

    iput-object p2, p0, Lcom/mqunar/libtask/h;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/libtask/h;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 260
    iget-object v0, p0, Lcom/mqunar/libtask/h;->b:Lcom/mqunar/libtask/g;

    invoke-virtual {v0}, Lcom/mqunar/libtask/g;->a()V

    .line 262
    return-void

    .line 260
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/mqunar/libtask/h;->b:Lcom/mqunar/libtask/g;

    invoke-virtual {v1}, Lcom/mqunar/libtask/g;->a()V

    throw v0
.end method
