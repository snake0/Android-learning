.class public Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private columnName:Ljava/lang/String;

.field private desc:Z

.field final synthetic this$0:Lcom/mqunar/xutils/dbutils/sqlite/Selector;


# direct methods
.method public constructor <init>(Lcom/mqunar/xutils/dbutils/sqlite/Selector;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;->this$0:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;->columnName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/mqunar/xutils/dbutils/sqlite/Selector;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;->this$0:Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;->columnName:Ljava/lang/String;

    .line 162
    iput-boolean p3, p0, Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;->desc:Z

    .line 163
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/mqunar/xutils/dbutils/sqlite/Selector$OrderBy;->desc:Z

    if-eqz v0, :cond_1a

    const-string v0, " DESC"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const-string v0, " ASC"

    goto :goto_11
.end method
