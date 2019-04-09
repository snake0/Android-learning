.class public Lcom/mqunar/spider/CrashParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:Ljava/lang/String;

.field public feedLog:Ljava/lang/String;

.field public from:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/mqunar/spider/CrashParam;->type:I

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/spider/CrashParam;->from:I

    return-void
.end method
