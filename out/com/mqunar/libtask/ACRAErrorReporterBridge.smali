.class public Lcom/mqunar/libtask/ACRAErrorReporterBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/mqunar/libtask/ACRAErrorReporterBridge;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->b:Lcom/mqunar/libtask/ACRAErrorReporterBridge;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->a:Ljava/lang/Object;

    .line 16
    const-string v0, "org.acra.ACRA"

    const-string v1, "getErrorReporter"

    new-array v2, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/libtask/r;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->a:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method static a()Lcom/mqunar/libtask/ACRAErrorReporterBridge;
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->b:Lcom/mqunar/libtask/ACRAErrorReporterBridge;

    if-nez v0, :cond_13

    .line 24
    const-class v1, Lcom/mqunar/libtask/ACRAErrorReporterBridge;

    monitor-enter v1

    .line 25
    :try_start_7
    sget-object v0, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->b:Lcom/mqunar/libtask/ACRAErrorReporterBridge;

    if-nez v0, :cond_12

    .line 26
    new-instance v0, Lcom/mqunar/libtask/ACRAErrorReporterBridge;

    invoke-direct {v0}, Lcom/mqunar/libtask/ACRAErrorReporterBridge;-><init>()V

    sput-object v0, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->b:Lcom/mqunar/libtask/ACRAErrorReporterBridge;

    .line 28
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 30
    :cond_13
    sget-object v0, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->b:Lcom/mqunar/libtask/ACRAErrorReporterBridge;

    return-object v0

    .line 28
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    const-string v0, "handleSilentException"

    iget-object v1, p0, Lcom/mqunar/libtask/ACRAErrorReporterBridge;->a:Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/libtask/r;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
