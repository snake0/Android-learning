.class public Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_REPLACE_INTERCEPTOR_LIST:Ljava/lang/String; = "key_replace_interceptor_list"


# instance fields
.field private hybridInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getContainsInfo(Lcom/mqunar/hy/res/model/HybridInfo;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 5

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 94
    invoke-direct {p0, v0, p1}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->isHybridInfoEquals(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 98
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private initHybridInfoList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "qunar_hy_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->sp:Landroid/content/SharedPreferences;

    .line 21
    iget-object v0, p0, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->sp:Landroid/content/SharedPreferences;

    const-string v1, "key_replace_interceptor_list"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :try_start_17
    const-class v1, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 27
    :goto_1d
    return-object v0

    .line 24
    :catch_1e
    move-exception v0

    .line 25
    iget-object v0, p0, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_replace_interceptor_list"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1d
.end method

.method private isContainsInfo(Lcom/mqunar/hy/res/model/HybridInfo;)Z
    .registers 3

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getContainsInfo(Lcom/mqunar/hy/res/model/HybridInfo;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isHybridInfoEquals(Lcom/mqunar/hy/res/model/HybridInfo;Lcom/mqunar/hy/res/model/HybridInfo;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_6

    if-nez p2, :cond_b

    .line 103
    :cond_6
    if-ne p1, p2, :cond_9

    .line 105
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v0, v1

    .line 103
    goto :goto_8

    .line 105
    :cond_b
    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget-object v3, p2, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_23
    move v0, v1

    goto :goto_8
.end method

.method private saveHybridInfoList(Ljava/util/List;)V
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
    .line 109
    iget-object v0, p0, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_replace_interceptor_list"

    .line 110
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method


# virtual methods
.method public addInterceptor(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->isContainsInfo(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 58
    :goto_6
    return-void

    .line 56
    :cond_7
    invoke-virtual {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->saveHybridInfoList(Ljava/util/List;)V

    goto :goto_6
.end method

.method public buildInterceptorInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 4

    .prologue
    .line 82
    new-instance v0, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-direct {v0}, Lcom/mqunar/hy/res/model/HybridInfo;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, p2}, Lcom/mqunar/hy/res/model/HybridInfo;->setMd5(Ljava/lang/String;)V

    .line 85
    return-object v0
.end method

.method public clearInterceptor()V
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    invoke-virtual {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->saveHybridInfoList(Ljava/util/List;)V

    .line 79
    return-void
.end method

.method public getInterceptorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->hybridInfoList:Ljava/util/List;

    if-nez v0, :cond_a

    .line 46
    invoke-direct {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->initHybridInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->hybridInfoList:Ljava/util/List;

    .line 49
    :cond_a
    iget-object v0, p0, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->hybridInfoList:Ljava/util/List;

    return-object v0
.end method

.method public isInterceptor(Lcom/mqunar/hy/res/model/HybridInfo;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isOnline()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 33
    invoke-virtual {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 34
    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget-object v4, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 35
    const/4 v0, 0x1

    .line 40
    :goto_3a
    return v0

    :cond_3b
    move v0, v1

    .line 38
    goto :goto_3a

    :cond_3d
    move v0, v1

    .line 40
    goto :goto_3a
.end method

.method public removeInterceptor(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    :goto_6
    return-void

    .line 65
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 67
    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 72
    :cond_2c
    invoke-virtual {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 73
    invoke-virtual {p0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->getInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;->saveHybridInfoList(Ljava/util/List;)V

    goto :goto_6
.end method
