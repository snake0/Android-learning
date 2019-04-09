.class public Lqunar/lego/utils/ACRAErrorReporterBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACRA_CLASS_STR:Ljava/lang/String; = "org.acra.ACRA"

.field private static instance:Lqunar/lego/utils/ACRAErrorReporterBridge;


# instance fields
.field private mErrorReporter:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lqunar/lego/utils/ACRAErrorReporterBridge;->instance:Lqunar/lego/utils/ACRAErrorReporterBridge;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/lego/utils/ACRAErrorReporterBridge;->mErrorReporter:Ljava/lang/Object;

    .line 18
    const-string v0, "org.acra.ACRA"

    const-string v1, "getErrorReporter"

    new-array v2, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lqunar/lego/utils/ACRAErrorReporterBridge;->mErrorReporter:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public static getInstance()Lqunar/lego/utils/ACRAErrorReporterBridge;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lqunar/lego/utils/ACRAErrorReporterBridge;->instance:Lqunar/lego/utils/ACRAErrorReporterBridge;

    if-nez v0, :cond_13

    .line 26
    const-class v1, Lqunar/lego/utils/ACRAErrorReporterBridge;

    monitor-enter v1

    .line 27
    :try_start_7
    sget-object v0, Lqunar/lego/utils/ACRAErrorReporterBridge;->instance:Lqunar/lego/utils/ACRAErrorReporterBridge;

    if-nez v0, :cond_12

    .line 28
    new-instance v0, Lqunar/lego/utils/ACRAErrorReporterBridge;

    invoke-direct {v0}, Lqunar/lego/utils/ACRAErrorReporterBridge;-><init>()V

    sput-object v0, Lqunar/lego/utils/ACRAErrorReporterBridge;->instance:Lqunar/lego/utils/ACRAErrorReporterBridge;

    .line 30
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 32
    :cond_13
    sget-object v0, Lqunar/lego/utils/ACRAErrorReporterBridge;->instance:Lqunar/lego/utils/ACRAErrorReporterBridge;

    return-object v0

    .line 30
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public handleSilentException(Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    const-string v0, "handleSilentException"

    iget-object v1, p0, Lqunar/lego/utils/ACRAErrorReporterBridge;->mErrorReporter:Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
