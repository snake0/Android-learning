.class final Lcom/mqunar/idscan/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/mqunar/idscan/a/d;

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mqunar/idscan/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/idscan/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/mqunar/idscan/a/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mqunar/idscan/a/g;->b:Lcom/mqunar/idscan/a/d;

    return-void
.end method


# virtual methods
.method final a(Landroid/os/Handler;I)V
    .registers 3

    iput-object p1, p0, Lcom/mqunar/idscan/a/g;->c:Landroid/os/Handler;

    iput p2, p0, Lcom/mqunar/idscan/a/g;->d:I

    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    iget-object v0, p0, Lcom/mqunar/idscan/a/g;->b:Lcom/mqunar/idscan/a/d;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/d;->a()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/idscan/a/g;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    iget v2, p0, Lcom/mqunar/idscan/a/g;->d:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/idscan/a/g;->c:Landroid/os/Handler;

    :goto_1c
    return-void

    :cond_1d
    sget-object v0, Lcom/mqunar/idscan/a/g;->a:Ljava/lang/String;

    const-string v1, "Got preview callback, but no handler or resolution available"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c
.end method
