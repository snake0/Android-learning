.class Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field static final REMOVE_BITMAP:I


# instance fields
.field removalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mapquest/android/maps/MemoryTileCache;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MemoryTileCache;ILandroid/os/Looper;)V
    .registers 5

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;->this$0:Lcom/mapquest/android/maps/MemoryTileCache;

    .line 134
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;->removalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;->removalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_20

    .line 140
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;->removalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 141
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;->removalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 142
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 148
    :cond_20
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    return-void
.end method

.method public removeBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 152
    if-eqz p1, :cond_b

    .line 153
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;->removalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;->sendEmptyMessage(I)Z

    .line 157
    :cond_b
    return-void
.end method
