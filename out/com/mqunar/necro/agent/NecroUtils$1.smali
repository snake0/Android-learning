.class final Lcom/mqunar/necro/agent/NecroUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 109
    new-instance v0, Ljava/io/File;

    # invokes: Lcom/mqunar/necro/agent/NecroUtils;->getUploadDir()Ljava/lang/String;
    invoke-static {}, Lcom/mqunar/necro/agent/NecroUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/mqunar/necro/agent/NecroUtils$1$1;

    invoke-direct {v1, p0}, Lcom/mqunar/necro/agent/NecroUtils$1$1;-><init>(Lcom/mqunar/necro/agent/NecroUtils$1;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_66

    array-length v0, v1

    if-lez v0, :cond_66

    .line 117
    new-instance v0, Lcom/mqunar/necro/agent/NecroUtils$1$2;

    invoke-direct {v0, p0}, Lcom/mqunar/necro/agent/NecroUtils$1$2;-><init>(Lcom/mqunar/necro/agent/NecroUtils$1;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 124
    array-length v2, v1

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v2, :cond_66

    aget-object v3, v1, v0

    .line 125
    # getter for: Lcom/mqunar/necro/agent/NecroUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;
    invoke-static {}, Lcom/mqunar/necro/agent/NecroUtils;->access$100()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send necro data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 126
    # getter for: Lcom/mqunar/necro/agent/NecroUtils;->sender:Lcom/mqunar/necro/agent/task/IHttpSender;
    invoke-static {}, Lcom/mqunar/necro/agent/NecroUtils;->access$200()Lcom/mqunar/necro/agent/task/IHttpSender;

    move-result-object v4

    sget-object v5, Lcom/mqunar/necro/agent/NecroUtils;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    # invokes: Lcom/mqunar/necro/agent/NecroUtils;->getUploadDir()Ljava/lang/String;
    invoke-static {}, Lcom/mqunar/necro/agent/NecroUtils;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/mqunar/necro/agent/task/IHttpSender;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 129
    :cond_66
    return-void
.end method
