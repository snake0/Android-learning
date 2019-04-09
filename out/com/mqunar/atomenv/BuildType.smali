.class public final enum Lcom/mqunar/atomenv/BuildType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/atomenv/BuildType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/atomenv/BuildType;

.field public static final enum BETA:Lcom/mqunar/atomenv/BuildType;

.field public static final enum DEV:Lcom/mqunar/atomenv/BuildType;

.field public static final enum RELEASE:Lcom/mqunar/atomenv/BuildType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/mqunar/atomenv/BuildType;

    const-string v1, "DEV"

    invoke-direct {v0, v1, v2}, Lcom/mqunar/atomenv/BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/BuildType;->DEV:Lcom/mqunar/atomenv/BuildType;

    .line 11
    new-instance v0, Lcom/mqunar/atomenv/BuildType;

    const-string v1, "BETA"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/atomenv/BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/BuildType;->BETA:Lcom/mqunar/atomenv/BuildType;

    .line 12
    new-instance v0, Lcom/mqunar/atomenv/BuildType;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/atomenv/BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/BuildType;->RELEASE:Lcom/mqunar/atomenv/BuildType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mqunar/atomenv/BuildType;

    sget-object v1, Lcom/mqunar/atomenv/BuildType;->DEV:Lcom/mqunar/atomenv/BuildType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mqunar/atomenv/BuildType;->BETA:Lcom/mqunar/atomenv/BuildType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/atomenv/BuildType;->RELEASE:Lcom/mqunar/atomenv/BuildType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mqunar/atomenv/BuildType;->$VALUES:[Lcom/mqunar/atomenv/BuildType;

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

.method static parseByBuildConfig()Lcom/mqunar/atomenv/BuildType;
    .registers 2

    .prologue
    .line 16
    :try_start_0
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 17
    const-string v1, "com.Qunar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 19
    const-string v0, "com.mqunar"

    .line 21
    :cond_12
    const-string v1, "BUILD_TYPE"

    invoke-static {v0, v1}, Lcom/mqunar/atomenv/BuildConfigBridge;->getBuildConfigByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 23
    sget-object v0, Lcom/mqunar/atomenv/BuildType;->DEV:Lcom/mqunar/atomenv/BuildType;

    .line 32
    :goto_22
    return-object v0

    .line 24
    :cond_23
    const-string v1, "beta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 25
    sget-object v0, Lcom/mqunar/atomenv/BuildType;->BETA:Lcom/mqunar/atomenv/BuildType;

    goto :goto_22

    .line 27
    :cond_2e
    sget-object v0, Lcom/mqunar/atomenv/BuildType;->RELEASE:Lcom/mqunar/atomenv/BuildType;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_22

    .line 29
    :catch_31
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 32
    sget-object v0, Lcom/mqunar/atomenv/BuildType;->RELEASE:Lcom/mqunar/atomenv/BuildType;

    goto :goto_22
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/atomenv/BuildType;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcom/mqunar/atomenv/BuildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/BuildType;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/atomenv/BuildType;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/mqunar/atomenv/BuildType;->$VALUES:[Lcom/mqunar/atomenv/BuildType;

    invoke-virtual {v0}, [Lcom/mqunar/atomenv/BuildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/atomenv/BuildType;

    return-object v0
.end method
