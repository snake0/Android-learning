.class Lcom/mqunar/qapm/dao/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/qapm/domain/BaseData;

.field final synthetic b:Lcom/mqunar/qapm/dao/Storage;


# direct methods
.method constructor <init>(Lcom/mqunar/qapm/dao/Storage;Lcom/mqunar/qapm/domain/BaseData;)V
    .registers 3

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mqunar/qapm/dao/a;->b:Lcom/mqunar/qapm/dao/Storage;

    iput-object p2, p0, Lcom/mqunar/qapm/dao/a;->a:Lcom/mqunar/qapm/domain/BaseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mqunar/qapm/dao/a;->a:Lcom/mqunar/qapm/domain/BaseData;

    if-nez v0, :cond_5

    .line 62
    :goto_4
    return-void

    .line 57
    :cond_5
    invoke-static {}, Lcom/mqunar/qapm/dao/Storage;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1b

    .line 58
    invoke-static {}, Lcom/mqunar/qapm/dao/Storage;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/qapm/dao/a;->a:Lcom/mqunar/qapm/domain/BaseData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 61
    :cond_1b
    iget-object v0, p0, Lcom/mqunar/qapm/dao/a;->b:Lcom/mqunar/qapm/dao/Storage;

    iget-object v1, p0, Lcom/mqunar/qapm/dao/a;->a:Lcom/mqunar/qapm/domain/BaseData;

    invoke-virtual {v0, v1}, Lcom/mqunar/qapm/dao/Storage;->saveData(Lcom/mqunar/qapm/domain/BaseData;)V

    goto :goto_4
.end method
