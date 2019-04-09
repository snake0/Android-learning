.class Lcom/mapquest/android/maps/MapController$MapHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field static final KEY_LR_LATITUDE:Ljava/lang/String; = "lr_latitude"

.field static final KEY_LR_LONGITUDE:Ljava/lang/String; = "lr_longitude"

.field static final KEY_MAP_ROTATION:Ljava/lang/String; = "scale"

.field static final KEY_SCALE_POINT_X:Ljava/lang/String; = "scale_point_x"

.field static final KEY_SCALE_POINT_Y:Ljava/lang/String; = "scale_point_x"

.field static final KEY_UL_LATITUDE:Ljava/lang/String; = "ul_latitude"

.field static final KEY_UL_LONGITUDE:Ljava/lang/String; = "ul_longitude"

.field static final KEY_ZOOM_LEVEL:Ljava/lang/String; = "zoom_level"

.field static final KEY_ZOOM_TO_SPAN:Ljava/lang/String; = "scale"

.field static final MSG_CENTER:I = 0x0

.field static final MSG_ROTATION:I = 0x4

.field static final MSG_ZOOM:I = 0x1

.field static final MSG_ZOOM_TO_SPAN:I = 0x2

.field static final MSG_ZOOM_TO_SPAN_BBOX:I = 0x3


# instance fields
.field mapView:Lcom/mapquest/android/maps/MapView;

.field final synthetic this$0:Lcom/mapquest/android/maps/MapController;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/MapController;Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->this$0:Lcom/mapquest/android/maps/MapController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/MapController;Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapController$1;)V
    .registers 4

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/MapController$MapHandler;-><init>(Lcom/mapquest/android/maps/MapController;Lcom/mapquest/android/maps/MapView;)V

    return-void
.end method

.method private dispatchOrSend(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 237
    invoke-static {p0}, Lcom/mapquest/android/maps/Util;->checkIfSameThread(Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 238
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/MapController$MapHandler;->dispatchMessage(Landroid/os/Message;)V

    .line 243
    :goto_9
    return-void

    .line 240
    :cond_a
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/MapController$MapHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e2

    .line 194
    :goto_5
    return-void

    .line 153
    :pswitch_6
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 156
    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v2, v0, v1}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    .line 157
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/mapquest/android/maps/MapView;->setMapCenter(Lcom/mapquest/android/maps/GeoPoint;I)V

    .line 158
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 159
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    goto :goto_5

    .line 162
    :pswitch_3a
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 163
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "zoom_level"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapView;->setZoomLevel(I)V

    .line 165
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 166
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    goto :goto_5

    .line 169
    :pswitch_59
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 170
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 171
    iget-object v2, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2, v0, v1}, Lcom/mapquest/android/maps/MapView;->zoomToSpan(II)V

    .line 172
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto :goto_5

    .line 175
    :pswitch_78
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ul_latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ul_longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 177
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "lr_latitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 178
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "lr_longitude"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 179
    new-instance v4, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v4, v0, v1}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    .line 180
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v0, v2, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    .line 181
    new-instance v1, Lcom/mapquest/android/maps/BoundingBox;

    invoke-direct {v1, v4, v0}, Lcom/mapquest/android/maps/BoundingBox;-><init>(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V

    .line 182
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/MapView;->zoomToSpan(Lcom/mapquest/android/maps/BoundingBox;Z)V

    .line 183
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto/16 :goto_5

    .line 186
    :pswitch_bc
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "scale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapView;->setMapRotation(F)V

    .line 189
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 190
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController$MapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 191
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    goto/16 :goto_5

    .line 151
    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3a
        :pswitch_59
        :pswitch_78
        :pswitch_bc
    .end packed-switch
.end method

.method public sendSetCenter(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 6

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 201
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/MapController$MapHandler;->dispatchOrSend(Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public sendSetMapRotation(F)V
    .registers 5

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 214
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/MapController$MapHandler;->dispatchOrSend(Landroid/os/Message;)V

    .line 216
    return-void
.end method

.method public sendSetZoom(I)V
    .registers 5

    .prologue
    .line 205
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "zoom_level"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 208
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/MapController$MapHandler;->dispatchOrSend(Landroid/os/Message;)V

    .line 209
    return-void
.end method

.method public sendZoomToSpan(II)V
    .registers 6

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 223
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/MapController$MapHandler;->dispatchOrSend(Landroid/os/Message;)V

    .line 224
    return-void
.end method

.method public sendZoomToSpan(Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 6

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ul_latitude"

    iget-object v3, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ul_longitude"

    iget-object v3, p1, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lr_latitude"

    iget-object v3, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lr_longitude"

    iget-object v3, p1, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 233
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/MapController$MapHandler;->dispatchOrSend(Landroid/os/Message;)V

    .line 234
    return-void
.end method
