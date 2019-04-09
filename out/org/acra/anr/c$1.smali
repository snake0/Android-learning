.class Lorg/acra/anr/c$1;
.super Landroid/os/FileObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/acra/anr/c;


# direct methods
.method constructor <init>(Lorg/acra/anr/c;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 5

    .prologue
    .line 37
    iput-object p1, p0, Lorg/acra/anr/c$1;->b:Lorg/acra/anr/c;

    iput-object p4, p0, Lorg/acra/anr/c$1;->a:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 42
    if-eqz p2, :cond_61

    const-string v0, "trace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lorg/acra/anr/c$1;->b:Lorg/acra/anr/c;

    invoke-static {v0}, Lorg/acra/anr/c;->a(Lorg/acra/anr/c;)Z

    move-result v0

    if-eqz v0, :cond_61

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/anr/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_61

    .line 43
    iget-object v0, p0, Lorg/acra/anr/c$1;->b:Lorg/acra/anr/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/acra/anr/c;->a(Lorg/acra/anr/c;Z)Z

    .line 45
    iget-object v0, p0, Lorg/acra/anr/c$1;->a:Landroid/content/Context;

    const/16 v1, 0x32

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/anr/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/acra/anr/a;->a(Landroid/content/Context;IILjava/lang/String;)Z

    .line 47
    new-instance v0, Lorg/acra/anr/c$a;

    iget-object v1, p0, Lorg/acra/anr/c$1;->b:Lorg/acra/anr/c;

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lorg/acra/anr/c$a;-><init>(Lorg/acra/anr/c;I)V

    invoke-virtual {v0}, Lorg/acra/anr/c$a;->start()V

    .line 49
    :cond_61
    return-void
.end method
