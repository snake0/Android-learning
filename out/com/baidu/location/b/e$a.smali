.class Lcom/baidu/location/b/e$a;
.super Landroid/location/GnssStatus$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/e;Lcom/baidu/location/b/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/b/e$a;-><init>(Lcom/baidu/location/b/e;)V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .registers 2

    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-static {v1}, Lcom/baidu/location/b/e;->c(Lcom/baidu/location/b/e;)Landroid/location/LocationManager;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v3

    iget-object v1, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-static {v1}, Lcom/baidu/location/b/e;->d(Lcom/baidu/location/b/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v0

    move v1, v0

    :goto_19
    if-ge v2, v3, :cond_6f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_63

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    iget-object v5, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-static {v5}, Lcom/baidu/location/b/e;->d(Lcom/baidu/location/b/e;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_6f
    invoke-static {v1}, Lcom/baidu/location/b/e;->a(I)I

    invoke-static {v0}, Lcom/baidu/location/b/e;->b(I)I

    goto :goto_9
.end method

.method public onStarted()V
    .registers 1

    return-void
.end method

.method public onStopped()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-static {v0, v2}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;Z)V

    invoke-static {v2}, Lcom/baidu/location/b/e;->a(I)I

    invoke-static {v2}, Lcom/baidu/location/b/e;->b(I)I

    return-void
.end method
