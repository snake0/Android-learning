.class public Lcom/mqunar/yvideo/YVideoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_SIZE:I = 0x280


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/yvideo/YVideoManager$1;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mqunar/yvideo/YVideoManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/yvideo/YVideoManager;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mqunar/yvideo/YVideoManager;->canCompress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canCompress(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 25
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 26
    invoke-virtual {v2, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    move v0, v1

    .line 28
    :goto_a
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 29
    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 30
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string v4, "avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 32
    const/4 v1, 0x1

    .line 35
    :cond_29
    return v1

    .line 28
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static getInstance()Lcom/mqunar/yvideo/YVideoManager;
    .registers 1

    .prologue
    .line 167
    # getter for: Lcom/mqunar/yvideo/YVideoManager$InstanceHolder;->INSTANCE:Lcom/mqunar/yvideo/YVideoManager;
    invoke-static {}, Lcom/mqunar/yvideo/YVideoManager$InstanceHolder;->access$100()Lcom/mqunar/yvideo/YVideoManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compressVideo(Ljava/lang/String;Ljava/lang/String;ZLcom/mqunar/yvideo/CompressCallBack;)V
    .registers 12

    .prologue
    .line 39
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/mqunar/yvideo/YVideoManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/yvideo/YVideoManager$1;-><init>(Lcom/mqunar/yvideo/YVideoManager;Ljava/lang/String;Ljava/lang/String;Lcom/mqunar/yvideo/CompressCallBack;Z)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method
