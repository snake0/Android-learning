.class Lcom/mqunar/hy/res/libtask/NetRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEADER_DEFAULTVALUE_USERAGENT:Ljava/lang/String; = "QSpiderAndroid"

.field private static final HEADER_KEY_USERAGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field content:[B

.field public contentType:Ljava/lang/String;

.field public handler:Landroid/os/Handler$Callback;

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field public id:I

.field stream:Ljava/io/InputStream;

.field public total:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Landroid/os/Handler$Callback;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->url:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->stream:Ljava/io/InputStream;

    .line 50
    iput-object p3, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    .line 51
    invoke-direct {p0}, Lcom/mqunar/hy/res/libtask/NetRequest;->addDefaultUserAgent()V

    .line 52
    invoke-direct {p0}, Lcom/mqunar/hy/res/libtask/NetRequest;->generateId()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLandroid/os/Handler$Callback;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->url:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->content:[B

    .line 42
    iput-object p3, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    .line 43
    invoke-direct {p0}, Lcom/mqunar/hy/res/libtask/NetRequest;->addDefaultUserAgent()V

    .line 44
    invoke-direct {p0}, Lcom/mqunar/hy/res/libtask/NetRequest;->generateId()V

    .line 45
    return-void
.end method

.method private addDefaultUserAgent()V
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->header:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->header:Ljava/util/Map;

    .line 35
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->header:Ljava/util/Map;

    const-string v1, "User-Agent"

    const-string v2, "QSpiderAndroid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_14
    return-void
.end method

.method private generateId()V
    .registers 2

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->id:I

    .line 79
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    :cond_c
    :goto_c
    return-void

    .line 86
    :cond_d
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "content-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->contentType:Ljava/lang/String;

    goto :goto_c
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_16

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 58
    new-instance v0, Lcom/mqunar/hy/res/libtask/NetRequest$1;

    invoke-direct {v0, p0}, Lcom/mqunar/hy/res/libtask/NetRequest$1;-><init>(Lcom/mqunar/hy/res/libtask/NetRequest;)V

    .line 67
    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/NetRequest$1;->start()V

    .line 75
    :cond_16
    :goto_16
    return-void

    .line 70
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_16

    .line 71
    :catch_1d
    move-exception v0

    goto :goto_16
.end method

.method public hasHeader()Z
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequest;->header:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
