.class final Lcom/mqunar/necro/agent/instrumentation/MetricCategory$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 51
    const-string v0, "onCreate"

    sget-object v1, Lcom/mqunar/necro/agent/instrumentation/MetricCategory;->VIEW_LOADING:Lcom/mqunar/necro/agent/instrumentation/MetricCategory;

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/MetricCategory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
