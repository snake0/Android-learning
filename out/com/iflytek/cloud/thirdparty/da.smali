.class public Lcom/iflytek/cloud/thirdparty/da;
.super Lcom/iflytek/cloud/util/ContactManager;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/da;

.field private static b:Landroid/content/Context;

.field private static c:I

.field private static d:Lcom/iflytek/cloud/thirdparty/dg;

.field private static e:Lcom/iflytek/cloud/thirdparty/cz;

.field private static f:Lcom/iflytek/cloud/thirdparty/da$a;

.field private static h:Lcom/iflytek/cloud/util/ContactManager$ContactListener;


# instance fields
.field private g:Landroid/os/HandlerThread;

.field private i:Landroid/os/Handler;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/cloud/thirdparty/da;->a:Lcom/iflytek/cloud/thirdparty/da;

    sput-object v1, Lcom/iflytek/cloud/thirdparty/da;->b:Landroid/content/Context;

    const/4 v0, 0x4

    sput v0, Lcom/iflytek/cloud/thirdparty/da;->c:I

    sput-object v1, Lcom/iflytek/cloud/thirdparty/da;->d:Lcom/iflytek/cloud/thirdparty/dg;

    sput-object v1, Lcom/iflytek/cloud/thirdparty/da;->e:Lcom/iflytek/cloud/thirdparty/cz;

    sput-object v1, Lcom/iflytek/cloud/thirdparty/da;->h:Lcom/iflytek/cloud/util/ContactManager$ContactListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/iflytek/cloud/util/ContactManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/da;->g:Landroid/os/HandlerThread;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/da;->j:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/iflytek/cloud/thirdparty/da;->c:I

    if-le v0, v1, :cond_4f

    new-instance v0, Lcom/iflytek/cloud/thirdparty/df;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/da;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/df;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/da;->d:Lcom/iflytek/cloud/thirdparty/dg;

    :goto_19
    new-instance v0, Lcom/iflytek/cloud/thirdparty/cz;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/da;->b:Landroid/content/Context;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/da;->d:Lcom/iflytek/cloud/thirdparty/dg;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/cz;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/dg;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/da;->e:Lcom/iflytek/cloud/thirdparty/cz;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactManager_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/da;->g:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/da;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/da;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/da;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/da;->g:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/da$a;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/da;->i:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/da$a;-><init>(Lcom/iflytek/cloud/thirdparty/da;Landroid/os/Handler;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/da;->f:Lcom/iflytek/cloud/thirdparty/da$a;

    return-void

    :cond_4f
    new-instance v0, Lcom/iflytek/cloud/thirdparty/de;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/da;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/de;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/da;->d:Lcom/iflytek/cloud/thirdparty/dg;

    goto :goto_19
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/da;J)J
    .registers 3

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/da;->j:J

    return-wide p1
.end method

.method public static a()Lcom/iflytek/cloud/thirdparty/da;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->a:Lcom/iflytek/cloud/thirdparty/da;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/cloud/util/ContactManager$ContactListener;)Lcom/iflytek/cloud/thirdparty/da;
    .registers 6

    sput-object p1, Lcom/iflytek/cloud/thirdparty/da;->h:Lcom/iflytek/cloud/util/ContactManager$ContactListener;

    sput-object p0, Lcom/iflytek/cloud/thirdparty/da;->b:Landroid/content/Context;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->a:Lcom/iflytek/cloud/thirdparty/da;

    if-nez v0, :cond_21

    new-instance v0, Lcom/iflytek/cloud/thirdparty/da;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/da;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/da;->a:Lcom/iflytek/cloud/thirdparty/da;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/da;->d:Lcom/iflytek/cloud/thirdparty/dg;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/dg;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/iflytek/cloud/thirdparty/da;->f:Lcom/iflytek/cloud/thirdparty/da$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_21
    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->a:Lcom/iflytek/cloud/thirdparty/da;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/da;)V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/da;->d()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/da;)J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/da;->j:J

    return-wide v0
.end method

.method public static c()V
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->a:Lcom/iflytek/cloud/thirdparty/da;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->a:Lcom/iflytek/cloud/thirdparty/da;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/da;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/da;->a:Lcom/iflytek/cloud/thirdparty/da;

    :cond_c
    return-void
.end method

.method private d()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->h:Lcom/iflytek/cloud/util/ContactManager$ContactListener;

    if-eqz v0, :cond_52

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->e:Lcom/iflytek/cloud/thirdparty/cz;

    if-eqz v0, :cond_52

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->e:Lcom/iflytek/cloud/thirdparty/cz;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cz;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/dc;->a([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/da;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/db;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_53

    if-eqz v2, :cond_53

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v1, "iFly_ContactManager"

    const-string v2, "contact name is not change."

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/da;->h:Lcom/iflytek/cloud/util/ContactManager$ContactListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/iflytek/cloud/util/ContactManager$ContactListener;->onContactQueryFinish(Ljava/lang/String;Z)V

    :cond_52
    :goto_52
    return-void

    :cond_53
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/db;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v1, Lcom/iflytek/cloud/thirdparty/da;->h:Lcom/iflytek/cloud/util/ContactManager$ContactListener;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/iflytek/cloud/util/ContactManager$ContactListener;->onContactQueryFinish(Ljava/lang/String;Z)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_52

    :catch_5e
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_52
.end method


# virtual methods
.method public asyncQueryAllContactsName()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/da;->i:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/cloud/thirdparty/da$1;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/thirdparty/da$1;-><init>(Lcom/iflytek/cloud/thirdparty/da;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .registers 3

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->f:Lcom/iflytek/cloud/thirdparty/da$a;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/da;->f:Lcom/iflytek/cloud/thirdparty/da$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/da;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/da;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_18
    return-void
.end method

.method public queryAllContactsName()Ljava/lang/String;
    .registers 7

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->e:Lcom/iflytek/cloud/thirdparty/cz;

    if-eqz v0, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/da;->e:Lcom/iflytek/cloud/thirdparty/cz;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cz;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v3, :cond_2e

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_32
    return-object v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method
