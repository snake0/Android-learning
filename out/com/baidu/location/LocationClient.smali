.class public final Lcom/baidu/location/LocationClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/a/c$a;


# static fields
.field public static final CONNECT_HOT_SPOT_FALSE:I = 0x0

.field public static final CONNECT_HOT_SPOT_TRUE:I = 0x1

.field public static final CONNECT_HOT_SPOT_UNKNOWN:I = -0x1

.field public static final LOC_DIAGNOSTIC_TYPE_BETTER_OPEN_GPS:I = 0x1

.field public static final LOC_DIAGNOSTIC_TYPE_BETTER_OPEN_WIFI:I = 0x2

.field public static final LOC_DIAGNOSTIC_TYPE_FAIL_UNKNOWN:I = 0x9

.field public static final LOC_DIAGNOSTIC_TYPE_NEED_CHECK_LOC_PERMISSION:I = 0x4

.field public static final LOC_DIAGNOSTIC_TYPE_NEED_CHECK_NET:I = 0x3

.field public static final LOC_DIAGNOSTIC_TYPE_NEED_CLOSE_FLYMODE:I = 0x7

.field public static final LOC_DIAGNOSTIC_TYPE_NEED_INSERT_SIMCARD_OR_OPEN_WIFI:I = 0x6

.field public static final LOC_DIAGNOSTIC_TYPE_NEED_OPEN_PHONE_LOC_SWITCH:I = 0x5

.field public static final LOC_DIAGNOSTIC_TYPE_SERVER_FAIL:I = 0x8


# instance fields
.field private A:Ljava/lang/Boolean;

.field private B:Z

.field private C:Lcom/baidu/location/a/c;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Landroid/content/ServiceConnection;

.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/location/LocationClientOption;

.field private d:Lcom/baidu/location/LocationClientOption;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Messenger;

.field private h:Lcom/baidu/location/LocationClient$a;

.field private final i:Landroid/os/Messenger;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/BDLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/BDAbstractLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/baidu/location/BDLocation;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/baidu/location/LocationClient$b;

.field private q:Z

.field private final r:Ljava/lang/Object;

.field private s:J

.field private t:J

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/Boolean;

.field private z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v3, p0, Lcom/baidu/location/LocationClient;->a:J

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->b:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->d:Lcom/baidu/location/LocationClientOption;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->e:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->m:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->n:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->o:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->q:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->r:Ljava/lang/Object;

    iput-wide v3, p0, Lcom/baidu/location/LocationClient;->s:J

    iput-wide v3, p0, Lcom/baidu/location/LocationClient;->t:J

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->u:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->w:Z

    iput-boolean v5, p0, Lcom/baidu/location/LocationClient;->x:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->y:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->z:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->A:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->C:Lcom/baidu/location/a/c;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->D:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->E:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->F:Z

    new-instance v0, Lcom/baidu/location/b;

    invoke-direct {v0, p0}, Lcom/baidu/location/b;-><init>(Lcom/baidu/location/LocationClient;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->G:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->d:Lcom/baidu/location/LocationClientOption;

    new-instance v0, Lcom/baidu/location/LocationClient$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/baidu/location/LocationClient$a;-><init>(Landroid/os/Looper;Lcom/baidu/location/LocationClient;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->i:Landroid/os/Messenger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;)V
    .registers 9

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v3, p0, Lcom/baidu/location/LocationClient;->a:J

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->b:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->d:Lcom/baidu/location/LocationClientOption;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->e:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->m:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->n:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->o:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->q:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->r:Ljava/lang/Object;

    iput-wide v3, p0, Lcom/baidu/location/LocationClient;->s:J

    iput-wide v3, p0, Lcom/baidu/location/LocationClient;->t:J

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->u:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->w:Z

    iput-boolean v5, p0, Lcom/baidu/location/LocationClient;->x:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->y:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->z:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->A:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->C:Lcom/baidu/location/a/c;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->D:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->E:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->F:Z

    new-instance v0, Lcom/baidu/location/b;

    invoke-direct {v0, p0}, Lcom/baidu/location/b;-><init>(Lcom/baidu/location/LocationClient;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->G:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0, p2}, Lcom/baidu/location/LocationClientOption;-><init>(Lcom/baidu/location/LocationClientOption;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->d:Lcom/baidu/location/LocationClientOption;

    new-instance v0, Lcom/baidu/location/LocationClient$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/baidu/location/LocationClient$a;-><init>(Landroid/os/Looper;Lcom/baidu/location/LocationClient;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->i:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Lcom/baidu/location/LocationClient$b;)Lcom/baidu/location/LocationClient$b;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Lcom/baidu/location/a/c;)Lcom/baidu/location/a/c;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->C:Lcom/baidu/location/a/c;

    return-object p1
.end method

.method private a()V
    .registers 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->e:Z

    if-ne v0, v1, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0, p0}, Lcom/baidu/location/c;-><init>(Lcom/baidu/location/LocationClient;)V

    invoke-virtual {v0}, Lcom/baidu/location/c;->start()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->A:Ljava/lang/Boolean;

    :cond_1d
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_bdls_v2.9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->u:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_45
    const-string v1, "debug_dev"

    iget-boolean v2, p0, Lcom/baidu/location/LocationClient;->B:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_79

    :goto_4c
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    if-nez v1, :cond_57

    new-instance v1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    :cond_57
    const-string v1, "cache_exception"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isIgnoreCacheException:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "kill_process"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isIgnoreKillProcess:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_69
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->G:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_71} :catch_72

    goto :goto_6

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v4, p0, Lcom/baidu/location/LocationClient;->e:Z

    goto :goto_6

    :catch_79
    move-exception v1

    goto :goto_4c
