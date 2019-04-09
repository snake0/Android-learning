.class final Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private proceed:Z

.field final synthetic this$0:Lokhttp3/internal/huc/OkHttpURLConnection;


# direct methods
.method constructor <init>(Lokhttp3/internal/huc/OkHttpURLConnection;)V
    .registers 2

    .prologue
    .line 589
    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6

    .prologue
    .line 601
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 604
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->urlFilter:Lokhttp3/internal/URLFilter;

    if-eqz v0, :cond_19

    .line 605
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->urlFilter:Lokhttp3/internal/URLFilter;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v2}, Lokhttp3/internal/URLFilter;->checkURLPermitted(Ljava/net/URL;)V

    .line 608
    :cond_19
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    # getter for: Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 609
    :try_start_20
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->connectPending:Z

    .line 610
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    iput-object v3, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->proxy:Ljava/net/Proxy;

    .line 611
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Connection;->handshake()Lokhttp3/Handshake;

    move-result-object v3

    iput-object v3, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->handshake:Lokhttp3/Handshake;

    .line 612
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    # getter for: Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_5f

    .line 615
    :goto_4a
    :try_start_4a
    iget-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->proceed:Z

    if-nez v0, :cond_62

    .line 616
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    # getter for: Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_57} :catch_58
    .catchall {:try_start_4a .. :try_end_57} :catchall_5f

    goto :goto_4a

    .line 618
    :catch_58
    move-exception v0

    .line 619
    :try_start_59
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 621
    :catchall_5f
    move-exception v0

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_5f

    throw v0

    :cond_62
    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_5f

    .line 624
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lokhttp3/internal/huc/OutputStreamRequestBody;

    if-eqz v0, :cond_9a

    .line 625
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/huc/OutputStreamRequestBody;

    .line 626
    invoke-virtual {v0, v1}, Lokhttp3/internal/huc/OutputStreamRequestBody;->prepareToSendRequest(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    .line 629
    :goto_75
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    # getter for: Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 632
    :try_start_80
    iget-object v2, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    iput-object v0, v2, Lokhttp3/internal/huc/OkHttpURLConnection;->networkResponse:Lokhttp3/Response;

    .line 633
    iget-object v2, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v3

    # setter for: Lokhttp3/internal/huc/OkHttpURLConnection;->url:Ljava/net/URL;
    invoke-static {v2, v3}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$102(Lokhttp3/internal/huc/OkHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;

    .line 634
    monitor-exit v1

    .line 636
    return-object v0

    .line 634
    :catchall_97
    move-exception v0

    monitor-exit v1
    :try_end_99
    .catchall {:try_start_80 .. :try_end_99} :catchall_97

    throw v0

    :cond_9a
    move-object v0, v1

    goto :goto_75
.end method

.method public proceed()V
    .registers 3

    .prologue
    .line 594
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    # getter for: Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 595
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->proceed:Z

    .line 596
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    # getter for: Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 597
    monitor-exit v1

    .line 598
    return-void

    .line 597
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v0
.end method
