.class Lcom/mqunar/storage/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/SharedPreferences$Editor;

.field final synthetic c:Lcom/mqunar/storage/SpStorage;


# direct methods
.method constructor <init>(Lcom/mqunar/storage/SpStorage;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    .prologue
    .line 865
    iput-object p1, p0, Lcom/mqunar/storage/a;->c:Lcom/mqunar/storage/SpStorage;

    iput-object p2, p0, Lcom/mqunar/storage/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mqunar/storage/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 868
    iget-object v0, p0, Lcom/mqunar/storage/a;->c:Lcom/mqunar/storage/SpStorage;

    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->a(Lcom/mqunar/storage/SpStorage;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/storage/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 869
    iget-object v0, p0, Lcom/mqunar/storage/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 870
    iget-object v1, p0, Lcom/mqunar/storage/a;->c:Lcom/mqunar/storage/SpStorage;

    monitor-enter v1

    .line 871
    :try_start_16
    iget-object v0, p0, Lcom/mqunar/storage/a;->c:Lcom/mqunar/storage/SpStorage;

    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->a(Lcom/mqunar/storage/SpStorage;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/mqunar/storage/a;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    monitor-exit v1

    .line 874
    :cond_22
    return-void

    .line 872
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw v0
.end method
