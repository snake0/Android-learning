.class public Lcom/nineoldandroids/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Animator:[I

.field private static final AnimatorSet:[I

.field private static final AnimatorSet_ordering:I = 0x0

.field private static final Animator_duration:I = 0x1

.field private static final Animator_interpolator:I = 0x0

.field private static final Animator_repeatCount:I = 0x3

.field private static final Animator_repeatMode:I = 0x4

.field private static final Animator_startOffset:I = 0x2

.field private static final Animator_valueFrom:I = 0x5

.field private static final Animator_valueTo:I = 0x6

.field private static final Animator_valueType:I = 0x7

.field private static final PropertyAnimator:[I

.field private static final PropertyAnimator_propertyName:I

.field private static final TOGETHER:I

.field private static final VALUE_TYPE_FLOAT:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v3, [I

    const v1, 0x10102e2

    aput v1, v0, v2

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    .line 48
    new-array v0, v3, [I

    const v1, 0x10102e1

    aput v1, v0, v2

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    return-void

    :array_1e
    .array-data 4
        0x1010141
        0x1010198
        0x10101be
        0x10101bf
        0x10101c0
        0x10102de
        0x10102df
        0x10102e0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/Animator;
    .registers 5

    .prologue
    .line 121
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 128
    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move-object v2, v3

    move-object v1, v3

    .line 136
    :cond_8
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v6, :cond_93

    :cond_15
    const/4 v4, 0x1

    if-eq v0, v4, :cond_93

    .line 138
    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "objectAnimator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 145
    invoke-static {p0, p2}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 163
    :goto_2b
    if-eqz p3, :cond_c0

    .line 164
    if-nez v2, :cond_bd

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    :goto_34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_37
    move-object v2, v0

    .line 169
    goto :goto_8

    .line 146
    :cond_39
    const-string v1, "animator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 147
    invoke-static {p0, p2, v3}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    goto :goto_2b

    .line 148
    :cond_46
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 149
    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 150
    sget-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 153
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 154
    invoke-virtual {v7, v5, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 155
    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x10

    if-ne v4, v8, :cond_74

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move v4, v0

    :goto_6a
    move-object v0, v1

    .line 157
    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-static {p0, p1, p2, v0, v4}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;

    .line 158
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2b

    :cond_74
    move v4, v5

    .line 155
    goto :goto_6a

    .line 160
    :cond_76
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown animator name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_93
    if-eqz p3, :cond_b8

    if-eqz v2, :cond_b8

    .line 171
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/nineoldandroids/animation/Animator;

    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator;

    .line 174
    add-int/lit8 v2, v5, 0x1

    aput-object v0, v3, v5

    move v5, v2

    goto :goto_a1

    .line 176
    :cond_b3
    if-nez p4, :cond_b9

    .line 177
    invoke-virtual {p3, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 183
    :cond_b8
    :goto_b8
    return-object v1

    .line 179
    :cond_b9
    invoke-virtual {p3, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playSequentially([Lcom/nineoldandroids/animation/Animator;)V

    goto :goto_b8

    :cond_bd
    move-object v0, v2

    goto/16 :goto_34

    :cond_c0
    move-object v0, v2

    goto/16 :goto_37
.end method

.method public static loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;
    .registers 7

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 100
    invoke-static {p0, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/Animator;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3b
    .catchall {:try_start_1 .. :try_end_c} :catchall_34

    move-result-object v0

    .line 114
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_12
    return-object v0

    .line 101
    :catch_13
    move-exception v0

    .line 102
    :try_start_14
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106
    throw v2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_34

    .line 114
    :catchall_34
    move-exception v0

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3a
    throw v0

    .line 107
    :catch_3b
    move-exception v0

    .line 108
    :try_start_3c
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    throw v2
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_34
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 16

    .prologue
    .line 216
    sget-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 219
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v6, v0

    .line 221
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v8, v0

    .line 223
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 226
    if-nez p2, :cond_21

    .line 227
    new-instance p2, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {p2}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 231
    :cond_21
    const/4 v10, 0x5

    .line 232
    const/4 v11, 0x6

    .line 234
    if-nez v0, :cond_b7

    const/4 v0, 0x1

    .line 236
    :goto_26
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 237
    if-eqz v2, :cond_ba

    const/4 v1, 0x1

    move v4, v1

    .line 238
    :goto_2e
    if-eqz v4, :cond_be

    iget v1, v2, Landroid/util/TypedValue;->type:I

    .line 239
    :goto_32
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 240
    if-eqz v12, :cond_c1

    const/4 v2, 0x1

    move v3, v2

    .line 241
    :goto_3a
    if-eqz v3, :cond_c5

    iget v2, v12, Landroid/util/TypedValue;->type:I

    .line 243
    :goto_3e
    if-eqz v4, :cond_48

    const/16 v12, 0x1c

    if-lt v1, v12, :cond_48

    const/16 v12, 0x1f

    if-le v1, v12, :cond_52

    :cond_48
    if-eqz v3, :cond_5b

    const/16 v12, 0x1c

    if-lt v2, v12, :cond_5b

    const/16 v12, 0x1f

    if-gt v2, v12, :cond_5b

    .line 248
    :cond_52
    const/4 v0, 0x0

    .line 249
    new-instance v12, Lcom/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct {v12}, Lcom/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p2, v12}, Lcom/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 252
    :cond_5b
    if-eqz v0, :cond_f7

    .line 255
    if-eqz v4, :cond_df

    .line 256
    const/4 v0, 0x5

    if-ne v1, v0, :cond_c8

    .line 257
    const/4 v0, 0x0

    invoke-virtual {v5, v10, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    move v1, v0

    .line 261
    :goto_68
    if-eqz v3, :cond_d5

    .line 262
    const/4 v0, 0x5

    if-ne v2, v0, :cond_cf

    .line 263
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 267
    :goto_72
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-virtual {p2, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    .line 319
    :cond_7e
    :goto_7e
    invoke-virtual {p2, v6, v7}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 320
    invoke-virtual {p2, v8, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 322
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 323
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 326
    :cond_94
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 327
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    .line 335
    :cond_a4
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 337
    if-lez v0, :cond_b3

    .line 338
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 340
    :cond_b3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    return-object p2

    .line 234
    :cond_b7
    const/4 v0, 0x0

    goto/16 :goto_26

    .line 237
    :cond_ba
    const/4 v1, 0x0

    move v4, v1

    goto/16 :goto_2e

    .line 238
    :cond_be
    const/4 v1, 0x0

    goto/16 :goto_32

    .line 240
    :cond_c1
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_3a

    .line 241
    :cond_c5
    const/4 v2, 0x0

    goto/16 :goto_3e

    .line 259
    :cond_c8
    const/4 v0, 0x0

    invoke-virtual {v5, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move v1, v0

    goto :goto_68

    .line 265
    :cond_cf
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto :goto_72

    .line 269
    :cond_d5
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_7e

    .line 272
    :cond_df
    const/4 v0, 0x5

    if-ne v2, v0, :cond_f1

    .line 273
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 277
    :goto_e7
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_7e

    .line 275
    :cond_f1
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto :goto_e7

    .line 282
    :cond_f7
    if-eqz v4, :cond_151

    .line 283
    const/4 v0, 0x5

    if-ne v1, v0, :cond_11c

    .line 284
    const/4 v0, 0x0

    invoke-virtual {v5, v10, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    .line 291
    :goto_103
    if-eqz v3, :cond_146

    .line 292
    const/4 v0, 0x5

    if-ne v2, v0, :cond_132

    .line 293
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 300
    :goto_10e
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-virtual {p2, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7e

    .line 285
    :cond_11c
    const/16 v0, 0x1c

    if-lt v1, v0, :cond_12b

    const/16 v0, 0x1f

    if-gt v1, v0, :cond_12b

    .line 287
    const/4 v0, 0x0

    invoke-virtual {v5, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    move v1, v0

    goto :goto_103

    .line 289
    :cond_12b
    const/4 v0, 0x0

    invoke-virtual {v5, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v1, v0

    goto :goto_103

    .line 294
    :cond_132
    const/16 v0, 0x1c

    if-lt v2, v0, :cond_140

    const/16 v0, 0x1f

    if-gt v2, v0, :cond_140

    .line 296
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_10e

    .line 298
    :cond_140
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    goto :goto_10e

    .line 302
    :cond_146
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7e

    .line 305
    :cond_151
    if-eqz v3, :cond_7e

    .line 306
    const/4 v0, 0x5

    if-ne v2, v0, :cond_167

    .line 307
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 314
    :goto_15c
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7e

    .line 308
    :cond_167
    const/16 v0, 0x1c

    if-lt v2, v0, :cond_175

    const/16 v0, 0x1f

    if-gt v2, v0, :cond_175

    .line 310
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_15c

    .line 312
    :cond_175
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    goto :goto_15c
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .registers 5

    .prologue
    .line 190
    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 192
    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 194
    sget-object v1, Lcom/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 197
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    return-object v0
.end method
