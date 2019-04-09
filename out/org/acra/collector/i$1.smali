.class Lorg/acra/collector/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Process;

.field final synthetic b:Lorg/acra/collector/i;


# direct methods
.method constructor <init>(Lorg/acra/collector/i;Ljava/lang/Process;)V
    .registers 3

    .prologue
    .line 104
    iput-object p1, p0, Lorg/acra/collector/i$1;->b:Lorg/acra/collector/i;

    iput-object p2, p0, Lorg/acra/collector/i$1;->a:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/acra/collector/i$1;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/acra/util/g;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 111
    :goto_9
    return-void

    .line 109
    :catch_a
    move-exception v0

    goto :goto_9
.end method
