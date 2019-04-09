.class public Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private e:J

.field private f:Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer$a;

.field private final g:Lcom/baidu/mapsdkplatform/comapi/map/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapsdkplatform/comapi/map/j;Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->f:Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer$a;

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->g:Lcom/baidu/mapsdkplatform/comapi/map/j;

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5

    const v2, 0x3f4ccccd    # 0.8f

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const v0, 0x3f59999a    # 0.85f

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method private a()Z
    .registers 5

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static native nativeInit(J)V
.end method

.method public static native nativeRender(J)I
.end method

.method public static native nativeResize(JII)V
.end method


# virtual methods
.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->e:J

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->c:I

    if-gt v0, v4, :cond_1e

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->e:J

    iget v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->a:I

    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->nativeResize(JII)V

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->c:I

    :cond_1e
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->f:Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer$a;

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer$a;->f()V

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->e:J

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->nativeRender(J)I

    move-result v1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->g:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->g:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->I()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/baidu/mapsdkplatform/comapi/map/ab;)V

    goto :goto_35

    :cond_4f
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->g:Lcom/baidu/mapsdkplatform/comapi/map/j;

    if-ne v1, v4, :cond_57

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->requestRender()V

    goto :goto_a

    :cond_57
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->g:Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b()Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->getRenderMode()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/j;->setRenderMode(I)V

    goto :goto_a

    :cond_6e
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j;->getRenderMode()I

    move-result v1

    if-eq v1, v4, :cond_a

    invoke-virtual {v0, v4}, Lcom/baidu/mapsdkplatform/comapi/map/j;->setRenderMode(I)V

    goto :goto_a
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 8

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->e:J

    invoke-static {v0, v1, p2, p3}, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->nativeResize(JII)V

    :cond_d
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->e:J

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->nativeInit(J)V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->a()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer;->f:Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer$a;

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/map/MapRenderer$a;->f()V

    goto :goto_b
.end method
