.class public Lcom/baidu/mapapi/search/sug/SuggestionSearch;
.super Lcom/baidu/mapapi/search/core/j;


# instance fields
.field a:Lcom/baidu/platform/core/f/a;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/j;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b:Z

    new-instance v0, Lcom/baidu/platform/core/f/b;

    invoke-direct {v0}, Lcom/baidu/platform/core/f/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/f/a;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/sug/SuggestionSearch;
    .registers 1

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b:Z

    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/f/a;

    invoke-interface {v0}, Lcom/baidu/platform/core/f/a;->a()V

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    goto :goto_4
.end method

.method public requestSuggestion(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/f/a;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "suggestionsearch is null, please call newInstance() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-eqz p1, :cond_16

    iget-object v0, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mKeyword:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mCity:Ljava/lang/String;

    if-nez v0, :cond_1e

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "option or keyword or city can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/f/a;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/f/a;->a(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)Z

    move-result v0

    return v0
.end method

.method public setOnGetSuggestionResultListener(Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/f/a;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "suggestionsearch is null, please call newInstance() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a:Lcom/baidu/platform/core/f/a;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/f/a;->a(Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;)V

    return-void
.end method
