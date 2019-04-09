.class public Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MAXIMUM_SUPPORTED_POINTER_COUNT:I = 0x2


# instance fields
.field protected actionMask:I

.field private actionPointerDown:I

.field private actionPointerUp:I

.field handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;",
            ">;"
        }
    .end annotation
.end field

.field inProgress:Z

.field isMoveAfterPinch:Z

.field multiTouchSupported:Z

.field scaleFactor:F

.field final synthetic this$0:Lcom/mapquest/android/maps/TouchEventHandler;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/TouchEventHandler;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-object p1, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->inProgress:Z

    .line 79
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->isMoveAfterPinch:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->multiTouchSupported:Z

    .line 82
    iput v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionPointerDown:I

    .line 83
    iput v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionPointerUp:I

    .line 84
    const v0, 0xffff

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionMask:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->handlers:Ljava/util/ArrayList;

    .line 88
    invoke-direct {p0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->checkMultiTouchSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->multiTouchSupported:Z

    .line 89
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->multiTouchSupported:Z

    if-eqz v0, :cond_5a

    .line 91
    :try_start_27
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionPointerDown:I

    .line 92
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionPointerUp:I

    .line 93
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_MASK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionMask:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5a} :catch_5b

    .line 99
    :cond_5a
    :goto_5a
    return-void

    .line 94
    :catch_5b
    move-exception v0

    goto :goto_5a
.end method

.method private checkMethodExists(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_4
    return v0

    .line 121
    :catch_5
    move-exception v0

    .line 122
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private checkMultiTouchSupport()Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    const-class v3, Landroid/view/MotionEvent;

    const-string v4, "getPointerCount"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {p0, v3, v4, v0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->checkMethodExists(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 128
    const-class v3, Landroid/view/MotionEvent;

    const-string v4, "getX"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-direct {p0, v3, v4, v5}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->checkMethodExists(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v3

    .line 129
    const-class v4, Landroid/view/MotionEvent;

    const-string v5, "getY"

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-direct {p0, v4, v5, v6}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->checkMethodExists(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    .line 130
    if-eqz v0, :cond_31

    if-eqz v3, :cond_31

    if-eqz v4, :cond_31

    move v0, v1

    :goto_30
    return v0

    :cond_31
    move v0, v2

    goto :goto_30
.end method

.method private getPointerCount(Landroid/view/MotionEvent;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 147
    const-string v2, "getPointerCount"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getX(Landroid/view/MotionEvent;I)F
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    const-string v0, "getX"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getY(Landroid/view/MotionEvent;I)F
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 143
    const-string v0, "getY"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public getActionMask()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionMask:I

    return v0
.end method

.method public getActionPointerDown()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionPointerDown:I

    return v0
.end method

.method public getActionPointerUp()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionPointerUp:I

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->inProgress:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->isMoveAfterPinch:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->multiTouchSupported:Z

    if-nez v0, :cond_8

    move v0, v1

    .line 214
    :goto_7
    return v0

    .line 167
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 168
    iget v3, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionMask:I

    and-int/2addr v3, v0

    .line 169
    if-nez v3, :cond_14

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->isMoveAfterPinch:Z

    .line 173
    :cond_14
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-gt v0, v2, :cond_1c

    move v0, v1

    .line 174
    goto :goto_7

    .line 176
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->inProgress:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->isMoveAfterPinch:Z

    .line 178
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    new-array v4, v0, [Landroid/graphics/PointF;

    move v0, v1

    .line 180
    :goto_29
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v5

    if-ge v0, v5, :cond_49

    .line 181
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    aput-object v5, v4, v0

    .line 182
    aget-object v5, v4, v0

    invoke-direct {p0, p1, v0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 183
    aget-object v5, v4, v0

    invoke-direct {p0, p1, v0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 188
    :cond_49
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionPointerDown:I

    if-eq v3, v0, :cond_72

    const/4 v0, 0x2

    if-eq v3, v0, :cond_72

    .line 189
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->actionPointerUp:I

    if-ne v3, v0, :cond_70

    .line 190
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 192
    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 193
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;

    .line 194
    invoke-interface {v0, p1, p0, v4}, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;->onTouchEnd(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;[Landroid/graphics/PointF;)Z

    goto :goto_5a

    .line 212
    :catch_6a
    move-exception v0

    move v0, v1

    .line 214
    goto :goto_7

    .line 197
    :cond_6d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->inProgress:Z

    :cond_70
    :goto_70
    move v0, v2

    .line 210
    goto :goto_7

    .line 200
    :cond_72
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 202
    :cond_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 203
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;

    .line 204
    invoke-interface {v0, p1, p0, v4}, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;->onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;[Landroid/graphics/PointF;)Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_87} :catch_6a

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_70
.end method

.method public registerHandler(Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;)V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public removeHandler(Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;)V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public removeHandlers()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    return-void
.end method
