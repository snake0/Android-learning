.class final Lcom/mqunar/idscan/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/mqunar/idscan/a/d;


# direct methods
.method constructor <init>(Lcom/mqunar/idscan/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/mqunar/idscan/a/e;->a:Lcom/mqunar/idscan/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v0, v1

    iget v1, p2, Landroid/hardware/Camera$Size;->height:I

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v1, v2

    if-ge v1, v0, :cond_12

    const/4 v0, -0x1

    :goto_11
    return v0

    :cond_12
    if-le v1, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_11

    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method