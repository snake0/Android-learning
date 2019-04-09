.class Lcom/mqunar/atomenv/PlatformSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sharedPreferences:Landroid/content/SharedPreferences;

.field private static storage_sys:Lcom/mqunar/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 17
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_sys"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    sput-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    .line 18
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "QunarPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/mqunar/atomenv/PlatformSetting;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    :try_start_0
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p1

    .line 105
    :goto_6
    return-object p1

    .line 104
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public static removePreferences(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 110
    if-nez p0, :cond_3

    .line 116
    :goto_2
    return-void

    .line 113
    :cond_3
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

.method private static setCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 38
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getCid()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 41
    sget-object v1, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v2, "sys_cid"

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_rcid"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    return-void

    .line 42
    :cond_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 43
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_cid"

    invoke-virtual {v0, v1, p2}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1b

    .line 46
    :cond_31
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_cid"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1b
.end method

.method private static setConfig(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 68
    :try_start_0
    const-string v0, "dic"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mqunar/atomenv/PlatformSetting;->getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 70
    sget-object v1, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v2, "sys_cid"

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    const-string v0, "dic"

    invoke-static {v0}, Lcom/mqunar/atomenv/PlatformSetting;->removePreferences(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_4c

    .line 77
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_config"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    :try_start_21
    const-class v0, Lcom/mqunar/atomenv/model/Config;

    invoke-static {p0, v0}, Lcom/mqunar/json/JsonUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/model/Config;

    .line 80
    iget-object v1, v0, Lcom/mqunar/atomenv/model/Config;->cid:Ljava/lang/String;

    iget-object v2, v0, Lcom/mqunar/atomenv/model/Config;->ucid:Ljava/lang/String;

    iget-object v3, v0, Lcom/mqunar/atomenv/model/Config;->dcid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/mqunar/atomenv/PlatformSetting;->setCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, v0, Lcom/mqunar/atomenv/model/Config;->vid:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/atomenv/PlatformSetting;->setVid(Ljava/lang/String;)V

    .line 82
    iget-object v1, v0, Lcom/mqunar/atomenv/model/Config;->pid:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/atomenv/PlatformSetting;->setPid(Ljava/lang/String;)V

    .line 83
    iget-object v1, v0, Lcom/mqunar/atomenv/model/Config;->scheme:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/atomenv/PlatformSetting;->setScheme(Ljava/lang/String;)V

    .line 84
    iget-object v1, v0, Lcom/mqunar/atomenv/model/Config;->schemewap:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/atomenv/PlatformSetting;->setSchemeWap(Ljava/lang/String;)V

    .line 85
    iget-object v0, v0, Lcom/mqunar/atomenv/model/Config;->wxappid:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/atomenv/PlatformSetting;->setWXAppId(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_4b} :catch_53

    .line 89
    :goto_4b
    return-void

    .line 73
    :catch_4c
    move-exception v0

    .line 74
    const-string v0, "dic"

    invoke-static {v0}, Lcom/mqunar/atomenv/PlatformSetting;->removePreferences(Ljava/lang/String;)V

    goto :goto_1a

    .line 86
    :catch_53
    move-exception v0

    .line 87
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4b
.end method

.method private static setGid(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_gid"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    return-void
.end method

.method private static setPid(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 21
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_pid"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    return-void
.end method

.method private static setScheme(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_scheme"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    return-void
.end method

.method private static setSchemeWap(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 63
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_schemewap"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    return-void
.end method

.method private static setSid(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_sid"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    return-void
.end method

.method private static setSwitch(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 94
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_switch"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    .line 96
    return-void
.end method

.method private static setVid(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_vid"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    return-void
.end method

.method private static setWXAppId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 53
    sget-object v0, Lcom/mqunar/atomenv/PlatformSetting;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_wxappid"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    return-void
.end method
