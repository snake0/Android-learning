.class public Lcom/mqunar/xutils/dbutils/exception/DbException;
.super Lcom/mqunar/xutils/dbutils/exception/BaseException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/exception/BaseException;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mqunar/xutils/dbutils/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/mqunar/xutils/dbutils/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mqunar/xutils/dbutils/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method
