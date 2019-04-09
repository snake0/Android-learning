.class public Lcom/mqunar/tools/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mqunar/tools/ViewUtils;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fakeGenId()I
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Lcom/mqunar/tools/ViewUtils;->generateViewId()I

    move-result v0

    .line 51
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public static generateViewId()I
    .registers 3

    .prologue
    .line 30
    :cond_0
    sget-object v0, Lcom/mqunar/tools/ViewUtils;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 33
    add-int/lit8 v0, v1, 0x1

    .line 34
    const v2, 0xffffff

    if-le v0, v2, :cond_e

    .line 35
    const/4 v0, 0x1

    .line 37
    :cond_e
    sget-object v2, Lcom/mqunar/tools/ViewUtils;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    return v1
.end method

.method public static varargs joinAllowedNull([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 224
    :cond_7
    :goto_7
    return-object v0

    .line 212
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    array-length v3, p0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v3, :cond_24

    aget-object v4, p0, v1

    .line 215
    invoke-static {v4}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 214
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 218
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 221
    :cond_24
    invoke-static {v2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static varargs joinNotAllowedNull([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 234
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isContainsEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    const/4 v0, 0x0

    .line 241
    :goto_7
    return-object v0

    .line 237
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    array-length v2, p0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_1d

    aget-object v3, p0, v0

    .line 239
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 241
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static makeColorMask(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;
    .registers 3

    .prologue
    .line 253
    const/high16 v0, 0x9000000

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ViewUtils;->makeColorMask(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static makeColorMask(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 258
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 259
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 260
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 261
    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 262
    const/high16 v3, 0x9000000

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 264
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 265
    const v3, 0x10100a7

    .line 266
    new-array v4, v6, [I

    neg-int v5, v3

    aput v5, v4, v7

    invoke-virtual {v2, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 267
    new-array v0, v6, [I

    aput v3, v0, v7

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 268
    return-object v2
.end method

.method public static makeColorMask(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    .registers 3

    .prologue
    .line 272
    const/high16 v0, 0x9000000

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ViewUtils;->makeColorMask(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static makeColorMask(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/StateListDrawable;
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 277
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 279
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 280
    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 282
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 283
    const v3, 0x10100a7

    .line 284
    new-array v4, v7, [I

    neg-int v5, v3

    aput v5, v4, v6

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 285
    new-array v0, v7, [I

    aput v3, v0, v6

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 286
    return-object v2
.end method

.method public static scaleByDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 298
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/mqunar/tools/ViewUtils;->scaleByDensity(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static scaleByDensity(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 292
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 293
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    return-object p1
.end method

.method public static setOrGone(Landroid/view/View;Landroid/graphics/Bitmap;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 194
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Src:Lcom/mqunar/tools/ViewSetter$Method;

    const/16 v2, 0x8

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrGone(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 104
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Background:Lcom/mqunar/tools/ViewSetter$Method;

    const/16 v2, 0x8

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrGone(Landroid/view/View;Ljava/lang/CharSequence;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 82
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    const/16 v2, 0x8

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrGone(Landroid/view/View;Z)Z
    .registers 6

    .prologue
    .line 148
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->NotCare:Lcom/mqunar/tools/ViewSetter$Method;

    const/16 v2, 0x8

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrGone(Landroid/view/View;ZLjava/lang/CharSequence;)Z
    .registers 8

    .prologue
    .line 171
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    const/16 v2, 0x8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs setOrGone(Landroid/view/View;[Ljava/lang/CharSequence;)Z
    .registers 6

    .prologue
    .line 126
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    const/4 v2, 0x1

    const/16 v3, 0x8

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrHide(Landroid/view/View;Landroid/graphics/Bitmap;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 205
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Src:Lcom/mqunar/tools/ViewSetter$Method;

    const/4 v2, 0x4

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrHide(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 115
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Background:Lcom/mqunar/tools/ViewSetter$Method;

    const/4 v2, 0x4

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrHide(Landroid/view/View;Ljava/lang/CharSequence;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 93
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    const/4 v2, 0x4

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrHide(Landroid/view/View;Z)Z
    .registers 6

    .prologue
    .line 159
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->NotCare:Lcom/mqunar/tools/ViewSetter$Method;

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrHide(Landroid/view/View;ZLjava/lang/CharSequence;)Z
    .registers 8

    .prologue
    .line 183
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs setOrHide(Landroid/view/View;[Ljava/lang/CharSequence;)Z
    .registers 6

    .prologue
    .line 137
    invoke-static {p0}, Lcom/mqunar/tools/ViewSetter;->getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;

    move-result-object v0

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    const/4 v2, 0x1

    const/4 v3, 0x4

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/mqunar/tools/ViewSetter$ViewSetting;->setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static unionGenId(I)I
    .registers 3

    .prologue
    .line 65
    if-nez p0, :cond_a

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id NOT ALLOW 0 !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_a
    const v0, 0xfffffff

    and-int/2addr v0, p0

    .line 69
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 70
    return v0
.end method
