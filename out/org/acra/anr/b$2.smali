.class Lorg/acra/anr/b$2;
.super Landroid/os/FileObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/acra/anr/b;


# direct methods
.method constructor <init>(Lorg/acra/anr/b;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 5

    .prologue
    .line 82
    iput-object p1, p0, Lorg/acra/anr/b$2;->b:Lorg/acra/anr/b;

    iput-object p4, p0, Lorg/acra/anr/b$2;->a:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lorg/acra/anr/b$2;->b:Lorg/acra/anr/b;

    invoke-static {v0}, Lorg/acra/anr/b;->a(Lorg/acra/anr/b;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 87
    iget-object v0, p0, Lorg/acra/anr/b$2;->b:Lorg/acra/anr/b;

    invoke-static {v0}, Lorg/acra/anr/b;->b(Lorg/acra/anr/b;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 88
    iget-object v0, p0, Lorg/acra/anr/b$2;->b:Lorg/acra/anr/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/acra/anr/b;->a(Lorg/acra/anr/b;Z)Z

    .line 89
    new-instance v0, Lorg/acra/anr/c;

    invoke-direct {v0}, Lorg/acra/anr/c;-><init>()V

    iget-object v1, p0, Lorg/acra/anr/b$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/acra/anr/c;->a(Landroid/content/Context;)V

    .line 91
    :cond_21
    return-void
.end method
