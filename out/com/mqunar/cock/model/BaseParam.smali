.class public Lcom/mqunar/cock/model/BaseParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public t:Ljava/lang/String;

.field public yid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/CockHandler;->getYid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/cock/model/BaseParam;->yid:Ljava/lang/String;

    return-void
.end method
