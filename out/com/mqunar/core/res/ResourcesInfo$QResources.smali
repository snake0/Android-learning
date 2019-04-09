.class public Lcom/mqunar/core/res/ResourcesInfo$QResources;
.super Landroid/content/res/Resources;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .registers 4

    .prologue
    .line 293
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 294
    :catch_5
    move-exception v0

    .line 295
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getBoolean(I)Z
    .registers 4

    .prologue
    .line 266
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    .line 267
    :catch_5
    move-exception v0

    .line 268
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getColor(I)I
    .registers 4

    .prologue
    .line 247
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    .line 248
    :catch_5
    move-exception v0

    .line 249
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 4

    .prologue
    .line 257
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 258
    :catch_5
    move-exception v0

    .line 259
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getDimension(I)F
    .registers 4

    .prologue
    .line 162
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    .line 163
    :catch_5
    move-exception v0

    .line 164
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .registers 4

    .prologue
    .line 171
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    .line 172
    :catch_5
    move-exception v0

    .line 173
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .registers 4

    .prologue
    .line 180
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    .line 181
    :catch_5
    move-exception v0

    .line 182
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 199
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 200
    :catch_5
    move-exception v0

    .line 201
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 209
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 210
    :catch_5
    move-exception v0

    .line 211
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 219
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 220
    :catch_5
    move-exception v0

    .line 221
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 229
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 230
    :catch_5
    move-exception v0

    .line 231
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getFraction(III)F
    .registers 6

    .prologue
    .line 189
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    .line 190
    :catch_5
    move-exception v0

    .line 191
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 41
    if-eqz v0, :cond_7

    .line 54
    :goto_6
    return v0

    .line 44
    :cond_7
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->getAllResPackageName()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 48
    invoke-super {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 49
    if-eqz v0, :cond_1a

    goto :goto_6

    .line 54
    :cond_33
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getIntArray(I)[I
    .registers 4

    .prologue
    .line 144
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 145
    :catch_5
    move-exception v0

    .line 146
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getInteger(I)I
    .registers 4

    .prologue
    .line 275
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    .line 276
    :catch_5
    move-exception v0

    .line 277
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .registers 4

    .prologue
    .line 284
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 285
    :catch_5
    move-exception v0

    .line 286
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .registers 4

    .prologue
    .line 238
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 239
    :catch_5
    move-exception v0

    .line 240
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 108
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 109
    :catch_5
    move-exception v0

    .line 110
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 99
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 100
    :catch_5
    move-exception v0

    .line 101
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 70
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 71
    :catch_5
    move-exception v0

    .line 72
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 412
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 413
    :catch_5
    move-exception v0

    .line 414
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 385
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 386
    :catch_5
    move-exception v0

    .line 387
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 394
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 395
    :catch_5
    move-exception v0

    .line 396
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 403
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 404
    :catch_5
    move-exception v0

    .line 405
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 80
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 81
    :catch_5
    move-exception v0

    .line 82
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 90
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 91
    :catch_5
    move-exception v0

    .line 92
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 135
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 136
    :catch_5
    move-exception v0

    .line 137
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 61
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 62
    :catch_5
    move-exception v0

    .line 63
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 117
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 118
    :catch_5
    move-exception v0

    .line 119
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 126
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 127
    :catch_5
    move-exception v0

    .line 128
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .registers 6

    .prologue
    .line 338
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 342
    return-void

    .line 339
    :catch_4
    move-exception v0

    .line 340
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 8

    .prologue
    .line 356
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 360
    return-void

    .line 357
    :catch_4
    move-exception v0

    .line 358
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    const-string v2, "string"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/mqunar/core/res/ResourcesInfo$QResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .registers 7

    .prologue
    .line 347
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 351
    return-void

    .line 348
    :catch_4
    move-exception v0

    .line 349
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .registers 4

    .prologue
    .line 302
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 303
    :catch_5
    move-exception v0

    .line 304
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .registers 4

    .prologue
    .line 153
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 154
    :catch_5
    move-exception v0

    .line 155
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 311
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 312
    :catch_5
    move-exception v0

    .line 313
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 320
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 321
    :catch_5
    move-exception v0

    .line 322
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .registers 4

    .prologue
    .line 329
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 330
    :catch_5
    move-exception v0

    .line 331
    new-instance v1, Lcom/mqunar/exception/ResNotFoundException;

    invoke-direct {v1, p1, v0}, Lcom/mqunar/exception/ResNotFoundException;-><init>(ILandroid/content/res/Resources$NotFoundException;)V

    throw v1
.end method
