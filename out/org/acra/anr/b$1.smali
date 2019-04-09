.class Lorg/acra/anr/b$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/acra/anr/b;


# direct methods
.method constructor <init>(Lorg/acra/anr/b;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 53
    iput-object p1, p0, Lorg/acra/anr/b$1;->b:Lorg/acra/anr/b;

    iput-object p2, p0, Lorg/acra/anr/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lorg/acra/anr/b$1;->b:Lorg/acra/anr/b;

    iget-object v1, p0, Lorg/acra/anr/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/acra/anr/b;->a(Lorg/acra/anr/b;Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lorg/acra/anr/b$1;->b:Lorg/acra/anr/b;

    iget-object v1, p0, Lorg/acra/anr/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/acra/anr/b;->b(Lorg/acra/anr/b;Landroid/content/Context;)V

    .line 61
    return-void
.end method
