.class public Lcom/mqunar/necro/agent/task/DefaultSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/task/IHttpSender;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 16
    new-instance v0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;

    sget-object v1, Lcom/mqunar/necro/agent/util/Config;->t:Ljava/lang/String;

    sget-object v2, Lcom/mqunar/necro/agent/util/Config;->pitcher:Ljava/lang/String;

    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getCparam()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mqunar/necro/agent/task/NecroSenderProxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
