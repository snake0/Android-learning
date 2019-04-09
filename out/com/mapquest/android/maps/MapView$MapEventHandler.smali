.class Lcom/mapquest/android/maps/MapView$MapEventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/MapView;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1828
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    # getter for: Lcom/mapquest/android/maps/MapView;->isPause:Z
    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->access$100(Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1876
    :goto_8
    return-void

    .line 1834
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_116

    goto :goto_8

    .line 1836
    :sswitch_f
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget v0, v0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c5

    .line 1837
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-boolean v0, v0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    # getter for: Lcom/mapquest/android/maps/MapView;->zoomLevel:I
    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->access$200(Lcom/mapquest/android/maps/MapView;)I

    move-result v0

    .line 1838
    :goto_25
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapView;->validateZoomLevel(I)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 1839
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    # getter for: Lcom/mapquest/android/maps/MapView;->zoomLevel:I
    invoke-static {v1}, Lcom/mapquest/android/maps/MapView;->access$200(Lcom/mapquest/android/maps/MapView;)I

    move-result v1

    .line 1840
    iget-object v2, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v2, v2, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v3, v3, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v2, v2, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v3, v3, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_a4

    .line 1841
    :cond_4f
    iget-object v2, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    # setter for: Lcom/mapquest/android/maps/MapView;->zoomLevel:I
    invoke-static {v2, v0}, Lcom/mapquest/android/maps/MapView;->access$202(Lcom/mapquest/android/maps/MapView;I)I

    .line 1842
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v3, v3, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v4, v4, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-interface {v2, v3, v4}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v2

    iput-object v2, v0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 1843
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v0, v0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v2, v2, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v3, v3, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1844
    iget-object v2, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v2, v2, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v3, v3, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v4, v4, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1845
    iget-object v3, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v4, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v4}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, v3, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 1848
    :cond_a4
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-boolean v0, v0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    if-nez v0, :cond_e4

    .line 1849
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    # getter for: Lcom/mapquest/android/maps/MapView;->zoomLevel:I
    invoke-static {v1}, Lcom/mapquest/android/maps/MapView;->access$200(Lcom/mapquest/android/maps/MapView;)I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget v3, v3, Lcom/mapquest/android/maps/MapView;->currentScale:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/mapquest/android/maps/Util;->log2(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    # setter for: Lcom/mapquest/android/maps/MapView;->zoomLevel:I
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/MapView;->access$202(Lcom/mapquest/android/maps/MapView;I)I

    .line 1856
    :cond_c5
    :goto_c5
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    goto/16 :goto_8

    .line 1837
    :cond_cc
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    # getter for: Lcom/mapquest/android/maps/MapView;->zoomLevel:I
    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->access$200(Lcom/mapquest/android/maps/MapView;)I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    iget v2, v2, Lcom/mapquest/android/maps/MapView;->currentScale:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->log2(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto/16 :goto_25

    .line 1851
    :cond_e4
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    # setter for: Lcom/mapquest/android/maps/MapView;->zoomLevel:I
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/MapView;->access$202(Lcom/mapquest/android/maps/MapView;I)I

    goto :goto_c5

    .line 1860
    :sswitch_ea
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->moved()V

    goto/16 :goto_8

    .line 1864
    :sswitch_f1
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->preLoad()V

    .line 1865
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->moved()V

    goto/16 :goto_8

    .line 1868
    :sswitch_fd
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->preLoad()V

    .line 1869
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    goto/16 :goto_8

    .line 1872
    :sswitch_109
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->preLoad()V

    .line 1873
    iget-object v0, p0, Lcom/mapquest/android/maps/MapView$MapEventHandler;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    goto/16 :goto_8

    .line 1834
    nop

    :sswitch_data_116
    .sparse-switch
        0xb -> :sswitch_f
        0x15 -> :sswitch_ea
        0x16 -> :sswitch_ea
        0x17 -> :sswitch_f1
        0x21 -> :sswitch_f1
        0x3d -> :sswitch_fd
        0x7ae3 -> :sswitch_109
    .end sparse-switch
.end method
