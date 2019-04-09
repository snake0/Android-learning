.class public Lcom/mqunar/qapm/tracing/BackgroundTrace;
.super Lcom/mqunar/qapm/tracing/WatchMan;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/qapm/tracing/BackgroundTrace;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/mqunar/qapm/tracing/WatchMan;-><init>()V

    return-void
.end method

.method public static appIsForeground()Z
    .registers 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/mqunar/qapm/tracing/BackgroundTrace;->a:Z

    return v0
.end method

.method public static getBackgroundTime()J
    .registers 2

    .prologue
    .line 22
    sget-wide v0, Lcom/mqunar/qapm/tracing/BackgroundTrace;->b:J

    return-wide v0
.end method

.method public static getForegronudTime()J
    .registers 2

    .prologue
    .line 26
    sget-wide v0, Lcom/mqunar/qapm/tracing/BackgroundTrace;->c:J

    return-wide v0
.end method


# virtual methods
.method protected onBackgroundListener()V
    .registers 3

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/qapm/tracing/BackgroundTrace;->a:Z

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mqunar/qapm/tracing/BackgroundTrace;->b:J

    .line 19
    return-void
.end method

.method protected onForegroundListener()V
    .registers 3

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/qapm/tracing/BackgroundTrace;->a:Z

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mqunar/qapm/tracing/BackgroundTrace;->c:J

    .line 13
    return-void
.end method
