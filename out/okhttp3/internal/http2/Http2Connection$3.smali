.class Lokhttp3/internal/http2/Http2Connection$3;
.super Lokhttp3/internal/NamedRunnable;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lokhttp3/internal/http2/Ping;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/http2/Ping;)V
    .registers 8

    .prologue
    .line 352
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$reply:Z

    iput p5, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$payload1:I

    iput p6, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$payload2:I

    iput-object p7, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$ping:Lokhttp3/internal/http2/Ping;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$reply:Z

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$payload1:I

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$payload2:I

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$ping:Lokhttp3/internal/http2/Ping;

    invoke-virtual {v0, v1, v2, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZIILokhttp3/internal/http2/Ping;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 358
    :goto_d
    return-void

    .line 356
    :catch_e
    move-exception v0

    goto :goto_d
.end method