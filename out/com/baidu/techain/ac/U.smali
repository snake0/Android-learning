.class public Lcom/baidu/techain/ac/U;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final FROM_DAILY_ALARM:I = 0x6

.field public static final FROM_DEFAULT:I = 0x0

.field public static final FROM_HANDLE_REMOVE:I = 0x4

.field public static final FROM_INIT:I = 0x1

.field public static final FROM_INIT_ALARM:I = 0x2

.field public static final FROM_NET_CHANGE:I = 0x3

.field public static final FROM_OUT_FLASH:I = 0x5

.field public static final NETWORK_TYPE_2G:I = 0x1

.field public static final NETWORK_TYPE_3G:I = 0x2

.field public static final NETWORK_TYPE_4G:I = 0x3

.field public static final NETWORK_TYPE_MOBILE:I = 0x5

.field public static final NETWORK_TYPE_UNCONNECTED:I = -0x1

.field public static final NETWORK_TYPE_UNKNOWN:I = -0x2

.field public static final NETWORK_TYPE_WIFI:I = 0x4

.field public static final OUT_AES_FAIL:I = 0x8

.field public static final OUT_FINISH:I = 0x1

.field public static final OUT_NO_INTERNET:I = 0x3

.field public static final OUT_NULL_APPKEY:I = 0x5

.field public static final OUT_NULL_HOST_PKGINFO:I = 0x6

.field public static final OUT_NULL_PLUGIN_JSON:I = 0xa

.field public static final OUT_NULL_RESPONSE_JSON:I = 0x9

.field public static final OUT_OTHER_THROWABLE:I = 0xb

.field public static final OUT_PING_FAIL:I = 0x4

.field public static final OUT_RESPONSE_EMPTY:I = 0x7

.field public static final OUT_TIME_TOO_CLOSE:I = 0x2

.field public static final OUT_UNSET:I = 0x0

.field public static final TYPE_END:I = 0x1

.field public static final TYPE_START:I = 0x0

.field public static final UPGRADE_DECRYPT_FAIL:I = 0x7

.field public static final UPGRADE_DOWNLOAD_FAIL:I = 0x4

.field public static final UPGRADE_ERROR_CRASH_TIMES:I = 0x6

.field public static final UPGRADE_LOAD_FAIL:I = 0x5

.field public static final UPGRADE_MD5_FAIL:I = 0x8

.field public static final UPGRADE_NETWORK_CHECK_FAIL:I = 0x3

.field public static final UPGRADE_RESULT_EXCEPTION:I = 0x2

.field public static final UPGRADE_RESULT_SUCCESS:I = 0x1

.field private static sLastCheckTime:J

.field public static sMonitorNetworkWhenUpgradeNoNet:Z

.field private static volatile sOutGoing:Z

.field private static sPidRegister:Z

.field private static sRetryDownoadHostCareApksTimesCount:I

.field private static sRetryPingTimesCount:I

.field private static sSetRetrmAlarm:Z


# instance fields
.field private context:Landroid/content/Context;

.field private forHostAPP:Lcom/baidu/techain/core/d;

.field private loadedPluginDB:Lcom/baidu/techain/a/a;

.field private mCloudKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDownloadPluginsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEndReason:I

.field private mFrom:I

.field private mOut:Z

.field private mStartKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartNetwork:I

.field mUnloadPluginsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpgradeResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/baidu/techain/ac/U$UpgradeResult;",
            ">;"
        }
    .end annotation
.end field

.field private preference:Lcom/baidu/techain/e;

.field private tmpDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 103
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/techain/ac/U;->sLastCheckTime:J

    .line 104
    sput-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z

    .line 105
    sput-boolean v2, Lcom/baidu/techain/ac/U;->sPidRegister:Z

    .line 110
    sput-boolean v2, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 111
    sput v2, Lcom/baidu/techain/ac/U;->sRetryPingTimesCount:I

    .line 112
    sput v2, Lcom/baidu/techain/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    .line 113
    sput-boolean v2, Lcom/baidu/techain/ac/U;->sSetRetrmAlarm:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 107
    iput v0, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    .line 108
    iput v0, p0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 109
    iput-boolean v0, p0, Lcom/baidu/techain/ac/U;->mOut:Z

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->mCloudKeyMap:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->mUnloadPluginsList:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->mDownloadPluginsList:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    .line 120
    const/4 v0, -0x2

    iput v0, p0, Lcom/baidu/techain/ac/U;->mStartNetwork:I

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 107
    iput v0, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    .line 108
    iput v0, p0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 109
    iput-boolean v0, p0, Lcom/baidu/techain/ac/U;->mOut:Z

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->mCloudKeyMap:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->mUnloadPluginsList:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->mDownloadPluginsList:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    .line 120
    const/4 v0, -0x2

    iput v0, p0, Lcom/baidu/techain/ac/U;->mStartNetwork:I

    .line 135
    iput-object p1, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    .line 136
    invoke-static {p1}, Lcom/baidu/techain/a/a;->a(Landroid/content/Context;)Lcom/baidu/techain/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    .line 137
    new-instance v0, Lcom/baidu/techain/e;

    invoke-direct {v0, p1}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 138
    invoke-static {p1}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->forHostAPP:Lcom/baidu/techain/core/d;

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".tmp_techain"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->tmpDir:Ljava/io/File;

    .line 140
    iput p2, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    .line 141
    iput-boolean p3, p0, Lcom/baidu/techain/ac/U;->mOut:Z

    .line 142
    return-void
.end method