.end method

.method private a(I)V
    .registers 7

    const/16 v4, 0x43

    const/16 v3, 0x42

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getCoorType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    :cond_16
    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->m:Z

    if-eq v0, v2, :cond_48

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_48

    :cond_2a
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    if-eq v0, v3, :cond_48

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    if-eq v0, v4, :cond_48

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->w:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_90

    :cond_48
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDLocationListener;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-interface {v0, v2}, Lcom/baidu/location/BDLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    goto :goto_52

    :cond_64
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDAbstractLocationListener;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v2}, Lcom/baidu/location/BDAbstractLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    goto :goto_6e

    :cond_80
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    if-eq v0, v3, :cond_90

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    if-ne v0, v4, :cond_91

    :cond_90
    :goto_90
    return-void

    :cond_91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->t:J

    goto :goto_90
.end method

.method private a(ILandroid/app/Notification;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notification"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "command"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_28

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->F:Z

    :goto_27
    return-void

    :cond_28
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_24

    :catch_2e
    move-exception v0

    goto :goto_27
.end method

.method private a(Landroid/os/Message;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->n:Z

    if-eqz p1, :cond_a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/LocationClientOption;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClientOption;->optionEquals(Lcom/baidu/location/LocationClientOption;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget v1, v1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    iget v2, v0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    if-eq v1, v2, :cond_54

    :try_start_1f
    iget-object v2, p0, Lcom/baidu/location/LocationClient;->r:Ljava/lang/Object;

    monitor-enter v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_7f

    :try_start_22
    iget-boolean v1, p0, Lcom/baidu/location/LocationClient;->o:Z

    if-ne v1, v3, :cond_30

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    invoke-virtual {v1, v3}, Lcom/baidu/location/LocationClient$a;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->o:Z

    :cond_30
    iget v1, v0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_53

    iget-boolean v1, p0, Lcom/baidu/location/LocationClient;->o:Z

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    if-nez v1, :cond_46

    new-instance v1, Lcom/baidu/location/LocationClient$b;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/baidu/location/LocationClient$b;-><init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/b;)V

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    :cond_46
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    iget v4, v0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/baidu/location/LocationClient$a;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->o:Z

    :cond_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_22 .. :try_end_54} :catchall_7c

    :cond_54
    :goto_54
    new-instance v1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v1, v0}, Lcom/baidu/location/LocationClientOption;-><init>(Lcom/baidu/location/LocationClientOption;)V

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const/16 v1, 0xf

    :try_start_62
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->i:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_76} :catch_77

    goto :goto_a

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catchall_7c
    move-exception v1

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v1
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7f} :catch_7f

    :catch_7f
    move-exception v1

    goto :goto_54
.end method

