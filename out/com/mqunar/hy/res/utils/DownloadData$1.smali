.class Lcom/mqunar/hy/res/utils/DownloadData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/utils/DownloadData;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/utils/DownloadData;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    # invokes: Lcom/mqunar/hy/res/utils/DownloadData;->downloadFail()V
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/DownloadData;->access$000(Lcom/mqunar/hy/res/utils/DownloadData;)V

    .line 153
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_d

    .line 158
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    # invokes: Lcom/mqunar/hy/res/utils/DownloadData;->downloadFail()V
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/DownloadData;->access$000(Lcom/mqunar/hy/res/utils/DownloadData;)V

    .line 191
    :goto_c
    return-void

    .line 162
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres DownloadData downloadSucess url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    iget-object v1, v1, Lcom/mqunar/hy/res/utils/DownloadData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const/16 v0, 0x400

    :try_start_2b
    new-array v0, v0, [B

    .line 167
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    iget-object v3, v3, Lcom/mqunar/hy/res/utils/DownloadData;->savefile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 169
    :goto_3e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_54

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_49} :catch_4a

    goto :goto_3e

    .line 186
    :catch_4a
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    # invokes: Lcom/mqunar/hy/res/utils/DownloadData;->downloadFail()V
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/DownloadData;->access$000(Lcom/mqunar/hy/res/utils/DownloadData;)V

    goto :goto_c

    .line 172
    :cond_54
    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 175
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    # getter for: Lcom/mqunar/hy/res/utils/DownloadData;->time:D
    invoke-static {v3}, Lcom/mqunar/hy/res/utils/DownloadData;->access$100(Lcom/mqunar/hy/res/utils/DownloadData;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    # setter for: Lcom/mqunar/hy/res/utils/DownloadData;->time:D
    invoke-static {v0, v1, v2}, Lcom/mqunar/hy/res/utils/DownloadData;->access$102(Lcom/mqunar/hy/res/utils/DownloadData;D)D

    .line 176
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    # getter for: Lcom/mqunar/hy/res/utils/DownloadData;->time:D
    invoke-static {v1}, Lcom/mqunar/hy/res/utils/DownloadData;->access$100(Lcom/mqunar/hy/res/utils/DownloadData;)D

    move-result-wide v1

    const/4 v3, 0x1

    # invokes: Lcom/mqunar/hy/res/utils/DownloadData;->statistics(DZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/hy/res/utils/DownloadData;->access$200(Lcom/mqunar/hy/res/utils/DownloadData;DZ)V

    .line 178
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    iget-object v0, v0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

    if-nez v0, :cond_96

    .line 179
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    iget-object v0, v0, Lcom/mqunar/hy/res/utils/DownloadData;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    iget-object v1, v1, Lcom/mqunar/hy/res/utils/DownloadData;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    :goto_8d
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    const-string v1, "download_end"

    # setter for: Lcom/mqunar/hy/res/utils/DownloadData;->downloadState:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mqunar/hy/res/utils/DownloadData;->access$302(Lcom/mqunar/hy/res/utils/DownloadData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_c

    .line 182
    :cond_96
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    iget-object v0, v0, Lcom/mqunar/hy/res/utils/DownloadData;->downloadDataCallback:Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/DownloadData$1;->this$0:Lcom/mqunar/hy/res/utils/DownloadData;

    invoke-interface {v0, v1}, Lcom/mqunar/hy/res/utils/DownloadData$DownloadDataCallback;->onDownloadSucc(Lcom/mqunar/hy/res/utils/DownloadData;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_9f} :catch_4a

    goto :goto_8d
.end method
