.class final Landroid/support/v7/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMPLETE:I = 0x2

.field private static final NEW:I = 0x0

.field private static final PENDING:I = 0x1


# instance fields
.field public arcs:[Landroid/support/v7/widget/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field public deltas:[I

.field forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Spec;",
            "Landroid/support/v7/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public hasWeights:Z

.field public hasWeightsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field public originalMeasurements:[I

.field private parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

.field private parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

.field final synthetic this$0:Landroid/support/v7/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1091
    const-class v0, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/support/v7/widget/GridLayout$Axis;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Landroid/support/v7/widget/GridLayout;Z)V
    .registers 5

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 1132
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 1099
    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    .line 1102
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1105
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1108
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1111
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1114
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1117
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1120
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1123
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1129
    new-instance v0, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1130
    new-instance v0, Landroid/support/v7/widget/GridLayout$MutableInt;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1133
    iput-boolean p2, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    .line 1134
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/GridLayout;ZLandroid/support/v7/widget/GridLayout$1;)V
    .registers 4

    .prologue
    .line 1091
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/GridLayout$Axis;I)V
    .registers 2

    .prologue
    .line 1091
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->recordOriginalMeasurement(I)V

    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Landroid/support/v7/widget/GridLayout$PackedMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1364
    move v1, v2

    :goto_2
    iget-object v0, p2, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Interval;

    array-length v0, v0

    if-ge v1, v0, :cond_1c

    .line 1365
    iget-object v0, p2, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Interval;

    aget-object v3, v0, v1

    .line 1366
    iget-object v0, p2, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$MutableInt;

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v3, v0, v2}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1364
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1368
    :cond_1c
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1438
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_5d

    const-string v0, "x"

    move-object v1, v0

    .line 1439
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1440
    const/4 v0, 0x1

    .line 1441
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    move v2, v0

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$Arc;

    .line 1442
    if-eqz v2, :cond_61

    .line 1443
    const/4 v2, 0x0

    .line 1447
    :goto_22
    iget-object v5, v0, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1448
    iget-object v6, v0, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v6, v6, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 1449
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    iget v0, v0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1450
    if-ge v5, v6, :cond_68

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1438
    :cond_5d
    const-string v0, "y"

    move-object v1, v0

    goto :goto_7

    .line 1445
    :cond_61
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_22

    .line 1450
    :cond_68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    neg-int v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_59

    .line 1455
    :cond_93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calculateMaxIndex()I
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 1138
    .line 1139
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v4

    move v2, v0

    move v1, v3

    :goto_a
    if-ge v2, v4, :cond_3b

    .line 1140
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1141
    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 1142
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_38

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1143
    :goto_1e
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1144
    iget v5, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1145
    iget v5, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1146
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1139
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 1142
    :cond_38
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1e

    .line 1148
    :cond_3b
    if-ne v1, v3, :cond_40

    const/high16 v0, -0x80000000

    :goto_3f
    return v0

    :cond_40
    move v0, v1

    goto :goto_3f
.end method

.method private computeArcs()V
    .registers 1

    .prologue
    .line 1402
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getForwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1403
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getBackwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1404
    return-void
.end method

