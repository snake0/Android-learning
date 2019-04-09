.class final Lorg/acra/anr/c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/acra/anr/c;

.field private b:I


# direct methods
.method constructor <init>(Lorg/acra/anr/c;I)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lorg/acra/anr/c$a;->a:Lorg/acra/anr/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    iput p2, p0, Lorg/acra/anr/c$a;->b:I

    .line 65
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lorg/acra/anr/c$a;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 70
    iget-object v0, p0, Lorg/acra/anr/c$a;->a:Lorg/acra/anr/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/acra/anr/c;->a(Lorg/acra/anr/c;Z)Z

    .line 71
    return-void
.end method
