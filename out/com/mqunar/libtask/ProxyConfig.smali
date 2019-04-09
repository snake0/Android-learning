.class public Lcom/mqunar/libtask/ProxyConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mqunar/libtask/ProxyConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/libtask/ProxyConfig;->a:Lcom/mqunar/libtask/ProxyConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0}, Lcom/mqunar/libtask/ProxyConfig;->a()V

    .line 17
    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 20
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 21
    const-string v0, "com.mqunar.atomenv.env.debug.BetaSetting"

    const-string v1, "getInstance"

    invoke-static {v0, v1, v2, v2}, Lcom/mqunar/libtask/r;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    const-string v1, "get"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "pitcher"

    aput-object v4, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/mqunar/libtask/r;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_2e

    .line 25
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lqunar/lego/utils/Pitcher;->setDefaultProxyUrl(Ljava/lang/String;)V

    .line 28
    :cond_2e
    return-void
.end method

.method public static getInstance()Lcom/mqunar/libtask/ProxyConfig;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/mqunar/libtask/ProxyConfig;->a:Lcom/mqunar/libtask/ProxyConfig;

    if-nez v0, :cond_13

    .line 32
    const-class v1, Lcom/mqunar/libtask/ProxyConfig;

    monitor-enter v1

    .line 33
    :try_start_7
    sget-object v0, Lcom/mqunar/libtask/ProxyConfig;->a:Lcom/mqunar/libtask/ProxyConfig;

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Lcom/mqunar/libtask/ProxyConfig;

    invoke-direct {v0}, Lcom/mqunar/libtask/ProxyConfig;-><init>()V

    sput-object v0, Lcom/mqunar/libtask/ProxyConfig;->a:Lcom/mqunar/libtask/ProxyConfig;

    .line 36
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 38
    :cond_13
    sget-object v0, Lcom/mqunar/libtask/ProxyConfig;->a:Lcom/mqunar/libtask/ProxyConfig;

    return-object v0

    .line 36
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public setDefaultUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    invoke-static {p1}, Lqunar/lego/utils/Pitcher;->setDefaultProxyUrl(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setProxyUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-nez v0, :cond_d

    .line 43
    invoke-static {p1}, Lqunar/lego/utils/Pitcher;->setDefaultProxyUrl(Ljava/lang/String;)V

    .line 45
    :cond_d
    return-void
.end method
