.class public Lcom/mqunar/hy/res/model/HybridInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public QpRequestType:I

.field public checked:Z

.field public errorChanged:Z

.field public extra:Lcom/alibaba/fastjson/JSONObject;

.field public force:Z

.field public hybridId:Ljava/lang/String;

.field public length:J

.field private manifestJson:Lcom/alibaba/fastjson/JSONObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private md5:Ljava/lang/String;

.field public patchUrl:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field private resource:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/hy/res/model/HybridFile;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->checked:Z

    .line 23
    iput-boolean v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->errorChanged:Z

    .line 25
    iput-boolean v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->force:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->manifestJson:Lcom/alibaba/fastjson/JSONObject;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->resource:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getActualResource()Ljava/util/Map;
    .registers 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/hy/res/model/HybridFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->resource:Ljava/util/Map;

    return-object v0
.end method

.method public getDecodeMd5()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->md5:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/hy/res/utils/RsaDecodeUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedMd5()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Lcom/alibaba/fastjson/JSONObject;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->extra:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getHybridFileByUrl(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridFile;
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->resource:Ljava/util/Map;

    if-eqz v0, :cond_19

    .line 78
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->resource:Ljava/util/Map;

    invoke-static {p1}, Lcom/mqunar/hy/res/utils/UriCodec;->getUrlWithOutQueryAndHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridFile;

    .line 79
    if-eqz v0, :cond_19

    .line 80
    invoke-static {p0}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->checkQPFile(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v1

    .line 81
    if-eqz v1, :cond_19

    .line 86
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getManifestJson()Lcom/alibaba/fastjson/JSONObject;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->manifestJson:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getManifestJsonExclusiveFiles()Lcom/alibaba/fastjson/JSONObject;
    .registers 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->manifestJson:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_a

    .line 138
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 142
    :goto_9
    return-object v0

    .line 140
    :cond_a
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->manifestJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 141
    const-string v1, "files"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public getMd5()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/hy/res/model/HybridFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public isForce()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mqunar/hy/res/model/HybridInfo;->force:Z

    return v0
.end method

.method public setManifestJson(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mqunar/hy/res/model/HybridInfo;->manifestJson:Lcom/alibaba/fastjson/JSONObject;

    .line 151
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mqunar/hy/res/model/HybridInfo;->md5:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setResource(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/hy/res/model/HybridFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p1, :cond_4

    .line 56
    iput-object p1, p0, Lcom/mqunar/hy/res/model/HybridInfo;->resource:Ljava/util/Map;

    .line 58
    :cond_4
    return-void
.end method

.method public toJsonObj()Lcom/alibaba/fastjson/JSONObject;
    .registers 5

    .prologue
    .line 126
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 127
    const-string v1, "hybridId"

    iget-object v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "version"

    iget v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "md5"

    invoke-virtual {p0}, Lcom/mqunar/hy/res/model/HybridInfo;->getDecodeMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "length"

    iget-wide v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "force"

    iget-boolean v2, p0, Lcom/mqunar/hy/res/model/HybridInfo;->force:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonObj()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
