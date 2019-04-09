.class public Lcom/baidu/tts/client/model/ModelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/l/a;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/baidu/tts/l/a;

    invoke-direct {v0, p1}, Lcom/baidu/tts/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    .line 23
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private a()Lcom/baidu/tts/client/model/Conditions;
    .registers 4

    .prologue
    .line 90
    new-instance v0, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v0}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/baidu/tts/client/model/ModelManager;->getEngineParams()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/Conditions;->setVersion(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getDomain()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/Conditions;->setDomains([Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getLanguage()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/Conditions;->setLanguages([Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getQuality()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/Conditions;->setQualitys([Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method private a(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/Conditions;
    .registers 4

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/baidu/tts/client/model/ModelManager;->a()Lcom/baidu/tts/client/model/Conditions;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_16

    .line 81
    if-eqz p1, :cond_16

    .line 82
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/AvailableConditions;->getSpeakers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/Conditions;->setSpeakers(Ljava/util/Set;)V

    .line 83
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/AvailableConditions;->getGenders()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/Conditions;->setGenders(Ljava/util/Set;)V

    .line 86
    :cond_16
    return-object v0
.end method


# virtual methods
.method public checkModelsUpdate(Ljava/util/Set;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a;->c(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Lcom/baidu/tts/client/model/OnDownloadListener;)Lcom/baidu/tts/client/model/DownloadHandler;
    .registers 5

    .prologue
    .line 177
    new-instance v0, Lcom/baidu/tts/d/b;

    invoke-direct {v0}, Lcom/baidu/tts/d/b;-><init>()V

    .line 178
    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p2}, Lcom/baidu/tts/d/b;->a(Lcom/baidu/tts/client/model/OnDownloadListener;)V

    .line 180
    iget-object v1, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/l/a;->a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object v0

    return-object v0
.end method

.method public getEngineParams()Lcom/baidu/tts/client/model/LibEngineParams;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a;->a()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v0

    return-object v0
.end method

.method public getLocalModelFileInfos(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a;->b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLocalModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/baidu/tts/l/a;->a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLocalModelsAvailable(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/AvailableConditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/baidu/tts/client/model/ModelManager;->a(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/Conditions;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/baidu/tts/l/a;->a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getServerDefaultModels()Lcom/baidu/tts/client/model/BasicHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a;->b()Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getServerModelFileInfos(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getServerModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a;->a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getServerModelsAvailable(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/AvailableConditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/tts/client/model/ModelManager;->a(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/Conditions;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/baidu/tts/client/model/ModelManager;->getServerModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechModelFileAbsPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    sget-object v1, Lcom/baidu/tts/f/g;->s:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextModelFileAbsPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    sget-object v1, Lcom/baidu/tts/f/g;->r:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isModelFileValid(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isModelValid(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stop()I
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelManager;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a;->c()V

    .line 190
    const/4 v0, 0x0

    return v0
.end method
