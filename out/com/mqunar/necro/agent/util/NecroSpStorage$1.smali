.class Lcom/mqunar/necro/agent/util/NecroSpStorage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/necro/agent/util/NecroSpStorage;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mqunar/necro/agent/util/NecroSpStorage;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage$1;->this$0:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    iput-object p2, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    iget-object v1, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage$1;->this$0:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    monitor-enter v1

    .line 133
    :try_start_8
    iget-object v0, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage$1;->this$0:Lcom/mqunar/necro/agent/util/NecroSpStorage;

    # getter for: Lcom/mqunar/necro/agent/util/NecroSpStorage;->mMemoryCacheData:Ljava/util/Map;
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/NecroSpStorage;->access$000(Lcom/mqunar/necro/agent/util/NecroSpStorage;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/mqunar/necro/agent/util/NecroSpStorage$1;->val$key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v0
.end method
