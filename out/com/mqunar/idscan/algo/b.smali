.class public final Lcom/mqunar/idscan/algo/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xf9

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/mqunar/idscan/algo/b;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mqunar/idscan/algo/b;->a()V

    return-void
.end method

.method private static a()V
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {}, Lcom/mqunar/idscan/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mqunar/idscan/R$raw;->idscan_country_code:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "utf-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_60
    .catchall {:try_start_1 .. :try_end_1f} :catchall_51

    :goto_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    sget-object v2, Lcom/mqunar/idscan/algo/b;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2b
    .catchall {:try_start_1f .. :try_end_2a} :catchall_5d

    goto :goto_1f

    :catch_2b
    move-exception v0

    :goto_2c
    :try_start_2c
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_5d

    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_4c

    :cond_34
    :goto_34
    return-void

    :cond_35
    :try_start_35
    const-string v0, "CheckCountryCode"

    sget-object v2, Lcom/mqunar/idscan/algo/b;->a:Ljava/util/HashSet;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_43} :catch_2b
    .catchall {:try_start_35 .. :try_end_43} :catchall_5d

    :try_start_43
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_34

    :catch_47
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_34

    :catch_4c
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_34

    :catchall_51
    move-exception v0

    :goto_52
    if-eqz v2, :cond_57

    :try_start_54
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    throw v0

    :catch_58
    move-exception v1

    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_57

    :catchall_5d
    move-exception v0

    move-object v2, v1

    goto :goto_52

    :catch_60
    move-exception v0

    move-object v1, v2

    goto :goto_2c
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mqunar/idscan/algo/b;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/16 v2, 0x36

    const/16 v3, 0x39

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mqunar/idscan/algo/b;->a:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "CHN"

    if-ne v1, v3, :cond_28

    const-string v3, "CHN"

    if-ne v2, v3, :cond_f

    :cond_28
    const-string v3, "CHN"

    if-eq v1, v3, :cond_30

    const-string v1, "CHN"

    if-eq v2, v1, :cond_f

    :cond_30
    const/4 v0, 0x1

    goto :goto_f
.end method
