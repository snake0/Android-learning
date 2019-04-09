.class public Lcom/mqunar/hy/res/utils/UpgradeInfoCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hybridInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->hybridInfos:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/utils/UpgradeInfoCache$1;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mqunar/hy/res/utils/UpgradeInfoCache;
    .registers 1

    .prologue
    .line 22
    # getter for: Lcom/mqunar/hy/res/utils/UpgradeInfoCache$UpgradeInfoCacheHolder;->INSTANCE:Lcom/mqunar/hy/res/utils/UpgradeInfoCache;
    invoke-static {}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache$UpgradeInfoCacheHolder;->access$000()Lcom/mqunar/hy/res/utils/UpgradeInfoCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHybridInfo(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 4

    .prologue
    .line 33
    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    :cond_a
    :goto_a
    return-void

    .line 36
    :cond_b
    sget-object v0, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->hybridInfos:Ljava/util/Map;

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public addHybridInfos(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    if-nez p1, :cond_3

    .line 46
    :cond_2
    return-void

    .line 43
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 44
    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->addHybridInfo(Lcom/mqunar/hy/res/model/HybridInfo;)V

    goto :goto_7
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->hybridInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    return-void
.end method

.method public getHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 3

    .prologue
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->hybridInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    goto :goto_7
.end method
