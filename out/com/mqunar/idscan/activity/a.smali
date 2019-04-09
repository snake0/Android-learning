.class public abstract Lcom/mqunar/idscan/activity/a;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Lcom/mqunar/idscan/view/ViewfinderView;

.field protected b:Landroid/view/SurfaceView;

.field protected c:Z

.field private e:Z

.field private f:Lcom/mqunar/idscan/a/c;

.field private g:Landroid/view/SurfaceHolder;

.field private h:Lcom/mqunar/idscan/decode/e;

.field private i:Lcom/mqunar/idscan/a/f;

.field private j:Lcom/mqunar/idscan/decode/CaptureActivityHandler;

.field private k:Landroid/os/Handler;

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mqunar/idscan/activity/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/idscan/activity/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const-string v0, "isSurfaceCreatedFirst"

    iput-object v0, p0, Lcom/mqunar/idscan/activity/a;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/activity/a;->c:Z

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->i:Lcom/mqunar/idscan/a/f;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/mqunar/idscan/activity/a;->d:Ljava/lang/String;

    const-string v1, "initCamera() while already open -- late SurfaceView callback?"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->i:Lcom/mqunar/idscan/a/f;

    invoke-virtual {v0, p1}, Lcom/mqunar/idscan/a/f;->a(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->j:Lcom/mqunar/idscan/decode/CaptureActivityHandler;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler;

    iget-object v1, p0, Lcom/mqunar/idscan/activity/a;->i:Lcom/mqunar/idscan/a/f;

    invoke-direct {v0, p0, v1}, Lcom/mqunar/idscan/decode/CaptureActivityHandler;-><init>(Lcom/mqunar/idscan/activity/a;Lcom/mqunar/idscan/a/f;)V

    iput-object v0, p0, Lcom/mqunar/idscan/activity/a;->j:Lcom/mqunar/idscan/decode/CaptureActivityHandler;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_30} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_30} :catch_3f

    goto :goto_1d

    :catch_31
    move-exception v0

    sget-object v1, Lcom/mqunar/idscan/activity/a;->d:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mqunar/idscan/activity/a;->f()V

    goto :goto_1d

    :catch_3f
    move-exception v0

    sget-object v1, Lcom/mqunar/idscan/activity/a;->d:Ljava/lang/String;

    const-string v2, "Unexpected error initializing camera"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mqunar/idscan/activity/a;->f()V

    goto :goto_1d
.end method

