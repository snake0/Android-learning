.class Lcom/mqunar/hy/res/utils/DownloadManager$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/mqunar/hy/res/utils/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/mqunar/hy/res/utils/DownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/utils/DownloadManager;-><init>(Lcom/mqunar/hy/res/utils/DownloadManager$1;)V

    sput-object v0, Lcom/mqunar/hy/res/utils/DownloadManager$SingletonHolder;->instance:Lcom/mqunar/hy/res/utils/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mqunar/hy/res/utils/DownloadManager;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/mqunar/hy/res/utils/DownloadManager$SingletonHolder;->instance:Lcom/mqunar/hy/res/utils/DownloadManager;

    return-object v0
.end method
