.class public Lcom/baidu/tts/h/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/tts/h/a/c;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/baidu/tts/f/n;",
            "Lcom/baidu/tts/h/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/h/a/c;->a:Lcom/baidu/tts/h/a/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/h/a/c;->b:Ljava/util/Hashtable;

    .line 20
    return-void
.end method

.method public static a()Lcom/baidu/tts/h/a/c;
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcom/baidu/tts/h/a/c;->a:Lcom/baidu/tts/h/a/c;

    if-nez v0, :cond_13

    .line 24
    const-class v1, Lcom/baidu/tts/h/a/c;

    monitor-enter v1

    .line 25
    :try_start_7
    sget-object v0, Lcom/baidu/tts/h/a/c;->a:Lcom/baidu/tts/h/a/c;

    if-nez v0, :cond_12

    .line 26
    new-instance v0, Lcom/baidu/tts/h/a/c;

    invoke-direct {v0}, Lcom/baidu/tts/h/a/c;-><init>()V

    sput-object v0, Lcom/baidu/tts/h/a/c;->a:Lcom/baidu/tts/h/a/c;

    .line 28
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 30
    :cond_13
    sget-object v0, Lcom/baidu/tts/h/a/c;->a:Lcom/baidu/tts/h/a/c;

    return-object v0

    .line 28
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/n;I)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 4

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 5

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/f/n;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 6

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p2}, Lcom/baidu/tts/aop/tts/TtsError;->setCode(I)V

    .line 70
    invoke-virtual {v0, p3}, Lcom/baidu/tts/aop/tts/TtsError;->setMessage(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p4}, Lcom/baidu/tts/aop/tts/TtsError;->setThrowable(Ljava/lang/Throwable;)V

    .line 72
    return-object v0
.end method

.method public a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 4

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p2}, Lcom/baidu/tts/aop/tts/TtsError;->setThrowable(Ljava/lang/Throwable;)V

    .line 52
    return-object v0
.end method

.method public a(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/h/a/b;
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/h/a/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/h/a/b;

    .line 35
    if-nez v0, :cond_14

    .line 36
    new-instance v0, Lcom/baidu/tts/h/a/b;

    invoke-direct {v0, p1}, Lcom/baidu/tts/h/a/b;-><init>(Lcom/baidu/tts/f/n;)V

    .line 37
    iget-object v1, p0, Lcom/baidu/tts/h/a/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_14
    return-object v0
.end method

.method public b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;
    .registers 4

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/h/a/b;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/baidu/tts/aop/tts/TtsError;

    invoke-direct {v1}, Lcom/baidu/tts/aop/tts/TtsError;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Lcom/baidu/tts/aop/tts/TtsError;->setTtsErrorFlyweight(Lcom/baidu/tts/h/a/b;)V

    .line 46
    return-object v1
.end method
