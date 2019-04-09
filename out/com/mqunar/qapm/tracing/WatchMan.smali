.class public abstract Lcom/mqunar/qapm/tracing/WatchMan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final a:Ljava/lang/String;

.field public static sActivityInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/qapm/domain/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sCurrentActivityName:Ljava/lang/String;

.field public static sLoadingBeanMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/mqunar/qapm/domain/UIData;",
            ">;"
        }
    .end annotation
.end field

.field public static sOnBackgroundTime:J


# instance fields
.field private b:I

.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-class v0, Lcom/mqunar/qapm/tracing/WatchMan;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->a:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sLoadingBeanMap:Ljava/util/WeakHashMap;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    .line 40
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/mqunar/qapm/tracing/WatchMan;->sOnBackgroundTime:J

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sCurrentActivityName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    .line 42
    iput-boolean v1, p0, Lcom/mqunar/qapm/tracing/WatchMan;->d:Z

    .line 43
    iput-boolean v1, p0, Lcom/mqunar/qapm/tracing/WatchMan;->e:Z

    .line 44
    iput-boolean v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->f:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mqunar/qapm/tracing/WatchMan;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mqunar/qapm/tracing/WatchMan;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 168
    new-instance v0, Lcom/mqunar/qapm/domain/ActivityInfo;

    invoke-direct {v0}, Lcom/mqunar/qapm/domain/ActivityInfo;-><init>()V

    .line 169
    iput-object p1, v0, Lcom/mqunar/qapm/domain/ActivityInfo;->activityName:Ljava/lang/String;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mqunar/qapm/domain/ActivityInfo;->createTime:J

    .line 171
    sget-object v1, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method private a(Z)V
    .registers 3

    .prologue
    .line 161
    invoke-static {}, Lcom/mqunar/qapm/QAPM;->getInstance()Lcom/mqunar/qapm/QAPM;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_9

    .line 163
    invoke-virtual {v0, p1}, Lcom/mqunar/qapm/QAPM;->upload(Z)V

    .line 165
    :cond_9
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 175
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/ActivityInfo;

    .line 176
    iget-object v2, v0, Lcom/mqunar/qapm/domain/ActivityInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/mqunar/qapm/domain/ActivityInfo;->isFristResumed:Z

    if-eqz v2, :cond_6

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mqunar/qapm/domain/ActivityInfo;->fristResumedTime:J

    .line 178
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mqunar/qapm/domain/ActivityInfo;->isFristResumed:Z

    goto :goto_6

    .line 181
    :cond_28
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v2, -0x1

    .line 184
    .line 185
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/domain/ActivityInfo;

    .line 186
    iget-object v4, v0, Lcom/mqunar/qapm/domain/ActivityInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 187
    sget-object v1, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_22
    move v1, v0

    .line 189
    goto :goto_8

    .line 190
    :cond_24
    if-eq v1, v2, :cond_2b

    .line 191
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sActivityInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 193
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    goto :goto_22
.end method

.method public static getCurrentActivityName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 154
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sCurrentActivityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    const-string v0, "Unknown"

    sput-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sCurrentActivityName:Ljava/lang/String;

    .line 157
    :cond_c
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sCurrentActivityName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/qapm/tracing/WatchMan;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->i:Landroid/os/Handler;

    if-nez v0, :cond_16

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->i:Landroid/os/Handler;

    .line 59
    :cond_16
    iget-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->c:Ljava/util/WeakHashMap;

    if-nez v0, :cond_21

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->c:Ljava/util/WeakHashMap;

    .line 62
    :cond_21
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/qapm/tracing/WatchMan;->c(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->c:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_1e

    .line 144
    iget-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 145
    if-eqz v0, :cond_1e

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_1e
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 106
    const-string v0, "onActivityPaused(%s)"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 82
    invoke-static {p1}, Lcom/mqunar/qapm/utils/AndroidUtils;->getPageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    sput-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->sCurrentActivityName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mqunar/qapm/tracing/WatchMan;->b(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/mqunar/qapm/tracing/WatchMan;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 102
    :goto_15
    return-void

    .line 88
    :cond_16
    iget-object v1, p0, Lcom/mqunar/qapm/tracing/WatchMan;->i:Landroid/os/Handler;

    if-nez v1, :cond_25

    .line 89
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mqunar/qapm/tracing/WatchMan;->i:Landroid/os/Handler;

    .line 91
    :cond_25
    iget-object v1, p0, Lcom/mqunar/qapm/tracing/WatchMan;->i:Landroid/os/Handler;

    new-instance v2, Lcom/mqunar/qapm/tracing/a;

    invoke-direct {v2, p0, p1, v0}, Lcom/mqunar/qapm/tracing/a;-><init>(Lcom/mqunar/qapm/tracing/WatchMan;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mqunar/qapm/tracing/WatchMan;->a(Z)V

    goto :goto_15
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 138
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-boolean v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->e:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->d:Z

    if-eqz v0, :cond_15

    .line 68
    iput-boolean v2, p0, Lcom/mqunar/qapm/tracing/WatchMan;->d:Z

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->g:Ljava/lang/String;

    .line 72
    :cond_15
    iget v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    .line 73
    iget-boolean v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->f:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 74
    iput-boolean v2, p0, Lcom/mqunar/qapm/tracing/WatchMan;->f:Z

    .line 76
    invoke-virtual {p0}, Lcom/mqunar/qapm/tracing/WatchMan;->onForegroundListener()V

    .line 78
    :cond_29
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-static {}, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->newInstance()Lcom/mqunar/qapm/pager/QLoadingReportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/qapm/pager/QLoadingReportHelper;->saveReportMessage()V

    .line 113
    iget-boolean v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->e:Z

    if-eqz v0, :cond_28

    .line 114
    iput-boolean v2, p0, Lcom/mqunar/qapm/tracing/WatchMan;->e:Z

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/qapm/tracing/WatchMan;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 116
    iget v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    .line 118
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->g:Ljava/lang/String;

    .line 120
    :cond_28
    iget v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    .line 121
    iget v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    if-gez v0, :cond_35

    .line 122
    iput v2, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    .line 135
    :cond_34
    :goto_34
    return-void

    .line 123
    :cond_35
    iget v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->b:I

    if-nez v0, :cond_54

    .line 125
    invoke-virtual {p0}, Lcom/mqunar/qapm/tracing/WatchMan;->onBackgroundListener()V

    .line 126
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->a:Ljava/lang/String;

    const-string v1, "[\u4e8b\u4ef6-\u540e\u53f0]\u6355\u83b7\u5230\u5e94\u7528\u5207\u6362\u5230\u540e\u53f0\u7684\u4e8b\u4ef6!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v0, p0, Lcom/mqunar/qapm/tracing/WatchMan;->f:Z

    if-nez v0, :cond_34

    .line 128
    sget-object v0, Lcom/mqunar/qapm/tracing/WatchMan;->a:Ljava/lang/String;

    const-string v1, "\u5f3a\u5236\u4e0a\u4f20QAV\u65e5\u5fd7"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-boolean v3, p0, Lcom/mqunar/qapm/tracing/WatchMan;->f:Z

    .line 130
    invoke-direct {p0, v3}, Lcom/mqunar/qapm/tracing/WatchMan;->a(Z)V

    goto :goto_34

    .line 133
    :cond_54
    invoke-direct {p0, v2}, Lcom/mqunar/qapm/tracing/WatchMan;->a(Z)V

    goto :goto_34
.end method

.method protected abstract onBackgroundListener()V
.end method

.method protected abstract onForegroundListener()V
.end method
