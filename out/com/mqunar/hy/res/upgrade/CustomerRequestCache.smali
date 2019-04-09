.class public Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private requestCacheMap:Ljava/util/Map;
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
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;->requestCacheMap:Ljava/util/Map;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/upgrade/CustomerRequestCache$1;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;
    .registers 1

    .prologue
    .line 20
    # getter for: Lcom/mqunar/hy/res/upgrade/CustomerRequestCache$CustomerRequestCacheHolder;->INSTANCE:Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;
    invoke-static {}, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache$CustomerRequestCacheHolder;->access$000()Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;->requestCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public add(Ljava/util/List;)V
    .registers 5
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
    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 33
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 34
    iget-object v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;->add(Ljava/lang/String;Lcom/mqunar/hy/res/model/HybridInfo;)V

    goto :goto_4

    .line 37
    :cond_20
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;->requestCacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 49
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;->requestCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;->requestCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