.method private a(Landroid/os/Message;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->e:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "locStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDLocation;

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->s:J

    :cond_2c
    invoke-direct {p0, p2}, Lcom/baidu/location/LocationClient;->a(I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_30

    goto :goto_4

    :catch_30
    move-exception v0

    goto :goto_4
.end method

.method private a(Lcom/baidu/location/BDLocation;)V
    .registers 4

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->x:Z

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iput-object p1, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->E:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->D:Z

    :cond_16
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDLocationListener;

    invoke-interface {v0, p1}, Lcom/baidu/location/BDLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    goto :goto_20

    :cond_30
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDAbstractLocationListener;

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDAbstractLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    goto :goto_3a
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;ILandroid/app/Notification;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/LocationClient;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Landroid/os/Message;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/LocationClient;->a(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Lcom/baidu/location/BDLocation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method private a(Z)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "removenotify"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "command"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->F:Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->e:Z

    return p1
.end method

.method private b()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->e:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/16 v0, 0xc

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->i:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_15
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_56

    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->G:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->F:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_60

    if-eqz v0, :cond_36

    :try_start_25
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_33} :catch_62

    :goto_33
    const/4 v0, 0x0

    :try_start_34
    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->F:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_36} :catch_60

    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_39
    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->o:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_48

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClient$a;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->o:Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_5e
    .catchall {:try_start_39 .. :try_end_48} :catchall_5b

    :cond_48
    :goto_48
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_5b

    iput-object v4, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->n:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->w:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->e:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->D:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->E:Z

    goto :goto_a

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    :catch_5e
    move-exception v0

    goto :goto_48

    :catch_60
    move-exception v0

    goto :goto_36

    :catch_62
    move-exception v0

    goto :goto_33
.end method

.method private b(Landroid/os/Message;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocationListener;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    if-nez v1, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    :cond_16
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method static synthetic b(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/LocationClient;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->x:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/location/LocationClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->o:Z

    return p1
.end method

.method private c()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packName"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prodName"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "coorType"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "addrType"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "openGPS"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->openGps:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "location_change_notify"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "scanSpan"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "enableSimulateGps"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->enableSimulateGps:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "timeOut"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->timeOut:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "priority"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->priority:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "map"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->y:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "import"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->z:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "needDirect"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedaptag"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedpoiregion"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedPoiRegion:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedregular"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedRegular:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedaptagd"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedaltitude"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "autoNotifyMaxInterval"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v2}, Lcom/baidu/location/LocationClientOption;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "autoNotifyMinTimeInterval"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v2}, Lcom/baidu/location/LocationClientOption;->getAutoNotifyMinTimeInterval()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "autoNotifyMinDistance"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v2}, Lcom/baidu/location/LocationClientOption;->getAutoNotifyMinDistance()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "autoNotifyLocSensitivity"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v2}, Lcom/baidu/location/LocationClientOption;->b()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "wifitimeout"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->wifiCacheTimeOut:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5
.end method

.method static synthetic c(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClient$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDAbstractLocationListener;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    if-nez v1, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    :cond_16
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method static synthetic c(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->e(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/LocationClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->q:Z

    return p1
.end method

.method static synthetic d(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->i:Landroid/os/Messenger;

    return-object v0
.end method

.method private d()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/LocationClient;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->n:Z

    if-eqz v0, :cond_60

    :cond_1d
    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->w:Z

    if-eqz v0, :cond_32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/LocationClient;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_32

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->n:Z

    if-eqz v0, :cond_60

    :cond_32
    const/16 v0, 0x16

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/location/LocationClient;->n:Z

    if-eqz v1, :cond_4e

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isWaitingLocTag"

    iget-boolean v3, p0, Lcom/baidu/location/LocationClient;->n:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/location/LocationClient;->n:Z

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_4e
    :try_start_4e
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->i:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->m:Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_60} :catch_94

    :cond_60
    :goto_60
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_63
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_8e

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->o:Z

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    if-nez v0, :cond_7f

    new-instance v0, Lcom/baidu/location/LocationClient$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/LocationClient$b;-><init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/b;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    :cond_7f
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/baidu/location/LocationClient$a;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->o:Z

    :cond_8e
    monitor-exit v1

    goto/16 :goto_5

    :catchall_91
    move-exception v0

    monitor-exit v1
    :try_end_93
    .catchall {:try_start_63 .. :try_end_93} :catchall_91

    throw v0

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60
.end method

.method private d(Landroid/os/Message;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDAbstractLocationListener;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method static synthetic d(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/location/LocationClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->E:Z

    return p1
.end method

.method static synthetic e(Lcom/baidu/location/LocationClient;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/os/Message;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocationListener;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method static synthetic e(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->d(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic e(Lcom/baidu/location/LocationClient;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/location/LocationClient;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->A:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getBDLocationInCoorType(Lcom/baidu/location/BDLocation;Ljava/lang/String;)Lcom/baidu/location/BDLocation;
    .registers 7

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p1}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v1

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/a/c;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->C:Lcom/baidu/location/a/c;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/location/LocationClient;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->d:Lcom/baidu/location/LocationClientOption;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/location/LocationClient;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->r:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/baidu/location/LocationClient;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->n:Z

    return v0
.end method

.method static synthetic o(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClient$b;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->p:Lcom/baidu/location/LocationClient$b;

    return-object v0
.end method

.method static synthetic p(Lcom/baidu/location/LocationClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->a()V

    return-void
.end method

.method static synthetic q(Lcom/baidu/location/LocationClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->b()V

    return-void
.end method

.method static synthetic r(Lcom/baidu/location/LocationClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->d()V

    return-void
.end method

.method static synthetic s(Lcom/baidu/location/LocationClient;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->E:Z

    return v0
.end method

.method static synthetic t(Lcom/baidu/location/LocationClient;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->D:Z

    return v0
.end method


# virtual methods
.method public disableAssistantLocation()V
    .registers 2

    invoke-static {}, Lcom/baidu/location/a/k;->a()Lcom/baidu/location/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/k;->b()V

    return-void
.end method

.method public disableLocInForeground(Z)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "removenotify"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/16 v2, 0x2c0

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public enableAssistantLocation(Landroid/webkit/WebView;)V
    .registers 4

    invoke-static {}, Lcom/baidu/location/a/k;->a()Lcom/baidu/location/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p0}, Lcom/baidu/location/a/k;->a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/baidu/location/LocationClient;)V

    return-void
.end method

.method public enableLocInForeground(ILandroid/app/Notification;)V
    .registers 6

    if-lez p1, :cond_22

    if-eqz p2, :cond_22

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "notification"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/16 v2, 0x2bf

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_21
    return-void

    :cond_22
    const-string v0, "baidu_location_Client"

    const-string v1, "can not startLocInForeground if the param is unlegal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public getAccessKey()Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/location/a/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please setting key from Manifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, "KEY=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->v:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_18

    move-result-object v0

    goto :goto_1a
.end method

.method public getLastKnownLocation()Lcom/baidu/location/BDLocation;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Lcom/baidu/location/BDLocation;

    return-object v0
.end method

.method public getLocOption()Lcom/baidu/location/LocationClientOption;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClientOption;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "7.5.2"

    return-object v0
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->e:Z

    return v0
.end method

.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .registers 4

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->E:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->D:Z

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/16 v1, 0x2bd

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public registerLocationListener(Lcom/baidu/location/BDAbstractLocationListener;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please set a non-null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/16 v1, 0x514

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerLocationListener(Lcom/baidu/location/BDLocationListener;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please set a non-null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestHotSpotState()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/baidu/location/LocationClient;->e:Z

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x0

    const/16 v2, 0x196

    :try_start_d
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_18

    const/4 v0, 0x1

    goto :goto_9

    :catch_18
    move-exception v1

    goto :goto_9
.end method

.method public requestLocation()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->i:Landroid/os/Messenger;

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    :goto_b
    return v0

    :cond_c
    iget-object v2, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_26

    :cond_18
    iget-object v2, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_26

    :cond_24
    const/4 v0, 0x2

    goto :goto_b

    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/LocationClient;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_35

    const/4 v0, 0x6

    goto :goto_b

    :cond_35
    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->n:Z

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b
.end method

.method public restart()V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/location/LocationClient;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->x:Z

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/location/LocationClient$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setLocOption(Lcom/baidu/location/LocationClientOption;)V
    .registers 4

    if-nez p1, :cond_7

    new-instance p1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {p1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    :cond_7
    invoke-virtual {p1}, Lcom/baidu/location/LocationClientOption;->a()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/location/LocationClientOption;->setLocationNotify(Z)V

    :cond_15
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0, p1}, Lcom/baidu/location/LocationClientOption;-><init>(Lcom/baidu/location/LocationClientOption;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->d:Lcom/baidu/location/LocationClientOption;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->x:Z

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->x:Z

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->C:Lcom/baidu/location/a/c;

    return-void
.end method

.method public unRegisterLocationListener(Lcom/baidu/location/BDAbstractLocationListener;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please set a non-null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/16 v1, 0x578

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please set a non-null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->h:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateLocation(Landroid/location/Location;)Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->i:Landroid/os/Messenger;

    if-eqz v0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    const/16 v1, 0x39

    :try_start_f
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1c

    :goto_1a
    const/4 v0, 0x1

    goto :goto_b

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method
