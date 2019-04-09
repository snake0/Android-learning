.class Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private downloadData:Lcom/mqunar/hy/res/utils/DownloadData;

.field final synthetic this$0:Lcom/mqunar/hy/res/utils/DownloadManager;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mqunar/hy/res/utils/DownloadManager;Ljava/lang/String;Lcom/mqunar/hy/res/utils/DownloadData;)V
    .registers 4

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->this$0:Lcom/mqunar/hy/res/utils/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->url:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->downloadData:Lcom/mqunar/hy/res/utils/DownloadData;

    .line 189
    return-void
.end method

.method static synthetic access$200(Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;)Lcom/mqunar/hy/res/utils/DownloadData;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->downloadData:Lcom/mqunar/hy/res/utils/DownloadData;

    return-object v0
.end method


# virtual methods
.method public getDownloadData()Lcom/mqunar/hy/res/utils/DownloadData;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->downloadData:Lcom/mqunar/hy/res/utils/DownloadData;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadManager$DownloadItem;->url:Ljava/lang/String;

    return-object v0
.end method
