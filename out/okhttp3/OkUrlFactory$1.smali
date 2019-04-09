.class Lokhttp3/OkUrlFactory$1;
.super Ljava/net/URLStreamHandler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lokhttp3/OkUrlFactory;

.field final synthetic val$protocol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lokhttp3/OkUrlFactory;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 90
    iput-object p1, p0, Lokhttp3/OkUrlFactory$1;->this$0:Lokhttp3/OkUrlFactory;

    iput-object p2, p0, Lokhttp3/OkUrlFactory$1;->val$protocol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lokhttp3/OkUrlFactory$1;->val$protocol:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x50

    .line 101
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lokhttp3/OkUrlFactory$1;->val$protocol:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x1bb

    goto :goto_c

    .line 102
    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lokhttp3/OkUrlFactory$1;->this$0:Lokhttp3/OkUrlFactory;

    invoke-virtual {v0, p1}, Lokhttp3/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lokhttp3/OkUrlFactory$1;->this$0:Lokhttp3/OkUrlFactory;

    invoke-virtual {v0, p1, p2}, Lokhttp3/OkUrlFactory;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
