.class public Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static FIRST_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

.field public static SECOND_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completeAll()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->SECOND_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    if-eqz v0, :cond_c

    .line 37
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->SECOND_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onCompletion()V

    .line 38
    sput-object v1, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->SECOND_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    .line 40
    :cond_c
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->FIRST_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    if-eqz v0, :cond_17

    .line 41
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->FIRST_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onCompletion()V

    .line 42
    sput-object v1, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->FIRST_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    .line 44
    :cond_17
    return-void
.end method

.method public static getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 30
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    .line 32
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    goto :goto_a
.end method

.method public static getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->FIRST_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    return-object v0
.end method

.method public static getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->SECOND_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    return-object v0
.end method

.method public static setFirstFloor(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V
    .registers 1

    .prologue
    .line 17
    sput-object p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->FIRST_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    .line 18
    return-void
.end method

.method public static setSecondFloor(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V
    .registers 1

    .prologue
    .line 25
    sput-object p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->SECOND_FLOOR_VD:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    .line 26
    return-void
.end method