.method private handlePluginUpgrade(Lcom/baidu/techain/core/ApkInfo;)V
    .registers 11

    .prologue
    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->l(Landroid/content/Context;)I

    move-result v1

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "a="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 892
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v0}, Lcom/baidu/techain/e;->p()Ljava/util/List;

    move-result-object v2

    .line 893
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 894
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->network:I

    invoke-static {v0, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;I)Z

    move-result v0

    .line 895
    if-nez v0, :cond_57

    .line 896
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 897
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/baidu/techain/ac/U$UpgradeResult;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v1, v4}, Lcom/baidu/techain/ac/U$UpgradeResult;-><init>(Lcom/baidu/techain/ac/U;II)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    :cond_56
    :goto_56
    return-void

    .line 902
    :cond_57
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_64

    .line 903
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 907
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "before update, time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 909
    iget-object v3, p0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v3, v4}, Lcom/baidu/techain/a/a;->a(I)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v3

    .line 910
    if-nez v3, :cond_343

    .line 911
    const-string v3, "apkInDB == null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    :goto_91
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/baidu/techain/ac/U;->tmpDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 920
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/baidu/techain/ac/U;->tmpDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 922
    new-instance v0, Lcom/baidu/techain/b/m;

    iget-object v5, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/baidu/techain/b/m;-><init>(Landroid/content/Context;)V

    iget-object v5, p1, Lcom/baidu/techain/core/ApkInfo;->downloadURL:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/baidu/techain/b/m;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 924
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 927
    if-eqz v0, :cond_39a

    .line 928
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 929
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 930
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 933
    :cond_ff
    new-instance v5, Lcom/baidu/techain/jni/Asc;

    invoke-direct {v5}, Lcom/baidu/techain/jni/Asc;-><init>()V

    .line 935
    iget-object v6, p1, Lcom/baidu/techain/core/ApkInfo;->signMD5:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 936
    iget-object v7, p1, Lcom/baidu/techain/core/ApkInfo;->signMD5:Ljava/lang/String;

    const/4 v8, 0x0

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 937
    const-string v7, "utf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 938
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 939
    const-string v7, "12"

    invoke-static {v7}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V

    .line 940
    invoke-static {v3, v4, v6}, Lcom/baidu/techain/b/a;->a(Ljava/io/File;Ljava/io/File;[B)I

    move-result v7

    .line 941
    if-eqz v7, :cond_176

    .line 942
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 943
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_133

    .line 944
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 947
    :cond_133
    const-string v7, "13"

    invoke-static {v7}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v6}, Lcom/baidu/techain/jni/Asc;->df(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v5

    .line 949
    if-eqz v5, :cond_176

    .line 950
    const-string v0, "14"

    invoke-static {v0}, Lcom/baidu/techain/b/e;->f(Ljava/lang/String;)V

    .line 951
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 952
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget v5, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_175

    .line 953
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v5, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/baidu/techain/ac/U$UpgradeResult;

    const/4 v7, 0x7

    invoke-direct {v6, p0, v1, v7}, Lcom/baidu/techain/ac/U$UpgradeResult;-><init>(Lcom/baidu/techain/ac/U;II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :cond_175
    const/4 v0, 0x0

    .line 965
    :cond_176
    :goto_176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 966
    invoke-static {v4}, Lcom/baidu/techain/b/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 967
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ds="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fm="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", am="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 970
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 971
    if-eqz v0, :cond_40a

    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40a

    .line 972
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V

    .line 974
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v0}, Lcom/baidu/techain/e;->d()Z

    move-result v0

    if-eqz v0, :cond_205

    .line 975
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".b_techain"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1db

    .line 977
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 980
    :cond_1db
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 981
    invoke-static {v4, v2}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;Ljava/io/File;)V

    .line 982
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v0, v3, v4, v2}, Lcom/baidu/techain/c;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 985
    :cond_205
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "before update, time="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", downloadAPK path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 989
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", exists="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 990
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", canRead="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isFile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",length"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 991
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 993
    iget-object v2, p0, Lcom/baidu/techain/ac/U;->forHostAPP:Lcom/baidu/techain/core/d;

    invoke-virtual {v2, p1, v0}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;)Z

    move-result v0

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 995
    if-nez v0, :cond_3c3

    .line 996
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 997
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/baidu/techain/ac/U$UpgradeResult;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v1, v4}, Lcom/baidu/techain/ac/U$UpgradeResult;-><init>(Lcom/baidu/techain/ac/U;II)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2aa
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2aa} :catch_2ac

    goto/16 :goto_56

    .line 1060
    :catch_2ac
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 1062
    :try_start_2b0
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_2dd

    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget v1, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dd

    .line 1063
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->l(Landroid/content/Context;)I

    move-result v0

    .line 1064
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/baidu/techain/ac/U$UpgradeResult;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v0, v4}, Lcom/baidu/techain/ac/U$UpgradeResult;-><init>(Lcom/baidu/techain/ac/U;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2dd
    .catch Ljava/lang/Throwable; {:try_start_2b0 .. :try_end_2dd} :catch_549

    .line 1070
    :cond_2dd
    :goto_2dd
    :try_start_2dd
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v0}, Lcom/baidu/techain/e;->p()Ljava/util/List;

    move-result-object v0

    .line 1071
    iget v1, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f2

    iget v1, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2f2

    iget v1, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_56

    .line 1072
    :cond_2f2
    iget v1, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_313

    sget-boolean v0, Lcom/baidu/techain/ac/U;->sSetRetrmAlarm:Z

    if-nez v0, :cond_313

    .line 1073
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/techain/ac/U;->sSetRetrmAlarm:Z

    .line 1074
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    sget v1, Lcom/baidu/techain/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/b/b;->a(Landroid/content/Context;IZ)V

    .line 1075
    sget v0, Lcom/baidu/techain/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/techain/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    .line 1077
    :cond_313
    sget-boolean v0, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    if-nez v0, :cond_56

    .line 1078
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1079
    sget-object v1, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    if-nez v1, :cond_54f

    .line 1080
    new-instance v1, Lcom/baidu/techain/TechainReceiver;

    invoke-direct {v1}, Lcom/baidu/techain/TechainReceiver;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/techain/TechainReceiver;->a()Lcom/baidu/techain/TechainReceiver;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    .line 1084
    :goto_32d
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z
    :try_end_33b
    .catch Ljava/lang/Throwable; {:try_start_2dd .. :try_end_33b} :catch_33d

    goto/16 :goto_56

    .line 1090
    :catch_33d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_56

    .line 913
    :cond_343
    :try_start_343
    new-instance v4, Ljava/io/File;

    iget-object v3, v3, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "origAPK path:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", exists="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 915
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", canRead="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isFile="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",length"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 916
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_91

    .line 960
    :cond_39a
    iget-object v5, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v5, :cond_176

    iget-object v5, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    iget v6, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_176

    .line 961
    iget-object v5, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v6, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/baidu/techain/ac/U$UpgradeResult;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v1, v8}, Lcom/baidu/techain/ac/U$UpgradeResult;-><init>(Lcom/baidu/techain/ac/U;II)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_176

    .line 1001
    :cond_3c3
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v0, v2}, Lcom/baidu/techain/a/a;->g(I)I

    move-result v0

    .line 1002
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new plugin now loadStatus :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1003
    const/4 v2, 0x3

    if-ge v0, v2, :cond_3f3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3f3

    .line 1004
    iget-object v2, p0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/baidu/techain/a/a;->b(II)V

    .line 1006
    :cond_3f3
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_56

    .line 1007
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v2, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/baidu/techain/ac/U$UpgradeResult;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v4}, Lcom/baidu/techain/ac/U$UpgradeResult;-><init>(Lcom/baidu/techain/ac/U;II)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_56

    .line 1012
    :cond_40a
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_432

    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_432

    .line 1013
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/baidu/techain/ac/U$UpgradeResult;

    const/16 v6, 0x8

    invoke-direct {v5, p0, v1, v6}, Lcom/baidu/techain/ac/U$UpgradeResult;-><init>(Lcom/baidu/techain/ac/U;II)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_432
    iget v0, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_441

    iget v0, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_441

    iget v0, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_48a

    .line 1016
    :cond_441
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_462

    sget-boolean v0, Lcom/baidu/techain/ac/U;->sSetRetrmAlarm:Z

    if-nez v0, :cond_462

    .line 1017
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/techain/ac/U;->sSetRetrmAlarm:Z

    .line 1018
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    sget v1, Lcom/baidu/techain/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/b/b;->a(Landroid/content/Context;IZ)V

    .line 1019
    sget v0, Lcom/baidu/techain/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/techain/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    .line 1021
    :cond_462
    sget-boolean v0, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    if-nez v0, :cond_48a

    .line 1022
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1023
    sget-object v1, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    if-nez v1, :cond_4fd

    .line 1024
    new-instance v1, Lcom/baidu/techain/TechainReceiver;

    invoke-direct {v1}, Lcom/baidu/techain/TechainReceiver;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/techain/TechainReceiver;->a()Lcom/baidu/techain/TechainReceiver;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    .line 1028
    :goto_47c
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1029
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 1034
    :cond_48a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 8187
    iget-object v0, v5, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "pu_ap_fd"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 8188
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_4a7

    .line 8189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8190
    invoke-virtual {v5}, Lcom/baidu/techain/e;->g()V

    .line 1034
    :cond_4a7
    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_525

    .line 1035
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1036
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_504

    .line 1037
    const-string v1, "0"

    iget-object v2, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v2}, Lcom/baidu/techain/e;->h()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    const-string v1, "1"

    iget-object v2, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v2}, Lcom/baidu/techain/e;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :goto_4dd
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/techain/e;->a(I)V

    .line 1044
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/techain/e;->b(I)V

    .line 1045
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v1}, Lcom/baidu/techain/e;->g()V

    .line 1046
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    const-string v2, "1003116"

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1055
    :goto_4f5
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1056
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_56

    .line 1026
    :cond_4fd
    sget-object v1, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v1}, Lcom/baidu/techain/TechainReceiver;->a()Lcom/baidu/techain/TechainReceiver;

    goto/16 :goto_47c

    .line 1040
    :cond_504
    const-string v1, "0"

    iget-object v2, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v2}, Lcom/baidu/techain/e;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-string v1, "1"

    iget-object v2, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v2}, Lcom/baidu/techain/e;->i()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4dd

    .line 1048
    :cond_525
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_53b

    .line 1049
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v1}, Lcom/baidu/techain/e;->h()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/techain/e;->a(I)V

    goto :goto_4f5

    .line 1051
    :cond_53b
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v1}, Lcom/baidu/techain/e;->i()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/techain/e;->b(I)V
    :try_end_548
    .catch Ljava/lang/Throwable; {:try_start_343 .. :try_end_548} :catch_2ac

    goto :goto_4f5

    .line 1067
    :catch_549
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_2dd

    .line 1082
    :cond_54f
    :try_start_54f
    sget-object v1, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v1}, Lcom/baidu/techain/TechainReceiver;->a()Lcom/baidu/techain/TechainReceiver;
    :try_end_554
    .catch Ljava/lang/Throwable; {:try_start_54f .. :try_end_554} :catch_33d

    goto/16 :goto_32d
