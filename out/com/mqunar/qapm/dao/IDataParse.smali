.class public interface abstract Lcom/mqunar/qapm/dao/IDataParse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "DataParse"


# virtual methods
.method public abstract convertBaseData2Json(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/qapm/domain/BaseData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract convertImplData2Json(Lcom/mqunar/qapm/domain/BaseData;)Lorg/json/JSONObject;
.end method

.method public abstract convertMap2BaseData(Ljava/util/Map;)Lcom/mqunar/qapm/domain/BaseData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mqunar/qapm/domain/BaseData;"
        }
    .end annotation
.end method
