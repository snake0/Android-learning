.class Lcom/mqunar/cock/network/d;
.super Lcom/mqunar/yacca/YaccaBridge;
.source "SourceFile"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/mqunar/yacca/YaccaBridge;-><init>(Ljava/lang/String;I)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/cock/network/d;->a:Z

    .line 129
    return-void
.end method