.method private computeGroupBounds()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1194
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Bounds;

    move v1, v2

    .line 1195
    :goto_8
    array-length v3, v0

    if-ge v1, v3, :cond_13

    .line 1196
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Bounds;->reset()V

    .line 1195
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1198
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v7

    move v6, v2

    :goto_1a
    if-ge v6, v7, :cond_61

    .line 1199
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1201
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 1202
    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v1, :cond_4f

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1203
    :goto_2e
    iget v0, v3, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_52

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v5

    .line 1206
    :goto_3d
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$Bounds;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Bounds;->include(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Axis;I)V

    .line 1198
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1a

    .line 1202
    :cond_4f
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2e

    .line 1203
    :cond_52
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getOriginalMeasurements()[I

    move-result-object v0

    aget v0, v0, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v1

    aget v1, v1, v6

    add-int v5, v0, v1

    goto :goto_3d

    .line 1208
    :cond_61
    return-void
.end method

.method private computeHasWeights()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1583
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_2c

    .line 1584
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 1585
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1586
    :goto_1c
    iget v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_28

    .line 1587
    const/4 v0, 0x1

    .line 1590
    :goto_24
    return v0

    .line 1585
    :cond_25
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1c

    .line 1583
    :cond_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_2c
    move v0, v1

    .line 1590
    goto :goto_24
.end method

.method private computeLinks(Landroid/support/v7/widget/GridLayout$PackedMap;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1233
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$MutableInt;

    move v1, v2

    .line 1234
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_11

    .line 1235
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$MutableInt;->reset()V

    .line 1234
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1239
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1240
    :goto_19
    array-length v1, v0

    if-ge v2, v1, :cond_37

    .line 1241
    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v3

    .line 1242
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1244
    iget v4, v1, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_35

    :goto_2c
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1240
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1244
    :cond_35
    neg-int v3, v3

    goto :goto_2c

    .line 1246
    :cond_37
    return-void
.end method

.method private computeLocations([I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1661
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1662
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([I)V

    .line 1666
    :goto_a
    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez v1, :cond_1f

    .line 1673
    aget v1, p1, v0

    .line 1674
    array-length v2, p1

    :goto_11
    if-ge v0, v2, :cond_1f

    .line 1675
    aget v3, p1, v0

    sub-int/2addr v3, v1

    aput v3, p1, v0

    .line 1674
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1664
    :cond_1b
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solveAndDistributeSpace([I)V

    goto :goto_a

    .line 1678
    :cond_1f
    return-void
.end method

.method private computeMargins(Z)V
    .registers 10

    .prologue
    .line 1542
    if-eqz p1, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1543
    :goto_4
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_c
    if-ge v2, v3, :cond_4c

    .line 1544
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1545
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_23

    .line 1543
    :goto_1c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 1542
    :cond_20
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    goto :goto_4

    .line 1546
    :cond_23
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v1

    .line 1547
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_46

    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1548
    :goto_2f
    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1549
    if-eqz p1, :cond_49

    iget v1, v1, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1550
    :goto_35
    aget v5, v0, v1

    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v6, v4, v7, p1}, Landroid/support/v7/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v0, v1

    goto :goto_1c

    .line 1547
    :cond_46
    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2f

    .line 1549
    :cond_49
    iget v1, v1, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    goto :goto_35

    .line 1552
    :cond_4c
    return-void
.end method

.method private createArcs()[Landroid/support/v7/widget/GridLayout$Arc;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getForwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Landroid/support/v7/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/support/v7/widget/GridLayout$PackedMap;)V

    .line 1377
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getBackwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/support/v7/widget/GridLayout$PackedMap;)V

    .line 1380
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    if-eqz v0, :cond_36

    move v0, v1

    .line 1382
    :goto_1e
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_36

    .line 1383
    new-instance v4, Landroid/support/v7/widget/GridLayout$Interval;

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v4, v0, v5}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    new-instance v5, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {v5, v1}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v2, v4, v5}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V

    .line 1382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1389
    :cond_36
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    .line 1390
    new-instance v4, Landroid/support/v7/widget/GridLayout$Interval;

    invoke-direct {v4, v1, v0}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {p0, v2, v4, v5, v1}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1391
    new-instance v4, Landroid/support/v7/widget/GridLayout$Interval;

    invoke-direct {v4, v0, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1394
    invoke-direct {p0, v2}, Landroid/support/v7/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    .line 1395
    invoke-direct {p0, v3}, Landroid/support/v7/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v1

    .line 1397
    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Arc;

    return-object v0
.end method

.method private createGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Spec;",
            "Landroid/support/v7/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1181
    const-class v0, Landroid/support/v7/widget/GridLayout$Spec;

    const-class v1, Landroid/support/v7/widget/GridLayout$Bounds;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;

    move-result-object v2

    .line 1182
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_3c

    .line 1183
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1185
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 1186
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_39

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1187
    :goto_24
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-object v5, v0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/GridLayout;->getAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayout$Alignment;->getBounds()Landroid/support/v7/widget/GridLayout$Bounds;

    move-result-object v4

    .line 1188
    invoke-virtual {v2, v0, v4}, Landroid/support/v7/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 1186
    :cond_39
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_24

    .line 1190
    :cond_3c
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$Assoc;->pack()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    return-object v0
.end method

.method private createLinks(Z)Landroid/support/v7/widget/GridLayout$PackedMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    const-class v0, Landroid/support/v7/widget/GridLayout$Interval;

    const-class v1, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;

    move-result-object v3

    .line 1224
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Spec;

    .line 1225
    const/4 v1, 0x0

    array-length v4, v0

    move v2, v1

    :goto_13
    if-ge v2, v4, :cond_30

    .line 1226
    if-eqz p1, :cond_27

    aget-object v1, v0, v2

    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1227
    :goto_1b
    new-instance v5, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v3, v1, v5}, Landroid/support/v7/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1225
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_13

    .line 1226
    :cond_27
    aget-object v1, v0, v2

    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$Interval;->inverse()Landroid/support/v7/widget/GridLayout$Interval;

    move-result-object v1

    goto :goto_1b

    .line 1229
    :cond_30
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Assoc;->pack()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    return-object v0
.end method

.method private getBackwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1260
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    if-nez v0, :cond_b

    .line 1261
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->createLinks(Z)Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1263
    :cond_b
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_17

    .line 1264
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->computeLinks(Landroid/support/v7/widget/GridLayout$PackedMap;Z)V

    .line 1265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1267
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getForwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1249
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    if-nez v0, :cond_b

    .line 1250
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->createLinks(Z)Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1252
    :cond_b
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_16

    .line 1253
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->computeLinks(Landroid/support/v7/widget/GridLayout$PackedMap;Z)V

    .line 1254
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1256
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getMaxIndex()I
    .registers 3

    .prologue
    .line 1152
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_11

    .line 1153
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    .line 1155
    :cond_11
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method private getMeasure(II)I
    .registers 4

    .prologue
    .line 1706
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1707
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->size([I)I

    move-result v0

    return v0
.end method

.method private hasWeights()Z
    .registers 2

    .prologue
    .line 1594
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    if-nez v0, :cond_d

    .line 1595
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->computeHasWeights()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights:Z

    .line 1596
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1598
    :cond_d
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights:Z

    return v0
.end method

.method private include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1295
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1296
    return-void
.end method

.method private include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1278
    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1292
    :goto_6
    return-void

    .line 1283
    :cond_7
    if-eqz p4, :cond_22

    .line 1284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$Arc;

    .line 1285
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1286
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    .line 1291
    :cond_22
    new-instance v0, Landroid/support/v7/widget/GridLayout$Arc;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/widget/GridLayout$Arc;-><init>(Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private init([I)V
    .registers 3

    .prologue
    .line 1434
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1435
    return-void
.end method

.method private logError(Ljava/lang/String;[Landroid/support/v7/widget/GridLayout$Arc;[Z)V
    .registers 9

    .prologue
    .line 1459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    const/4 v0, 0x0

    :goto_b
    array-length v3, p2

    if-ge v0, v3, :cond_21

    .line 1462
    aget-object v3, p2, v0

    .line 1463
    aget-boolean v4, p3, v0

    if-eqz v4, :cond_17

    .line 1464
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    :cond_17
    iget-boolean v4, v3, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1e

    .line 1467
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1470
    :cond_21
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " constraints: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " are inconsistent; permanently removing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v2}, Landroid/support/v7/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1472
    return-void
.end method

.method private recordOriginalMeasurement(I)V
    .registers 6

    .prologue
    .line 1609
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1610
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getOriginalMeasurements()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v1

    aput v1, v0, p1

    .line 1612
    :cond_1a
    return-void
.end method

.method private relax([ILandroid/support/v7/widget/GridLayout$Arc;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1418
    iget-boolean v1, p2, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    if-nez v1, :cond_6

    .line 1430
    :cond_5
    :goto_5
    return v0

    .line 1421
    :cond_6
    iget-object v1, p2, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1422
    iget v2, v1, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1423
    iget v1, v1, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 1424
    iget-object v3, p2, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    iget v3, v3, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1425
    aget v2, p1, v2

    add-int/2addr v2, v3

    .line 1426
    aget v3, p1, v1

    if-le v2, v3, :cond_5

    .line 1427
    aput v2, p1, v1

    .line 1428
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private setParentConstraints(II)V
    .registers 5

    .prologue
    .line 1700
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    iput p1, v0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1701
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

    neg-int v1, p2

    iput v1, v0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1702
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1703
    return-void
.end method

.method private shareOutDelta()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1622
    .line 1624
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v6

    move v4, v3

    move v1, v5

    move v2, v3

    :goto_b
    if-ge v4, v6, :cond_40

    .line 1625
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1626
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 1627
    iget-boolean v8, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_3d

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1628
    :goto_1f
    iget v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    .line 1629
    cmpl-float v8, v0, v5

    if-eqz v8, :cond_7c

    .line 1630
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-boolean v9, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    # invokes: Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I
    invoke-static {v8, v7, v9}, Landroid/support/v7/widget/GridLayout;->access$300(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Z)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getOriginalMeasurements()[I

    move-result-object v8

    aget v8, v8, v4

    sub-int/2addr v7, v8

    .line 1631
    add-int/2addr v2, v7

    .line 1632
    add-float/2addr v0, v1

    move v1, v2

    .line 1624
    :goto_37
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move v1, v0

    goto :goto_b

    .line 1627
    :cond_3d
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1f

    .line 1635
    :cond_40
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v4

    :goto_46
    if-ge v3, v4, :cond_78

    .line 1636
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 1637
    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v6, :cond_75

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1638
    :goto_5a
    iget v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    .line 1639
    cmpl-float v6, v0, v5

    if-eqz v6, :cond_79

    .line 1640
    int-to-float v6, v2

    mul-float/2addr v6, v0

    div-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1641
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    aput v6, v7, v3

    .line 1643
    sub-int/2addr v2, v6

    .line 1644
    sub-float v0, v1, v0

    move v1, v2

    .line 1635
    :goto_6f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_46

    .line 1637
    :cond_75
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_5a

    .line 1647
    :cond_78
    return-void

    :cond_79
    move v0, v1

    move v1, v2

    goto :goto_6f

    :cond_7c
    move v0, v1

    move v1, v2

    goto :goto_37
.end method

.method private size([I)I
    .registers 3

    .prologue
    .line 1696
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private solve([I)V
    .registers 3

    .prologue
    .line 1579
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getArcs()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([Landroid/support/v7/widget/GridLayout$Arc;[I)V

    .line 1580
    return-void
.end method

.method private solve([Landroid/support/v7/widget/GridLayout$Arc;[I)V
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 1495
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_27

    const-string v0, "horizontal"

    .line 1496
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v1

    add-int/lit8 v7, v1, 0x1

    .line 1497
    const/4 v1, 0x0

    move v5, v4

    .line 1499
    :goto_f
    array-length v2, p1

    if-ge v5, v2, :cond_31

    .line 1500
    invoke-direct {p0, p2}, Landroid/support/v7/widget/GridLayout$Axis;->init([I)V

    move v6, v4

    .line 1503
    :goto_16
    if-ge v6, v7, :cond_36

    .line 1505
    array-length v8, p1

    move v2, v4

    move v3, v4

    :goto_1b
    if-ge v2, v8, :cond_2a

    .line 1506
    aget-object v9, p1, v2

    invoke-direct {p0, p2, v9}, Landroid/support/v7/widget/GridLayout$Axis;->relax([ILandroid/support/v7/widget/GridLayout$Arc;)Z

    move-result v9

    or-int/2addr v3, v9

    .line 1505
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1495
    :cond_27
    const-string v0, "vertical"

    goto :goto_7

    .line 1508
    :cond_2a
    if-nez v3, :cond_32

    .line 1509
    if-eqz v1, :cond_31

    .line 1510
    invoke-direct {p0, v0, p1, v1}, Landroid/support/v7/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroid/support/v7/widget/GridLayout$Arc;[Z)V

    .line 1539
    :cond_31
    return-void

    .line 1503
    :cond_32
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_16

    .line 1516
    :cond_36
    array-length v2, p1

    new-array v2, v2, [Z

    move v6, v4

    .line 1517
    :goto_3a
    if-ge v6, v7, :cond_52

    .line 1518
    array-length v8, p1

    move v3, v4

    :goto_3e
    if-ge v3, v8, :cond_4e

    .line 1519
    aget-boolean v9, v2, v3

    aget-object v10, p1, v3

    invoke-direct {p0, p2, v10}, Landroid/support/v7/widget/GridLayout$Axis;->relax([ILandroid/support/v7/widget/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v9, v10

    aput-boolean v9, v2, v3

    .line 1518
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1517
    :cond_4e
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_3a

    .line 1523
    :cond_52
    if-nez v5, :cond_55

    move-object v1, v2

    :cond_55
    move v3, v4

    .line 1527
    :goto_56
    array-length v6, p1

    if-ge v3, v6, :cond_6e

    .line 1528
    aget-boolean v6, v2, v3

    if-eqz v6, :cond_69

    .line 1529
    aget-object v6, p1, v3

    .line 1531
    iget-object v8, v6, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v8, v8, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    iget-object v9, v6, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v9, v9, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    if-ge v8, v9, :cond_6c

    .line 1527
    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 1534
    :cond_6c
    iput-boolean v4, v6, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    .line 1499
    :cond_6e
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_f
.end method

.method private solveAndDistributeSpace([I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1650
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1651
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([I)V

    .line 1652
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->shareOutDelta()V

    .line 1653
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1654
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1655
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1656
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1657
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([I)V

    .line 1658
    return-void
.end method

.method private topologicalSort(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$Arc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/support/v7/widget/GridLayout$Arc;"
        }
    .end annotation

    .prologue
    .line 1360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v7/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Arc;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->topologicalSort([Landroid/support/v7/widget/GridLayout$Arc;)[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method

.method private topologicalSort([Landroid/support/v7/widget/GridLayout$Arc;)[Landroid/support/v7/widget/GridLayout$Arc;
    .registers 3

    .prologue
    .line 1321
    new-instance v0, Landroid/support/v7/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$Axis$1;-><init>(Landroid/support/v7/widget/GridLayout$Axis;[Landroid/support/v7/widget/GridLayout$Arc;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis$1;->sort()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArcs()[Landroid/support/v7/widget/GridLayout$Arc;
    .registers 2

    .prologue
    .line 1407
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    if-nez v0, :cond_a

    .line 1408
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->createArcs()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    .line 1410
    :cond_a
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_14

    .line 1411
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->computeArcs()V

    .line 1412
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1414
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 1159
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getDeltas()[I
    .registers 2

    .prologue
    .line 1615
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    if-nez v0, :cond_e

    .line 1616
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    .line 1618
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    return-object v0
.end method

.method public getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<",
            "Landroid/support/v7/widget/GridLayout$Spec;",
            "Landroid/support/v7/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    if-nez v0, :cond_a

    .line 1212
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->createGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1214
    :cond_a
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_14

    .line 1215
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->computeGroupBounds()V

    .line 1216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1218
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public getLeadingMargins()[I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1557
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    if-nez v0, :cond_f

    .line 1558
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1560
    :cond_f
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_18

    .line 1561
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1562
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1564
    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public getLocations()[I
    .registers 2

    .prologue
    .line 1681
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    if-nez v0, :cond_e

    .line 1682
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1683
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    .line 1685
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v0, :cond_1a

    .line 1686
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->computeLocations([I)V

    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1689
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    return-object v0
.end method

.method public getMeasure(I)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1711
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1712
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1713
    sparse-switch v1, :sswitch_data_28

    .line 1724
    sget-boolean v1, Landroid/support/v7/widget/GridLayout$Axis;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1715
    :sswitch_16
    const v1, 0x186a0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v0

    .line 1725
    :cond_1d
    :goto_1d
    return v0

    .line 1718
    :sswitch_1e
    invoke-direct {p0, v2, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v0

    goto :goto_1d

    .line 1721
    :sswitch_23
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v0

    goto :goto_1d

    .line 1713
    :sswitch_data_28
    .sparse-switch
        -0x80000000 -> :sswitch_23
        0x0 -> :sswitch_16
        0x40000000 -> :sswitch_1e
    .end sparse-switch
.end method

.method public getOriginalMeasurements()[I
    .registers 2

    .prologue
    .line 1602
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->originalMeasurements:[I

    if-nez v0, :cond_e

    .line 1603
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->originalMeasurements:[I

    .line 1605
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->originalMeasurements:[I

    return-object v0
.end method

.method public getTrailingMargins()[I
    .registers 2

    .prologue
    .line 1568
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    if-nez v0, :cond_e

    .line 1569
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1571
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_19

    .line 1572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1575
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method groupArcsByFirstVertex([Landroid/support/v7/widget/GridLayout$Arc;)[[Landroid/support/v7/widget/GridLayout$Arc;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 1301
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1302
    new-array v2, v0, [[Landroid/support/v7/widget/GridLayout$Arc;

    .line 1303
    new-array v3, v0, [I

    .line 1304
    array-length v4, p1

    move v0, v1

    :goto_d
    if-ge v0, v4, :cond_1e

    aget-object v5, p1, v0

    .line 1305
    iget-object v5, v5, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 1304
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    move v0, v1

    .line 1307
    :goto_1f
    array-length v4, v3

    if-ge v0, v4, :cond_2b

    .line 1308
    aget v4, v3, v0

    new-array v4, v4, [Landroid/support/v7/widget/GridLayout$Arc;

    aput-object v4, v2, v0

    .line 1307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1311
    :cond_2b
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1312
    array-length v0, p1

    :goto_2f
    if-ge v1, v0, :cond_44

    aget-object v4, p1, v1

    .line 1313
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1314
    aget-object v6, v2, v5

    aget v7, v3, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, v3, v5

    aput-object v4, v6, v7

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1317
    :cond_44
    return-object v2
.end method

.method public invalidateStructure()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1736
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    .line 1738
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1739
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1740
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1742
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1743
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1744
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    .line 1746
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    .line 1748
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->originalMeasurements:[I

    .line 1749
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    .line 1750
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1752
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 1753
    return-void
.end method

.method public invalidateValues()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1756
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1757
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1758
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1760
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1761
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1762
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1764
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1765
    return-void
.end method

.method public isOrderPreserved()Z
    .registers 2

    .prologue
    .line 1172
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    return v0
.end method

.method public layout(I)V
    .registers 2

    .prologue
    .line 1731
    invoke-direct {p0, p1, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1732
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    .line 1733
    return-void
.end method

.method public setCount(I)V
    .registers 4

    .prologue
    .line 1163
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_2c

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_2c

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_2f

    const-string v0, "column"

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->access$200(Ljava/lang/String;)V

    .line 1168
    :cond_2c
    iput p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 1169
    return-void

    .line 1164
    :cond_2f
    const-string v0, "row"

    goto :goto_15
.end method

.method public setOrderPreserved(Z)V
    .registers 2

    .prologue
    .line 1176
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1177
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 1178
    return-void
.end method
