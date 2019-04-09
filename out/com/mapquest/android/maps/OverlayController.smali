.class Lcom/mapquest/android/maps/OverlayController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mapView:Lcom/mapquest/android/maps/MapView;

.field public overlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/Overlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/mapquest/android/maps/OverlayController;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 20
    new-instance v0, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;-><init>(Lcom/mapquest/android/maps/OverlayController;Lcom/mapquest/android/maps/OverlayController$1;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 159
    invoke-virtual {v0}, Lcom/mapquest/android/maps/Overlay;->destroy()V

    goto :goto_6

    .line 162
    :cond_16
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    return-void
.end method

.method public getOverlays()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 7

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 66
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    monitor-enter v1

    .line 68
    :try_start_d
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 72
    invoke-virtual {v0, p1, p2, p3}, Lcom/mapquest/android/maps/Overlay;->onKeyDown(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 73
    const/4 v0, 0x1

    monitor-exit v1

    .line 79
    :goto_27
    return v0

    .line 76
    :cond_28
    monitor-exit v1

    .line 79
    :cond_29
    const/4 v0, 0x0

    goto :goto_27

    .line 76
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 7

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 84
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    .line 85
    iget-object v1, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    monitor-enter v1

    .line 86
    :try_start_d
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 88
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 90
    invoke-virtual {v0, p1, p2, p3}, Lcom/mapquest/android/maps/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 91
    const/4 v0, 0x1

    monitor-exit v1

    .line 97
    :goto_27
    return v0

    .line 94
    :cond_28
    monitor-exit v1

    .line 97
    :cond_29
    const/4 v0, 0x0

    goto :goto_27

    .line 94
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 102
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    .line 103
    iget-object v1, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    monitor-enter v1

    .line 104
    :try_start_d
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 106
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 108
    invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 109
    const/4 v0, 0x1

    monitor-exit v1

    .line 115
    :goto_27
    return v0

    .line 112
    :cond_28
    monitor-exit v1

    .line 115
    :cond_29
    const/4 v0, 0x0

    goto :goto_27

    .line 112
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 120
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    .line 121
    iget-object v1, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    monitor-enter v1

    .line 122
    :try_start_d
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 124
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 127
    const/4 v0, 0x1

    monitor-exit v1

    .line 133
    :goto_27
    return v0

    .line 130
    :cond_28
    monitor-exit v1

    .line 133
    :cond_29
    const/4 v0, 0x0

    goto :goto_27

    .line 130
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 138
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    .line 139
    iget-object v1, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    monitor-enter v1

    .line 140
    :try_start_d
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 142
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 145
    const/4 v0, 0x1

    monitor-exit v1

    .line 151
    :goto_27
    return v0

    .line 148
    :cond_28
    monitor-exit v1

    .line 151
    :cond_29
    const/4 v0, 0x0

    goto :goto_27

    .line 148
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public renderOverlays(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;)V
    .registers 11

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 33
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    .line 34
    iget-object v6, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    monitor-enter v6

    .line 35
    :try_start_d
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 38
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 39
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_4d

    .line 42
    const/4 v3, 0x1

    :try_start_20
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getDrawingTime()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;ZJ)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a
    .catchall {:try_start_20 .. :try_end_29} :catchall_4d

    goto :goto_13

    .line 43
    :catch_2a
    move-exception v0

    goto :goto_13

    .line 48
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 50
    :goto_32
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 51
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_4d

    .line 54
    const/4 v3, 0x0

    :try_start_3f
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getDrawingTime()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;ZJ)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_49
    .catchall {:try_start_3f .. :try_end_48} :catchall_4d

    goto :goto_32

    .line 55
    :catch_49
    move-exception v0

    goto :goto_32

    .line 59
    :cond_4b
    :try_start_4b
    monitor-exit v6

    .line 62
    :cond_4c
    return-void

    .line 59
    :catchall_4d
    move-exception v0

    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method setBackedList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/Overlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mapquest/android/maps/OverlayController;->overlays:Ljava/util/List;

    .line 29
    return-void
.end method
