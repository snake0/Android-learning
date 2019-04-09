.class public Lcom/baidu/location/a/c;
.super Ljava/lang/Object;


# static fields
.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/baidu/location/a/c$b;

.field private d:Landroid/content/Context;

.field private e:Landroid/telephony/TelephonyManager;

.field private f:Lcom/baidu/location/b/a;

.field private m:Landroid/net/wifi/WifiManager;

.field private n:Lcom/baidu/location/a/c$c;

.field private o:Ljava/lang/String;

.field private p:Lcom/baidu/location/LocationClientOption;

.field private q:Lcom/baidu/location/a/c$a;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/c;->g:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->h:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->i:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->j:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->k:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;Lcom/baidu/location/a/c$a;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    iput-object v1, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/baidu/location/b/a;

    invoke-direct {v0}, Lcom/baidu/location/b/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    iput-object v1, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/baidu/location/a/c;->n:Lcom/baidu/location/a/c$c;

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/a/c$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/c$b;-><init>(Lcom/baidu/location/a/c;)V

    iput-object v0, p0, Lcom/baidu/location/a/c;->c:Lcom/baidu/location/a/c$b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0, p2}, Lcom/baidu/location/LocationClientOption;-><init>(Lcom/baidu/location/LocationClientOption;)V

    iput-object v0, p0, Lcom/baidu/location/a/c;->p:Lcom/baidu/location/LocationClientOption;

    iput-object p3, p0, Lcom/baidu/location/a/c;->q:Lcom/baidu/location/a/c$a;

    iget-object v0, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    :try_start_40
    iget-object v0, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_51} :catch_1f3

    move-result-object v0

    :goto_52
    :try_start_52
    iget-object v2, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/bbalbs/common/util/CommonParam;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5a} :catch_1f7

    :goto_5a
    iget-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_1fc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/d/j;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c;->p:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|&cu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&coor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getCoorType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :goto_b4
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&fw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "7.52"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "7.52"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&lt=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&mb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&resid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ee

    :cond_ee
    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_117

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&addr=allj"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :cond_117
    iget-boolean v1, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    if-eq v1, v3, :cond_11f

    iget-boolean v1, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    if-ne v1, v3, :cond_17c

    :cond_11f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sema="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    iget-boolean v1, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    if-ne v1, v3, :cond_151

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aptag|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :cond_151
    iget-boolean v1, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    if-ne v1, v3, :cond_16c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aptagd|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :cond_16c
    iget-object v1, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/location/a/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/location/a/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->t:Ljava/lang/String;

    :cond_17c
    const-string v1, "&first=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&os=A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/baidu/location/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c6

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1c6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ef

    const-string v1, "020000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ef

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :cond_1ef
    invoke-virtual {p0}, Lcom/baidu/location/a/c;->b()Ljava/lang/String;

    return-void

    :catch_1f3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_52

    :catch_1f7
    move-exception v2

    iput-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    goto/16 :goto_5a

    :cond_1fc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&prod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/c;->p:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|&im="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&coor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getCoorType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    goto/16 :goto_b4
.end method

