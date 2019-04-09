.class Lorg/acra/anr/d$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/acra/anr/d;


# direct methods
.method constructor <init>(Lorg/acra/anr/d;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 40
    iput-object p1, p0, Lorg/acra/anr/d$2;->b:Lorg/acra/anr/d;

    iput-object p2, p0, Lorg/acra/anr/d$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v0, "ANR-WatchDog"

    invoke-virtual {p0, v0}, Lorg/acra/anr/d$2;->setName(Ljava/lang/String;)V

    .line 45
    :goto_6
    iget-object v0, p0, Lorg/acra/anr/d$2;->b:Lorg/acra/anr/d;

    invoke-static {v0}, Lorg/acra/anr/d;->b(Lorg/acra/anr/d;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 47
    iget-object v0, p0, Lorg/acra/anr/d$2;->b:Lorg/acra/anr/d;

    invoke-static {v0}, Lorg/acra/anr/d;->a(Lorg/acra/anr/d;)I

    move-result v0

    .line 48
    iget-object v2, p0, Lorg/acra/anr/d$2;->b:Lorg/acra/anr/d;

    invoke-static {v2}, Lorg/acra/anr/d;->d(Lorg/acra/anr/d;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/anr/d$2;->b:Lorg/acra/anr/d;

    invoke-static {v3}, Lorg/acra/anr/d;->c(Lorg/acra/anr/d;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    iget-object v2, p0, Lorg/acra/anr/d$2;->b:Lorg/acra/anr/d;

    invoke-static {v2}, Lorg/acra/anr/d;->e(Lorg/acra/anr/d;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 53
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 65
    :cond_30
    iget-object v2, p0, Lorg/acra/anr/d$2;->b:Lorg/acra/anr/d;

    iget-object v3, p0, Lorg/acra/anr/d$2;->b:Lorg/acra/anr/d;

    invoke-static {v3}, Lorg/acra/anr/d;->a(Lorg/acra/anr/d;)I

    move-result v3

    if-ne v3, v0, :cond_58

    const/4 v0, 0x1

    :goto_3b
    invoke-static {v2, v0}, Lorg/acra/anr/d;->a(Lorg/acra/anr/d;Z)Z

    goto :goto_6

    .line 56
    :cond_3f
    iget-object v2, p0, Lorg/acra/anr/d$2;->a:Landroid/content/Context;

    const/16 v3, 0x19

    const/4 v4, 0x2

    const-string v5, "/data/anr/traces.txt"

    invoke-static {v2, v3, v4, v5}, Lorg/acra/anr/a;->a(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 57
    iget-object v0, p0, Lorg/acra/anr/d$2;->b:Lorg/acra/anr/d;

    invoke-static {v0, v1}, Lorg/acra/anr/d;->a(Lorg/acra/anr/d;Z)Z

    .line 59
    const-wide/32 v2, 0x1d4c0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_6

    :cond_58
    move v0, v1

    .line 65
    goto :goto_3b

    .line 67
    :cond_5a
    return-void
.end method
