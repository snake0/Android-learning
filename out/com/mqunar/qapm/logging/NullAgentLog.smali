.class public Lcom/mqunar/qapm/logging/NullAgentLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/logging/AgentLog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 11
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 20
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 23
    return-void
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x5

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 14
    return-void
.end method

.method public setLevel(I)V
    .registers 2

    .prologue
    .line 33
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 17
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    return-void
.end method
