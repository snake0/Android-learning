.class public final enum Lcom/mqunar/atomenv/DeployType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/atomenv/DeployType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/atomenv/DeployType;

.field public static final enum BETA:Lcom/mqunar/atomenv/DeployType;

.field public static final enum DEV:Lcom/mqunar/atomenv/DeployType;

.field public static final enum NONE:Lcom/mqunar/atomenv/DeployType;

.field public static final enum OPS:Lcom/mqunar/atomenv/DeployType;

.field public static final enum PREPARE:Lcom/mqunar/atomenv/DeployType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/mqunar/atomenv/DeployType;

    const-string v1, "DEV"

    invoke-direct {v0, v1, v2}, Lcom/mqunar/atomenv/DeployType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/DeployType;->DEV:Lcom/mqunar/atomenv/DeployType;

    .line 11
    new-instance v0, Lcom/mqunar/atomenv/DeployType;

    const-string v1, "BETA"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/atomenv/DeployType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/DeployType;->BETA:Lcom/mqunar/atomenv/DeployType;

    .line 12
    new-instance v0, Lcom/mqunar/atomenv/DeployType;

    const-string v1, "OPS"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/atomenv/DeployType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/DeployType;->OPS:Lcom/mqunar/atomenv/DeployType;

    .line 13
    new-instance v0, Lcom/mqunar/atomenv/DeployType;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v5}, Lcom/mqunar/atomenv/DeployType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/DeployType;->PREPARE:Lcom/mqunar/atomenv/DeployType;

    .line 14
    new-instance v0, Lcom/mqunar/atomenv/DeployType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/mqunar/atomenv/DeployType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/DeployType;->NONE:Lcom/mqunar/atomenv/DeployType;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mqunar/atomenv/DeployType;

    sget-object v1, Lcom/mqunar/atomenv/DeployType;->DEV:Lcom/mqunar/atomenv/DeployType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mqunar/atomenv/DeployType;->BETA:Lcom/mqunar/atomenv/DeployType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/atomenv/DeployType;->OPS:Lcom/mqunar/atomenv/DeployType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mqunar/atomenv/DeployType;->PREPARE:Lcom/mqunar/atomenv/DeployType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mqunar/atomenv/DeployType;->NONE:Lcom/mqunar/atomenv/DeployType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mqunar/atomenv/DeployType;->$VALUES:[Lcom/mqunar/atomenv/DeployType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static parseByBuildConfig()Lcom/mqunar/atomenv/DeployType;
    .registers 2

    .prologue
    .line 18
    :try_start_0
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string v1, "com.Qunar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 21
    const-string v0, "com.mqunar"

    .line 23
    :cond_12
    const-string v1, "EPYT_YOLPED"

    invoke-static {v0, v1}, Lcom/mqunar/atomenv/BuildConfigBridge;->getBuildConfigByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 25
    sget-object v0, Lcom/mqunar/atomenv/DeployType;->DEV:Lcom/mqunar/atomenv/DeployType;

    .line 38
    :goto_22
    return-object v0

    .line 26
    :cond_23
    const-string v1, "beta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 27
    sget-object v0, Lcom/mqunar/atomenv/DeployType;->BETA:Lcom/mqunar/atomenv/DeployType;

    goto :goto_22

    .line 28
    :cond_2e
    const-string v1, "prod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 29
    sget-object v0, Lcom/mqunar/atomenv/DeployType;->OPS:Lcom/mqunar/atomenv/DeployType;

    goto :goto_22

    .line 30
    :cond_39
    const-string v1, "prepare"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 31
    sget-object v0, Lcom/mqunar/atomenv/DeployType;->PREPARE:Lcom/mqunar/atomenv/DeployType;

    goto :goto_22

    .line 33
    :cond_44
    sget-object v0, Lcom/mqunar/atomenv/DeployType;->NONE:Lcom/mqunar/atomenv/DeployType;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_22

    .line 35
    :catch_47
    move-exception v0

    .line 36
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 38
    sget-object v0, Lcom/mqunar/atomenv/DeployType;->NONE:Lcom/mqunar/atomenv/DeployType;

    goto :goto_22
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/atomenv/DeployType;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcom/mqunar/atomenv/DeployType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/DeployType;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/atomenv/DeployType;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/mqunar/atomenv/DeployType;->$VALUES:[Lcom/mqunar/atomenv/DeployType;

    invoke-virtual {v0}, [Lcom/mqunar/atomenv/DeployType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/atomenv/DeployType;

    return-object v0
.end method
