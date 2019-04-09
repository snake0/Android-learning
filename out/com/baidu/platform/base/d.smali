.class public abstract Lcom/baidu/platform/base/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/baidu/platform/base/SearchType;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;
.end method

.method public a()Lcom/baidu/platform/base/SearchType;
    .registers 2

    iget-object v0, p0, Lcom/baidu/platform/base/d;->a:Lcom/baidu/platform/base/SearchType;

    return-object v0
.end method

.method public abstract a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;)V
.end method

.method public a(Lcom/baidu/platform/base/SearchType;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/platform/base/d;->a:Lcom/baidu/platform/base/SearchType;

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/baidu/mapapi/search/core/SearchResult;Z)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_e

    :cond_9
    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v1, p2, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :goto_d
    return v0

    :cond_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_23

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v1, p2, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_d

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v1, p2, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_d

    :cond_23
    if-eqz p3, :cond_35

    :try_start_25
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    :goto_2b
    if-eqz v1, :cond_46

    sparse-switch v1, :sswitch_data_48

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v1, p2, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_d

    :cond_35
    const-string v2, "status_sp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2b

    :sswitch_3c
    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v1, p2, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_d

    :sswitch_41
    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->KEY_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v1, p2, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_45} :catch_1a

    goto :goto_d

    :cond_46
    const/4 v0, 0x0

    goto :goto_d

    :sswitch_data_48
    .sparse-switch
        0x68 -> :sswitch_3c
        0x69 -> :sswitch_3c
        0x6a -> :sswitch_3c
        0x6b -> :sswitch_3c
        0x6c -> :sswitch_3c
        0xc8 -> :sswitch_41
        0xe6 -> :sswitch_41
    .end sparse-switch
.end method
