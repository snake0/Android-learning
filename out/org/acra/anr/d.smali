.class Lorg/acra/anr/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:I

.field private c:Z

.field private volatile d:I

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/anr/d;->a:Z

    .line 20
    const v0, 0x1d4c0

    iput v0, p0, Lorg/acra/anr/d;->b:I

    .line 22
    iput-boolean v1, p0, Lorg/acra/anr/d;->c:Z

    .line 24
    iput v1, p0, Lorg/acra/anr/d;->d:I

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/acra/anr/d;->e:Landroid/os/Handler;

    .line 26
    new-instance v0, Lorg/acra/anr/d$1;

    invoke-direct {v0, p0}, Lorg/acra/anr/d$1;-><init>(Lorg/acra/anr/d;)V

    iput-object v0, p0, Lorg/acra/anr/d;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lorg/acra/anr/d;)I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lorg/acra/anr/d;->d:I

    return v0
.end method

.method static synthetic a(Lorg/acra/anr/d;I)I
    .registers 2

    .prologue
    .line 14
    iput p1, p0, Lorg/acra/anr/d;->d:I

    return p1
.end method

.method static synthetic a(Lorg/acra/anr/d;Z)Z
    .registers 2

    .prologue
    .line 14
    iput-boolean p1, p0, Lorg/acra/anr/d;->c:Z

    return p1
.end method

.method static synthetic b(Lorg/acra/anr/d;)Z
    .registers 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lorg/acra/anr/d;->a:Z

    return v0
.end method

.method static synthetic c(Lorg/acra/anr/d;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lorg/acra/anr/d;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lorg/acra/anr/d;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lorg/acra/anr/d;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lorg/acra/anr/d;)Z
    .registers 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lorg/acra/anr/d;->c:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "startANRMonitor WatchDog"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Lorg/acra/anr/d$2;

    invoke-direct {v0, p0, p1}, Lorg/acra/anr/d$2;-><init>(Lorg/acra/anr/d;Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/acra/anr/d$2;->start()V

    .line 69
    return-void
.end method
