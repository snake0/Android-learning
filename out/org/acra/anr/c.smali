.class Lorg/acra/anr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Landroid/os/FileObserver;


# instance fields
.field private final a:I

.field private b:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x1388

    iput v0, p0, Lorg/acra/anr/c;->a:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/anr/c;->b:Z

    .line 59
    return-void
.end method

.method static synthetic a(Lorg/acra/anr/c;)Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lorg/acra/anr/c;->b:Z

    return v0
.end method

.method static synthetic a(Lorg/acra/anr/c;Z)Z
    .registers 2

    .prologue
    .line 16
    iput-boolean p1, p0, Lorg/acra/anr/c;->b:Z

    return p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "startANRMonitor FileObserver"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lorg/acra/anr/c$1;

    const-string v1, "/data/anr/"

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/acra/anr/c$1;-><init>(Lorg/acra/anr/c;Ljava/lang/String;ILandroid/content/Context;)V

    sput-object v0, Lorg/acra/anr/c;->c:Landroid/os/FileObserver;

    .line 53
    sget-object v0, Lorg/acra/anr/c;->c:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 54
    return-void
.end method