.method static synthetic a(Lcom/mqunar/idscan/activity/a;Landroid/view/SurfaceHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mqunar/idscan/activity/a;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private f()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/mqunar/idscan/R$drawable;->idscan_ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/mqunar/idscan/R$string;->idscan_app_name:I

    invoke-virtual {p0, v1}, Lcom/mqunar/idscan/activity/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/mqunar/idscan/R$string;->idscan_camera_framework_bug:I

    invoke-virtual {p0, v1}, Lcom/mqunar/idscan/activity/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/mqunar/idscan/R$string;->idscan_sure:I

    invoke-virtual {p0, v1}, Lcom/mqunar/idscan/activity/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mqunar/idscan/decode/d;

    invoke-direct {v2, p0}, Lcom/mqunar/idscan/decode/d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/mqunar/idscan/decode/d;

    invoke-direct {v1, p0}, Lcom/mqunar/idscan/decode/d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->a:Lcom/mqunar/idscan/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/mqunar/idscan/view/ViewfinderView;->a()V

    return-void
.end method

.method public final a(Lcom/mqunar/idscan/model/ScanPassportResultData;)V
    .registers 5

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/qav/uelog/QAVLog;->getInstance(Landroid/content/Context;)Lcom/mqunar/qav/uelog/QAVLog;

    move-result-object v0

    const-string v1, "InterFlightScanPassport"

    const-string v2, "scan passport successed"

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qav/uelog/QAVLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->f:Lcom/mqunar/idscan/a/c;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/c;->b()V

    invoke-virtual {p0, p1}, Lcom/mqunar/idscan/activity/a;->b(Lcom/mqunar/idscan/model/ScanPassportResultData;)V

    return-void
.end method

.method public final b()Lcom/mqunar/idscan/view/ViewfinderView;
    .registers 2

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->a:Lcom/mqunar/idscan/view/ViewfinderView;

    return-object v0
.end method

.method public abstract b(Lcom/mqunar/idscan/model/ScanPassportResultData;)V
.end method

.method public final c()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->j:Lcom/mqunar/idscan/decode/CaptureActivityHandler;

    return-object v0
.end method

.method public final d()Lcom/mqunar/idscan/a/f;
    .registers 2

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->i:Lcom/mqunar/idscan/a/f;

    return-object v0
.end method

.method protected final e()V
    .registers 5

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->j:Lcom/mqunar/idscan/decode/CaptureActivityHandler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->j:Lcom/mqunar/idscan/decode/CaptureActivityHandler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mqunar/idscan/activity/a;->k:Landroid/os/Handler;

    if-eqz p1, :cond_15

    const-string v0, "isSurfaceCreatedFirst"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mqunar/idscan/activity/a;->c:Z

    :cond_15
    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v2}, Lcom/mqunar/idscan/activity/a;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/idscan/activity/a;->e:Z

    new-instance v0, Lcom/mqunar/idscan/decode/e;

    invoke-direct {v0, p0}, Lcom/mqunar/idscan/decode/e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mqunar/idscan/activity/a;->h:Lcom/mqunar/idscan/decode/e;

    new-instance v0, Lcom/mqunar/idscan/a/c;

    invoke-direct {v0, p0}, Lcom/mqunar/idscan/a/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mqunar/idscan/activity/a;->f:Lcom/mqunar/idscan/a/c;

    new-instance v0, Lcom/mqunar/idscan/a/f;

    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/a;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/idscan/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mqunar/idscan/activity/a;->i:Lcom/mqunar/idscan/a/f;

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->h:Lcom/mqunar/idscan/decode/e;

    invoke-virtual {v0}, Lcom/mqunar/idscan/decode/e;->d()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    const-string v0, "onpause invoked............"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "tag"

    const-string v1, "ffffffffffffffff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->j:Lcom/mqunar/idscan/decode/CaptureActivityHandler;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->j:Lcom/mqunar/idscan/decode/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/mqunar/idscan/decode/CaptureActivityHandler;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/idscan/activity/a;->j:Lcom/mqunar/idscan/decode/CaptureActivityHandler;

    :cond_1b
    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->h:Lcom/mqunar/idscan/decode/e;

    invoke-virtual {v0}, Lcom/mqunar/idscan/decode/e;->b()V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->i:Lcom/mqunar/idscan/a/f;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/f;->b()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->h:Lcom/mqunar/idscan/decode/e;

    invoke-virtual {v0}, Lcom/mqunar/idscan/decode/e;->a()V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->a:Lcom/mqunar/idscan/view/ViewfinderView;

    iget-object v1, p0, Lcom/mqunar/idscan/activity/a;->i:Lcom/mqunar/idscan/a/f;

    invoke-virtual {v0, v1}, Lcom/mqunar/idscan/view/ViewfinderView;->setCameraManager(Lcom/mqunar/idscan/a/f;)V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/idscan/activity/a;->g:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/mqunar/idscan/activity/a;->e:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->g:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/mqunar/idscan/activity/a;->a(Landroid/view/SurfaceHolder;)V

    :goto_20
    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->f:Lcom/mqunar/idscan/a/c;

    invoke-virtual {v0}, Lcom/mqunar/idscan/a/c;->a()V

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->h:Lcom/mqunar/idscan/decode/e;

    invoke-virtual {v0}, Lcom/mqunar/idscan/decode/e;->c()V

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_20
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "isSurfaceCreatedFirst"

    iget-boolean v1, p0, Lcom/mqunar/idscan/activity/a;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_c

    sget-object v0, Lcom/mqunar/idscan/activity/a;->d:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/mqunar/idscan/activity/a;->e:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/activity/a;->e:Z

    iget-boolean v0, p0, Lcom/mqunar/idscan/activity/a;->c:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/mqunar/idscan/activity/a;->k:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/idscan/activity/b;

    invoke-direct {v1, p0, p1}, Lcom/mqunar/idscan/activity/b;-><init>(Lcom/mqunar/idscan/activity/a;Landroid/view/SurfaceHolder;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/mqunar/idscan/activity/a;->c:Z

    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/mqunar/idscan/activity/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/qav/uelog/QAVLog;->getInstance(Landroid/content/Context;)Lcom/mqunar/qav/uelog/QAVLog;

    move-result-object v0

    const-string v1, "InterFlightScanPassport"

    const-string v2, "scan passport begin"

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qav/uelog/QAVLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    invoke-direct {p0, p1}, Lcom/mqunar/idscan/activity/a;->a(Landroid/view/SurfaceHolder;)V

    goto :goto_25
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/idscan/activity/a;->e:Z

    return-void
.end method
