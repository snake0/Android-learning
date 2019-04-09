.class public Lcom/megvii/livenessdetection/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DETECTOR_INIT_FAILED_BADCIPHER:I = 0x4

.field public static final DETECTOR_INIT_FAILED_EXPIRE:I = 0x5

.field public static final DETECTOR_INIT_FAILED_INVALIDMODEL:I = 0x1

.field public static final DETECTOR_INIT_FAILED_NATIVEINITFAILED:I = 0x3

.field public static final DETECTOR_INIT_FAILED_SHAREDLIBLOADFAILED:I = 0x2

.field public static final DETECTOR_INIT_OK:I

.field private static c:Z


# instance fields
.field private a:Lcom/megvii/livenessdetection/DetectionConfig;

.field private b:J

.field private d:Landroid/content/Context;

.field private e:Lcom/megvii/livenessdeteciton/obf/e;

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/megvii/livenessdetection/impl/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/megvii/livenessdetection/Detector$a;

.field private h:Lcom/megvii/livenessdetection/Detector$DetectionListener;

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Lcom/megvii/livenessdeteciton/obf/a;

.field private m:Lcom/megvii/livenessdetection/impl/b;

.field private n:Lcom/megvii/livenessdetection/impl/b;

.field private o:J

.field private p:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/megvii/livenessdetection/DetectionFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 56
    sput-boolean v1, Lcom/megvii/livenessdetection/Detector;->c:Z

    .line 319
    :try_start_3
    const-string v0, "livenessdetection_v2.4.2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lcom/megvii/livenessdetection/Detector;->c:Z
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_b} :catch_c

    .line 325
    :goto_b
    return-void

    .line 322
    :catch_c
    move-exception v0

    const-string v0, "static load library error "

    invoke-static {v0}, Lcom/megvii/livenessdeteciton/obf/d;->b(Ljava/lang/String;)V

    .line 323
    sput-boolean v1, Lcom/megvii/livenessdetection/Detector;->c:Z

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/megvii/livenessdetection/DetectionConfig;)V
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    .line 53
    iput-wide v4, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    .line 67
    iput-boolean v2, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 71
    iput-boolean v3, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 87
    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    .line 88
    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->n:Lcom/megvii/livenessdetection/impl/b;

    .line 261
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->o:J

    .line 263
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 75
    if-nez p2, :cond_29

    .line 76
    new-instance v0, Lcom/megvii/livenessdetection/DetectionConfig$Builder;

    invoke-direct {v0}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->build()Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    .line 78
    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->d:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    .line 80
    iput-wide v4, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    .line 81
    iput-boolean v2, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 82
    iput-boolean v3, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 83
    new-instance v0, Lcom/megvii/livenessdeteciton/obf/a;

    invoke-direct {v0}, Lcom/megvii/livenessdeteciton/obf/a;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Lcom/megvii/livenessdeteciton/obf/a;

    .line 84
    new-instance v0, Lcom/megvii/livenessdeteciton/obf/e;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/megvii/livenessdeteciton/obf/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->e:Lcom/megvii/livenessdeteciton/obf/e;

    .line 85
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    .registers 15

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    const/4 v0, 0x1

    .line 121
    monitor-enter p0

    :try_start_5
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->d:Landroid/content/Context;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_c5

    .line 123
    if-nez p2, :cond_d

    if-nez p3, :cond_d

    .line 172
    :cond_b
    :goto_b
    monitor-exit p0

    return v0

    .line 128
    :cond_d
    if-nez p3, :cond_c8

    .line 130
    :try_start_f
    invoke-static {p2}, Lcom/megvii/livenessdeteciton/obf/b;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 132
    :goto_13
    if-eqz v2, :cond_b

    const-string v1, "b3c61531d3a785d8af140218304940e5b24834d3"

    invoke-static {v2}, Lcom/megvii/livenessdeteciton/obf/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 136
    sget-boolean v0, Lcom/megvii/livenessdetection/Detector;->c:Z

    if-nez v0, :cond_41

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/megvii/livenessdeteciton/obf/c;->a(Landroid/content/Context;)Lcom/megvii/livenessdeteciton/obf/c;

    move-result-object v0

    const-string v1, "livenessdetection"

    const-string v3, "v2.4.2"

    invoke-virtual {v0, v1, v3}, Lcom/megvii/livenessdeteciton/obf/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 137
    if-eqz p5, :cond_3f

    invoke-static {p5}, Lcom/megvii/livenessdeteciton/obf/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 138
    :cond_3f
    const/4 v0, 0x2

    goto :goto_b

    .line 141
    :cond_41
    new-instance v0, Lcom/megvii/livenessdetection/LivenessLicenseManager;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/megvii/livenessdetection/LivenessLicenseManager;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0}, Lcom/megvii/livenessdetection/LivenessLicenseManager;->checkCachedLicense()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-nez v0, :cond_56

    .line 143
    const/4 v0, 0x4

    goto :goto_b

    .line 156
    :cond_56
    invoke-virtual {p0}, Lcom/megvii/livenessdetection/Detector;->release()V

    .line 158
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->e:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v3, "cb072839e1e240a23baae123ca6cf165"

    invoke-virtual {v1, v3}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->e:Lcom/megvii/livenessdeteciton/obf/e;

    const-string v3, "e2380b201325a8f252636350338aeae8"

    invoke-virtual {v1, v3}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/DetectionConfig;->toJsonString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->nativeRawInit(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    .line 162
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_a0

    move v0, v6

    .line 163
    goto/16 :goto_b

    .line 164
    :cond_a0
    new-instance v0, Lcom/megvii/livenessdetection/Detector$a;

    invoke-direct {v0, p0}, Lcom/megvii/livenessdetection/Detector$a;-><init>(Lcom/megvii/livenessdetection/Detector;)V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    .line 165
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/Detector$a;->start()V

    .line 167
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->j:Landroid/os/Handler;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;
    :try_end_c2
    .catchall {:try_start_f .. :try_end_c2} :catchall_c5

    .line 172
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 121
    :catchall_c5
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c8
    move-object v2, p3

    goto/16 :goto_13
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/Detector$DetectionType;)Lcom/megvii/livenessdetection/Detector$DetectionType;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object p1
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/impl/b;)Lcom/megvii/livenessdetection/impl/b;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->n:Lcom/megvii/livenessdetection/impl/b;

    return-object p1
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;JI[BIII)Ljava/lang/String;
    .registers 9

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Lcom/megvii/livenessdetection/Detector;->nativeDetection(JI[BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private static a(Lcom/megvii/livenessdetection/DetectionFrame;ILjava/lang/String;Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;Z)Lorg/json/JSONObject;
    .registers 13

    .prologue
    .line 710
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/megvii/livenessdetection/DetectionFrame;->hasFace()Z

    move-result v0

    if-nez v0, :cond_a

    .line 711
    :cond_8
    const/4 v0, 0x0

    .line 739
    :goto_9
    return-object v0

    .line 713
    :cond_a
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 714
    if-nez p4, :cond_3a

    .line 715
    invoke-virtual {p0}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v0

    .line 716
    const/4 v2, 0x0

    const/16 v3, 0x46

    const/high16 v4, 0x43160000    # 150.0f

    iget-object v5, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    .line 717
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 716
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v4, v0

    float-to-int v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageData(Landroid/graphics/Rect;ZIIZZI)[B

    move-result-object v0

    move-object v2, v0

    .line 721
    :goto_36
    if-nez v2, :cond_48

    .line 722
    const/4 v0, 0x0

    goto :goto_9

    .line 719
    :cond_3a
    const/4 v2, 0x1

    const/16 v3, 0x46

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageData(Landroid/graphics/Rect;ZIIZZI)[B

    move-result-object v0

    move-object v2, v0

    goto :goto_36

    .line 724
    :cond_48
    iget-object v0, p3, Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;->images:Ljava/util/Map;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 727
    :try_start_52
    const-string v3, "quality"

    invoke-virtual {p0}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v4

    iget v4, v4, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceQuality:F

    float-to-double v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 728
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 729
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 730
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 731
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 732
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 733
    const-string v1, "rect"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    const-string v1, "checksum"

    invoke-static {v2}, Lcom/megvii/livenessdeteciton/obf/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_85} :catch_86

    goto :goto_9

    .line 736
    :catch_86
    move-exception v1

    .line 737
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_9
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;J)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/megvii/livenessdetection/Detector;->waitNormal(J)V

    return-void
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;Z)Z
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/megvii/livenessdetection/Detector;)J
    .registers 3

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/impl/b;)Lcom/megvii/livenessdetection/impl/b;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    return-object p1
.end method