.end method

.method private handleThreadEnd(Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v1}, Lcom/baidu/techain/e;->v()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/techain/e;->g(I)V

    .line 768
    iget v0, p0, Lcom/baidu/techain/ac/U;->mEndReason:I

    if-eqz v0, :cond_24

    .line 769
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v1, 0x1

    iget v2, p0, Lcom/baidu/techain/ac/U;->mEndReason:I

    iget-object v3, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v4, 0x1

    iget v5, p0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 770
    invoke-virtual {v3, v4, v5}, Lcom/baidu/techain/e;->a(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 769
    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/techain/e;->a(III)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_cf

    .line 776
    :cond_24
    :goto_24
    :try_start_24
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 777
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mStartKeyMap:Ljava/util/Map;

    if-eqz v0, :cond_43

    .line 778
    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->mStartKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v0, "2"

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->mStartKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :cond_43
    const-string v0, "3"

    iget v1, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mCloudKeyMap:Ljava/util/Map;

    if-eqz v0, :cond_68

    .line 783
    const-string v0, "4"

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->mCloudKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v0, "5"

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->mCloudKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_68
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUnloadPluginsList:Ljava/util/List;

    if-eqz v0, :cond_73

    .line 787
    const-string v0, "6"

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->mUnloadPluginsList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_73
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mDownloadPluginsList:Ljava/util/List;

    if-eqz v0, :cond_7e

    .line 790
    const-string v0, "7"

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->mDownloadPluginsList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_7e
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_da

    .line 793
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 794
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_91
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 795
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 796
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 797
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/ac/U$UpgradeResult;

    .line 798
    if-eqz v0, :cond_c2

    .line 799
    const-string v6, "1"

    iget v7, v0, Lcom/baidu/techain/ac/U$UpgradeResult;->networkId:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 800
    const-string v6, "0"

    iget v0, v0, Lcom/baidu/techain/ac/U$UpgradeResult;->resultId:I

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 802
    :cond_c2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_c9} :catch_ca

    goto :goto_91

    .line 819
    :catch_ca
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 822
    :goto_ce
    return-void

    .line 773
    :catch_cf
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_24

    .line 804
    :cond_d5
    :try_start_d5
    const-string v0, "8"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_da
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    invoke-virtual {v0}, Lcom/baidu/techain/a/a;->b()Ljava/util/Map;

    move-result-object v0

    .line 808
    const-string v1, "9"

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string v1, "10"

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v0, "11"

    iget v1, p0, Lcom/baidu/techain/ac/U;->mEndReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_120

    .line 813
    const-string v0, "12"

    const-string v1, "\n"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\t"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    :cond_120
    const-string v0, "13"

    iget v1, p0, Lcom/baidu/techain/ac/U;->mStartNetwork:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string v0, "14"

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->l(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    const-string v1, "1003129"

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_141
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_141} :catch_ca

    goto :goto_ce
.end method

.method private handleThreadStart()V
    .registers 14

    .prologue
    const/16 v12, 0xb

    const/4 v11, 0x6

    const-wide/16 v9, 0x0

    const/4 v0, 0x1

    .line 829
    :try_start_6
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 7559
    iget-object v1, v1, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v2, "slruct"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 830
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 831
    cmp-long v5, v1, v9

    if-lez v5, :cond_dd

    sub-long v5, v3, v1

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-lez v5, :cond_dd

    .line 832
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 833
    const-string v1, "1"

    iget-object v5, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v5}, Lcom/baidu/techain/e;->u()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/baidu/techain/e;->f(I)V

    .line 835
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move v1, v0

    .line 836
    :goto_43
    if-gt v1, v11, :cond_5d

    .line 837
    iget-object v6, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Lcom/baidu/techain/e;->a(II)I

    move-result v6

    .line 838
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 839
    iget-object v6, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v1, v8}, Lcom/baidu/techain/e;->a(III)V

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 841
    :cond_5d
    const-string v1, "2"

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v1, "3"

    iget-object v5, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v5}, Lcom/baidu/techain/e;->v()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/baidu/techain/e;->g(I)V

    .line 844
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move v1, v0

    .line 845
    :goto_7d
    if-gt v1, v12, :cond_97

    .line 846
    iget-object v6, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v1}, Lcom/baidu/techain/e;->a(II)I

    move-result v6

    .line 847
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 848
    iget-object v6, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v1, v8}, Lcom/baidu/techain/e;->a(III)V

    .line 845
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 850
    :cond_97
    const-string v1, "4"

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    const-string v5, "1003128"

    invoke-static {v1, v5, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 852
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/techain/e;->c(J)V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_a8} :catch_e7

    .line 875
    :cond_a8
    :goto_a8
    :try_start_a8
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    invoke-virtual {v0}, Lcom/baidu/techain/a/a;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->mStartKeyMap:Ljava/util/Map;

    .line 876
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v1}, Lcom/baidu/techain/e;->u()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/techain/e;->f(I)V

    .line 877
    iget v0, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    if-eqz v0, :cond_d4

    .line 878
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v1, 0x0

    iget v2, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    iget-object v3, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v4, 0x0

    iget v5, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    .line 879
    invoke-virtual {v3, v4, v5}, Lcom/baidu/techain/e;->a(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 878
    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/techain/e;->a(III)V

    .line 881
    :cond_d4
    iget-object v0, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->l(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/techain/ac/U;->mStartNetwork:I
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_dc} :catch_115

    .line 886
    :goto_dc
    return-void

    .line 853
    :cond_dd
    cmp-long v1, v1, v9

    if-nez v1, :cond_a8

    .line 855
    :try_start_e1
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/techain/e;->c(J)V
    :try_end_e6
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_e6} :catch_e7

    goto :goto_a8

    :catch_e7
    move-exception v1

    .line 860
    :try_start_e8
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/techain/e;->f(I)V

    .line 861
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/techain/e;->g(I)V

    move v1, v0

    .line 862
    :goto_f5
    if-gt v1, v11, :cond_101

    .line 863
    iget-object v2, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/baidu/techain/e;->a(III)V

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_f5

    .line 865
    :cond_101
    :goto_101
    if-gt v0, v12, :cond_111

    .line 866
    iget-object v1, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/techain/e;->a(III)V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_10a} :catch_10d

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    .line 869
    :catch_10d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 871
    :cond_111
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_a8

    .line 883
    :catch_115
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_dc
.end method

