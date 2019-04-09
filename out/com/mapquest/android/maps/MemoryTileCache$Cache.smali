.class Lcom/mapquest/android/maps/MemoryTileCache$Cache;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final load:F = 0.6f

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected capacity:I

.field final synthetic this$0:Lcom/mapquest/android/maps/MemoryTileCache;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MemoryTileCache;I)V
    .registers 5

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->this$0:Lcom/mapquest/android/maps/MemoryTileCache;

    .line 115
    const v0, 0x3f19999a    # 0.6f

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 111
    const/16 v0, 0x14

    iput v0, p0, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->capacity:I

    .line 116
    iput p2, p0, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->capacity:I

    .line 117
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->size()I

    move-result v0

    iget v1, p0, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->capacity:I

    if-le v0, v1, :cond_17

    .line 121
    iget-object v0, p0, Lcom/mapquest/android/maps/MemoryTileCache$Cache;->this$0:Lcom/mapquest/android/maps/MemoryTileCache;

    iget-object v1, v0, Lcom/mapquest/android/maps/MemoryTileCache;->removeHandler:Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MemoryTileCache$RemoveHandler;->removeBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
