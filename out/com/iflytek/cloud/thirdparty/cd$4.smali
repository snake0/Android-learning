.class Lcom/iflytek/cloud/thirdparty/cd$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/by$a;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cd;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/cd;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cd$4;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$4;->a:Lcom/iflytek/cloud/thirdparty/cd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cd;->c(Lcom/iflytek/cloud/thirdparty/cd;Z)Z

    const-string v0, "CollectInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/by;[B)V
    .registers 8

    const/4 v4, 0x0

    if-eqz p2, :cond_25

    :try_start_3
    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/bu;->c([B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0a\u4f20\u6570\u636e\u7ed3\u679c\u8fd4\u56de\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_25} :catch_2b
    .catchall {:try_start_3 .. :try_end_25} :catchall_35

    :cond_25
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$4;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/thirdparty/cd;->c(Lcom/iflytek/cloud/thirdparty/cd;Z)Z

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    :try_start_2c
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_35

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$4;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/thirdparty/cd;->c(Lcom/iflytek/cloud/thirdparty/cd;Z)Z

    goto :goto_2a

    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cd$4;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v1, v4}, Lcom/iflytek/cloud/thirdparty/cd;->c(Lcom/iflytek/cloud/thirdparty/cd;Z)Z

    throw v0
.end method
