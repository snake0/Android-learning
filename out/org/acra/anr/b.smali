.class public Lorg/acra/anr/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/FileObserver;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/acra/anr/b;->b:Z

    return-void
.end method

.method static synthetic a(Lorg/acra/anr/b;)Landroid/os/FileObserver;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lorg/acra/anr/b;->a:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic a(Lorg/acra/anr/b;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/acra/anr/b;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lorg/acra/anr/b;Z)Z
    .registers 2

    .prologue
    .line 15
    iput-boolean p1, p0, Lorg/acra/anr/b;->b:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    new-instance v0, Lorg/acra/anr/b$1;

    invoke-direct {v0, p0, p1}, Lorg/acra/anr/b$1;-><init>(Lorg/acra/anr/b;Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/acra/anr/b$1;->start()V

    .line 63
    return-void
.end method

.method static synthetic b(Lorg/acra/anr/b;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/acra/anr/b;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lorg/acra/anr/b;)Z
    .registers 2

    .prologue
    .line 15
    iget-boolean v0, p0, Lorg/acra/anr/b;->b:Z

    return v0
.end method

.method private c(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    const/16 v0, 0x3e8

    .line 70
    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 72
    iget-boolean v0, p0, Lorg/acra/anr/b;->b:Z

    if-nez v0, :cond_12

    .line 73
    new-instance v0, Lorg/acra/anr/d;

    invoke-direct {v0}, Lorg/acra/anr/d;-><init>()V

    invoke-virtual {v0, p1}, Lorg/acra/anr/d;->a(Landroid/content/Context;)V

    .line 75
    :cond_12
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    new-instance v0, Lorg/acra/anr/b$2;

    const-string v1, "/data/anr/"

    const/16 v2, 0xfff

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/acra/anr/b$2;-><init>(Lorg/acra/anr/b;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/anr/b;->a:Landroid/os/FileObserver;

    .line 93
    iget-object v0, p0, Lorg/acra/anr/b;->a:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 97
    :try_start_10
    const-string v0, "ls /data/anr/"

    .line 98
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_1a

    .line 102
    :goto_19
    return-void

    .line 99
    :catch_1a
    move-exception v0

    .line 100
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "exec ls /data/anr/ failed "

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    const/4 v0, 0x2

    packed-switch v0, :pswitch_data_2a

    .line 44
    :goto_4
    return-void

    .line 30
    :pswitch_5
    new-instance v0, Lorg/acra/anr/c;

    invoke-direct {v0}, Lorg/acra/anr/c;-><init>()V

    invoke-virtual {v0, p1}, Lorg/acra/anr/c;->a(Landroid/content/Context;)V

    goto :goto_4

    .line 33
    :pswitch_e
    new-instance v0, Lorg/acra/anr/d;

    invoke-direct {v0}, Lorg/acra/anr/d;-><init>()V

    invoke-virtual {v0, p1}, Lorg/acra/anr/d;->a(Landroid/content/Context;)V

    goto :goto_4

    .line 37
    :pswitch_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_26

    .line 38
    new-instance v0, Lorg/acra/anr/c;

    invoke-direct {v0}, Lorg/acra/anr/c;-><init>()V

    invoke-virtual {v0, p1}, Lorg/acra/anr/c;->a(Landroid/content/Context;)V

    goto :goto_4

    .line 40
    :cond_26
    invoke-direct {p0, p1}, Lorg/acra/anr/b;->b(Landroid/content/Context;)V

    goto :goto_4

    .line 28
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_e
        :pswitch_17
    .end packed-switch
.end method
