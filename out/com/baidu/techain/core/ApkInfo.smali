.class public Lcom/baidu/techain/core/ApkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public activities:[Landroid/content/pm/ActivityInfo;

.field public apkMD5:Ljava/lang/String;

.field public apkParseSuc:I

.field public applicationTheme:I

.field public classLoader:Ljava/lang/ClassLoader;

.field public className:Ljava/lang/String;

.field public cloudPkgInfo:Landroid/content/pm/PackageInfo;

.field public dataDir:Ljava/lang/String;

.field public dexPath:Ljava/lang/String;

.field public downloadURL:Ljava/lang/String;

.field public duration:I

.field public hostContext:Landroid/content/Context;

.field public initStatus:I

.field public intentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/techain/core/h;",
            ">;"
        }
    .end annotation
.end field

.field public isMem:Z

.field public isOnce:I

.field public key:I

.field public libPath:Ljava/lang/String;

.field public network:I

.field public packageName:Ljava/lang/String;

.field public pkgPath:Ljava/lang/String;

.field public priority:I

.field public signMD5:Ljava/lang/String;

.field public startTime:J

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/techain/core/ApkInfo;->priority:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/techain/core/ApkInfo;->isMem:Z

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/techain/core/ApkInfo;->priority:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/techain/core/ApkInfo;->isMem:Z

    .line 40
    iput p1, p0, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 41
    iput-object p2, p0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/techain/core/ApkInfo;->priority:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/techain/core/ApkInfo;->isMem:Z

    .line 52
    iput p1, p0, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 53
    iput-object p2, p0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/baidu/techain/core/ApkInfo;->downloadURL:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/techain/core/ApkInfo;->priority:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/techain/core/ApkInfo;->isMem:Z

    .line 46
    iput-object p1, p0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p0, p1, :cond_5

    .line 86
    :cond_4
    :goto_4
    return v0

    .line 72
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 73
    goto :goto_4

    .line 75
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 76
    goto :goto_4

    .line 78
    :cond_15
    check-cast p1, Lcom/baidu/techain/core/ApkInfo;

    .line 79
    iget-object v2, p0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 80
    iget-object v2, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 81
    goto :goto_4

    .line 83
    :cond_21
    iget-object v2, p0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 84
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 64
    return v0

    .line 63
    :cond_8
    iget-object v0, p0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method
