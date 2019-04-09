.class Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public file:Ljava/io/File;

.field public header:[B

.field final synthetic this$0:Lcom/baidu/tts/loopj/SimpleMultipartEntity;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/loopj/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 182
    iput-object p1, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->this$0:Lcom/baidu/tts/loopj/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->header:[B

    .line 184
    iput-object p3, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/baidu/tts/loopj/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 177
    iput-object p1, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->this$0:Lcom/baidu/tts/loopj/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    :cond_f
    invoke-direct {p0, p2, p5, p4}, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->header:[B

    .line 179
    iput-object p3, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    .line 180
    return-void
.end method

.method private createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9

    .prologue
    .line 188
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    :try_start_5
    iget-object v0, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->this$0:Lcom/baidu/tts/loopj/SimpleMultipartEntity;

    # getter for: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->boundaryLine:[B
    invoke-static {v0}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$000(Lcom/baidu/tts/loopj/SimpleMultipartEntity;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 193
    iget-object v0, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->this$0:Lcom/baidu/tts/loopj/SimpleMultipartEntity;

    # invokes: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
    invoke-static {v0, p1, p2}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$100(Lcom/baidu/tts/loopj/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 194
    iget-object v0, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->this$0:Lcom/baidu/tts/loopj/SimpleMultipartEntity;

    # invokes: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B
    invoke-static {v0, p3}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$200(Lcom/baidu/tts/loopj/SimpleMultipartEntity;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 195
    # getter for: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B
    invoke-static {}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$300()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 196
    # getter for: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->CR_LF:[B
    invoke-static {}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$400()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2e} :catch_33

    .line 201
    :goto_2e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 197
    :catch_33
    move-exception v0

    .line 199
    sget-object v2, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v3, "SimpleMultipartEntity"

    const-string v4, "createHeader ByteArrayOutputStream exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method


# virtual methods
.method public getTotalLength()J
    .registers 5

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    # getter for: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->CR_LF:[B
    invoke-static {}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$400()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 206
    iget-object v2, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->header:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 211
    iget-object v0, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->this$0:Lcom/baidu/tts/loopj/SimpleMultipartEntity;

    iget-object v1, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->header:[B

    array-length v1, v1

    int-to-long v1, v1

    # invokes: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->updateProgress(J)V
    invoke-static {v0, v1, v2}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$500(Lcom/baidu/tts/loopj/SimpleMultipartEntity;J)V

    .line 213
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 214
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 216
    :goto_19
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iget-object v3, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->this$0:Lcom/baidu/tts/loopj/SimpleMultipartEntity;

    int-to-long v4, v2

    # invokes: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->updateProgress(J)V
    invoke-static {v3, v4, v5}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$500(Lcom/baidu/tts/loopj/SimpleMultipartEntity;J)V

    goto :goto_19

    .line 220
    :cond_2b
    # getter for: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->CR_LF:[B
    invoke-static {}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$400()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 221
    iget-object v1, p0, Lcom/baidu/tts/loopj/SimpleMultipartEntity$FilePart;->this$0:Lcom/baidu/tts/loopj/SimpleMultipartEntity;

    # getter for: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->CR_LF:[B
    invoke-static {}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$400()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    # invokes: Lcom/baidu/tts/loopj/SimpleMultipartEntity;->updateProgress(J)V
    invoke-static {v1, v2, v3}, Lcom/baidu/tts/loopj/SimpleMultipartEntity;->access$500(Lcom/baidu/tts/loopj/SimpleMultipartEntity;J)V

    .line 222
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 223
    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 224
    return-void
.end method
