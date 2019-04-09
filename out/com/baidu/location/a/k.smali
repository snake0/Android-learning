.class public Lcom/baidu/location/a/k;
.super Ljava/lang/Object;


# static fields
.field private static j:J


# instance fields
.field public a:Lcom/baidu/location/a/k$e;

.field private b:Landroid/content/Context;

.field private c:Landroid/webkit/WebView;

.field private d:Lcom/baidu/location/LocationClient;

.field private e:Lcom/baidu/location/a/k$a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/a/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:J

.field private i:Lcom/baidu/location/BDLocation;

.field private k:Lcom/baidu/location/a/k$f;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2ee0

    sput-wide v0, Lcom/baidu/location/a/k;->j:J

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/location/a/k;->b:Landroid/content/Context;

    iput-object v2, p0, Lcom/baidu/location/a/k;->d:Lcom/baidu/location/LocationClient;

    new-instance v0, Lcom/baidu/location/a/k$e;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/k$e;-><init>(Lcom/baidu/location/a/k;)V

    iput-object v0, p0, Lcom/baidu/location/a/k;->a:Lcom/baidu/location/a/k$e;

    iput-object v2, p0, Lcom/baidu/location/a/k;->e:Lcom/baidu/location/a/k$a;

    iput-object v2, p0, Lcom/baidu/location/a/k;->f:Ljava/util/List;

    iput-boolean v3, p0, Lcom/baidu/location/a/k;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/a/k;->h:J

    iput-object v2, p0, Lcom/baidu/location/a/k;->i:Lcom/baidu/location/BDLocation;

    iput-object v2, p0, Lcom/baidu/location/a/k;->k:Lcom/baidu/location/a/k$f;

    iput-boolean v3, p0, Lcom/baidu/location/a/k;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/a/k$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/location/a/k;-><init>()V

    return-void
.end method

.method static synthetic a(J)J
    .registers 2

    sput-wide p0, Lcom/baidu/location/a/k;->j:J

    return-wide p0
.end method

.method static synthetic a(Lcom/baidu/location/a/k;J)J
    .registers 3

    iput-wide p1, p0, Lcom/baidu/location/a/k;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/a/k;Lcom/baidu/location/BDLocation;)Lcom/baidu/location/BDLocation;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a/k;->i:Lcom/baidu/location/BDLocation;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/location/a/k;Lcom/baidu/location/a/k$f;)Lcom/baidu/location/a/k$f;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a/k;->k:Lcom/baidu/location/a/k$f;

    return-object p1
.end method

.method public static a()Lcom/baidu/location/a/k;
    .registers 1

    invoke-static {}, Lcom/baidu/location/a/k$c;->a()Lcom/baidu/location/a/k;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/a/k;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a/k;->f:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/webkit/WebView;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface",
            "AddJavascriptInterface"
        }
    .end annotation

    new-instance v0, Lcom/baidu/location/a/k$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/a/k$d;-><init>(Lcom/baidu/location/a/k;Lcom/baidu/location/a/k$1;)V

    const-string v1, "BaiduLocAssistant"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/a/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/a/k;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/k;->e:Lcom/baidu/location/a/k$a;

    return-object v0
.end method

.method static synthetic c()J
    .registers 2

    sget-wide v0, Lcom/baidu/location/a/k;->j:J

    return-wide v0
.end method

.method static synthetic c(Lcom/baidu/location/a/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$f;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/k;->k:Lcom/baidu/location/a/k$f;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/location/a/k;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/k;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/location/a/k;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/location/a/k;)Lcom/baidu/location/LocationClient;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/k;->d:Lcom/baidu/location/LocationClient;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/location/a/k;)J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/a/k;->h:J

    return-wide v0
.end method

.method static synthetic i(Lcom/baidu/location/a/k;)Lcom/baidu/location/BDLocation;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/k;->i:Lcom/baidu/location/BDLocation;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/baidu/location/LocationClient;)V
    .registers 7

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->g:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    iput-object p1, p0, Lcom/baidu/location/a/k;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/a/k;->c:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/baidu/location/a/k;->d:Lcom/baidu/location/LocationClient;

    new-instance v0, Lcom/baidu/location/a/k$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/a/k$a;-><init>(Lcom/baidu/location/a/k;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/location/a/k;->e:Lcom/baidu/location/a/k$a;

    iget-object v0, p0, Lcom/baidu/location/a/k;->e:Lcom/baidu/location/a/k$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/k$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/baidu/location/a/k;->a(Landroid/webkit/WebView;)V

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->g:Z

    goto :goto_5
.end method

.method public b()V
    .registers 3

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->g:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/a/k;->e:Lcom/baidu/location/a/k$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/k$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->g:Z

    goto :goto_4
.end method
