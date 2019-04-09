.class final Lcom/iflytek/cloud/thirdparty/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/g;


# instance fields
.field private b:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iflytek/cloud/thirdparty/g;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/g;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/g;->a:Lcom/iflytek/cloud/thirdparty/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iflytek/cloud/thirdparty/g;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/g;->a:Lcom/iflytek/cloud/thirdparty/g;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_f
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_20} :catch_25

    :goto_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_9

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .registers 6

    const-string v0, "134e3265829ff82daf16e7b740a600b5"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/g;->b:Ljavax/crypto/spec/SecretKeySpec;

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v0, 0x10

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_f
    array-length v3, v1

    if-ge v0, v3, :cond_15

    array-length v3, v2

    if-lt v0, v3, :cond_4b

    :cond_15
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/g;->b:Ljavax/crypto/spec/SecretKeySpec;

    :cond_1e
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "0102030405060708"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/g;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Lcom/iflytek/cloud/thirdparty/e;

    invoke-direct {v1}, Lcom/iflytek/cloud/thirdparty/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/g;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_4b
    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method
