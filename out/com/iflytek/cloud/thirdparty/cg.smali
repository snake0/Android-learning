.class public Lcom/iflytek/cloud/thirdparty/cg;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "xiaoyan"

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cg;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cg;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/iflytek/cloud/thirdparty/be;)I
    .registers 2

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1388

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0xfa0

    goto :goto_a
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string v0, "null"

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "os.imsi"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "os.imei"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3a

    const-string v0, "net.mac"

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_46
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    if-nez p0, :cond_b

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2c

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_b
    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "net_type"

    sget-object v2, Lcom/iflytek/cloud/thirdparty/cg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iflytek/cloud/thirdparty/cg;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "timeout"

    const-string v2, "20000"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "auth"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "msc.ver"

    invoke-static {}, Lcom/iflytek/cloud/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "mac"

    const-string v3, "net.mac"

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "dvc"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "unique_id"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ca;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msc.lat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;

    move-result-object v3

    const-string v4, "msc.lat"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/br;->a(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "msc.lng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;

    move-result-object v3

    const-string v4, "msc.lng"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/br;->a(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->b(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->b(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cf;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "cloud_grammar"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->b(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "language"

    const-string v2, "zh_cn"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "accent"

    const-string v2, "mandarin"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "result_type"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "rse"

    invoke-virtual {p2}, Lcom/iflytek/cloud/thirdparty/be;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "text_encoding"

    invoke-virtual {p2}, Lcom/iflytek/cloud/thirdparty/be;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ssm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "msc.skin"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_110

    const-string v1, "subject"

    const-string v2, "iat"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_56
    invoke-virtual {p2}, Lcom/iflytek/cloud/thirdparty/be;->t()I

    move-result v1

    const-string v2, "auf=audio/L16;rate"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x3e80

    if-ne v1, v2, :cond_119

    const-string v1, "aue"

    const-string v2, "speex-wb"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_6e
    const-string v1, "vad_bos"

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/cg;->a(Lcom/iflytek/cloud/thirdparty/be;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "vad_eos"

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/cg;->b(Lcom/iflytek/cloud/thirdparty/be;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "dvc_info"

    invoke-virtual {v0, v1, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_106

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "dvc"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "unique_id"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ca;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msc.lat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;

    move-result-object v3

    const-string v4, "msc.lat"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/br;->a(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "msc.lng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;

    move-result-object v3

    const-string v4, "msc.lng"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/br;->a(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/bp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_agent"

    invoke-virtual {v0, v3, v1, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "device_type"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->b(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    :cond_106
    sget-object v1, Lcom/iflytek/cloud/thirdparty/cf;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_110
    const-string v1, "subject"

    const-string v2, "asr"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_56

    :cond_119
    const-string v1, "aue"

    const-string v2, "speex"

    invoke-virtual {v0, v1, v2, v5}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6e
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 6

    const/4 v2, 0x0

    const-string v0, "net_type"

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cg;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "net_type"

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1c
    return-void

    :cond_1d
    if-nez p0, :cond_27

    const-string v0, "net_type"

    const-string v1, "none"

    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1c

    :cond_27
    :try_start_27
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_5a

    const-string v0, "net_type"

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_3d} :catch_73

    goto :goto_1c

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendNetProxyParam exceptoin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    goto :goto_1c

    :cond_5a
    :try_start_5a
    const-string v1, "net_type"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bz;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bz;->b(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "net_subtype"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ce;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_72
    .catch Ljava/lang/SecurityException; {:try_start_5a .. :try_end_72} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_72} :catch_73

    goto :goto_1c

    :catch_73
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method private static a(Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 5

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->none:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    if-ne v0, v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "/sdcard/msc/msc.log"

    :cond_17
    const/4 v1, -0x1

    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v2

    sget-object v3, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->detail:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    if-ne v2, v3, :cond_4b

    const/16 v1, 0x1f

    :cond_22
    :goto_22
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bv;->b(Ljava/lang/String;)V

    const-string v2, "log"

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lvl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "output"

    const-string v1, "1"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_4b
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v2

    sget-object v3, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->normal:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    if-ne v2, v3, :cond_56

    const/16 v1, 0xf

    goto :goto_22

    :cond_56
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v2

    sget-object v3, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->low:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    if-ne v2, v3, :cond_22

    const/4 v1, 0x7

    goto :goto_22
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    const-string v0, "sms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "iat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static b(Lcom/iflytek/cloud/thirdparty/be;)I
    .registers 2

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/be;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x708

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x2bc

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->b(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "result_type"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rse"

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text_encoding"

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ssm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "subject"

    const-string v2, "ivp"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->t()I

    move-result v1

    const-string v2, "auf=audio/L16;rate"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x3e80

    if-ne v1, v2, :cond_66

    const-string v1, "aue"

    const-string v2, "speex-wb;10"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4e
    const-string v1, "vad_bos"

    const-string v2, "3000"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "vad_eos"

    const-string v2, "700"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cf;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_66
    const-string v1, "aue"

    const-string v2, "speex"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4e
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->b(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "sub"

    const-string v2, "mfv"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "prot_ver"

    const-string v2, "50"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "mver"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "server_url"

    const-string v2, "http://imfv.openspeech.cn/msp.do"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "sst"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "scene_mode"

    const-string v2, "vfy"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_40
    sget-object v1, Lcom/iflytek/cloud/thirdparty/cf;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    const-string v1, "scene_mode"

    const-string v2, "gen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_40
.end method

.method public static b(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 12

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    if-nez p0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/br;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_e
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v4, :pswitch_data_e8

    move v0, v1

    :goto_35
    const-string v7, "mmlc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MCC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t MNC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t phoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t LAC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\t CID = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a3} :catch_e1

    :goto_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get mmlc time cost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v1, v4, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_c1
    :try_start_c1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    goto/16 :goto_35

    :pswitch_d1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_de} :catch_e1

    move-result v0

    goto/16 :goto_35

    :catch_e1
    move-exception v0

    const-string v0, "get mmlc failed"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V

    goto :goto_a3

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_c1
    .end packed-switch
.end method

.method private static b(Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 5

    const/16 v3, 0x64

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v1, "ver_tts"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "speed_increase"

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "speed"

    const/16 v2, 0x32

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v1

    if-gt v1, v3, :cond_41

    const-string v0, "speed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "speed_increase"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_41
    if-ge v3, v1, :cond_77

    const/16 v2, 0x96

    if-gt v1, v2, :cond_77

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "5.5."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    :cond_55
    const-string v0, "speed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x32

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "speed_increase"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_77
    if-ge v3, v1, :cond_8

    const/16 v0, 0xc8

    if-gt v1, v0, :cond_8

    const-string v0, "speed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x64

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "speed_increase"

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public static c(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->b(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "ssm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "result_type"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "rse"

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "text_encoding"

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cf;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->b(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "dvc"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "aue"

    const-string v2, "raw"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cf;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->b(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "ssm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->t()I

    move-result v1

    const-string v2, "auf=audio/L16;rate"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e80

    if-ne v1, v2, :cond_52

    const-string v1, "aue"

    const-string v2, "speex-wb"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2e
    const-string v1, "voice_name"

    sget-object v2, Lcom/iflytek/cloud/thirdparty/cg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "voice_name"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "text_encoding"

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cg;->b(Lcom/iflytek/cloud/thirdparty/ce;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cf;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_52
    const-string v1, "aue"

    const-string v2, "speex"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2e
.end method

.method public static e(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->b()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/cg;->b(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V

    const-string v1, "ssm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->t()I

    move-result v1

    const-string v2, "auf=audio/L16;rate"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x3e80

    if-ne v1, v2, :cond_79

    const-string v1, "aue"

    const-string v2, "speex-wb"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2e
    const-string v1, "text_encoding"

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/be;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "plev"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "accent"

    const-string v2, "mandarin"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "domain"

    const-string v2, "ise"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "subject"

    const-string v2, "ise"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "result_type"

    const-string v2, "xml"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "vad_bos"

    const-string v2, "5000"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "vad_eos"

    const-string v2, "1800"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "vad_speech_timeout"

    const-string v2, "2147483647"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cf;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a([[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_79
    const-string v1, "aue"

    const-string v2, "speex"

    invoke-virtual {v0, v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2e
.end method
