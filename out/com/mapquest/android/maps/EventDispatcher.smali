.class final Lcom/mapquest/android/maps/EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ERROR:I = 0x46

.field private static final MAP:I = 0x0

.field public static final MAP_LOADED:I = 0x1

.field public static final MAP_LONG_TOUCH:I = 0x4

.field public static final MAP_PROVIDER_CHANGE:I = 0x2

.field public static final MAP_TOUCH:I = 0x3

.field private static final MOVE:I = 0x14

.field public static final MOVE_END:I = 0x17

.field public static final MOVE_START:I = 0x15

.field public static final MOVING:I = 0x16

.field private static final NETWORK:I = 0x3c

.field public static final NETWORK_CONNECTED:I = 0x3d

.field public static final NETWORK_DISCONNECTED:I = 0x3e

.field private static final OVERLAY:I = 0x28

.field public static final OVERLAY_ADDED:I = 0x29

.field public static final OVERLAY_REMOVED:I = 0x2a

.field public static final RESIZED:I = 0x5

.field public static final ROTATING:I = 0x20

.field private static final ROTATION:I = 0x1e

.field public static final ROTATION_END:I = 0x21

.field public static final ROTATION_START:I = 0x1f

.field public static final TRACKBALL_ZOOM_TOGGLED:I = 0x6

.field private static final TRAFFIC:I = 0x32

.field public static final TRAFFIC_DISABLED:I = 0x34

.field public static final TRAFFIC_ENABLED:I = 0x33

.field private static final ZOOM:I = 0xa

.field public static final ZOOM_END:I = 0xc

.field public static final ZOOM_START:I = 0xb

.field public static final instance:Lcom/mapquest/android/maps/EventDispatcher;


# instance fields
.field public handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/mapquest/android/maps/EventDispatcher;

    invoke-direct {v0}, Lcom/mapquest/android/maps/EventDispatcher;-><init>()V

    sput-object v0, Lcom/mapquest/android/maps/EventDispatcher;->instance:Lcom/mapquest/android/maps/EventDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/EventDispatcher;->handlers:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static registerHandler(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 45
    if-eqz p0, :cond_9

    .line 46
    sget-object v0, Lcom/mapquest/android/maps/EventDispatcher;->instance:Lcom/mapquest/android/maps/EventDispatcher;

    iget-object v0, v0, Lcom/mapquest/android/maps/EventDispatcher;->handlers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_9
    return-void
.end method

.method public static removeAllHandlers()V
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/mapquest/android/maps/EventDispatcher;->instance:Lcom/mapquest/android/maps/EventDispatcher;

    iget-object v0, v0, Lcom/mapquest/android/maps/EventDispatcher;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    return-void
.end method

.method public static removeHandler(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 52
    if-eqz p0, :cond_9

    .line 53
    sget-object v0, Lcom/mapquest/android/maps/EventDispatcher;->instance:Lcom/mapquest/android/maps/EventDispatcher;

    iget-object v0, v0, Lcom/mapquest/android/maps/EventDispatcher;->handlers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    :cond_9
    return-void
.end method

.method public static removeMessages(I)V
    .registers 3

    .prologue
    .line 103
    sget-object v0, Lcom/mapquest/android/maps/EventDispatcher;->instance:Lcom/mapquest/android/maps/EventDispatcher;

    iget-object v0, v0, Lcom/mapquest/android/maps/EventDispatcher;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 107
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_8

    .line 110
    :cond_18
    return-void
.end method

.method public static sendEmptyMessage(I)V
    .registers 4

    .prologue
    .line 63
    sget-object v0, Lcom/mapquest/android/maps/EventDispatcher;->instance:Lcom/mapquest/android/maps/EventDispatcher;

    iget-object v0, v0, Lcom/mapquest/android/maps/EventDispatcher;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 67
    invoke-static {v0}, Lcom/mapquest/android/maps/Util;->checkIfSameThread(Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 68
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 69
    iput p0, v2, Landroid/os/Message;->what:I

    .line 70
    invoke-virtual {v0, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_8

    .line 72
    :cond_24
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 76
    :cond_28
    return-void
.end method

.method public static sendEmptyMessageDelayed(IJ)V
    .registers 5

    .prologue
    .line 79
    sget-object v0, Lcom/mapquest/android/maps/EventDispatcher;->instance:Lcom/mapquest/android/maps/EventDispatcher;

    iget-object v0, v0, Lcom/mapquest/android/maps/EventDispatcher;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 83
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 86
    :cond_18
    return-void
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 89
    sget-object v0, Lcom/mapquest/android/maps/EventDispatcher;->instance:Lcom/mapquest/android/maps/EventDispatcher;

    iget-object v0, v0, Lcom/mapquest/android/maps/EventDispatcher;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 93
    invoke-static {v0}, Lcom/mapquest/android/maps/Util;->checkIfSameThread(Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 94
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_8

    .line 96
    :cond_22
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 100
    :cond_2a
    return-void
.end method
