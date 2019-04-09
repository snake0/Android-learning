.class Lorg/acra/builder/c$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/acra/builder/c$a;

.field final synthetic b:Lorg/acra/builder/c;


# direct methods
.method constructor <init>(Lorg/acra/builder/c;Lorg/acra/builder/c$a;)V
    .registers 3

    .prologue
    .line 149
    iput-object p1, p0, Lorg/acra/builder/c$1;->b:Lorg/acra/builder/c;

    iput-object p2, p0, Lorg/acra/builder/c$1;->a:Lorg/acra/builder/c$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 159
    iget-object v0, p0, Lorg/acra/builder/c$1;->b:Lorg/acra/builder/c;

    invoke-static {v0}, Lorg/acra/builder/c;->a(Lorg/acra/builder/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/builder/c$1;->b:Lorg/acra/builder/c;

    invoke-static {v1}, Lorg/acra/builder/c;->b(Lorg/acra/builder/c;)Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resToastText()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/acra/util/k;->a(Landroid/content/Context;II)V

    .line 160
    iget-object v0, p0, Lorg/acra/builder/c$1;->a:Lorg/acra/builder/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/acra/builder/c$a;->a(J)V

    .line 161
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 162
    return-void
.end method