.method private a(I)I
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_6

    const/4 p1, -0x1

    :cond_6
    return p1
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/baidu/location/b/a;
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v7, 0x67

    const/4 v4, 0x1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v3, 0x11

    if-ge v5, v3, :cond_16

    const/4 v1, 0x0

    :goto_15
    return-object v1

    :cond_16
    new-instance v3, Lcom/baidu/location/b/a;

    invoke-direct {v3}, Lcom/baidu/location/b/a;-><init>()V

    instance-of v6, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v6, :cond_c2

    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/a/c;->a(I)I

    move-result v2

    iput v2, v3, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/a/c;->a(I)I

    move-result v2

    iput v2, v3, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/a/c;->a(I)I

    move-result v2

    iput v2, v3, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/location/a/c;->a(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->b:I

    iput-char v7, v3, Lcom/baidu/location/b/a;->i:C

    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->h:I

    move v1, v4

    :cond_5e
    :goto_5e
    const/16 v2, 0x12

    if-lt v5, v2, :cond_aa

    if-nez v1, :cond_aa

    :try_start_64
    instance-of v1, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_aa

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/a/c;->a(I)I

    move-result v2

    iput v2, v3, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/a/c;->a(I)I

    move-result v2

    iput v2, v3, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/a/c;->a(I)I

    move-result v2

    iput v2, v3, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/location/a/c;->a(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->b:I

    const/16 v1, 0x67

    iput-char v1, v3, Lcom/baidu/location/b/a;->i:C

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->h:I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_aa} :catch_194

    :cond_aa
    :goto_aa
    :try_start_aa
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v1, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    iput-wide v1, v3, Lcom/baidu/location/b/a;->g:J
    :try_end_bf
    .catch Ljava/lang/Error; {:try_start_aa .. :try_end_bf} :catch_18b

    :goto_bf
    move-object v1, v3

    goto/16 :goto_15

    :cond_c2
    instance-of v6, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v6, :cond_146

    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v6

    iput v6, v3, Lcom/baidu/location/b/a;->e:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v6

    iput v6, v3, Lcom/baidu/location/b/a;->f:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/a/c;->a(I)I

    move-result v6

    iput v6, v3, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/a/c;->a(I)I

    move-result v6

    iput v6, v3, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/location/a/c;->a(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->b:I

    const/16 v1, 0x63

    iput-char v1, v3, Lcom/baidu/location/b/a;->i:C

    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->h:I

    iget-object v1, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    if-eqz v1, :cond_11b

    iget-object v1, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->c:I

    if-lez v1, :cond_11b

    iget-object v1, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->c:I

    iput v1, v3, Lcom/baidu/location/b/a;->c:I

    :cond_118
    :goto_118
    move v1, v4

    goto/16 :goto_5e

    :cond_11b
    :try_start_11b
    iget-object v1, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_141

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_141

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_141

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_13c} :catch_197

    move-result v1

    if-gez v1, :cond_140

    move v1, v2

    :cond_140
    move v2, v1

    :cond_141
    :goto_141
    if-lez v2, :cond_118

    iput v2, v3, Lcom/baidu/location/b/a;->c:I

    goto :goto_118

    :cond_146
    instance-of v2, p1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_5e

    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/a/c;->a(I)I

    move-result v2

    iput v2, v3, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/a/c;->a(I)I

    move-result v2

    iput v2, v3, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/a/c;->a(I)I

    move-result v2

    iput v2, v3, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/location/a/c;->a(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->b:I

    iput-char v7, v3, Lcom/baidu/location/b/a;->i:C

    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->h:I

    move v1, v4

    goto/16 :goto_5e

    :catch_18b
    move-exception v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v3, Lcom/baidu/location/b/a;->g:J

    goto/16 :goto_bf

    :catch_194
    move-exception v1

    goto/16 :goto_aa

    :catch_197
    move-exception v1

    goto :goto_141
.end method

.method static synthetic a(Lcom/baidu/location/a/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .registers 10

    const/4 v7, 0x0

    const v6, 0x7fffffff

    const/4 v5, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    new-instance v3, Lcom/baidu/location/b/a;

    invoke-direct {v3}, Lcom/baidu/location/b/a;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_67

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_67

    :try_start_20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_3c

    const/4 v2, 0x0

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3a

    iget-object v2, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->c:I

    :cond_3a
    iput v2, v3, Lcom/baidu/location/b/a;->c:I

    :cond_3c
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    :goto_47
    array-length v5, v4

    if-ge v1, v5, :cond_52

    aget-char v5, v4, v1

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_89

    :cond_52
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_65

    iget-object v1, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->d:I

    :cond_65
    iput v1, v3, Lcom/baidu/location/b/a;->d:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_67} :catch_16a

    :cond_67
    :goto_67
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_8c

    move-object v1, p1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->a:I

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->b:I

    const/16 v1, 0x67

    iput-char v1, v3, Lcom/baidu/location/b/a;->i:C

    :cond_80
    :goto_80
    invoke-virtual {v3}, Lcom/baidu/location/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_166

    iput-object v3, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    goto :goto_c

    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_8c
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_80

    const/16 v1, 0x63

    iput-char v1, v3, Lcom/baidu/location/b/a;->i:C

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    if-nez v1, :cond_e1

    :try_start_98
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getBaseStationId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->g:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getNetworkId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->h:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getSystemId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->i:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getBaseStationLatitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->j:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getBaseStationLongitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->k:Ljava/lang/reflect/Method;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_e1} :catch_161

    :cond_e1
    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    if-eqz v1, :cond_80

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    :try_start_ed
    sget-object v1, Lcom/baidu/location/a/c;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_102

    iget-object v1, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->d:I

    :cond_102
    iput v1, v3, Lcom/baidu/location/b/a;->d:I

    sget-object v1, Lcom/baidu/location/a/c;->g:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->b:I

    sget-object v1, Lcom/baidu/location/a/c;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->a:I

    sget-object v1, Lcom/baidu/location/a/c;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v6, :cond_141

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->e:I

    :cond_141
    sget-object v1, Lcom/baidu/location/a/c;->k:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v6, :cond_80

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/b/a;->f:I
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_15c} :catch_15e

    goto/16 :goto_80

    :catch_15e
    move-exception v1

    goto/16 :goto_c

    :catch_161
    move-exception v1

    sput-object v7, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    goto/16 :goto_c

    :cond_166
    iput-object v7, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    goto/16 :goto_c

    :catch_16a
    move-exception v1

    goto/16 :goto_67
