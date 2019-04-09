.class Lcom/mqunar/necro/agent/AndroidAgentImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/necro/agent/AndroidAgentImpl;

.field final synthetic val$data:Lcom/mqunar/necro/agent/bean/BaseData;


# direct methods
.method constructor <init>(Lcom/mqunar/necro/agent/AndroidAgentImpl;Lcom/mqunar/necro/agent/bean/BaseData;)V
    .registers 3

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl$1;->this$0:Lcom/mqunar/necro/agent/AndroidAgentImpl;

    iput-object p2, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl$1;->val$data:Lcom/mqunar/necro/agent/bean/BaseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl$1;->val$data:Lcom/mqunar/necro/agent/bean/BaseData;

    invoke-static {v0}, Lcom/mqunar/necro/agent/NecroUtils;->dealData(Lcom/mqunar/necro/agent/bean/BaseData;)V

    .line 138
    return-void
.end method