.method public static handleUploadPidChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 1098
    :try_start_1
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1099
    invoke-static {p0}, Lcom/baidu/techain/b/b;->a(Landroid/content/Context;)V

    .line 1100
    new-instance v1, Lcom/baidu/techain/e;

    invoke-direct {v1, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1101
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 8467
    iget-object v3, v1, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v4, "pdcgts"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1103
    invoke-static {p0}, Lcom/baidu/techain/b/e;->i(Landroid/content/Context;)V

    .line 1104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 1105
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1106
    array-length v4, v3

    :goto_2b
    if-ge v0, v4, :cond_49

    aget-object v5, v3, v0

    .line 1107
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_32} :catch_44

    move-result v6

    if-nez v6, :cond_3c

    .line 1109
    :try_start_35
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3c} :catch_3f

    .line 1106
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1111
    :catch_3f
    move-exception v5

    :try_start_40
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_3c

    .line 1125
    :catch_44
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 1128
    :goto_48
    return-void

    .line 1116
    :cond_49
    :try_start_49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1117
    const-string v3, "0"

    invoke-virtual {v1}, Lcom/baidu/techain/e;->r()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string v3, "1"

    invoke-virtual {v1}, Lcom/baidu/techain/e;->t()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const-string v3, "2"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/techain/e;->d(I)V

    .line 1121
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/techain/e;->e(I)V

    .line 1122
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/baidu/techain/e;->b(J)V

    .line 1123
    const-string v1, "1003122"

    invoke-static {p0, v1, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_7f} :catch_44

    goto :goto_48
.end method


