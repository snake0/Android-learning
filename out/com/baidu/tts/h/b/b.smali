.class public Lcom/baidu/tts/h/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/j/b;


# static fields
.field private static volatile a:Lcom/baidu/tts/h/b/b;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/baidu/tts/h/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/h/b/b;->a:Lcom/baidu/tts/h/b/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/h/b/b;->b:Ljava/util/Hashtable;

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/h/b/b;->d:Ljava/util/Hashtable;

    .line 27
    iget-object v0, p0, Lcom/baidu/tts/h/b/b;->d:Ljava/util/Hashtable;

    sget-object v1, Lcom/baidu/tts/f/g;->Z:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/baidu/tts/h/b/b;->d:Ljava/util/Hashtable;

    sget-object v1, Lcom/baidu/tts/f/g;->ab:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "V2.3.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static a()Lcom/baidu/tts/h/b/b;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/tts/h/b/b;->a:Lcom/baidu/tts/h/b/b;

    if-nez v0, :cond_13

    .line 33
    const-class v1, Lcom/baidu/tts/h/b/b;

    monitor-enter v1

    .line 34
    :try_start_7
    sget-object v0, Lcom/baidu/tts/h/b/b;->a:Lcom/baidu/tts/h/b/b;

    if-nez v0, :cond_12

    .line 35
    new-instance v0, Lcom/baidu/tts/h/b/b;

    invoke-direct {v0}, Lcom/baidu/tts/h/b/b;-><init>()V

    sput-object v0, Lcom/baidu/tts/h/b/b;->a:Lcom/baidu/tts/h/b/b;

    .line 37
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 39
    :cond_13
    sget-object v0, Lcom/baidu/tts/h/b/b;->a:Lcom/baidu/tts/h/b/b;

    return-object v0

    .line 37
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/ref/WeakReference;)Lcom/baidu/tts/h/b/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/baidu/tts/h/b/a;"
        }
    .end annotation

    .prologue
    .line 98
    if-nez p1, :cond_4

    .line 99
    const/4 v0, 0x0

    .line 106
    :cond_3
    :goto_3
    return-object v0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/baidu/tts/h/b/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/h/b/a;

    .line 102
    if-nez v0, :cond_3

    .line 103
    new-instance v0, Lcom/baidu/tts/h/b/a;

    invoke-direct {v0, p1}, Lcom/baidu/tts/h/b/a;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 104
    iget-object v1, p0, Lcom/baidu/tts/h/b/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/h/b/b;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 136
    :goto_8
    return-object v0

    .line 135
    :catch_9
    move-exception v0

    .line 136
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 125
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/tts/h/b/b;->c:Ljava/lang/ref/WeakReference;

    .line 126
    return-void
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 66
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 84
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/tts/h/b/b;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/baidu/tts/h/b/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 94
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/h/b/b;->c:Ljava/lang/ref/WeakReference;

    .line 95
    return-void
.end method

.method public g()Lcom/baidu/tts/h/b/a;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/tts/h/b/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/h/b/b;->a(Ljava/lang/ref/WeakReference;)Lcom/baidu/tts/h/b/a;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/tts/h/b/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 142
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/tts/h/b/b;->g()Lcom/baidu/tts/h/b/a;

    move-result-object v1

    .line 143
    if-nez v1, :cond_8

    .line 145
    :goto_7
    return-object v0

    .line 143
    :cond_8
    invoke-virtual {v1}, Lcom/baidu/tts/h/b/a;->a()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_7

    .line 144
    :catch_d
    move-exception v1

    goto :goto_7
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    sget-object v0, Lcom/baidu/tts/f/g;->ab:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/h/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
