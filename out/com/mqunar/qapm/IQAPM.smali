.class public interface abstract Lcom/mqunar/qapm/IQAPM;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addNetMonitor(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addUIMonitor(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCParam()Ljava/lang/String;
.end method

.method public abstract getSender()Lcom/mqunar/qapm/network/sender/ISender;
.end method

.method public abstract release()V
.end method

.method public abstract setSender(Lcom/mqunar/qapm/network/sender/ISender;)V
.end method

.method public abstract upload(Z)V
.end method
