.class public Lcom/mqunar/core/basectx/DonotCareException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private killProcess:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/mqunar/core/basectx/DonotCareException;->killProcess:Z

    .line 14
    return-void
.end method


# virtual methods
.method public isKillProcess()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/mqunar/core/basectx/DonotCareException;->killProcess:Z

    return v0
.end method

.method public setKillProcess(Z)V
    .registers 2

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/mqunar/core/basectx/DonotCareException;->killProcess:Z

    .line 30
    return-void
.end method
