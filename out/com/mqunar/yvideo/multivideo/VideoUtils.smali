.class public Lcom/mqunar/yvideo/multivideo/VideoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoPlayer"

.field private static sp_progress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "PLAYER_PROGRESS"

    sput-object v0, Lcom/mqunar/yvideo/multivideo/VideoUtils;->sp_progress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSavedProgress(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 109
    if-nez p1, :cond_15

    .line 110
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoUtils;->sp_progress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    :goto_14
    return-void

    .line 114
    :cond_15
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoUtils;->sp_progress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_14
.end method

.method public static dataSourceObjectsContainsUri(Lcom/mqunar/yvideo/multivideo/DataSourceBean;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getUrlMap()Ljava/util/Map;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 142
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 81
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getUrlMap()Ljava/util/Map;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 123
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getDefaultUrlMapIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getValueFromMap(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static getKeyFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getUrlMap()Ljava/util/Map;

    move-result-object v1

    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getDefaultUrlMapIndex()I

    move-result v3

    if-ne v1, v3, :cond_21

    .line 156
    :goto_20
    return-object v0

    .line 154
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 155
    goto :goto_e

    .line 156
    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static getSavedProgress(Landroid/content/Context;Ljava/lang/Object;)J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 96
    sget-boolean v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->SAVE_PROGRESS:Z

    if-nez v2, :cond_7

    .line 99
    :goto_6
    return-wide v0

    .line 97
    :cond_7
    sget-object v2, Lcom/mqunar/yvideo/multivideo/VideoUtils;->sp_progress:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_6
.end method

.method public static getValueFromMap(Ljava/util/Map;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    if-ne v1, p1, :cond_1f

    .line 132
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    :goto_1e
    return-object v0

    .line 134
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 135
    goto :goto_a

    .line 136
    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static getWindow(Landroid/content/Context;)Landroid/view/Window;
    .registers 2

    .prologue
    .line 76
    invoke-static {p0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 47
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_17

    move v0, v1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static saveProgress(Landroid/content/Context;Ljava/lang/Object;J)V
    .registers 7

    .prologue
    .line 85
    sget-boolean v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->SAVE_PROGRESS:Z

    if-nez v0, :cond_5

    .line 93
    :goto_4
    return-void

    .line 86
    :cond_5
    const-wide/16 v0, 0x1388

    cmp-long v0, p2, v0

    if-gez v0, :cond_d

    .line 87
    const-wide/16 p2, 0x0

    .line 89
    :cond_d
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoUtils;->sp_progress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4
.end method

.method public static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p0, :cond_5

    move-object p0, v0

    .line 67
    :goto_4
    return-object p0

    .line 61
    :cond_5
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 62
    check-cast p0, Landroid/app/Activity;

    goto :goto_4

    .line 63
    :cond_c
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1b

    .line 64
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_4

    :cond_1b
    move-object p0, v0

    .line 67
    goto :goto_4
.end method

.method public static setRequestedOrientation(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 71
    invoke-static {p0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 73
    return-void
.end method

.method public static stringForTime(J)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x3c

    .line 24
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_12

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p0, v0

    if-ltz v0, :cond_15

    .line 25
    :cond_12
    const-string v0, "00:00"

    .line 36
    :goto_14
    return-object v0

    .line 27
    :cond_15
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 28
    rem-long v2, v0, v5

    long-to-int v2, v2

    .line 29
    div-long v3, v0, v5

    rem-long/2addr v3, v5

    long-to-int v3, v3

    .line 30
    const-wide/16 v4, 0xe10

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    new-instance v4, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 33
    if-lez v0, :cond_54

    .line 34
    const-string v1, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {v4, v1, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 36
    :cond_54
    const-string v0, "%02d:%02d"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v4, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method
