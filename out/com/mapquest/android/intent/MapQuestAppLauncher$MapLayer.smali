.class public final enum Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

.field public static final enum TRAFFIC:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    const-string v1, "TRAFFIC"

    const-string v2, "traffic"

    invoke-direct {v0, v1, v3, v2}, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;->TRAFFIC:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    sget-object v1, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;->TRAFFIC:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;->$VALUES:[Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput-object p3, p0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;->value:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;
    .registers 2

    .prologue
    .line 134
    const-class v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    return-object v0
.end method

.method public static values()[Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;
    .registers 1

    .prologue
    .line 134
    sget-object v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;->$VALUES:[Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    invoke-virtual {v0}, [Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;->value:Ljava/lang/String;

    return-object v0
.end method
