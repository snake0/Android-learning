.class public Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_EXCEPTION:I = 0x2

.field public static final TYPE_FAILURE:I = 0x1

.field public static final TYPE_SUCCESS:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public endtime:J

.field public mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/String;

.field public runtime:J

.field public starttime:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->starttime:J

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mqunar/libtask/LuaConductor$LuaRunnerResult;->endtime:J

    return-void
.end method
