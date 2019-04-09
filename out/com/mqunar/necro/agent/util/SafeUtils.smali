.class public Lcom/mqunar/necro/agent/util/SafeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/util/SafeUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canEncryption()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    const-string v2, "qunar.lego.utils.Goblin"

    const-string v3, "ea"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/mqunar/necro/agent/util/ReflectUtils;->isMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "qunar.lego.utils.Goblin"

    const-string v3, "da"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v1

    .line 93
    invoke-static {v2, v3, v4}, Lcom/mqunar/necro/agent/util/ReflectUtils;->isMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_23

    :goto_22
    return v0

    :cond_23
    move v0, v1

    goto :goto_22
.end method

.method public static da(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x2

    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/SafeUtils;->da([B)[B

    move-result-object v0

    .line 74
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    .line 75
    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_1d

    move-object p0, v0

    .line 80
    :goto_1c
    return-object p0

    .line 78
    :catch_1d
    move-exception v0

    .line 79
    sget-object v1, Lcom/mqunar/necro/agent/util/SafeUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ea str failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private static da([B)[B
    .registers 6

    .prologue
    .line 33
    :try_start_0
    const-string v0, "qunar.lego.utils.Goblin"

    const-string v1, "da"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/necro/agent/util/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 36
    :goto_1a
    return-object v0

    .line 34
    :catch_1b
    move-exception v0

    .line 35
    sget-object v1, Lcom/mqunar/necro/agent/util/SafeUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reflect failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    move-object v0, p0

    .line 36
    goto :goto_1a
.end method

.method public static ea(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 50
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 52
    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    .line 53
    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    invoke-static {v1}, Lcom/mqunar/necro/agent/util/SafeUtils;->ea([B)[B

    move-result-object v0

    .line 57
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object p0

    .line 60
    :goto_1e
    return-object p0

    .line 58
    :catch_1f
    move-exception v0

    .line 59
    sget-object v1, Lcom/mqunar/necro/agent/util/SafeUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ea str failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method private static ea([B)[B
    .registers 6

    .prologue
    .line 22
    :try_start_0
    const-string v0, "qunar.lego.utils.Goblin"

    const-string v1, "ea"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/necro/agent/util/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 25
    :goto_1a
    return-object v0

    .line 23
    :catch_1b
    move-exception v0

    .line 24
    sget-object v1, Lcom/mqunar/necro/agent/util/SafeUtils;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reflect failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    move-object v0, p0

    .line 25
    goto :goto_1a
.end method
