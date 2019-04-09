.class public Lcom/mqunar/necro/agent/logging/AndroidAgentLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/logging/AgentLog;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.mqunar.necro.agent"


# instance fields
.field private level:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x3

    iput v0, p0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;->level:I

    .line 13
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 16
    iget v0, p0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 17
    const-string v0, "com.mqunar.necro.agent"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_a
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 44
    iget v0, p0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    .line 45
    const-string v0, "com.mqunar.necro.agent"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_a
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 51
    iget v0, p0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    .line 52
    const-string v0, "com.mqunar.necro.agent"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_a
    return-void
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;->level:I

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 30
    iget v0, p0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    .line 31
    const-string v0, "com.mqunar.necro.agent"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_a
    return-void
.end method

.method public setLevel(I)V
    .registers 4

    .prologue
    .line 62
    const/4 v0, 0x5

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    .line 63
    iput p1, p0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;->level:I

    .line 67
    return-void

    .line 65
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Log level is not between ERROR and DEBUG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 23
    iget v0, p0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_a

    .line 24
    const-string v0, "com.mqunar.necro.agent"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_a
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    iget v0, p0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    .line 38
    const-string v0, "com.mqunar.necro.agent"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_a
    return-void
.end method