# virtual methods
.method public handleWork(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 148
    iput-object p1, p0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    .line 149
    invoke-static {p1}, Lcom/baidu/techain/a/a;->a(Landroid/content/Context;)Lcom/baidu/techain/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    .line 150
    new-instance v0, Lcom/baidu/techain/e;

    invoke-direct {v0, p1}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".tmp_techain"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->tmpDir:Ljava/io/File;

    .line 152
    invoke-static {p1}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/ac/U;->forHostAPP:Lcom/baidu/techain/core/d;

    .line 153
    const-string v0, "from"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/techain/ac/U;->mFrom:I

    .line 154
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 155
    invoke-virtual {p0}, Lcom/baidu/techain/ac/U;->start()V

    .line 156
    return-void
.end method

.method public declared-synchronized run()V
    .registers 26

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/techain/ac/U;->mOut:Z

    if-eqz v2, :cond_10

    .line 162
    sget-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_6a
    .catchall {:try_start_1 .. :try_end_9} :catchall_67

    if-eqz v2, :cond_d

    .line 762
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 165
    :cond_d
    const/4 v2, 0x1

    :try_start_e
    sput-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_10} :catch_6a
    .catchall {:try_start_e .. :try_end_10} :catchall_67

    .line 173
    :cond_10
    :goto_10
    :try_start_10
    const-class v11, Lcom/baidu/techain/ac/U;

    monitor-enter v11
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_152
    .catchall {:try_start_10 .. :try_end_13} :catchall_bbd

    .line 174
    :try_start_13
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/baidu/techain/ac/U;->handleThreadStart()V

    .line 176
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/techain/ac/U;->mOut:Z

    if-nez v2, :cond_6f

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/baidu/techain/ac/U;->sLastCheckTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_6f

    .line 178
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    if-nez v2, :cond_53

    .line 179
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 180
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/techain/ac/U;->handleThreadEnd(Ljava/lang/String;)V

    .line 182
    :cond_53
    monitor-exit v11
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_14f

    .line 755
    :try_start_54
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/techain/ac/U;->mOut:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z

    if-eqz v2, :cond_b

    .line 756
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_61} :catch_62
    .catchall {:try_start_54 .. :try_end_61} :catchall_67

    goto :goto_b

    .line 759
    :catch_62
    move-exception v2

    :try_start_63
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_b

    .line 161
    :catchall_67
    move-exception v2

    monitor-exit p0

    throw v2

    .line 169
    :catch_6a
    move-exception v2

    :try_start_6b
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_67

    goto :goto_10

    .line 184
    :cond_6f
    :try_start_6f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/e;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/techain/ac/U;->sLastCheckTime:J

    .line 187
    :cond_7f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/baidu/techain/b/b;->a(Landroid/content/Context;Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;
    :try_end_8b
    .catchall {:try_start_6f .. :try_end_8b} :catchall_14f

    .line 2016
    :try_start_8b
    invoke-static {v2}, Lcom/baidu/techain/a/a;->a(Landroid/content/Context;)Lcom/baidu/techain/a/a;

    move-result-object v3

    .line 2017
    invoke-static {v2}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v4

    .line 2018
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 2020
    invoke-virtual {v3}, Lcom/baidu/techain/a/a;->a()Ljava/util/List;

    move-result-object v2

    .line 2021
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9e
    :goto_9e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/techain/core/ApkInfo;

    .line 2022
    iget v5, v2, Lcom/baidu/techain/core/ApkInfo;->duration:I

    if-eqz v5, :cond_9e

    iget-wide v5, v2, Lcom/baidu/techain/core/ApkInfo;->startTime:J

    iget v7, v2, Lcom/baidu/techain/core/ApkInfo;->duration:I

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 2024
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_9e

    .line 2025
    iget-object v2, v2, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/baidu/techain/core/d;->a(Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_c5} :catch_c6
    .catchall {:try_start_8b .. :try_end_c5} :catchall_14f

    goto :goto_9e

    .line 2029
    :catch_c6
    move-exception v2

    :try_start_c7
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 190
    :cond_ca
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_ea

    .line 191
    :cond_d8
    const/4 v2, 0x0

    sput v2, Lcom/baidu/techain/ac/U;->sRetryPingTimesCount:I

    .line 192
    const/4 v2, 0x0

    sput v2, Lcom/baidu/techain/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/baidu/techain/b/b;->a(Landroid/content/Context;IZ)V

    .line 194
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/techain/ac/U;->sSetRetrmAlarm:Z

    .line 196
    :cond_ea
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f4

    .line 197
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/techain/ac/U;->sSetRetrmAlarm:Z

    .line 200
    :cond_f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/e;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_195

    .line 202
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_113

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_113

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13c

    .line 203
    :cond_113
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 205
    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 206
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    sget-object v3, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    if-nez v3, :cond_12f

    .line 208
    new-instance v3, Lcom/baidu/techain/TechainReceiver;

    invoke-direct {v3}, Lcom/baidu/techain/TechainReceiver;-><init>()V

    invoke-virtual {v3}, Lcom/baidu/techain/TechainReceiver;->a()Lcom/baidu/techain/TechainReceiver;

    move-result-object v3

    sput-object v3, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    .line 210
    :cond_12f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    :cond_13c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    if-nez v2, :cond_147

    .line 213
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 215
    :cond_147
    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v3, "no internet"

    invoke-direct {v2, v3}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 727
    :catchall_14f
    move-exception v2

    monitor-exit v11
    :try_end_151
    .catchall {:try_start_c7 .. :try_end_151} :catchall_14f

    :try_start_151
    throw v2
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_151 .. :try_end_152} :catch_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_bbd

    .line 732
    :catch_152
    move-exception v2

    .line 734
    :try_start_153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->forHostAPP:Lcom/baidu/techain/core/d;

    invoke-virtual {v3}, Lcom/baidu/techain/core/d;->b()V
    :try_end_15a
    .catch Ljava/lang/Throwable; {:try_start_153 .. :try_end_15a} :catch_bb7
    .catchall {:try_start_153 .. :try_end_15a} :catchall_bbd

    .line 739
    :goto_15a
    :try_start_15a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    if-nez v3, :cond_171

    .line 740
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response is empty"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bcc

    .line 741
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 748
    :cond_171
    :goto_171
    invoke-static {v2}, Lcom/baidu/techain/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/baidu/techain/ac/U;->handleThreadEnd(Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/Throwable; {:try_start_15a .. :try_end_17a} :catch_be0
    .catchall {:try_start_15a .. :try_end_17a} :catchall_bbd

    .line 752
    :goto_17a
    :try_start_17a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_180
    .catchall {:try_start_17a .. :try_end_180} :catchall_bbd

    .line 755
    :try_start_180
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/techain/ac/U;->mOut:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z

    if-eqz v2, :cond_b

    .line 756
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z
    :try_end_18d
    .catch Ljava/lang/Throwable; {:try_start_180 .. :try_end_18d} :catch_18f
    .catchall {:try_start_180 .. :try_end_18d} :catchall_67

    goto/16 :goto_b

    .line 759
    :catch_18f
    move-exception v2

    :try_start_190
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_193
    .catchall {:try_start_190 .. :try_end_193} :catchall_67

    goto/16 :goto_b

    .line 217
    :cond_195
    :try_start_195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/techain/ac/U;->sLastCheckTime:J

    .line 219
    sget-object v2, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    if-eqz v2, :cond_1b4

    sget-boolean v2, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    if-nez v2, :cond_1a7

    sget-boolean v2, Lcom/baidu/techain/b/e;->a:Z
    :try_end_1a5
    .catchall {:try_start_195 .. :try_end_1a5} :catchall_14f

    if-eqz v2, :cond_1b4

    .line 222
    :cond_1a7
    :try_start_1a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1b4
    .catch Ljava/lang/Throwable; {:try_start_1a7 .. :try_end_1b4} :catch_26d
    .catchall {:try_start_1a7 .. :try_end_1b4} :catchall_14f

    .line 228
    :cond_1b4
    :goto_1b4
    const/4 v2, 0x0

    :try_start_1b5
    sput-boolean v2, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 229
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/techain/b/e;->a:Z

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-static {}, Lcom/baidu/techain/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "opmon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1d0
    .catchall {:try_start_1b5 .. :try_end_1d0} :catchall_14f

    move-result-object v3

    .line 234
    const/4 v2, 0x0

    .line 236
    :try_start_1d2
    new-instance v4, Lcom/baidu/techain/b/m;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/baidu/techain/b/m;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v4, v3}, Lcom/baidu/techain/b/m;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1df
    .catch Ljava/lang/Throwable; {:try_start_1d2 .. :try_end_1df} :catch_273
    .catchall {:try_start_1d2 .. :try_end_1df} :catchall_14f

    move-result-object v2

    .line 240
    :goto_1e0
    :try_start_1e0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1e3
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_14f

    move-result v4

    if-eqz v4, :cond_285

    .line 242
    :try_start_1e6
    new-instance v4, Lcom/baidu/techain/b/m;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/baidu/techain/b/m;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v4, v3}, Lcom/baidu/techain/b/m;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f3
    .catch Ljava/lang/Throwable; {:try_start_1e6 .. :try_end_1f3} :catch_279
    .catchall {:try_start_1e6 .. :try_end_1f3} :catchall_14f

    move-result-object v2

    .line 248
    :goto_1f4
    :try_start_1f4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_285

    .line 249
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_213

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_213

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mFrom:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_234

    sget-boolean v2, Lcom/baidu/techain/ac/U;->sSetRetrmAlarm:Z

    if-nez v2, :cond_234

    :cond_213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 251
    invoke-virtual {v2}, Lcom/baidu/techain/e;->p()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_234

    .line 252
    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/techain/ac/U;->sSetRetrmAlarm:Z

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    sget v3, Lcom/baidu/techain/ac/U;->sRetryPingTimesCount:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/baidu/techain/b/b;->a(Landroid/content/Context;IZ)V

    .line 254
    sget v2, Lcom/baidu/techain/ac/U;->sRetryPingTimesCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/baidu/techain/ac/U;->sRetryPingTimesCount:I

    .line 256
    :cond_234
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 257
    sget-object v3, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    if-nez v3, :cond_27f

    .line 258
    new-instance v3, Lcom/baidu/techain/TechainReceiver;

    invoke-direct {v3}, Lcom/baidu/techain/TechainReceiver;-><init>()V

    invoke-virtual {v3}, Lcom/baidu/techain/TechainReceiver;->a()Lcom/baidu/techain/TechainReceiver;

    move-result-object v3

    sput-object v3, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    .line 262
    :goto_24a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/techain/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    if-nez v2, :cond_265

    .line 265
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 267
    :cond_265
    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v3, "ping faild"

    invoke-direct {v2, v3}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :catch_26d
    move-exception v2

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_1b4

    .line 238
    :catch_273
    move-exception v4

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_1e0

    .line 244
    :catch_279
    move-exception v3

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_1f4

    .line 260
    :cond_27f
    sget-object v3, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v3}, Lcom/baidu/techain/TechainReceiver;->a()Lcom/baidu/techain/TechainReceiver;

    goto :goto_24a

    .line 270
    :cond_285
    const/4 v2, 0x0

    sput v2, Lcom/baidu/techain/ac/U;->sRetryPingTimesCount:I

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 2523
    iget-object v2, v2, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v3, "appplg_te"

    const/16 v4, 0x168

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 2532
    iget-object v5, v5, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v6, "plla_tm"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 274
    sub-long/2addr v3, v5

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-lez v2, :cond_3b1

    .line 275
    const/4 v2, 0x0

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/techain/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "p/1/stt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_2d5
    .catchall {:try_start_1f4 .. :try_end_2d5} :catchall_14f

    .line 279
    :try_start_2d5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 280
    const-string v5, "a"

    const-string v6, "b"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    const/4 v6, 0x1

    .line 283
    invoke-static {v5, v3, v4, v6}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 285
    if-eqz v3, :cond_398

    .line 286
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 287
    const-string v3, "app"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "App-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 289
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 3491
    iget-object v6, v5, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v7, "appinv_t"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3492
    iget-object v3, v5, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    const-string v3, "js"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JS-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 3500
    iget-object v6, v5, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v7, "appinv_js"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3501
    iget-object v3, v5, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    const-string v3, "a"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get key-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 297
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 3509
    iget-object v6, v5, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v7, "appinv_ky"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3510
    iget-object v3, v5, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    const-string v3, "pi"

    const/16 v5, 0x168

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "net Interval-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 3518
    iget-object v5, v4, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v6, "appplg_te"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3519
    iget-object v3, v4, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_397
    .catch Ljava/lang/Throwable; {:try_start_2d5 .. :try_end_397} :catch_40b
    .catchall {:try_start_2d5 .. :try_end_397} :catchall_14f

    .line 301
    const/4 v2, 0x1

    .line 306
    :cond_398
    :goto_398
    if-eqz v2, :cond_3b1

    .line 307
    :try_start_39a
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3527
    iget-object v5, v2, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v6, "plla_tm"

    invoke-interface {v5, v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3528
    iget-object v2, v2, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    :cond_3b1
    const/4 v2, 0x0

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/techain/b/e;->h(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 4514
    iget-object v4, v4, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v5, "appinv_ky"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 313
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e3

    .line 314
    if-eqz v3, :cond_3e2

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3e2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 315
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e3

    .line 316
    :cond_3e2
    const/4 v2, 0x1

    .line 319
    :cond_3e3
    if-eqz v2, :cond_410

    .line 320
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_410

    .line 322
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 323
    monitor-exit v11
    :try_end_3f6
    .catchall {:try_start_39a .. :try_end_3f6} :catchall_14f

    .line 755
    :try_start_3f6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/techain/ac/U;->mOut:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z

    if-eqz v2, :cond_b

    .line 756
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z
    :try_end_403
    .catch Ljava/lang/Throwable; {:try_start_3f6 .. :try_end_403} :catch_405
    .catchall {:try_start_3f6 .. :try_end_403} :catchall_67

    goto/16 :goto_b

    .line 759
    :catch_405
    move-exception v2

    :try_start_406
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_409
    .catchall {:try_start_406 .. :try_end_409} :catchall_67

    goto/16 :goto_b

    .line 304
    :catch_40b
    move-exception v3

    :try_start_40c
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_398

    .line 326
    :cond_410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->forHostAPP:Lcom/baidu/techain/core/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/techain/core/d;->b(Landroid/content/Context;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v2}, Lcom/baidu/techain/e;->e()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_437

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/e;->o(Landroid/content/Context;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v2}, Lcom/baidu/techain/e;->e()Ljava/lang/String;

    .line 333
    :cond_437
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 5496
    iget-object v2, v2, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v3, "appinv_t"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 334
    const/4 v3, 0x1

    if-ne v2, v3, :cond_451

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/e;->p(Landroid/content/Context;)V

    .line 337
    :cond_451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    invoke-virtual {v2}, Lcom/baidu/techain/a/a;->d()V

    .line 339
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 340
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 341
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 343
    const-string v2, "pk"

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v2, "pk"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v2, "dm"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v2, "dm"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v2, "cuid"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/techain/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v2, "al"

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v2, "al"

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v2, "3.1.6.1"

    .line 351
    const-string v7, "ev"

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_4b8
    .catchall {:try_start_40c .. :try_end_4b8} :catchall_14f

    move-result-object v7

    .line 353
    const/4 v2, 0x0

    .line 355
    const/16 v8, 0x40

    :try_start_4bc
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4bf
    .catch Ljava/lang/Throwable; {:try_start_4bc .. :try_end_4bf} :catch_567
    .catchall {:try_start_4bc .. :try_end_4bf} :catchall_14f

    move-result-object v2

    .line 359
    :goto_4c0
    if-eqz v2, :cond_57c

    .line 360
    :try_start_4c2
    const-string v6, "av"

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v6, "av"

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 363
    invoke-static {v2, v6}, Lcom/baidu/techain/b/e;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 364
    if-eqz v2, :cond_50a

    .line 365
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 366
    if-eqz v2, :cond_56d

    .line 367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;[B)V

    .line 368
    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 369
    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "\r"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    const-string v6, "sm"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v6, "sm"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    :cond_50a
    :goto_50a
    const-string v2, "or"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    .line 6148
    iget-object v6, v6, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v7, "opi"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 384
    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    const-string v2, "pt"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v6}, Lcom/baidu/techain/e;->f()J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 387
    const-string v2, "device"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 389
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 390
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 391
    sget-object v2, Lcom/baidu/techain/b/e;->e:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 392
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_548
    :goto_548
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_595

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_55a
    .catchall {:try_start_4c2 .. :try_end_55a} :catchall_14f

    .line 394
    const/4 v4, 0x0

    .line 396
    :try_start_55b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_560
    .catch Ljava/lang/Throwable; {:try_start_55b .. :try_end_560} :catch_58f
    .catchall {:try_start_55b .. :try_end_560} :catchall_14f

    move-object v2, v3

    .line 400
    :goto_561
    if-eqz v2, :cond_548

    .line 401
    :try_start_563
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_548

    .line 357
    :catch_567
    move-exception v6

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_4c0

    .line 373
    :cond_56d
    const-string v2, "sm"

    const-string v6, ""

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v2, "sm"

    const-string v6, ""

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_50a

    .line 379
    :cond_57c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    if-nez v2, :cond_587

    .line 380
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 382
    :cond_587
    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v3, "hostPkgInfo is null"

    invoke-direct {v2, v3}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :catch_58f
    move-exception v2

    move-object v2, v4

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_561

    .line 404
    :cond_595
    const-string v2, "host_apps"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/techain/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "p/1/pls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    sget-boolean v4, Lcom/baidu/techain/ac/U;->sPidRegister:Z

    if-nez v4, :cond_5db

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v5}, Lcom/baidu/techain/e;->t()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/baidu/techain/e;->e(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/baidu/techain/e;->b(J)V

    .line 412
    const/4 v4, 0x1

    sput-boolean v4, Lcom/baidu/techain/ac/U;->sPidRegister:Z

    .line 414
    :cond_5db
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v5}, Lcom/baidu/techain/e;->r()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/baidu/techain/e;->d(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    const/4 v5, 0x1

    .line 417
    invoke-static {v4, v3, v2, v5}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_600
    .catchall {:try_start_563 .. :try_end_600} :catchall_14f

    .line 419
    const/4 v3, 0x0

    .line 421
    :try_start_601
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_606
    .catch Ljava/lang/Throwable; {:try_start_601 .. :try_end_606} :catch_61c
    .catchall {:try_start_601 .. :try_end_606} :catchall_14f

    .line 425
    :goto_606
    if-nez v2, :cond_622

    .line 426
    :try_start_608
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    if-nez v2, :cond_614

    .line 427
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 429
    :cond_614
    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v3, "response json is null"

    invoke-direct {v2, v3}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    :catch_61c
    move-exception v2

    move-object v2, v3

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_606

    .line 432
    :cond_622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    invoke-virtual {v3}, Lcom/baidu/techain/a/a;->a()Ljava/util/List;

    move-result-object v12

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "a="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 434
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 436
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 437
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 439
    const-string v3, "product"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 440
    const-string v4, "pt"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 441
    if-eqz v3, :cond_672

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_672

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_672

    .line 442
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v4, v5}, Lcom/baidu/techain/e;->a(Ljava/lang/String;J)V

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/techain/b/e;->j(Landroid/content/Context;)V

    .line 446
    :cond_672
    const-string v3, "plugin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 448
    if-nez v16, :cond_68e

    .line 449
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    if-nez v2, :cond_686

    .line 450
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 452
    :cond_686
    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v3, "plugin json is null"

    invoke-direct {v2, v3}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :cond_68e
    move-object/from16 v0, v16

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_9d9

    .line 456
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    .line 458
    :cond_698
    :goto_698
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d9

    .line 459
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 460
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 461
    const-string v2, "l"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 462
    const-string v2, "v"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->mCloudKeyMap:Ljava/util/Map;

    if-eqz v2, :cond_6cb

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->mCloudKeyMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_6cb
    const-string v2, "u"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 467
    const-string v2, "m"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 468
    const-string v2, "sm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    if-eqz v7, :cond_6e9

    .line 470
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 472
    :cond_6e9
    if-eqz v2, :cond_bf3

    .line 473
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 475
    :goto_6f0
    const-string v2, "o"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_74a

    const/4 v2, 0x1

    move v9, v2

    .line 476
    :goto_6fd
    const-string v2, "d"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_74d

    const/4 v2, 0x1

    .line 477
    :goto_709
    const-string v8, "r"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 478
    if-eqz v9, :cond_741

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    move-object/from16 v19, v0

    .line 7139
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "opi"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 7140
    move/from16 v0, v20

    if-le v8, v0, :cond_741

    .line 7141
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v20, v0

    const-string v21, "opi"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7142
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    :cond_741
    if-eqz v9, :cond_74f

    if-eqz v2, :cond_74f

    .line 482
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_748
    .catchall {:try_start_608 .. :try_end_748} :catchall_14f

    goto/16 :goto_698

    .line 475
    :cond_74a
    const/4 v2, 0x0

    move v9, v2

    goto :goto_6fd

    .line 476
    :cond_74d
    const/4 v2, 0x0

    goto :goto_709

    .line 487
    :cond_74f
    :try_start_74f
    new-instance v8, Landroid/content/pm/PackageInfo;

    invoke-direct {v8}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 488
    const-string v2, "p"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 489
    const-string v2, "v"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 490
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 491
    const-string v19, "n"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 492
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7a8

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7a8

    .line 493
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 495
    :cond_7a8
    const-string v19, "t"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 496
    iput-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 497
    const-string v2, "a"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 498
    if-eqz v19, :cond_86e

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_86e

    .line 499
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 500
    const/4 v2, 0x0

    :goto_7ca
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I
    :try_end_7cd
    .catch Ljava/lang/Throwable; {:try_start_74f .. :try_end_7cd} :catch_868
    .catchall {:try_start_74f .. :try_end_7cd} :catchall_14f

    move-result v21

    move/from16 v0, v21

    if-ge v2, v0, :cond_8fa

    .line 502
    :try_start_7d2
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 503
    if-eqz v21, :cond_85f

    .line 504
    new-instance v22, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v22 .. v22}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 505
    const-string v23, "n"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 506
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_828

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_828

    .line 507
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 509
    :cond_828
    move-object/from16 v0, v22

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 510
    const-string v23, "t"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 511
    const-string v23, "l"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 512
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_85f

    .line 513
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_85f
    .catch Ljava/lang/Throwable; {:try_start_7d2 .. :try_end_85f} :catch_863
    .catchall {:try_start_7d2 .. :try_end_85f} :catchall_14f

    .line 500
    :cond_85f
    :goto_85f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7ca

    .line 517
    :catch_863
    move-exception v21

    :try_start_864
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_867
    .catch Ljava/lang/Throwable; {:try_start_864 .. :try_end_867} :catch_868
    .catchall {:try_start_864 .. :try_end_867} :catchall_14f

    goto :goto_85f

    .line 526
    :catch_868
    move-exception v2

    const/4 v2, 0x0

    move-object v8, v2

    .line 527
    :try_start_86b
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 530
    :cond_86e
    :goto_86e
    new-instance v2, Lcom/baidu/techain/core/ApkInfo;

    invoke-direct/range {v2 .. v7}, Lcom/baidu/techain/core/ApkInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    if-eqz v9, :cond_912

    const/4 v4, 0x1

    :goto_876
    iput v4, v2, Lcom/baidu/techain/core/ApkInfo;->isOnce:I
    :try_end_878
    .catchall {:try_start_86b .. :try_end_878} :catchall_14f

    .line 533
    :try_start_878
    const-string v4, "pr"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/baidu/techain/core/ApkInfo;->priority:I
    :try_end_882
    .catch Ljava/lang/Throwable; {:try_start_878 .. :try_end_882} :catch_915
    .catchall {:try_start_878 .. :try_end_882} :catchall_14f

    .line 537
    :goto_882
    :try_start_882
    const-string v4, "mem"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_91b

    const/4 v4, 0x1

    :goto_88e
    iput-boolean v4, v2, Lcom/baidu/techain/core/ApkInfo;->isMem:Z

    .line 538
    if-eqz v8, :cond_894

    .line 539
    iput-object v8, v2, Lcom/baidu/techain/core/ApkInfo;->cloudPkgInfo:Landroid/content/pm/PackageInfo;

    .line 541
    :cond_894
    const-string v4, "e"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 542
    if-eqz v4, :cond_8ae

    .line 543
    const-string v5, "d"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 544
    const-string v6, "n"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 545
    iput v5, v2, Lcom/baidu/techain/core/ApkInfo;->duration:I

    .line 546
    iput v4, v2, Lcom/baidu/techain/core/ApkInfo;->network:I

    .line 548
    :cond_8ae
    const-string v4, "ext"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 549
    if-eqz v4, :cond_925

    .line 550
    const-string v5, "a"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 551
    const/4 v5, 0x1

    if-ne v4, v5, :cond_925

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v4}, Lcom/baidu/techain/e;->p()Ljava/util/List;

    move-result-object v5

    .line 556
    if-lez v3, :cond_925

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_925

    .line 557
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v6, v3, [I

    .line 559
    const/4 v3, 0x0

    move v4, v3

    :goto_8e4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_91e

    .line 560
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v6, v4
    :try_end_8f6
    .catchall {:try_start_882 .. :try_end_8f6} :catchall_14f

    .line 559
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_8e4

    .line 520
    :cond_8fa
    :try_start_8fa
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_86e

    .line 521
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/ActivityInfo;

    .line 522
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/ActivityInfo;

    iput-object v2, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_910
    .catch Ljava/lang/Throwable; {:try_start_8fa .. :try_end_910} :catch_868
    .catchall {:try_start_8fa .. :try_end_910} :catchall_14f

    goto/16 :goto_86e

    .line 531
    :cond_912
    const/4 v4, 0x0

    goto/16 :goto_876

    .line 535
    :catch_915
    move-exception v4

    const/4 v4, -0x1

    :try_start_917
    iput v4, v2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    goto/16 :goto_882

    .line 537
    :cond_91b
    const/4 v4, 0x0

    goto/16 :goto_88e

    .line 562
    :cond_91e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v3, v6}, Lcom/baidu/techain/e;->a([I)V

    .line 566
    :cond_925
    iput-object v10, v2, Lcom/baidu/techain/core/ApkInfo;->signMD5:Ljava/lang/String;

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/baidu/techain/core/ApkInfo;->startTime:J

    .line 568
    invoke-interface {v12, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "t="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", i="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 571
    if-ltz v4, :cond_9c1

    .line 573
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/techain/core/ApkInfo;

    .line 574
    iget-object v5, v2, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v6, v3, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/baidu/techain/b/e;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a8

    sget-object v5, Lcom/baidu/techain/core/d;->d:Ljava/util/List;

    if-eqz v5, :cond_970

    sget-object v5, Lcom/baidu/techain/core/d;->d:Ljava/util/List;

    if-eqz v5, :cond_9a8

    sget-object v5, Lcom/baidu/techain/core/d;->d:Ljava/util/List;

    iget v6, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    .line 577
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a8

    .line 579
    :cond_970
    iget v5, v3, Lcom/baidu/techain/core/ApkInfo;->priority:I

    iget v6, v2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-eq v5, v6, :cond_981

    .line 580
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    iget v6, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    iget v7, v2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    invoke-virtual {v5, v6, v7}, Lcom/baidu/techain/a/a;->c(II)V

    .line 582
    :cond_981
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    iget v3, v3, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v5, v3}, Lcom/baidu/techain/a/a;->e(I)Z

    move-result v3

    if-nez v3, :cond_9a3

    .line 583
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->mDownloadPluginsList:Ljava/util/List;

    if-eqz v3, :cond_9a3

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->mDownloadPluginsList:Ljava/util/List;

    iget v2, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_9a3
    :goto_9a3
    invoke-interface {v12, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_698

    .line 589
    :cond_9a8
    iget v5, v3, Lcom/baidu/techain/core/ApkInfo;->priority:I

    iget v6, v2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-eq v5, v6, :cond_9bd

    .line 590
    iget v5, v2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    iput v5, v3, Lcom/baidu/techain/core/ApkInfo;->priority:I

    .line 591
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    iget v6, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    iget v2, v2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    invoke-virtual {v5, v6, v2}, Lcom/baidu/techain/a/a;->c(II)V

    .line 594
    :cond_9bd
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a3

    .line 603
    :cond_9c1
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->mDownloadPluginsList:Ljava/util/List;

    if-eqz v3, :cond_698

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->mDownloadPluginsList:Ljava/util/List;

    iget v2, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_698

    .line 610
    :cond_9d9
    sget-object v2, Lcom/baidu/techain/core/d;->d:Ljava/util/List;

    if-eqz v2, :cond_9e2

    .line 611
    sget-object v2, Lcom/baidu/techain/core/d;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 614
    :cond_9e2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 617
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9f1
    :goto_9f1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/techain/core/ApkInfo;

    .line 618
    iget-object v4, v2, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-interface {v15, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f1

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->mUnloadPluginsList:Ljava/util/List;

    if-eqz v4, :cond_a18

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->mUnloadPluginsList:Ljava/util/List;

    iget v5, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_a18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/techain/ac/U;->forHostAPP:Lcom/baidu/techain/core/d;

    iget-object v2, v2, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/baidu/techain/core/d;->a(Ljava/lang/String;)V

    goto :goto_9f1

    .line 626
    :cond_a22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/e;->c(Landroid/content/Context;)V

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    .line 630
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/core/g;->a(Landroid/content/Context;)Lcom/baidu/techain/core/g;

    move-result-object v5

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v2}, Lcom/baidu/techain/e;->q()Ljava/util/List;

    move-result-object v3

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v2}, Lcom/baidu/techain/e;->p()Ljava/util/List;

    move-result-object v4

    .line 635
    const/4 v2, 0x0

    :goto_a51
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_a6b

    .line 636
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a68

    .line 637
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_a68
    add-int/lit8 v2, v2, 0x1

    goto :goto_a51

    .line 640
    :cond_a6b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 641
    invoke-interface {v6, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 642
    invoke-interface {v6, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 643
    new-instance v2, Lcom/baidu/techain/ac/U$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/baidu/techain/ac/U$1;-><init>(Lcom/baidu/techain/ac/U;Ljava/util/List;)V

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 681
    const/4 v2, 0x0

    move v4, v2

    :goto_a82
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_b90

    .line 682
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/techain/core/ApkInfo;

    .line 683
    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b78

    .line 684
    iget-object v3, v2, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/baidu/techain/core/g;->d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;

    move-result-object v3

    .line 685
    if-nez v3, :cond_b17

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    iget v7, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v3, v7}, Lcom/baidu/techain/a/a;->g(I)I

    move-result v7

    .line 688
    const/4 v3, 0x1

    .line 689
    const/4 v8, 0x3

    if-ne v7, v8, :cond_aae

    .line 690
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 691
    const/4 v3, 0x0

    .line 693
    :cond_aae
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/techain/ac/U;->preference:Lcom/baidu/techain/e;

    invoke-virtual {v7}, Lcom/baidu/techain/e;->d()Z

    move-result v7

    if-eqz v7, :cond_b1c

    if-eqz v3, :cond_b1c

    .line 694
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, ".b_techain"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_ad2

    .line 696
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 699
    :cond_ad2
    new-instance v7, Ljava/io/File;

    iget-object v8, v2, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 701
    invoke-static {v8}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_b02

    .line 702
    invoke-static {v7, v8}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;Ljava/io/File;)V

    .line 704
    :cond_b02
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    iget v9, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v3, v9, v7, v8}, Lcom/baidu/techain/c;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 718
    :cond_b0b
    :goto_b0b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->forHostAPP:Lcom/baidu/techain/core/d;

    iget v7, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    iget-object v2, v2, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v2, v8}, Lcom/baidu/techain/core/d;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    .line 681
    :cond_b17
    :goto_b17
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_a82

    .line 707
    :cond_b1c
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/techain/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, ".b_techain"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b0b

    .line 709
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 710
    invoke-static {v7}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_b0b

    .line 711
    invoke-static {v7}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 712
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v3

    .line 713
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    goto :goto_b0b

    .line 720
    :cond_b78
    invoke-interface {v14, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b17

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/techain/ac/U;->loadedPluginDB:Lcom/baidu/techain/a/a;

    iget v7, v2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v3, v7}, Lcom/baidu/techain/a/a;->e(I)Z

    move-result v3

    if-nez v3, :cond_b17

    .line 723
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/techain/ac/U;->handlePluginUpgrade(Lcom/baidu/techain/core/ApkInfo;)V

    goto :goto_b17

    .line 727
    :cond_b90
    monitor-exit v11
    :try_end_b91
    .catchall {:try_start_917 .. :try_end_b91} :catchall_14f

    .line 728
    :try_start_b91
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    if-nez v2, :cond_b9c

    .line 729
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/techain/ac/U;->mEndReason:I

    .line 731
    :cond_b9c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/techain/ac/U;->handleThreadEnd(Ljava/lang/String;)V
    :try_end_ba2
    .catch Ljava/lang/Throwable; {:try_start_b91 .. :try_end_ba2} :catch_152
    .catchall {:try_start_b91 .. :try_end_ba2} :catchall_bbd

    .line 755
    :try_start_ba2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/techain/ac/U;->mOut:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z

    if-eqz v2, :cond_b

    .line 756
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/techain/ac/U;->sOutGoing:Z
    :try_end_baf
    .catch Ljava/lang/Throwable; {:try_start_ba2 .. :try_end_baf} :catch_bb1
    .catchall {:try_start_ba2 .. :try_end_baf} :catchall_67

    goto/16 :goto_b

    .line 759
    :catch_bb1
    move-exception v2

    :try_start_bb2
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_bb5
    .catchall {:try_start_bb2 .. :try_end_bb5} :catchall_67

    goto/16 :goto_b

    .line 736
    :catch_bb7
    move-exception v3

    :try_start_bb8
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_bbb
    .catchall {:try_start_bb8 .. :try_end_bbb} :catchall_bbd

    goto/16 :goto_15a

    .line 754
    :catchall_bbd
    move-exception v2

    .line 755
    :try_start_bbe
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/techain/ac/U;->mOut:Z

    if-eqz v3, :cond_bcb

    sget-boolean v3, Lcom/baidu/techain/ac/U;->sOutGoing:Z

    if-eqz v3, :cond_bcb

    .line 756
    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/techain/ac/U;->sOutGoing:Z
    :try_end_bcb
    .catch Ljava/lang/Throwable; {:try_start_bbe .. :try_end_bcb} :catch_bee
    .catchall {:try_start_bbe .. :try_end_bcb} :catchall_67

    .line 760
    :cond_bcb
    :goto_bcb
    :try_start_bcb
    throw v2
    :try_end_bcc
    .catchall {:try_start_bcb .. :try_end_bcc} :catchall_67

    .line 742
    :cond_bcc
    :try_start_bcc
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aes is fail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_be6

    .line 743
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/techain/ac/U;->mEndReason:I
    :try_end_bde
    .catch Ljava/lang/Throwable; {:try_start_bcc .. :try_end_bde} :catch_be0
    .catchall {:try_start_bcc .. :try_end_bde} :catchall_bbd

    goto/16 :goto_171

    .line 750
    :catch_be0
    move-exception v3

    :try_start_be1
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_be4
    .catchall {:try_start_be1 .. :try_end_be4} :catchall_bbd

    goto/16 :goto_17a

    .line 745
    :cond_be6
    const/16 v3, 0xb

    :try_start_be8
    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/techain/ac/U;->mEndReason:I
    :try_end_bec
    .catch Ljava/lang/Throwable; {:try_start_be8 .. :try_end_bec} :catch_be0
    .catchall {:try_start_be8 .. :try_end_bec} :catchall_bbd

    goto/16 :goto_171

    .line 759
    :catch_bee
    move-exception v3

    :try_start_bef
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_bf2
    .catchall {:try_start_bef .. :try_end_bf2} :catchall_67

    goto :goto_bcb

    :cond_bf3
    move-object v10, v2

    goto/16 :goto_6f0
.end method
