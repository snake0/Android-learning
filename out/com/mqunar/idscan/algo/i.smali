.class public final Lcom/mqunar/idscan/algo/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mqunar/idscan/algo/i;


# instance fields
.field private b:Lcom/mqunar/idscan/algo/a;

.field private c:Lcom/mqunar/idscan/algo/e;

.field private d:Lcom/mqunar/idscan/algo/b;

.field private e:Lcom/mqunar/idscan/algo/c;

.field private f:Lcom/mqunar/idscan/algo/d;

.field private g:[I

.field private h:Ljava/nio/IntBuffer;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Paint;

.field private k:[I

.field private l:[I

.field private m:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mqunar/idscan/algo/a;

    sget-object v1, Lcom/mqunar/idscan/algo/f;->g:Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Lcom/mqunar/idscan/algo/a;-><init>(Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/mqunar/idscan/algo/i;->b:Lcom/mqunar/idscan/algo/a;

    iput-object v2, p0, Lcom/mqunar/idscan/algo/i;->c:Lcom/mqunar/idscan/algo/e;

    new-instance v0, Lcom/mqunar/idscan/algo/b;

    sget-object v1, Lcom/mqunar/idscan/algo/f;->e:Ljava/lang/String;

    invoke-direct {v0}, Lcom/mqunar/idscan/algo/b;-><init>()V

    iput-object v0, p0, Lcom/mqunar/idscan/algo/i;->d:Lcom/mqunar/idscan/algo/b;

    new-instance v0, Lcom/mqunar/idscan/algo/c;

    sget-object v1, Lcom/mqunar/idscan/algo/f;->f:Ljava/lang/String;

    invoke-direct {v0}, Lcom/mqunar/idscan/algo/c;-><init>()V

    iput-object v0, p0, Lcom/mqunar/idscan/algo/i;->e:Lcom/mqunar/idscan/algo/c;

    new-instance v0, Lcom/mqunar/idscan/algo/d;

    invoke-direct {v0}, Lcom/mqunar/idscan/algo/d;-><init>()V

    iput-object v0, p0, Lcom/mqunar/idscan/algo/i;->f:Lcom/mqunar/idscan/algo/d;

    iput-object v2, p0, Lcom/mqunar/idscan/algo/i;->g:[I

    iput-object v2, p0, Lcom/mqunar/idscan/algo/i;->h:Ljava/nio/IntBuffer;

    iput-object v2, p0, Lcom/mqunar/idscan/algo/i;->i:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/mqunar/idscan/algo/i;->j:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/mqunar/idscan/algo/i;->k:[I

    iput-object v2, p0, Lcom/mqunar/idscan/algo/i;->l:[I

    iput-object v2, p0, Lcom/mqunar/idscan/algo/i;->m:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/mqunar/idscan/algo/e;

    sget-object v1, Lcom/mqunar/idscan/algo/f;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/idscan/algo/i;->e:Lcom/mqunar/idscan/algo/c;

    invoke-direct {v0, v1}, Lcom/mqunar/idscan/algo/e;-><init>(Lcom/mqunar/idscan/algo/c;)V

    iput-object v0, p0, Lcom/mqunar/idscan/algo/i;->c:Lcom/mqunar/idscan/algo/e;

    return-void
.end method

.method public static a([BIIIIII)Ljava/lang/String;
    .registers 19

    sget-boolean v2, Lcom/mqunar/idscan/algo/CNN;->a:Z

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/mqunar/idscan/image/ImageNativeLibrary;->a:Z

    if-nez v2, :cond_b

    :cond_8
    const-string v2, "-200"

    :goto_a
    return-object v2

    :cond_b
    const/4 v10, 0x0

    :try_start_c
    sget-object v2, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    if-nez v2, :cond_17

    new-instance v2, Lcom/mqunar/idscan/algo/i;

    invoke-direct {v2}, Lcom/mqunar/idscan/algo/i;-><init>()V

    sput-object v2, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    :cond_17
    sget-object v11, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    iget-object v2, v11, Lcom/mqunar/idscan/algo/i;->g:[I

    if-nez v2, :cond_23

    mul-int v2, p5, p6

    new-array v2, v2, [I

    iput-object v2, v11, Lcom/mqunar/idscan/algo/i;->g:[I

    :cond_23
    iget-object v2, v11, Lcom/mqunar/idscan/algo/i;->h:Ljava/nio/IntBuffer;

    if-nez v2, :cond_2f

    mul-int v2, p5, p6

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, v11, Lcom/mqunar/idscan/algo/i;->h:Ljava/nio/IntBuffer;

    :cond_2f
    iget-object v2, v11, Lcom/mqunar/idscan/algo/i;->i:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3f

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v11, Lcom/mqunar/idscan/algo/i;->i:Landroid/graphics/Bitmap;

    :cond_3f
    iget-object v9, v11, Lcom/mqunar/idscan/algo/i;->g:[I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/mqunar/idscan/image/ImageNativeLibrary;->RegionYUVtoRBGA([BIIIIII[I)V

    iget-object v2, v11, Lcom/mqunar/idscan/algo/i;->g:[I

    sget-object v3, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    iget-object v4, v3, Lcom/mqunar/idscan/algo/i;->m:Landroid/graphics/Bitmap;

    if-nez v4, :cond_62

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/mqunar/idscan/algo/i;->m:Landroid/graphics/Bitmap;

    :cond_62
    iget-object v4, v3, Lcom/mqunar/idscan/algo/i;->m:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v2, v3, Lcom/mqunar/idscan/algo/i;->m:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    iget-object v4, v3, Lcom/mqunar/idscan/algo/i;->j:Landroid/graphics/Paint;

    if-nez v4, :cond_89

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_89
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, v3, Lcom/mqunar/idscan/algo/i;->i:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/mqunar/idscan/algo/i;->j:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, v3, Lcom/mqunar/idscan/algo/i;->i:Landroid/graphics/Bitmap;

    iget-object v4, v3, Lcom/mqunar/idscan/algo/i;->g:[I

    invoke-static {v4}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget-object v2, v3, Lcom/mqunar/idscan/algo/i;->g:[I

    sget-object v3, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    iget-object v4, v3, Lcom/mqunar/idscan/algo/i;->l:[I

    if-nez v4, :cond_b0

    mul-int v4, p5, p6

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/mqunar/idscan/algo/i;->l:[I

    :cond_b0
    iget-object v4, v3, Lcom/mqunar/idscan/algo/i;->k:[I

    if-nez v4, :cond_ba

    mul-int v4, p5, p6

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/mqunar/idscan/algo/i;->k:[I

    :cond_ba
    iget-object v4, v3, Lcom/mqunar/idscan/algo/i;->l:[I

    iget-object v5, v3, Lcom/mqunar/idscan/algo/i;->k:[I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v2, v0, v1, v4, v5}, Lcom/mqunar/idscan/image/ImageNativeLibrary;->AdaptiveThreshold([III[I[I)V

    iget-object v3, v3, Lcom/mqunar/idscan/algo/i;->k:[I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v3, v0, v1}, Lcom/mqunar/idscan/image/a;->a([III)[I

    move-result-object v4

    if-eqz v4, :cond_e7

    const/4 v5, 0x1

    aget v5, v4, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    sub-int/2addr v5, v6

    const/16 v6, 0x14

    if-lt v5, v6, :cond_e7

    const/4 v5, 0x3

    aget v5, v4, v5

    const/4 v6, 0x2

    aget v6, v4, v6

    sub-int/2addr v5, v6

    const/16 v6, 0x190

    if-ge v5, v6, :cond_ea

    :cond_e7
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_ea
    move/from16 v0, p5

    invoke-static {v3, v2, v4, v0}, Lcom/mqunar/idscan/image/b;->a([I[I[II)[Ljava/util/List;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_ef} :catch_2cf
    .catchall {:try_start_c .. :try_end_ef} :catchall_2f8

    move-result-object v4

    if-eqz v4, :cond_f6

    :try_start_f2
    array-length v2, v4
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f3} :catch_324
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_31c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11a

    :cond_f6
    if-eqz v4, :cond_117

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_fb
    if-ge v3, v5, :cond_117

    aget-object v2, v4, v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_103
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_103

    :cond_113
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_fb

    :cond_117
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_11a
    :try_start_11a
    invoke-static {v4}, Lcom/mqunar/idscan/algo/i;->a([Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/idscan/algo/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/mqunar/idscan/algo/f;->h:Ljava/util/HashSet;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_130} :catch_324
    .catchall {:try_start_11a .. :try_end_130} :catchall_31c

    move-result v2

    if-nez v2, :cond_153

    const/4 v2, 0x0

    :goto_134
    if-nez v2, :cond_199

    if-eqz v4, :cond_196

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_13b
    if-ge v3, v5, :cond_196

    aget-object v2, v4, v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_143
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_192

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_143

    :cond_153
    const/4 v2, 0x0

    :try_start_154
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x50

    if-ne v2, v5, :cond_190

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x4f

    if-ne v2, v5, :cond_190

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x43

    if-ne v2, v5, :cond_190

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x48

    if-ne v2, v5, :cond_190

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x4e

    if-ne v2, v5, :cond_190

    const/16 v2, 0x2c

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x45

    if-eq v2, v5, :cond_190

    const/16 v5, 0x47

    if-eq v2, v5, :cond_190

    const/4 v2, 0x0

    goto :goto_134

    :cond_190
    const/4 v2, 0x1

    goto :goto_134

    :cond_192
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_13b

    :cond_196
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_199
    invoke-static {v3}, Lcom/mqunar/idscan/algo/b;->a(Ljava/lang/String;)Z
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_19c} :catch_324
    .catchall {:try_start_154 .. :try_end_19c} :catchall_31c

    move-result v2

    if-nez v2, :cond_1c3

    if-eqz v4, :cond_1c0

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1a4
    if-ge v3, v5, :cond_1c0

    aget-object v2, v4, v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1ac
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1bc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1ac

    :cond_1bc
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1a4

    :cond_1c0
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_1c3
    :try_start_1c3
    sget-object v2, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    iget-object v2, v2, Lcom/mqunar/idscan/algo/i;->b:Lcom/mqunar/idscan/algo/a;

    invoke-virtual {v2, v3}, Lcom/mqunar/idscan/algo/a;->a(Ljava/lang/String;)Z
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1ca} :catch_324
    .catchall {:try_start_1c3 .. :try_end_1ca} :catchall_31c

    move-result v2

    if-nez v2, :cond_1f1

    if-eqz v4, :cond_1ee

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1d2
    if-ge v3, v5, :cond_1ee

    aget-object v2, v4, v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1da
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ea

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1da

    :cond_1ea
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1d2

    :cond_1ee
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_1f1
    :try_start_1f1
    sget-object v2, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    iget-object v2, v2, Lcom/mqunar/idscan/algo/i;->c:Lcom/mqunar/idscan/algo/e;

    invoke-virtual {v2, v3}, Lcom/mqunar/idscan/algo/e;->a(Ljava/lang/String;)Z
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_1f8} :catch_324
    .catchall {:try_start_1f1 .. :try_end_1f8} :catchall_31c

    move-result v2

    if-nez v2, :cond_21f

    if-eqz v4, :cond_21c

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_200
    if-ge v3, v5, :cond_21c

    aget-object v2, v4, v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_208
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_218

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_208

    :cond_218
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_200

    :cond_21c
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_21f
    :try_start_21f
    sget-object v2, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    iget-object v2, v2, Lcom/mqunar/idscan/algo/i;->e:Lcom/mqunar/idscan/algo/c;

    invoke-virtual {v2, v3}, Lcom/mqunar/idscan/algo/c;->a(Ljava/lang/String;)Z
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_226} :catch_324
    .catchall {:try_start_21f .. :try_end_226} :catchall_31c

    move-result v2

    if-nez v2, :cond_24d

    if-eqz v4, :cond_24a

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_22e
    if-ge v3, v5, :cond_24a

    aget-object v2, v4, v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_236
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_246

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_236

    :cond_246
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_22e

    :cond_24a
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_24d
    const/16 v2, 0x40

    :try_start_24f
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x4d

    if-eq v2, v5, :cond_285

    const/16 v2, 0x40

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_25c} :catch_324
    .catchall {:try_start_24f .. :try_end_25c} :catchall_31c

    move-result v2

    const/16 v5, 0x46

    if-eq v2, v5, :cond_285

    if-eqz v4, :cond_282

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_266
    if-ge v3, v5, :cond_282

    aget-object v2, v4, v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_26e

    :cond_27e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_266

    :cond_282
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_285
    :try_start_285
    sget-object v2, Lcom/mqunar/idscan/algo/i;->a:Lcom/mqunar/idscan/algo/i;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/mqunar/idscan/algo/i;->g:[I

    iget-object v5, v2, Lcom/mqunar/idscan/algo/i;->h:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/mqunar/idscan/algo/i;->h:Ljava/nio/IntBuffer;

    iget-object v5, v2, Lcom/mqunar/idscan/algo/i;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/mqunar/idscan/algo/i;->i:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/mqunar/idscan/algo/i;->j:Landroid/graphics/Paint;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/mqunar/idscan/algo/i;->l:[I

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/mqunar/idscan/algo/i;->k:[I

    iget-object v5, v2, Lcom/mqunar/idscan/algo/i;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/mqunar/idscan/algo/i;->m:Landroid/graphics/Bitmap;
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_2ab} :catch_324
    .catchall {:try_start_285 .. :try_end_2ab} :catchall_31c

    if-eqz v4, :cond_2cc

    array-length v6, v4

    const/4 v2, 0x0

    move v5, v2

    :goto_2b0
    if-ge v5, v6, :cond_2cc

    aget-object v2, v4, v5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2b8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2b8

    :cond_2c8
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2b0

    :cond_2cc
    move-object v2, v3

    goto/16 :goto_a

    :catch_2cf
    move-exception v2

    move-object v3, v10

    :goto_2d1
    :try_start_2d1
    invoke-static {v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_2d4
    .catchall {:try_start_2d1 .. :try_end_2d4} :catchall_320

    if-eqz v3, :cond_2f5

    array-length v5, v3

    const/4 v2, 0x0

    move v4, v2

    :goto_2d9
    if-ge v4, v5, :cond_2f5

    aget-object v2, v3, v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2e1

    :cond_2f1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2d9

    :cond_2f5
    const/4 v2, 0x0

    goto/16 :goto_a

    :catchall_2f8
    move-exception v2

    move-object v3, v2

    :goto_2fa
    if-eqz v10, :cond_31b

    array-length v5, v10

    const/4 v2, 0x0

    move v4, v2

    :goto_2ff
    if-ge v4, v5, :cond_31b

    aget-object v2, v10, v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_307
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_317

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_307

    :cond_317
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2ff

    :cond_31b
    throw v3

    :catchall_31c
    move-exception v2

    move-object v3, v2

    move-object v10, v4

    goto :goto_2fa

    :catchall_320
    move-exception v2

    move-object v10, v3

    move-object v3, v2

    goto :goto_2fa

    :catch_324
    move-exception v2

    move-object v3, v4

    goto :goto_2d1
.end method

.method private static a([Ljava/util/List;)Ljava/lang/String;
    .registers 15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x310

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v8, 0x0

    array-length v12, p0

    const/4 v0, 0x0

    move v10, v0

    move v0, v8

    :goto_f
    if-ge v10, v12, :cond_b9

    aget-object v3, p0, v10

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v8, v0

    move v9, v2

    :goto_19
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3f

    const/4 v2, 0x6

    if-ne v9, v2, :cond_65

    const/4 v0, 0x0

    :goto_2b
    const/16 v2, 0x27

    if-ge v0, v2, :cond_37

    const-string v2, "<"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_37
    const/16 v9, 0x2d

    :cond_39
    :goto_39
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move v2, v9

    move v0, v8

    goto :goto_f

    :cond_3f
    const/16 v2, 0x2d

    if-ge v9, v2, :cond_65

    const-string v2, "<<"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "<<"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_65

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_56
    rsub-int/lit8 v3, v2, 0x2c

    if-ge v0, v3, :cond_62

    const-string v3, "<"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_62
    const/16 v9, 0x2d

    goto :goto_39

    :cond_65
    const/16 v2, 0x49

    if-lt v9, v2, :cond_78

    const/16 v2, 0x58

    if-gt v9, v2, :cond_78

    const-string v0, "<"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v8

    :goto_73
    add-int/lit8 v2, v9, 0x1

    move v8, v0

    move v9, v2

    goto :goto_19

    :cond_78
    const/4 v2, 0x0

    const/16 v3, 0x1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/16 v7, 0x1c

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_86
    const/16 v3, 0x310

    if-ge v0, v3, :cond_98

    aget v3, v1, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/lit8 v3, v2, 0x1

    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_86

    :cond_98
    invoke-static {v1}, Lcom/mqunar/idscan/algo/CNN;->predict([I)I

    move-result v0

    sget-object v2, Lcom/mqunar/idscan/algo/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    if-ne v9, v2, :cond_b4

    const-string v2, "W"

    if-eq v0, v2, :cond_b3

    const-string v2, "D"

    if-eq v0, v2, :cond_b3

    const-string v2, "T"

    if-ne v0, v2, :cond_b4

    :cond_b3
    const/4 v8, 0x1

    :cond_b4
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v8

    goto :goto_73

    :cond_b9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
