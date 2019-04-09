.class public Lcom/mqunar/storage/EggRoll;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mqunar/storage/EggRoll$De;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/mqunar/storage/EggRoll$GoblinDe;

    invoke-direct {v0}, Lcom/mqunar/storage/EggRoll$GoblinDe;-><init>()V

    sput-object v0, Lcom/mqunar/storage/EggRoll;->a:Lcom/mqunar/storage/EggRoll$De;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static da([B)[B
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/mqunar/storage/EggRoll;->a:Lcom/mqunar/storage/EggRoll$De;

    invoke-interface {v0, p0}, Lcom/mqunar/storage/EggRoll$De;->da([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static ea([B)[B
    .registers 2

    .prologue
    .line 16
    sget-object v0, Lcom/mqunar/storage/EggRoll;->a:Lcom/mqunar/storage/EggRoll$De;

    invoke-interface {v0, p0}, Lcom/mqunar/storage/EggRoll$De;->ea([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static setDe(Lcom/mqunar/storage/EggRoll$De;)V
    .registers 1

    .prologue
    .line 12
    sput-object p0, Lcom/mqunar/storage/EggRoll;->a:Lcom/mqunar/storage/EggRoll$De;

    .line 13
    return-void
.end method
