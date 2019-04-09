.class public final Lcom/iflytek/cloud/ui/a;
.super Lcom/iflytek/cloud/thirdparty/cv;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:I


# instance fields
.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/iflytek/cloud/thirdparty/cw;

.field private f:Landroid/view/animation/RotateAnimation;

.field private g:Lcom/iflytek/cloud/SpeechRecognizer;

.field private h:Lcom/iflytek/cloud/ui/RecognizerDialogListener;

.field private i:J

.field private j:Lcom/iflytek/cloud/RecognizerListener;

.field private volatile k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    sput v0, Lcom/iflytek/cloud/ui/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/cv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    iput-object v1, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/ui/a;->i:J

    new-instance v0, Lcom/iflytek/cloud/ui/a$2;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/ui/a$2;-><init>(Lcom/iflytek/cloud/ui/a;)V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->j:Lcom/iflytek/cloud/RecognizerListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/ui/a;I)I
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/ui/a;->k:I

    return p1
.end method

.method private a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "errtxt"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1, p1}, Lcom/iflytek/cloud/ui/a;->a(Landroid/widget/TextView;Lcom/iflytek/cloud/SpeechError;)V

    const-string v1, "errview"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "warning"

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cs;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/ui/a;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->k()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    :goto_31
    return-void

    :catch_32
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method static synthetic a(Lcom/iflytek/cloud/ui/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->k()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/ui/a;Lcom/iflytek/cloud/SpeechError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/SpeechRecognizer;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/ui/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->i()V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/cloud/ui/a;)I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/thirdparty/cw;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/cloud/ui/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->j()V

    return-void
.end method

.method static synthetic g(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->h:Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    return-object v0
.end method

.method private g()V
    .registers 5

    const-string v0, "startRecognizing"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/iflytek/cloud/ui/a;->i:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/cloud/ui/a;->i:J

    iget-wide v2, p0, Lcom/iflytek/cloud/ui/a;->i:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "msc.skin"

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->j:Lcom/iflytek/cloud/RecognizerListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->startListening(Lcom/iflytek/cloud/RecognizerListener;)I

    move-result v0

    if-eqz v0, :cond_34

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_17

    :cond_34
    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->i()V

    goto :goto_17
.end method

.method private h()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    iput-object v1, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    :cond_c
    iput-object v1, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method static synthetic h(Lcom/iflytek/cloud/ui/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/ui/a;->b:Z

    return v0
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    if-nez v0, :cond_13

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cw;

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/cw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    :cond_13
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->k()V

    return-void
.end method

.method private j()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v1, "waiting"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "control"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->k()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method private k()V
    .registers 11

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v1, "waiting"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v3, "error"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "tips"

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/iflytek/cloud/ui/a;->k:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_50

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {v8}, Lcom/iflytek/cloud/resource/Resource;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    invoke-virtual {v0, v7}, Lcom/iflytek/cloud/thirdparty/cw;->setVolume(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cw;->invalidate()V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    invoke-virtual {v0, v7}, Lcom/iflytek/cloud/thirdparty/cw;->setVisibility(I)V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    iget v4, p0, Lcom/iflytek/cloud/ui/a;->k:I

    if-ne v4, v8, :cond_6a

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    invoke-virtual {v1, v6}, Lcom/iflytek/cloud/thirdparty/cw;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v9}, Lcom/iflytek/cloud/resource/Resource;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    :cond_6a
    iget v3, p0, Lcom/iflytek/cloud/ui/a;->k:I

    if-ne v3, v9, :cond_4f

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    invoke-virtual {v1, v6}, Lcom/iflytek/cloud/thirdparty/cw;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4f
.end method


# virtual methods
.method public a()V
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "recognize"

    invoke-static {v1, v0, p0}, Lcom/iflytek/cloud/thirdparty/cs;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "voice_bg.9"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cs;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "textlink"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    const-string v3, "\u8bed\u97f3\u8bc6\u522b\u80fd\u529b\u7531\u8baf\u98de\u8f93\u5165\u6cd5\u63d0\u4f9b"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    new-instance v3, Lcom/iflytek/cloud/ui/a$1;

    invoke-direct {v3, p0, v1}, Lcom/iflytek/cloud/ui/a$1;-><init>(Lcom/iflytek/cloud/ui/a;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "container"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bw;->a(Landroid/view/View;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cw;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/cw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x14

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/thirdparty/cw;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v1, "waiting"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "control"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "waiting"

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cs;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ae} :catch_af

    :goto_ae
    return-void

    :catch_af
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_ae
.end method

.method public a(Landroid/widget/TextView;Lcom/iflytek/cloud/SpeechError;)V
    .registers 16

    const/16 v12, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "view_tips_plain"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d5

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    :cond_1e
    move v5, v2

    :goto_1f
    if-nez v5, :cond_76

    move v0, v2

    :goto_22
    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/SpeechError;->getHtmlDescription(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v0, v4, Landroid/text/Spannable;

    if-eqz v0, :cond_d4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v6, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    array-length v8, v1

    move v4, v3

    :goto_5b
    if-ge v4, v8, :cond_78

    aget-object v9, v1, v4

    new-instance v10, Lcom/iflytek/cloud/ui/a$a;

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/iflytek/cloud/ui/a$a;-><init>(Lcom/iflytek/cloud/ui/a;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v0, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v10, v11, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    :cond_76
    move v0, v3

    goto :goto_22

    :cond_78
    invoke-virtual {p2, v3}, Lcom/iflytek/cloud/SpeechError;->getHtmlDescription(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v2}, Lcom/iflytek/cloud/SpeechError;->getHtmlDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v4, "<br>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cs;->a()[I

    move-result-object v8

    aget v8, v8, v3

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v4, v3, v0, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cs;->b()[I

    move-result-object v8

    aget v8, v8, v3

    invoke-direct {v4, v8, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v8, 0x21

    invoke-virtual {v7, v4, v3, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-nez v5, :cond_d1

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cs;->a()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v3, v4, v1, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cs;->b()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-direct {v1, v3, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v1, v0, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d1
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d4
    return-void

    :cond_d5
    move v5, v3

    goto/16 :goto_1f
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b()V
    .registers 1

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/cv;->b()V

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->g()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->isListening()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->cancel()V

    :cond_d
    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/cv;->c()V

    return-void
.end method

.method protected d()Z
    .registers 2

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/cv;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->h()V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->destroy()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    packed-switch v0, :pswitch_data_2c

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->e()V

    goto :goto_5

    :cond_1e
    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->g()V

    goto :goto_5

    :pswitch_22
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->stopListening()V

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->j()V

    goto :goto_5

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setResultListener(Lcom/iflytek/cloud/ui/RecognizerDialogListener;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/ui/a;->h:Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    invoke-virtual {p0, p0}, Lcom/iflytek/cloud/ui/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
