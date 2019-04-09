.class public final Lcom/mqunar/idscan/view/ViewfinderView;
.super Landroid/view/View;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/mqunar/idscan/a/f;

.field private m:Landroid/content/Context;

.field private n:Landroid/graphics/Bitmap;

.field private o:Z

.field private p:Landroid/graphics/Rect;

.field private q:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/mqunar/idscan/view/ViewfinderView;->o:Z

    iput-object p1, p0, Lcom/mqunar/idscan/view/ViewfinderView;->m:Landroid/content/Context;

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lcom/mqunar/idscan/utils/a;->b(F)F

    move-result v0

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/mqunar/idscan/utils/a;->b(F)F

    move-result v0

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->c:F

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/mqunar/idscan/utils/a;->b(F)F

    move-result v0

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->b:F

    const/high16 v0, 0x42ec0000    # 118.0f

    invoke-static {v0}, Lcom/mqunar/idscan/utils/a;->a(F)I

    move-result v0

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->d:I

    const v0, 0x40d4cccd    # 6.65f

    invoke-static {v0}, Lcom/mqunar/idscan/utils/a;->a(F)I

    move-result v0

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->e:I

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/mqunar/idscan/utils/a;->a(F)I

    move-result v0

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->i:I

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/mqunar/idscan/utils/a;->b(F)F

    move-result v0

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->g:F

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Lcom/mqunar/idscan/utils/a;->b(F)F

    move-result v0

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->h:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mqunar/idscan/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mqunar/idscan/R$drawable;->idscan_passport_move_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/mqunar/idscan/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mqunar/idscan/R$drawable;->idscan_passport:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->q:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->o:Z

    invoke-virtual {p0}, Lcom/mqunar/idscan/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->l:Lcom/mqunar/idscan/a/f;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->l:Lcom/mqunar/idscan/a/f;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/f;->e()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/idscan/view/ViewfinderView;->l:Lcom/mqunar/idscan/a/f;

    invoke-virtual {v1}, Lcom/mqunar/idscan/a/f;->f()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/mqunar/idscan/view/ViewfinderView;->k:Z

    if-nez v2, :cond_22

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mqunar/idscan/view/ViewfinderView;->k:Z

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/mqunar/idscan/view/ViewfinderView;->j:I

    :cond_22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    iget-object v2, p0, Lcom/mqunar/idscan/view/ViewfinderView;->q:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/mqunar/idscan/view/ViewfinderView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->j:I

    iget v2, p0, Lcom/mqunar/idscan/view/ViewfinderView;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->j:I

    iget v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->j:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v2, :cond_45

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/mqunar/idscan/view/ViewfinderView;->d:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->j:I

    :cond_45
    iget-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->p:Landroid/graphics/Rect;

    if-nez v0, :cond_50

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->p:Landroid/graphics/Rect;

    :cond_50
    iget-object v2, p0, Lcom/mqunar/idscan/view/ViewfinderView;->p:Landroid/graphics/Rect;

    iget v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->j:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v4, :cond_8f

    iget v0, v1, Landroid/graphics/Rect;->left:I

    :goto_5a
    iput v0, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/mqunar/idscan/view/ViewfinderView;->p:Landroid/graphics/Rect;

    iget v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->j:I

    iget v4, p0, Lcom/mqunar/idscan/view/ViewfinderView;->d:I

    add-int/2addr v0, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_92

    iget v0, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x2

    :goto_6b
    iput v0, v2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->p:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->n:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mqunar/idscan/view/ViewfinderView;->p:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mqunar/idscan/view/ViewfinderView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->o:Z

    if-eqz v0, :cond_6

    const-wide/16 v1, 0x2

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/mqunar/idscan/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_6

    :cond_8f
    iget v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->j:I

    goto :goto_5a

    :cond_92
    iget v0, p0, Lcom/mqunar/idscan/view/ViewfinderView;->j:I

    iget v4, p0, Lcom/mqunar/idscan/view/ViewfinderView;->d:I

    add-int/2addr v0, v4

    goto :goto_6b
.end method

.method public final setCameraManager(Lcom/mqunar/idscan/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/mqunar/idscan/view/ViewfinderView;->l:Lcom/mqunar/idscan/a/f;

    return-void
.end method

.method public final setLineShouldMove(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mqunar/idscan/view/ViewfinderView;->o:Z

    return-void
.end method
