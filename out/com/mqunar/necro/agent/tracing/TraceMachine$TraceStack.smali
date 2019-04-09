.class Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;
.super Ljava/util/Stack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Stack",
        "<",
        "Lcom/mqunar/necro/agent/tracing/Trace;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 527
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/necro/agent/tracing/TraceMachine$1;)V
    .registers 2

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;-><init>()V

    return-void
.end method
