.class public Lcom/mqunar/hy/res/model/HybridManifest$ResItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private md5:Ljava/lang/String;

.field private sl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;->url:Ljava/lang/String;

    .line 69
    :cond_13
    const-string v0, "sl"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 70
    const-string v0, "sl"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;->sl:Ljava/lang/String;

    .line 72
    :cond_23
    const-string v0, "md5"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 73
    const-string v0, "md5"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;->md5:Ljava/lang/String;

    .line 75
    :cond_33
    return-void
.end method


# virtual methods
.method public getMd5()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;->sl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;->url:Ljava/lang/String;

    return-object v0
.end method
