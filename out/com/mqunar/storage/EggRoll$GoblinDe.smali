.class public Lcom/mqunar/storage/EggRoll$GoblinDe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/storage/EggRoll$De;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public da([B)[B
    .registers 3

    .prologue
    .line 43
    :try_start_0
    invoke-static {p1}, Lqunar/lego/utils/Goblin;->da([B)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p1

    .line 45
    :goto_4
    return-object p1

    .line 44
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public ea([B)[B
    .registers 3

    .prologue
    .line 34
    :try_start_0
    invoke-static {p1}, Lqunar/lego/utils/Goblin;->ea([B)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p1

    .line 36
    :goto_4
    return-object p1

    .line 35
    :catch_5
    move-exception v0

    goto :goto_4
.end method
