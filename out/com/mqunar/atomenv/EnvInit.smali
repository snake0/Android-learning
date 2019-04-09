.class public final Lcom/mqunar/atomenv/EnvInit;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newEnv()Lcom/mqunar/atomenv/IEnvironment;
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;

    invoke-direct {v0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;-><init>()V

    return-object v0
.end method
