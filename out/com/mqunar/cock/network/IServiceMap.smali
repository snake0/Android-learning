.class public interface abstract Lcom/mqunar/cock/network/IServiceMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/tools/EnumUtils$ITypeDesc;


# virtual methods
.method public abstract getClazz()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/cock/model/BaseResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTaskType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/libtask/AbsConductor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method
