.class public final enum Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

.field public static final enum HYB:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

.field public static final enum MAP:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

.field public static final enum SAT:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    new-instance v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    const-string v1, "MAP"

    const-string v2, "map"

    invoke-direct {v0, v1, v3, v2}, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->MAP:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    .line 150
    new-instance v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    const-string v1, "HYB"

    const-string v2, "hyb"

    invoke-direct {v0, v1, v4, v2}, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->HYB:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    .line 151
    new-instance v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    const-string v1, "SAT"

    const-string v2, "sat"

    invoke-direct {v0, v1, v5, v2}, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->SAT:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    sget-object v1, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->MAP:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->HYB:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->SAT:Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->$VALUES:[Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

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
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    iput-object p3, p0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->value:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;
    .registers 2

    .prologue
    .line 148
    const-class v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    return-object v0
.end method

.method public static values()[Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->$VALUES:[Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    invoke-virtual {v0}, [Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->value:Ljava/lang/String;

    return-object v0
.end method
