.class public interface abstract Lcom/mqunar/tools/log/QLog$Clerk;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract crash(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public varargs abstract d(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract e(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract e(Ljava/lang/Throwable;)V
.end method

.method public varargs abstract e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract getCrashes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract i(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract removeCrash(Ljava/lang/String;)V
.end method

.method public varargs abstract v(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract w(Ljava/lang/String;[Ljava/lang/Object;)V
.end method
