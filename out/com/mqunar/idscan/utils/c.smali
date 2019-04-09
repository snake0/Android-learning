.class final Lcom/mqunar/idscan/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mqunar/libtask/TaskCallback;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mqunar/idscan/utils/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMsgCacheHit(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    return-void
.end method

.method public final onMsgCancel(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    return-void
.end method

.method public final onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mqunar/idscan/utils/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    return-void
.end method

.method public final onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    return-void
.end method

.method public final onMsgProgress(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    return-void
.end method

.method public final onMsgRequest(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    return-void
.end method

.method public final onMsgResult(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    return-void
.end method

.method public final onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 3

    return-void
.end method
