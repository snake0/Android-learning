.class public Lcom/mqunar/hy/res/utils/SpCahceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SP_CACHE_INFO_NAME:Ljava/lang/String; = "hybrid_cache_infos"

.field private static final SP_DELETE_INFO_NAME:Ljava/lang/String; = "hybrid_delete_infos"

.field private static spCahceUtil:Lcom/mqunar/hy/res/utils/SpCahceUtil;


# instance fields
.field private deletList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheList:Ljava/util/List;
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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/mqunar/hy/res/utils/SpCahceUtil;

    invoke-direct {v0}, Lcom/mqunar/hy/res/utils/SpCahceUtil;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->spCahceUtil:Lcom/mqunar/hy/res/utils/SpCahceUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "qunar_hy_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->sp:Landroid/content/SharedPreferences;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    .line 34
    return-void
.end method

.method private deleteOldQp()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 189
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "hybrid_delete_infos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOldQp>sp>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const-class v1, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 193
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    :cond_35
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9a

    .line 196
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 197
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteOldQp>path>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_47

    .line 203
    :cond_80
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hybrid_delete_infos"

    iget-object v2, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    :cond_9a
    return-void
.end method

.method public static getInstance()Lcom/mqunar/hy/res/utils/SpCahceUtil;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->spCahceUtil:Lcom/mqunar/hy/res/utils/SpCahceUtil;

    return-object v0
.end method

.method private saveHyInfoList(Ljava/util/List;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/model/HybridInfo;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 171
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 173
    iput v4, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 174
    iget-object v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 176
    :cond_28
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 180
    :cond_2c
    :try_start_2c
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_3b

    .line 186
    :goto_3a
    return-void

    .line 183
    :catch_3b
    move-exception v0

    .line 184
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3a
.end method


# virtual methods
.method public deleteCacheHyInfo(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    :cond_6
    :goto_6
    return-void

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 103
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 106
    if-eqz v0, :cond_11

    iget-object v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 108
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    :cond_2c
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 120
    if-eqz v0, :cond_36

    iget-object v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 122
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    :cond_51
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v2, "hybrid_cache_infos"

    invoke-direct {p0, v0, v1, v2}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->saveHyInfoList(Ljava/util/List;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v2, "hybrid_delete_infos"

    invoke-direct {p0, v0, v1, v2}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->saveHyInfoList(Ljava/util/List;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getCacheHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 146
    :goto_8
    return-object v0

    .line 135
    :cond_9
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    if-nez v0, :cond_f

    move-object v0, v1

    .line 136
    goto :goto_8

    .line 139
    :cond_f
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 140
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 142
    if-eqz v0, :cond_15

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_2c
    move-object v0, v1

    .line 146
    goto :goto_8
.end method

.method public getCacheList()Ljava/util/List;
    .registers 5
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
    const/4 v3, 0x0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "hybrid_cache_infos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveCacheList>chache>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :try_start_27
    const-class v1, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_2e

    move-result-object v0

    .line 219
    :goto_2d
    return-object v0

    .line 215
    :catch_2e
    move-exception v0

    move-object v1, v0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2d
.end method

.method public getdeletHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 165
    :goto_8
    return-object v0

    .line 154
    :cond_9
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    if-nez v0, :cond_f

    move-object v0, v1

    .line 155
    goto :goto_8

    .line 158
    :cond_f
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 161
    if-eqz v0, :cond_15

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_2c
    move-object v0, v1

    .line 165
    goto :goto_8
.end method

.method public isToDownloadQp(Lcom/mqunar/hy/res/model/HybridInfo;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 233
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 234
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 235
    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget-object v4, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v4, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-lt v3, v4, :cond_7

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isToDownloadQp>CacheHybridid:false:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "now Hybridid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 240
    :goto_63
    return v0

    :cond_64
    const/4 v0, 0x1

    goto :goto_63
.end method

.method public moveCacheList()Ljava/util/List;
    .registers 5
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
    .line 223
    invoke-virtual {p0}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->getCacheList()Ljava/util/List;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 225
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hybrid_cache_infos"

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deleteOldQp()V

    .line 227
    return-object v0
.end method

.method public saveCacheHyInfo(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache>\u6dfb\u52a0\u79bb\u7ebf\u5305,filpath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hybridid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    if-nez p1, :cond_2a

    .line 92
    :goto_29
    return-void

    .line 46
    :cond_2a
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_41

    .line 48
    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ge v1, v3, :cond_9b

    .line 50
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_41
    :goto_41
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 72
    :cond_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 74
    iget-object v4, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget-object v5, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 75
    iget v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v4, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ge v3, v4, :cond_d8

    .line 76
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 77
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 80
    :cond_7b
    iget-object v2, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 87
    :goto_81
    if-eqz v0, :cond_88

    .line 88
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_88
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->mCacheList:Ljava/util/List;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v2, "hybrid_cache_infos"

    invoke-direct {p0, v0, v1, v2}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->saveHyInfoList(Ljava/util/List;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v2, "hybrid_delete_infos"

    invoke-direct {p0, v0, v1, v2}, Lcom/mqunar/hy/res/utils/SpCahceUtil;->saveHyInfoList(Ljava/util/List;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_29

    .line 52
    :cond_9b
    iget v1, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    iget v3, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-le v1, v3, :cond_c6

    .line 53
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/mqunar/hy/res/model/HybridInfo;->length:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_bf

    .line 56
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    .line 60
    :cond_bf
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SpCahceUtil;->deletList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    .line 64
    :cond_c6
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/HybridInfoParser;->checkQPFile(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_29

    :cond_d8
    move v0, v2

    .line 84
    goto :goto_81

    :cond_da
    move v0, v1

    goto :goto_81
.end method
