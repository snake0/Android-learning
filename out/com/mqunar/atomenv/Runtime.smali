.class public final enum Lcom/mqunar/atomenv/Runtime;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/atomenv/Runtime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/atomenv/Runtime;

.field public static final enum ILLEGAL:Lcom/mqunar/atomenv/Runtime;

.field public static final enum JENKINS_QCI:Lcom/mqunar/atomenv/Runtime;

.field public static final enum JENKINS_QDR:Lcom/mqunar/atomenv/Runtime;

.field public static final enum NATIVE:Lcom/mqunar/atomenv/Runtime;

.field public static final enum UNKNOWN:Lcom/mqunar/atomenv/Runtime;


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
    new-instance v0, Lcom/mqunar/atomenv/Runtime;

    const-string v1, "JENKINS_QCI"

    invoke-direct {v0, v1, v2}, Lcom/mqunar/atomenv/Runtime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/Runtime;->JENKINS_QCI:Lcom/mqunar/atomenv/Runtime;

    .line 11
    new-instance v0, Lcom/mqunar/atomenv/Runtime;

    const-string v1, "JENKINS_QDR"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/atomenv/Runtime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/Runtime;->JENKINS_QDR:Lcom/mqunar/atomenv/Runtime;

    .line 12
    new-instance v0, Lcom/mqunar/atomenv/Runtime;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/atomenv/Runtime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/Runtime;->NATIVE:Lcom/mqunar/atomenv/Runtime;

    .line 13
    new-instance v0, Lcom/mqunar/atomenv/Runtime;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/mqunar/atomenv/Runtime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/Runtime;->UNKNOWN:Lcom/mqunar/atomenv/Runtime;

    .line 14
    new-instance v0, Lcom/mqunar/atomenv/Runtime;

    const-string v1, "ILLEGAL"

    invoke-direct {v0, v1, v6}, Lcom/mqunar/atomenv/Runtime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/atomenv/Runtime;->ILLEGAL:Lcom/mqunar/atomenv/Runtime;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mqunar/atomenv/Runtime;

    sget-object v1, Lcom/mqunar/atomenv/Runtime;->JENKINS_QCI:Lcom/mqunar/atomenv/Runtime;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mqunar/atomenv/Runtime;->JENKINS_QDR:Lcom/mqunar/atomenv/Runtime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/atomenv/Runtime;->NATIVE:Lcom/mqunar/atomenv/Runtime;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mqunar/atomenv/Runtime;->UNKNOWN:Lcom/mqunar/atomenv/Runtime;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mqunar/atomenv/Runtime;->ILLEGAL:Lcom/mqunar/atomenv/Runtime;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mqunar/atomenv/Runtime;->$VALUES:[Lcom/mqunar/atomenv/Runtime;

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

.method static parseByBuildConfig()Lcom/mqunar/atomenv/Runtime;
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
    const-string v1, "EMITNUR"

    invoke-static {v0, v1}, Lcom/mqunar/atomenv/BuildConfigBridge;->getBuildConfigByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "qdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 25
    sget-object v0, Lcom/mqunar/atomenv/Runtime;->JENKINS_QDR:Lcom/mqunar/atomenv/Runtime;

    .line 33
    :goto_22
    return-object v0

    .line 26
    :cond_23
    const-string v1, "qci"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 27
    sget-object v0, Lcom/mqunar/atomenv/Runtime;->JENKINS_QCI:Lcom/mqunar/atomenv/Runtime;

    goto :goto_22

    .line 29
    :cond_2e
    sget-object v0, Lcom/mqunar/atomenv/Runtime;->NATIVE:Lcom/mqunar/atomenv/Runtime;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_22

    .line 31
    :catch_31
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 33
    sget-object v0, Lcom/mqunar/atomenv/Runtime;->UNKNOWN:Lcom/mqunar/atomenv/Runtime;

    goto :goto_22
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/atomenv/Runtime;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcom/mqunar/atomenv/Runtime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/Runtime;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/atomenv/Runtime;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/mqunar/atomenv/Runtime;->$VALUES:[Lcom/mqunar/atomenv/Runtime;

    invoke-virtual {v0}, [Lcom/mqunar/atomenv/Runtime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/atomenv/Runtime;

    return-object v0
.end method