.method static synthetic b(Lcom/megvii/livenessdetection/Detector;Z)Z
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object v0
.end method

.method static synthetic d(Lcom/megvii/livenessdetection/Detector;)J
    .registers 3

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->o:J

    return-wide v0
.end method

.method static synthetic e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    return-object v0
.end method

.method static synthetic f(Lcom/megvii/livenessdetection/Detector;)Z
    .registers 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->h:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 661
    :try_start_0
    invoke-static {}, Lcom/megvii/livenessdetection/Detector;->nativeGetVersion()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 664
    :goto_4
    return-object v0

    .line 663
    :catch_5
    move-exception v0

    const-string v0, "dynamic library does not load successfully, try to internalInit it with detector.init method"

    invoke-static {v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;)V

    .line 664
    const-string v0, "Could not read message from native method"

    goto :goto_4
.end method

.method static synthetic h(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Lcom/megvii/livenessdeteciton/obf/a;

    return-object v0
.end method

.method static synthetic i(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/e;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->e:Lcom/megvii/livenessdeteciton/obf/e;

    return-object v0
.end method

.method static synthetic j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/megvii/livenessdetection/Detector;)Z
    .registers 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/impl/b;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->n:Lcom/megvii/livenessdetection/impl/b;

    return-object v0
.end method

.method static synthetic m(Lcom/megvii/livenessdetection/Detector;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/impl/b;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    return-object v0
.end method

.method private native nativeDetection(JI[BIII)Ljava/lang/String;
.end method

.method private native nativeEncode(J[B)Ljava/lang/String;
.end method

.method private native nativeFaceQuality(J[BII)Ljava/lang/String;
.end method

.method private static native nativeGetVersion()Ljava/lang/String;
.end method

.method private native nativeRawInit(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeReset(J)V
.end method

.method private native waitNormal(J)V
.end method


# virtual methods
.method public declared-synchronized changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V
    .registers 6

    .prologue
    .line 372
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 382
    :goto_9
    monitor-exit p0

    return-void

    .line 374
    :cond_b
    if-nez p1, :cond_18

    .line 375
    :try_start_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DetectionType could not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    .line 372
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 376
    :cond_18
    const/4 v0, 0x0

    :try_start_19
    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 377
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 378
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    invoke-direct {p0, v0, v1}, Lcom/megvii/livenessdetection/Detector;->nativeReset(J)V

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->o:J

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 381
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Lcom/megvii/livenessdeteciton/obf/a;

    invoke-virtual {v0, p1}, Lcom/megvii/livenessdeteciton/obf/a;->a(Lcom/megvii/livenessdetection/Detector$DetectionType;)V
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_15

    goto :goto_9
.end method

.method public doDetection([BIII)Z
    .registers 14

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 234
    iget-wide v2, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->h:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v0, v2, :cond_1c

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    if-eqz v0, :cond_45

    .line 236
    :cond_1c
    const-string v2, "detector inited:%b, detectionlistener is null:%b"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_41

    move v0, v1

    .line 238
    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->h:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    if-nez v0, :cond_43

    move v0, v1

    .line 239
    :goto_33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    .line 236
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/megvii/livenessdeteciton/obf/d;->b(Ljava/lang/String;)V

    .line 248
    :goto_40
    return v6

    :cond_41
    move v0, v6

    .line 236
    goto :goto_28

    :cond_43
    move v0, v6

    .line 238
    goto :goto_33

    .line 244
    :cond_45
    new-instance v0, Lcom/megvii/livenessdetection/impl/b;

    iget-object v5, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/impl/b;-><init>([BIIILcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 246
    :try_start_50
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_57

    move-result v6

    goto :goto_40

    .line 248
    :catch_57
    move-exception v0

    goto :goto_40
.end method

.method public enableDebug(Z)V
    .registers 2

    .prologue
    .line 205
    if-eqz p1, :cond_6

    .line 206
    invoke-static {}, Lcom/megvii/livenessdeteciton/obf/d;->a()V

    .line 210
    :goto_5
    return-void

    .line 208
    :cond_6
    invoke-static {}, Lcom/megvii/livenessdeteciton/obf/d;->b()V

    goto :goto_5
.end method

.method public declared-synchronized faceQualityDetection(Landroid/graphics/Bitmap;)Lcom/megvii/livenessdetection/DetectionFrame;
    .registers 9

    .prologue
    const/4 v0, -0x1

    .line 643
    monitor-enter p0

    :try_start_2
    new-instance v6, Lcom/megvii/livenessdetection/impl/a;

    invoke-direct {v6, p1}, Lcom/megvii/livenessdetection/impl/a;-><init>(Landroid/graphics/Bitmap;)V

    .line 644
    invoke-virtual {v6}, Lcom/megvii/livenessdetection/impl/a;->a()[B

    move-result-object v3

    .line 645
    invoke-virtual {v6}, Lcom/megvii/livenessdetection/impl/a;->getImageWidth()I

    move-result v4

    .line 646
    invoke-virtual {v6}, Lcom/megvii/livenessdetection/impl/a;->getImageHeight()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_2f

    move-result v5

    .line 647
    if-eqz v3, :cond_19

    if-eq v4, v0, :cond_19

    if-ne v5, v0, :cond_1c

    .line 648
    :cond_19
    const/4 v0, 0x0

    .line 652
    :goto_1a
    monitor-exit p0

    return-object v0

    .line 650
    :cond_1c
    :try_start_1c
    iget-wide v1, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->nativeFaceQuality(J[BII)Ljava/lang/String;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    new-instance v2, Lcom/megvii/livenessdeteciton/obf/b;

    invoke-direct {v2}, Lcom/megvii/livenessdeteciton/obf/b;-><init>()V

    invoke-virtual {v6, v0, v1, v2}, Lcom/megvii/livenessdetection/impl/a;->a(Ljava/lang/String;Lcom/megvii/livenessdetection/DetectionConfig;Lcom/megvii/livenessdeteciton/obf/b;)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2f

    move-object v0, v6

    .line 652
    goto :goto_1a

    .line 643
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurDetectType()Lcom/megvii/livenessdetection/Detector$DetectionType;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object v0
.end method

.method public getFaceIDDataStruct()Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;
    .registers 2

    .prologue
    .line 704
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/megvii/livenessdetection/Detector;->getFaceIDDataStruct(I)Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;

    move-result-object v0

    return-object v0
.end method

.method public getFaceIDDataStruct(I)Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 673
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 674
    new-instance v1, Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;

    invoke-direct {v1}, Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;-><init>()V

    .line 675
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 676
    iget-object v5, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    .line 677
    if-nez v5, :cond_16

    .line 678
    const/4 v0, 0x0

    .line 699
    :goto_15
    return-object v0

    .line 680
    :cond_16
    :try_start_16
    const-string v2, "image_best"

    const-string v6, "image_best"

    const/4 v7, 0x1

    invoke-static {v5, p1, v6, v1, v7}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/DetectionFrame;ILjava/lang/String;Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v2, v0

    .line 681
    :goto_23
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_61

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "image_action"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/megvii/livenessdetection/DetectionFrame;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "image_action"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v0, p1, v7, v1, v8}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/DetectionFrame;ILjava/lang/String;Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    .line 685
    :cond_61
    const-string v0, "image_env"

    const-string v2, "image_env"

    const/4 v6, 0x0

    invoke-static {v5, p1, v2, v1, v6}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/DetectionFrame;ILjava/lang/String;Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    const-string v0, "images"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    const-string v0, "datetime"

    .line 1052
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1053
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 688
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    const-string v0, "sdk_version"

    invoke-static {}, Lcom/megvii/livenessdetection/Detector;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    const-string v0, "user_info"

    invoke-static {}, Lcom/megvii/livenessdeteciton/obf/b;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string v0, "log"

    invoke-virtual {p0}, Lcom/megvii/livenessdetection/Detector;->getLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_a6} :catch_b9

    .line 697
    :goto_a6
    iget-wide v4, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v4, v5, v0}, Lcom/megvii/livenessdetection/Detector;->nativeEncode(J[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;->delta:Ljava/lang/String;

    move-object v0, v1

    .line 699
    goto/16 :goto_15

    .line 694
    :catch_b9
    move-exception v0

    .line 695
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a6
.end method

.method public getLog()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Lcom/megvii/livenessdeteciton/obf/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Lcom/megvii/livenessdeteciton/obf/a;

    invoke-virtual {v0}, Lcom/megvii/livenessdeteciton/obf/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public declared-synchronized getValidFrame()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/megvii/livenessdetection/DetectionFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v0, :cond_8

    .line 420
    const/4 v0, 0x0

    .line 423
    :goto_6
    monitor-exit p0

    return-object v0

    .line 421
    :cond_8
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 422
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    goto :goto_6

    .line 419
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)I
    .registers 11

    .prologue
    .line 101
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    .prologue
    .line 115
    monitor-enter p0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    .prologue
    .line 92
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;[BLjava/lang/String;)Z
    .registers 10

    .prologue
    .line 96
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 179
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    if-eqz v0, :cond_14

    .line 180
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/Detector$a;->interrupt()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_42

    .line 182
    :try_start_c
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/Detector$a;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_3d
    .catchall {:try_start_c .. :try_end_11} :catchall_42

    .line 187
    :goto_11
    const/4 v0, 0x0

    :try_start_12
    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    .line 190
    :cond_14
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_20

    .line 191
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    .line 194
    :cond_20
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    .line 195
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;

    .line 198
    :cond_2c
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    .line 199
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    invoke-direct {p0, v0, v1}, Lcom/megvii/livenessdetection/Detector;->nativeRelease(J)V

    .line 200
    :cond_37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_42

    .line 202
    monitor-exit p0

    return-void

    .line 183
    :catch_3d
    move-exception v0

    .line 185
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_11

    .line 179
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 5

    .prologue
    .line 389
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 400
    :goto_9
    monitor-exit p0

    return-void

    .line 392
    :cond_b
    const/4 v0, 0x0

    :try_start_c
    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->n:Lcom/megvii/livenessdetection/impl/b;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->q:Ljava/util/ArrayList;

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 397
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {p0, v0}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 399
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Lcom/megvii/livenessdeteciton/obf/a;

    invoke-virtual {v0}, Lcom/megvii/livenessdeteciton/obf/a;->a()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_29

    goto :goto_9

    .line 389
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetAction()V
    .registers 5

    .prologue
    .line 403
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 409
    :goto_9
    monitor-exit p0

    return-void

    .line 406
    :cond_b
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 408
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {p0, v0}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_9

    .line 403
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDetectionListener(Lcom/megvii/livenessdetection/Detector$DetectionListener;)V
    .registers 3

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->h:Lcom/megvii/livenessdetection/Detector$DetectionListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 259
    monitor-exit p0

    return-void

    .line 258
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
