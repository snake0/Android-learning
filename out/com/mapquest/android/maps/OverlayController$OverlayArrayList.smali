.class Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/mapquest/android/maps/Overlay;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x16848f9d3c109d55L


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/OverlayController;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/OverlayController;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->this$0:Lcom/mapquest/android/maps/OverlayController;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/OverlayController;Lcom/mapquest/android/maps/OverlayController$1;)V
    .registers 3

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;-><init>(Lcom/mapquest/android/maps/OverlayController;)V

    return-void
.end method

.method private checkOverlayAdd(Lcom/mapquest/android/maps/Overlay;)V
    .registers 3

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Overlay;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Overlay;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 260
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Overlay;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->getOverlayByKey(Ljava/lang/String;)Lcom/mapquest/android/maps/Overlay;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_1d

    .line 262
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    :cond_1d
    return-void
.end method

.method private checkOverlays(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/mapquest/android/maps/Overlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 251
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 253
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->checkOverlayAdd(Lcom/mapquest/android/maps/Overlay;)V

    goto :goto_4

    .line 256
    :cond_14
    return-void
.end method

.method private sort()V
    .registers 2

    .prologue
    .line 238
    new-instance v0, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList$1;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList$1;-><init>(Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 245
    const/16 v0, 0x29

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 246
    return-void
.end method


# virtual methods
.method public add(ILcom/mapquest/android/maps/Overlay;)V
    .registers 3

    .prologue
    .line 212
    invoke-direct {p0, p2}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->checkOverlayAdd(Lcom/mapquest/android/maps/Overlay;)V

    .line 213
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->sort()V

    .line 215
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 165
    check-cast p2, Lcom/mapquest/android/maps/Overlay;

    invoke-virtual {p0, p1, p2}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->add(ILcom/mapquest/android/maps/Overlay;)V

    return-void
.end method

.method public add(Lcom/mapquest/android/maps/Overlay;)Z
    .registers 3

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->checkOverlayAdd(Lcom/mapquest/android/maps/Overlay;)V

    .line 219
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 220
    invoke-direct {p0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->sort()V

    .line 221
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 165
    check-cast p1, Lcom/mapquest/android/maps/Overlay;

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->add(Lcom/mapquest/android/maps/Overlay;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/mapquest/android/maps/Overlay;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0, p2}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->checkOverlays(Ljava/util/Collection;)V

    .line 232
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 233
    invoke-direct {p0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->sort()V

    .line 234
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/mapquest/android/maps/Overlay;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 225
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 226
    invoke-direct {p0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->sort()V

    .line 227
    return v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 176
    invoke-virtual {v0}, Lcom/mapquest/android/maps/Overlay;->destroy()V

    goto :goto_4

    .line 179
    :cond_14
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 180
    return-void
.end method

.method public getOverlayByKey(Ljava/lang/String;)Lcom/mapquest/android/maps/Overlay;
    .registers 5

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 273
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 274
    const/4 v0, 0x0

    .line 280
    :goto_b
    return-object v0

    .line 277
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 278
    invoke-virtual {v0}, Lcom/mapquest/android/maps/Overlay;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_b
.end method

.method public remove(I)Lcom/mapquest/android/maps/Overlay;
    .registers 3

    .prologue
    .line 183
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 184
    invoke-virtual {v0}, Lcom/mapquest/android/maps/Overlay;->destroy()V

    .line 185
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->remove(I)Lcom/mapquest/android/maps/Overlay;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 189
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1b

    move-object v0, p1

    .line 190
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 194
    invoke-virtual {v0}, Lcom/mapquest/android/maps/Overlay;->destroy()V

    goto :goto_b

    .line 196
    :cond_1b
    instance-of v0, p1, Lcom/mapquest/android/maps/Overlay;

    if-eqz v0, :cond_25

    move-object v0, p1

    .line 197
    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Overlay;->destroy()V

    .line 200
    :cond_25
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected removeRange(II)V
    .registers 5

    .prologue
    .line 204
    move v1, p1

    :goto_1
    if-gt v1, p2, :cond_10

    .line 205
    invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/OverlayController$OverlayArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/Overlay;->destroy()V

    .line 204
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 208
    :cond_10
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 209
    return-void
.end method
