.class public final enum Lcom/mqunar/necro/agent/tracing/TraceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/necro/agent/tracing/TraceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/necro/agent/tracing/TraceType;

.field public static final enum NETWORK:Lcom/mqunar/necro/agent/tracing/TraceType;

.field public static final enum TRACE:Lcom/mqunar/necro/agent/tracing/TraceType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/mqunar/necro/agent/tracing/TraceType;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v2}, Lcom/mqunar/necro/agent/tracing/TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceType;->TRACE:Lcom/mqunar/necro/agent/tracing/TraceType;

    .line 8
    new-instance v0, Lcom/mqunar/necro/agent/tracing/TraceType;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/necro/agent/tracing/TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceType;->NETWORK:Lcom/mqunar/necro/agent/tracing/TraceType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mqunar/necro/agent/tracing/TraceType;

    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceType;->TRACE:Lcom/mqunar/necro/agent/tracing/TraceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceType;->NETWORK:Lcom/mqunar/necro/agent/tracing/TraceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceType;->$VALUES:[Lcom/mqunar/necro/agent/tracing/TraceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/necro/agent/tracing/TraceType;
    .registers 2

    .prologue
    .line 6
    const-class v0, Lcom/mqunar/necro/agent/tracing/TraceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/TraceType;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/necro/agent/tracing/TraceType;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceType;->$VALUES:[Lcom/mqunar/necro/agent/tracing/TraceType;

    invoke-virtual {v0}, [Lcom/mqunar/necro/agent/tracing/TraceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/necro/agent/tracing/TraceType;

    return-object v0
.end method
