.class public Lcom/mqunar/necro/agent/tracing/BackgroundTrace;
.super Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;
.source "SourceFile"


# static fields
.field private static sBackgroundTime:J

.field private static sCurrentAppIsForeground:Z

.field private static sForegroundTime:J


# instance fields
.field private mAgent:Lcom/mqunar/necro/agent/AgentImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->sCurrentAppIsForeground:Z

    return-void
.end method

.method public constructor <init>(Lcom/mqunar/necro/agent/AgentImpl;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mqunar/necro/agent/tracing/AbsBackgroundTrace;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->mAgent:Lcom/mqunar/necro/agent/AgentImpl;

    .line 14
    return-void
.end method

.method public static appIsForeground()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->sCurrentAppIsForeground:Z

    return v0
.end method

.method public static getBackgroundTime()J
    .registers 2

    .prologue
    .line 30
    sget-wide v0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->sBackgroundTime:J

    return-wide v0
.end method

.method public static getForegronudTime()J
    .registers 2

    .prologue
    .line 34
    sget-wide v0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->sForegroundTime:J

    return-wide v0
.end method


# virtual methods
.method protected onBackgroundListener()V
    .registers 3

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->sCurrentAppIsForeground:Z

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->sBackgroundTime:J

    .line 26
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->mAgent:Lcom/mqunar/necro/agent/AgentImpl;

    invoke-interface {v0}, Lcom/mqunar/necro/agent/AgentImpl;->sendDataNow()V

    .line 27
    return-void
.end method

.method protected onForegroundListener()V
    .registers 3

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->sCurrentAppIsForeground:Z

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;->sForegroundTime:J

    .line 20
    return-void
.end method
