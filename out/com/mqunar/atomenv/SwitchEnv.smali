.class public Lcom/mqunar/atomenv/SwitchEnv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSE_AD:Ljava/lang/String; = "closead"

.field public static final CLOSE_WEB_LINK:Ljava/lang/String; = "closeweblink"

.field public static final HAS_PUSH_OPTIONS:Ljava/lang/String; = "pushoptions"

.field public static final KILL_PROGRESS_ON_QUIT:Ljava/lang/String; = "killonquit"

.field public static final NET_TRAFFIC_TIPS:Ljava/lang/String; = "nettips"

.field public static final NO_SHORT_CUT:Ljava/lang/String; = "noshortcut"

.field public static final PUSH_DEFAULT_CLOSE:Ljava/lang/String; = "pushclose"

.field private static a:Lcom/mqunar/atomenv/SwitchEnv;


# instance fields
.field private b:Lcom/mqunar/storage/Storage;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected storage_sys:Lcom/mqunar/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/atomenv/SwitchEnv;->a:Lcom/mqunar/atomenv/SwitchEnv;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_sys"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->storage_sys:Lcom/mqunar/storage/Storage;

    .line 26
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_sw"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->b:Lcom/mqunar/storage/Storage;

    .line 30
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_switch"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 33
    :try_start_2b
    invoke-static {v1}, Lcom/mqunar/json/JsonUtils;->fromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_32

    .line 38
    :cond_31
    return-void

    .line 34
    :catch_32
    move-exception v0

    .line 35
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance()Lcom/mqunar/atomenv/SwitchEnv;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/mqunar/atomenv/SwitchEnv;->a:Lcom/mqunar/atomenv/SwitchEnv;

    if-nez v0, :cond_13

    .line 42
    const-class v1, Lcom/mqunar/atomenv/SwitchEnv;

    monitor-enter v1

    .line 43
    :try_start_7
    sget-object v0, Lcom/mqunar/atomenv/SwitchEnv;->a:Lcom/mqunar/atomenv/SwitchEnv;

    if-nez v0, :cond_12

    .line 44
    new-instance v0, Lcom/mqunar/atomenv/SwitchEnv;

    invoke-direct {v0}, Lcom/mqunar/atomenv/SwitchEnv;-><init>()V

    sput-object v0, Lcom/mqunar/atomenv/SwitchEnv;->a:Lcom/mqunar/atomenv/SwitchEnv;

    .line 46
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 48
    :cond_13
    sget-object v0, Lcom/mqunar/atomenv/SwitchEnv;->a:Lcom/mqunar/atomenv/SwitchEnv;

    return-object v0

    .line 46
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getSwitchMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    return-object v0
.end method

.method public hasPushOptions()Z
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "pushoptions"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 103
    :cond_e
    const/4 v0, 0x0

    .line 105
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "pushoptions"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public isCloseAd()Z
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "closead"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 79
    :cond_e
    const/4 v0, 0x0

    .line 81
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "closead"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public isCloseWebLink()Z
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "closeweblink"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 91
    :cond_e
    const/4 v0, 0x0

    .line 93
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "closeweblink"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public isDefaultPushClose()Z
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "pushclose"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 115
    :cond_e
    const/4 v0, 0x0

    .line 117
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "pushclose"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public isKillProgressOnQuit()Z
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "killonquit"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 127
    :cond_e
    const/4 v0, 0x0

    .line 129
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "killonquit"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public isNoShortCut()Z
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "noshortcut"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 139
    :cond_e
    const/4 v0, 0x0

    .line 141
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "noshortcut"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public isPushClose()Z
    .registers 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/mqunar/atomenv/SwitchEnv;->hasPushOptions()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->b:Lcom/mqunar/storage/Storage;

    const-string v1, "sw_pushsw"

    invoke-virtual {p0}, Lcom/mqunar/atomenv/SwitchEnv;->isDefaultPushClose()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isShowNetTips()Z
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "nettips"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 67
    :cond_e
    const/4 v0, 0x0

    .line 69
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->c:Ljava/util/Map;

    const-string v1, "nettips"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public setPushClose(Z)V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mqunar/atomenv/SwitchEnv;->b:Lcom/mqunar/storage/Storage;

    const-string v1, "sw_pushsw"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putBoolean(Ljava/lang/String;Z)Z

    .line 159
    return-void
.end method
