.class public Lqunar/sdk/mapapi/utils/projectTransform/CoordConvertLocal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REAL_PI:D = 3.141592653589793

.field public static final X_PI:D = 52.35987755982988

.field public static final a:D = 6378245.0

.field public static final ee:D = 0.006693421622965943


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static bd2mar(DD)Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;
    .registers 16

    .prologue
    const-wide v10, 0x404a2e1077c7044eL    # 52.35987755982988

    .line 15
    const-wide v0, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double v0, p2, v0

    .line 16
    const-wide v2, 0x3f789374bc6a7efaL    # 0.006

    sub-double v2, p0, v2

    .line 17
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double v8, v2, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v6, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    sub-double v0, v2, v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    .line 21
    new-instance v4, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;

    invoke-direct {v4, v0, v1, v2, v3}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;-><init>(DD)V

    invoke-virtual {v4}, Lqunar/sdk/mapapi/utils/projectTransform/GCJPointer;->toExactWSGPointer()Lqunar/sdk/mapapi/utils/projectTransform/WSGPointer;

    move-result-object v0

    .line 22
    return-object v0
.end method
