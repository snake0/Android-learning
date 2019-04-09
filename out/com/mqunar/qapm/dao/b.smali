.class Lcom/mqunar/qapm/dao/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/qapm/dao/Storage;


# direct methods
.method constructor <init>(Lcom/mqunar/qapm/dao/Storage;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mqunar/qapm/dao/b;->a:Lcom/mqunar/qapm/dao/Storage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 98
    invoke-static {}, Lcom/mqunar/qapm/dao/Storage;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/mqunar/qapm/dao/Storage;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 99
    iget-object v0, p0, Lcom/mqunar/qapm/dao/b;->a:Lcom/mqunar/qapm/dao/Storage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mqunar/qapm/dao/Storage;->saveData(Lcom/mqunar/qapm/domain/BaseData;)V

    .line 101
    :cond_16
    return-void
.end method
