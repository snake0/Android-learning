.class Lcom/mqunar/necro/agent/AndroidAgentImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/necro/agent/AndroidAgentImpl;


# direct methods
.method constructor <init>(Lcom/mqunar/necro/agent/AndroidAgentImpl;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl$2;->this$0:Lcom/mqunar/necro/agent/AndroidAgentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 150
    invoke-static {}, Lcom/mqunar/necro/agent/NecroUtils;->sendDataNow()V

    .line 151
    return-void
.end method
