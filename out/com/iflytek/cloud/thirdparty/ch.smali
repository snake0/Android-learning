.class public Lcom/iflytek/cloud/thirdparty/ch;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/iflytek/msc/MSCSessionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x277f

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_11
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_3 .. :try_end_11} :catch_11

    :catch_11
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    :goto_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    :try_start_1c
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ch;->a:Z

    invoke-direct {p0, p2}, Lcom/iflytek/cloud/thirdparty/ch;->a(Ljava/lang/String;)V
    :try_end_21
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1c .. :try_end_21} :catch_11

    goto :goto_1a
.end method

.method private a([BLcom/iflytek/msc/MSCSessionInfo;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget v1, p2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v1, :cond_14

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_14
    const-string v1, "ret"

    iget v2, p2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1b} :catch_20

    :goto_1b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_20
    move-exception v1

    const-string v1, "face result add errorinfo exception"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSC isLoaded\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    const-string v0, "MSCSessionBegin"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QIFDInit([BLjava/lang/Object;)V

    :goto_3c
    const-string v0, "SessionBeginEnd"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QIFDINIT INIT FAIL, ERRORCODE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    :cond_61
    :goto_61
    return-void

    :cond_62
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v2, v0}, Lcom/iflytek/msc/MSC;->QIFDInit([BLjava/lang/Object;)V

    goto :goto_3c

    :cond_68
    const-string v0, "QIFDINIT INIT SUCCESS"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    goto :goto_61
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_17

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/iflytek/cloud/util/VerifierUtil;->ARGB2Gray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ch;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, "Method detectARGB:null parameter or not ARGB bitmap"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_16
.end method

.method public a([BIIII)Ljava/lang/String;
    .registers 14

    const/4 v7, 0x0

    if-eqz p1, :cond_c

    if-lez p2, :cond_c

    if-lez p3, :cond_c

    if-ltz p5, :cond_c

    const/4 v0, 0x3

    if-le p5, v0, :cond_13

    :cond_c
    const-string v0, "Method trackNV21:invalid parameters"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    move-object v0, v7

    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    const-string v0, "LastDataFlag"

    invoke-static {v0, v7}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, p1

    iget-object v6, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/iflytek/msc/MSC;->QIFDMultitracker([BIIIIILjava/lang/Object;)[B

    move-result-object v0

    const-string v1, "GetNotifyResult"

    invoke-static {v1, v7}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ch;->a([BLcom/iflytek/msc/MSCSessionInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public a()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ch;->a:Z

    if-nez v0, :cond_31

    const-string v0, "QIFDFINIT"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v0, "SessionEndBegin"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/MSC;->QIFDFini()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSC.QIFDFini result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v0, "SessionEndEnd"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ch;->a:Z

    :cond_31
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_f
    const-string v1, "Method detectGray:null parameter or not gray bitmap"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    :goto_14
    return-object v0

    :cond_15
    new-instance v1, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v1}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    const-string v1, "LastDataFlag"

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iflytek/cloud/util/VerifierUtil;->getBitmapsize(Landroid/graphics/Bitmap;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {p1, v1, v2}, Lcom/iflytek/msc/MSC;->QIFDFacedetect(Landroid/graphics/Bitmap;ILjava/lang/Object;)[B

    move-result-object v1

    const-string v2, "GetNotifyResult"

    invoke-static {v2, v0}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ch;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/ch;->a([BLcom/iflytek/msc/MSCSessionInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method