.end method

.method private b(I)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/baidu/location/a/c;->d()Lcom/baidu/location/b/a;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v2

    if-nez v2, :cond_67

    :cond_d
    iget-object v0, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/a/c;->a(Landroid/telephony/CellLocation;)V

    :goto_16
    iget-object v0, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->g()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_27} :catch_6a

    move-result-object v0

    :goto_28
    :try_start_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    iget-object v2, v2, Lcom/baidu/location/b/a;->j:Ljava/lang/String;

    if-eqz v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;

    iget-object v3, v3, Lcom/baidu/location/b/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_48} :catch_bc

    move-result-object v0

    :cond_49
    :goto_49
    const/4 v2, 0x0

    :try_start_4a
    iput-object v2, p0, Lcom/baidu/location/a/c;->n:Lcom/baidu/location/a/c$c;

    new-instance v2, Lcom/baidu/location/a/c$c;

    iget-object v3, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/baidu/location/a/c$c;-><init>(Lcom/baidu/location/a/c;Ljava/util/List;)V

    iput-object v2, p0, Lcom/baidu/location/a/c;->n:Lcom/baidu/location/a/c$c;

    iget-object v2, p0, Lcom/baidu/location/a/c;->n:Lcom/baidu/location/a/c$c;

    invoke-virtual {v2, p1}, Lcom/baidu/location/a/c$c;->a(I)Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5e} :catch_6d

    move-result-object v2

    :goto_5f
    if-nez v0, :cond_70

    if-nez v2, :cond_70

    iput-object v1, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    move-object v0, v1

    :goto_66
    return-object v0

    :cond_67
    :try_start_67
    iput-object v0, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/b/a;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_69} :catch_6a

    goto :goto_16

    :catch_6a
    move-exception v0

    move-object v0, v1

    goto :goto_49

    :catch_6d
    move-exception v2

    move-object v2, v1

    goto :goto_5f

    :cond_70
    if-eqz v2, :cond_75

    if-nez v0, :cond_79

    move-object v0, v2

    :cond_75
    :goto_75
    if-nez v0, :cond_8b

    move-object v0, v1

    goto :goto_66

    :cond_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_8b
    iput-object v0, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    if-eqz v1, :cond_a8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    :cond_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    :catch_bc
    move-exception v2

    goto :goto_49

    :cond_be
    move-object v0, v1

    goto/16 :goto_28
.end method

.method static synthetic b(Lcom/baidu/location/a/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/location/a/c;)Lcom/baidu/location/LocationClientOption;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/c;->p:Lcom/baidu/location/LocationClientOption;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/location/a/c;)Lcom/baidu/location/a/c$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/c;->q:Lcom/baidu/location/a/c$a;

    return-object v0
.end method

.method private d()Lcom/baidu/location/b/a;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_11

    move-object v1, v2

    :cond_10
    :goto_10
    return-object v1

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_59

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    const/4 v3, 0x1

    :cond_3a
    invoke-direct {p0, v0}, Lcom/baidu/location/a/c;->a(Landroid/telephony/CellInfo;)Lcom/baidu/location/b/a;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v5

    if-nez v5, :cond_4b

    move-object v0, v2

    :cond_47
    if-nez v1, :cond_57

    :goto_49
    move-object v1, v0

    goto :goto_24

    :cond_4b
    if-eqz v3, :cond_47

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/b/a;->j:Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_53} :catch_54

    goto :goto_10

    :catch_54
    move-exception v0

    move-object v1, v2

    goto :goto_10

    :cond_57
    move-object v0, v1

    goto :goto_49

    :cond_59
    move-object v1, v2

    goto :goto_10
.end method

.method static synthetic e(Lcom/baidu/location/a/c;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_10
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v0

    :cond_d
    :goto_d
    return-object v0

    :catch_e
    move-exception v1

    goto :goto_d

    :catch_10
    move-exception v1

    goto :goto_d
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xf

    :try_start_2
    invoke-direct {p0, v0}, Lcom/baidu/location/a/c;->b(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/c;->c:Lcom/baidu/location/a/c$b;

    iget-object v1, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/c$b;->a(Ljava/lang/String;)V

    goto :goto_4
.end method
