.class public Lcom/baidu/tts/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/tts/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Lcom/baidu/tts/b/a/a/c;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/a/c;-><init>()V

    .line 76
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/b/a/b/b;)V

    .line 77
    return-object v0
.end method

.method public static a()Lcom/baidu/tts/b/a/a;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    if-nez v0, :cond_13

    .line 26
    const-class v1, Lcom/baidu/tts/b/a/a;

    monitor-enter v1

    .line 27
    :try_start_7
    sget-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    if-nez v0, :cond_12

    .line 28
    new-instance v0, Lcom/baidu/tts/b/a/a;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/a;-><init>()V

    sput-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    .line 30
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 32
    :cond_13
    sget-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    return-object v0

    .line 30
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private b()Lcom/baidu/tts/b/a/a/d;
    .registers 2

    .prologue
    .line 60
    new-instance v0, Lcom/baidu/tts/b/a/b/f;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/f;-><init>()V

    .line 61
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/baidu/tts/b/a/a/d;
    .registers 2

    .prologue
    .line 65
    new-instance v0, Lcom/baidu/tts/b/a/b/e;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e;-><init>()V

    .line 66
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/baidu/tts/b/a/a/d;
    .registers 2

    .prologue
    .line 70
    new-instance v0, Lcom/baidu/tts/b/a/b/d;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/d;-><init>()V

    .line 71
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/f;)Lcom/baidu/tts/b/a/a/d;
    .registers 5

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    sget-object v1, Lcom/baidu/tts/b/a/a$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/tts/f/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 56
    :goto_c
    return-object v0

    .line 44
    :pswitch_d
    invoke-direct {p0}, Lcom/baidu/tts/b/a/a;->b()Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    goto :goto_c

    .line 47
    :pswitch_12
    invoke-direct {p0}, Lcom/baidu/tts/b/a/a;->c()Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    goto :goto_c

    .line 50
    :pswitch_17
    invoke-direct {p0}, Lcom/baidu/tts/b/a/a;->d()Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    goto :goto_c

    .line 42
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_17
    .end packed-switch
.end method
