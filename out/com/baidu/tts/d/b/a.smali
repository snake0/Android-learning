.class public Lcom/baidu/tts/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/tts/d/b/a;


# instance fields
.field private b:Lcom/baidu/tts/d/b/e;

.field private c:Lcom/baidu/tts/database/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    .line 19
    return-void
.end method

.method public static a()Lcom/baidu/tts/d/b/a;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/baidu/tts/d/b/a;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/baidu/tts/d/b/a;

    invoke-direct {v0}, Lcom/baidu/tts/d/b/a;-><init>()V

    sput-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/e;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/e;->a(Lcom/baidu/tts/client/model/DownloadHandler;)V

    .line 80
    return-void
.end method

.method public a(Lcom/baidu/tts/database/a;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/baidu/tts/d/b/a;->c:Lcom/baidu/tts/database/a;

    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/d/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/e;->a(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/baidu/tts/database/a;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->c:Lcom/baidu/tts/database/a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/e;->b()V

    .line 88
    return-void
.end method

.method public d(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/e;->e(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/e;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
