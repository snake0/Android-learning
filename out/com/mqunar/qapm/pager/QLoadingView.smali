.class public Lcom/mqunar/qapm/pager/QLoadingView;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 60
    new-instance v1, Lcom/mqunar/qapm/domain/UIData;

    invoke-direct {v1}, Lcom/mqunar/qapm/domain/UIData;-><init>()V

    .line 61
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    sget-object v2, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/ActivityInfo;

    iget-wide v2, v0, Lcom/mqunar/qapm/domain/ActivityInfo;->createTime:J

    iput-wide v2, v1, Lcom/mqunar/qapm/domain/UIData;->createTime:J

    .line 62
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    sget-object v2, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/ActivityInfo;

    iget-wide v2, v0, Lcom/mqunar/qapm/domain/ActivityInfo;->fristResumedTime:J

    iput-wide v2, v1, Lcom/mqunar/qapm/domain/UIData;->resumeTime:J

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mqunar/qapm/domain/UIData;->showTime:J

    .line 64
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sCurrentActivityName:Ljava/lang/String;

    const-string v2, "_"

    const-string v3, "\u2014"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/qapm/domain/UIData;->page:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sLoadingBeanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method private static a(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 48
    if-nez p2, :cond_e

    .line 49
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sLoadingBeanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 50
    invoke-static {p0}, Lcom/mqunar/qapm/pager/QLoadingView;->a(Ljava/lang/Object;)V

    .line 57
    :cond_d
    :goto_d
    return-void

    .line 52
    :cond_e
    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const/16 v0, 0x8

    if-ne p2, v0, :cond_d

    .line 53
    :cond_15
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sLoadingBeanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mqunar/qapm/pager/QLoadingView;->a(Ljava/lang/Object;Z)V

    goto :goto_d
.end method

.method private static a(Ljava/lang/Object;Z)V
    .registers 7

    .prologue
    .line 69
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sLoadingBeanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/UIData;

    .line 70
    if-nez v0, :cond_b

    .line 84
    :cond_a
    :goto_a
    return-void

    .line 73
    :cond_b
    if-nez p1, :cond_18

    iget-wide v1, v0, Lcom/mqunar/qapm/domain/UIData;->showTime:J

    iget-wide v3, v0, Lcom/mqunar/qapm/domain/UIData;->resumeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gtz v1, :cond_a

    .line 76
    :cond_18
    sget-wide v1, Lcom/mqunar/qapm/tracing/WatchMan;->sOnBackgroundTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_32

    sget-wide v1, Lcom/mqunar/qapm/tracing/WatchMan;->sOnBackgroundTime:J

    iget-wide v3, v0, Lcom/mqunar/qapm/domain/UIData;->createTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_32

    sget-wide v1, Lcom/mqunar/qapm/tracing/WatchMan;->sOnBackgroundTime:J

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_a

    .line 81
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mqunar/qapm/domain/UIData;->hiddenTime:J

    .line 82
    invoke-static {}, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->newInstance()Lcom/mqunar/qapm/pager/QLoadingReportHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->addReportMessage(Lcom/mqunar/qapm/domain/UIData;)V

    .line 83
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sLoadingBeanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public static onVisibilityChanged(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 27
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sCurrentActivityName:Ljava/lang/String;

    const-string v1, "HyWebActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.policy.DecorView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 45
    :cond_1a
    :goto_1a
    return-void

    .line 32
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mqunar.framework.view.stateview.LoadingContainer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 33
    invoke-static {p0, p1, p2}, Lcom/mqunar/qapm/pager/QLoadingView;->a(Ljava/lang/Object;Landroid/view/View;I)V

    goto :goto_1a

    .line 36
    :cond_2f
    if-nez p2, :cond_3d

    .line 37
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sLoadingBeanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 38
    invoke-static {p0}, Lcom/mqunar/qapm/pager/QLoadingView;->a(Ljava/lang/Object;)V

    goto :goto_1a

    .line 40
    :cond_3d
    const/4 v0, 0x4

    if-eq p2, v0, :cond_44

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1a

    .line 41
    :cond_44
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sLoadingBeanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mqunar/qapm/pager/QLoadingView;->a(Ljava/lang/Object;Z)V

    goto :goto_1a
.end method
