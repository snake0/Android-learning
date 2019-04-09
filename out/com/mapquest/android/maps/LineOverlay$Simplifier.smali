.class Lcom/mapquest/android/maps/LineOverlay$Simplifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field projection:Lcom/mapquest/android/maps/Projection;

.field final synthetic this$0:Lcom/mapquest/android/maps/LineOverlay;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/LineOverlay;Lcom/mapquest/android/maps/Projection;)V
    .registers 3

    .prologue
    .line 329
    iput-object p1, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->projection:Lcom/mapquest/android/maps/Projection;

    .line 331
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/LineOverlay;Lcom/mapquest/android/maps/Projection;Lcom/mapquest/android/maps/LineOverlay$1;)V
    .registers 4

    .prologue
    .line 326
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/LineOverlay$Simplifier;-><init>(Lcom/mapquest/android/maps/LineOverlay;Lcom/mapquest/android/maps/Projection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->simplify:Z
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$200(Lcom/mapquest/android/maps/LineOverlay;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 335
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$300(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 336
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->points:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$400(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 337
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->points:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$400(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 338
    if-ge v0, v4, :cond_3c

    .line 339
    :goto_28
    add-int/lit8 v1, v0, 0x1

    if-ge v0, v4, :cond_3c

    .line 340
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->points:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$400(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_28

    :cond_3c
    move v2, v3

    .line 344
    :goto_3d
    if-ge v2, v4, :cond_60

    .line 345
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->points:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$400(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 346
    iget-object v5, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->projection:Lcom/mapquest/android/maps/Projection;

    iget-object v1, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;
    invoke-static {v1}, Lcom/mapquest/android/maps/LineOverlay;->access$300(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-interface {v5, v1, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 344
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3d

    .line 349
    :cond_60
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$Simplifier;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->simplifierHandler:Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$500(Lcom/mapquest/android/maps/LineOverlay;)Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->sendEmptyMessage(I)Z

    .line 352
    :cond_69
    return-void
.end method
