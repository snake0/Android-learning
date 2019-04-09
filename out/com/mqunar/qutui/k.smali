.class Lcom/mqunar/qutui/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Landroid/os/HandlerThread;

.field private static e:Landroid/os/Handler;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/mqunar/qutui/k;->a:Landroid/content/SharedPreferences;

    .line 26
    iput-object v0, p0, Lcom/mqunar/qutui/k;->c:Landroid/content/SharedPreferences;

    .line 29
    iput-object p1, p0, Lcom/mqunar/qutui/k;->b:Landroid/content/Context;

    .line 30
    const-string v0, "_QUTUI_LOG_"

    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object p2, v0

    :cond_14
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qutui/k;->a:Landroid/content/SharedPreferences;

    .line 32
    const-string v0, "data_qutui"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qutui/k;->c:Landroid/content/SharedPreferences;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/mqunar/qutui/k;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mqunar/qutui/k;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mqunar/qutui/k;
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mqunar/qutui/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/qutui/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/qutui/k;
    .registers 3

    .prologue
    .line 40
    new-instance v0, Lcom/mqunar/qutui/k;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/qutui/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    .prologue
    .line 58
    new-instance v0, Lcom/mqunar/qutui/l;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/qutui/l;-><init>(Lcom/mqunar/qutui/k;Landroid/content/SharedPreferences$Editor;)V

    invoke-direct {p0, v0}, Lcom/mqunar/qutui/k;->a(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/mqunar/qutui/k;Landroid/content/SharedPreferences$Editor;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mqunar/qutui/k;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/mqunar/qutui/k;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method private b()Landroid/os/HandlerThread;
    .registers 3

    .prologue
    .line 177
    sget-object v0, Lcom/mqunar/qutui/k;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/mqunar/qutui/k;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 178
    :cond_c
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "qutuiStorage"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mqunar/qutui/k;->d:Landroid/os/HandlerThread;

    .line 179
    sget-object v0, Lcom/mqunar/qutui/k;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 181
    :cond_1a
    sget-object v0, Lcom/mqunar/qutui/k;->d:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic b(Lcom/mqunar/qutui/k;)V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mqunar/qutui/k;->d()V

    return-void
.end method

.method static synthetic c(Lcom/mqunar/qutui/k;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mqunar/qutui/k;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()Landroid/os/Handler;
    .registers 4

    .prologue
    .line 185
    sget-object v0, Lcom/mqunar/qutui/k;->e:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 186
    const-class v1, Lcom/mqunar/qutui/k;

    monitor-enter v1

    .line 187
    :try_start_7
    sget-object v0, Lcom/mqunar/qutui/k;->e:Landroid/os/Handler;

    if-nez v0, :cond_1a

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/mqunar/qutui/k;->b()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mqunar/qutui/k;->e:Landroid/os/Handler;

    .line 190
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1e

    .line 192
    :cond_1b
    sget-object v0, Lcom/mqunar/qutui/k;->e:Landroid/os/Handler;

    return-object v0

    .line 190
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 334
    new-instance v0, Lcom/mqunar/qutui/o;

    invoke-direct {v0, p0}, Lcom/mqunar/qutui/o;-><init>(Lcom/mqunar/qutui/k;)V

    invoke-direct {p0, v0}, Lcom/mqunar/qutui/k;->a(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mqunar/qutui/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    :goto_6
    return-void

    .line 115
    :cond_7
    iget-object v0, p0, Lcom/mqunar/qutui/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-direct {p0, v0}, Lcom/mqunar/qutui/k;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    :cond_c
    :goto_c
    return-void

    .line 47
    :cond_d
    iget-object v0, p0, Lcom/mqunar/qutui/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-direct {p0, v0}, Lcom/mqunar/qutui/k;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_c
.end method

.method a(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 330
    :goto_6
    return-void

    .line 275
    :cond_7
    new-instance v0, Lcom/mqunar/qutui/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/mqunar/qutui/n;-><init>(Lcom/mqunar/qutui/k;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/mqunar/qutui/k;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_11

    :cond_8
    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 269
    :cond_10
    :goto_10
    return-void

    .line 199
    :cond_11
    new-instance v0, Lcom/mqunar/qutui/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/mqunar/qutui/m;-><init>(Lcom/mqunar/qutui/k;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/mqunar/qutui/k;->a(Ljava/lang/Runnable;)V

    goto :goto_10
.end method
