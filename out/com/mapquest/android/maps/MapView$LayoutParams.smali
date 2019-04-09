.class public Lcom/mapquest/android/maps/MapView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# static fields
.field public static final BOTTOM:I = 0x20

.field public static final BOTTOM_CENTER:I = 0x21

.field public static final CENTER:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final MODE_MAP:I = 0x0

.field public static final MODE_VIEW:I = 0x1

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x10

.field public static final TOP_LEFT:I = 0x14


# instance fields
.field public alignment:I

.field public mode:I

.field public point:Lcom/mapquest/android/maps/GeoPoint;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 8

    .prologue
    const v1, 0x7fffffff

    .line 1810
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1747
    const/4 v0, 0x3

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1748
    const/4 v0, 0x1

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    .line 1750
    iput v1, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    .line 1751
    iput v1, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    .line 1811
    iput p3, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    .line 1812
    iput p4, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    .line 1813
    iput p5, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1814
    return-void
.end method

.method public constructor <init>(IILcom/mapquest/android/maps/GeoPoint;I)V
    .registers 7

    .prologue
    const v1, 0x7fffffff

    .line 1788
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1747
    const/4 v0, 0x3

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1748
    const/4 v0, 0x1

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    .line 1750
    iput v1, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    .line 1751
    iput v1, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    .line 1789
    iput-object p3, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 1790
    iput p4, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1791
    if-eqz p3, :cond_19

    .line 1792
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    .line 1795
    :cond_19
    return-void
.end method

.method public constructor <init>(IILcom/mapquest/android/maps/GeoPoint;III)V
    .registers 9

    .prologue
    const v1, 0x7fffffff

    .line 1798
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1747
    const/4 v0, 0x3

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1748
    const/4 v0, 0x1

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    .line 1750
    iput v1, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    .line 1751
    iput v1, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    .line 1799
    iput-object p3, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 1800
    iput p4, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    .line 1801
    iput p5, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    .line 1802
    iput p6, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1803
    if-eqz p3, :cond_1d

    .line 1804
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    .line 1807
    :cond_1d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const v2, 0x7fffffff

    .line 1754
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1747
    const/4 v0, 0x3

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1748
    iput v3, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    .line 1750
    iput v2, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    .line 1751
    iput v2, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    .line 1755
    const-string v0, "http://schemas.mapquest.com/apk/res/mapquest"

    const-string v1, "x"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    .line 1756
    const-string v0, "http://schemas.mapquest.com/apk/res/mapquest"

    const-string v1, "x"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    .line 1757
    const-string v0, "http://schemas.mapquest.com/apk/res/mapquest"

    const-string v1, "geoPoint"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1758
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5d

    .line 1759
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1760
    array-length v1, v0

    if-le v1, v3, :cond_5d

    .line 1762
    const/4 v1, 0x0

    :try_start_3e
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 1763
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1764
    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 1765
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_5d} :catch_5e

    .line 1772
    :cond_5d
    :goto_5d
    return-void

    .line 1766
    :catch_5e
    move-exception v0

    goto :goto_5d
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    const v1, 0x7fffffff

    .line 1775
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1747
    const/4 v0, 0x3

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1748
    const/4 v0, 0x1

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    .line 1750
    iput v1, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    .line 1751
    iput v1, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    .line 1776
    instance-of v0, p1, Lcom/mapquest/android/maps/MapView$LayoutParams;

    if-eqz v0, :cond_2a

    .line 1777
    check-cast p1, Lcom/mapquest/android/maps/MapView$LayoutParams;

    .line 1778
    iget v0, p1, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->x:I

    .line 1779
    iget v0, p1, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->y:I

    .line 1780
    iget-object v0, p1, Lcom/mapquest/android/maps/MapView$LayoutParams;->point:Lcom/mapquest/android/maps/GeoPoint;

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 1781
    iget v0, p1, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->mode:I

    .line 1782
    iget v0, p1, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    iput v0, p0, Lcom/mapquest/android/maps/MapView$LayoutParams;->alignment:I

    .line 1785
    :cond_2a
    return-void
.end method
