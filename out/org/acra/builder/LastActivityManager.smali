.class public final Lorg/acra/builder/LastActivityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lorg/acra/builder/LastActivityManager;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;)V
    .registers 5
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/builder/LastActivityManager;->b:Ljava/lang/ref/WeakReference;

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_19

    .line 36
    new-instance v0, Lorg/acra/builder/LastActivityManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/acra/builder/LastActivityManager$1;-><init>(Lorg/acra/builder/LastActivityManager;Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 88
    :cond_19
    return-void
.end method

.method static synthetic a(Lorg/acra/builder/LastActivityManager;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lorg/acra/builder/LastActivityManager;->b:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/acra/builder/LastActivityManager;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 97
    return-void
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 100
    monitor-enter p0

    .line 102
    int-to-long v0, p1

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_a
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 105
    :goto_5
    :try_start_5
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_7

    throw v0

    .line 103
    :catch_a
    move-exception v0

    goto :goto_5
.end method

.method public getLastActivity()Landroid/app/Activity;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/acra/builder/LastActivityManager;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method
