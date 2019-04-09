.class public Lcom/mqunar/qapm/check/ExceptionFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/mqunar/qapm/check/ExceptionFinder;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->a:Z

    .line 12
    iput-boolean v0, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->b:Z

    .line 13
    iput-boolean v0, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->c:Z

    .line 19
    iput v0, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->d:I

    .line 71
    return-void
.end method

.method public static getInstance()Lcom/mqunar/qapm/check/ExceptionFinder;
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/mqunar/qapm/check/ExceptionFinder;->e:Lcom/mqunar/qapm/check/ExceptionFinder;

    if-nez v0, :cond_13

    .line 25
    const-class v1, Lcom/mqunar/qapm/check/ExceptionFinder;

    monitor-enter v1

    .line 26
    :try_start_7
    sget-object v0, Lcom/mqunar/qapm/check/ExceptionFinder;->e:Lcom/mqunar/qapm/check/ExceptionFinder;

    if-nez v0, :cond_12

    .line 27
    new-instance v0, Lcom/mqunar/qapm/check/ExceptionFinder;

    invoke-direct {v0}, Lcom/mqunar/qapm/check/ExceptionFinder;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/check/ExceptionFinder;->e:Lcom/mqunar/qapm/check/ExceptionFinder;

    .line 29
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 31
    :cond_13
    sget-object v0, Lcom/mqunar/qapm/check/ExceptionFinder;->e:Lcom/mqunar/qapm/check/ExceptionFinder;

    return-object v0

    .line 29
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public checkForThrows(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/mqunar/qapm/check/ExceptionFinder;->runOnQunar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->c:Z

    if-nez v0, :cond_12

    .line 60
    new-instance v0, Lcom/mqunar/qapm/check/ExceptionFinder$NotSetSenderException;

    const-string v1, "\u6ca1\u6709\u8bbe\u7f6eSender!"

    invoke-direct {v0, v1}, Lcom/mqunar/qapm/check/ExceptionFinder$NotSetSenderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_12
    return-void
.end method

.method public runOnQunar(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 47
    iget v1, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->d:I

    if-nez v1, :cond_13

    .line 48
    const-string v1, "com.Qunar"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 49
    iput v0, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->d:I

    .line 54
    :cond_13
    :goto_13
    iget v1, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->d:I

    if-ne v1, v0, :cond_1c

    :goto_17
    return v0

    .line 51
    :cond_18
    const/4 v1, 0x2

    iput v1, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->d:I

    goto :goto_13

    .line 54
    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public setPid()V
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->a:Z

    .line 40
    return-void
.end method

.method public setSender()V
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->c:Z

    .line 36
    return-void
.end method

.method public setVid()V
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/qapm/check/ExceptionFinder;->b:Z

    .line 44
    return-void
.end method
