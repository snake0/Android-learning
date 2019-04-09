.class public Lcom/mqunar/hy/res/model/HybridManifest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILES_KEY:Ljava/lang/String; = "files"


# instance fields
.field private extra:Lcom/alibaba/fastjson/JSONObject;

.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridManifest$ResItem;",
            ">;"
        }
    .end annotation
.end field

.field private hybridid:Ljava/lang/String;

.field private manifestJson:Lcom/alibaba/fastjson/JSONObject;

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest;->manifestJson:Lcom/alibaba/fastjson/JSONObject;

    .line 19
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest;->manifestJson:Lcom/alibaba/fastjson/JSONObject;

    .line 21
    const-string v1, "hybridid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 22
    const-string v1, "hybridid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/hy/res/model/HybridManifest;->hybridid:Ljava/lang/String;

    .line 24
    :cond_1c
    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 25
    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mqunar/hy/res/model/HybridManifest;->version:I

    .line 27
    :cond_2c
    const-string v1, "extra"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 28
    const-string v1, "extra"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/hy/res/model/HybridManifest;->extra:Lcom/alibaba/fastjson/JSONObject;

    .line 30
    :cond_3c
    const-string v1, "files"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mqunar/hy/res/model/HybridManifest;->files:Ljava/util/List;

    .line 32
    const-string v1, "files"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 33
    const/4 v0, 0x0

    :goto_52
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 34
    new-instance v2, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 35
    iget-object v3, p0, Lcom/mqunar/hy/res/model/HybridManifest;->files:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 38
    :cond_69
    return-void
.end method


# virtual methods
.method public getExtra()Lcom/alibaba/fastjson/JSONObject;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest;->extra:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridManifest$ResItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest;->files:Ljava/util/List;

    return-object v0
.end method

.method public getHybridid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest;->hybridid:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestJson()Lcom/alibaba/fastjson/JSONObject;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest;->manifestJson:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/mqunar/hy/res/model/HybridManifest;->version:I

    return v0
.end method
