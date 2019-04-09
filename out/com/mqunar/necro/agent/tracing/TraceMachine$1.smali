.class final Lcom/mqunar/necro/agent/tracing/TraceMachine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 217
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->exitMethod()V

    .line 218
    return-void
.end method
