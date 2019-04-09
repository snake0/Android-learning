.class public Lcom/iflytek/cloud/thirdparty/aj;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Z

.field private static e:Lcom/iflytek/cloud/thirdparty/ak$b;


# instance fields
.field private f:Lcom/iflytek/cloud/thirdparty/ak$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/aiui/AIUISetting;->getAIUIPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/aj;->b:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->b:Ljava/lang/String;

    sput-object v0, Lcom/iflytek/cloud/thirdparty/aj;->a:Ljava/lang/String;

    sput-boolean v2, Lcom/iflytek/cloud/thirdparty/aj;->d:Z

    sput v2, Lcom/iflytek/cloud/thirdparty/aj;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/aj;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ak$a;

    move-result-object v2

    const-string v1, "index.txt"

    invoke-virtual {v2, v1}, Lcom/iflytek/cloud/thirdparty/ak$a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/ak$a;->e()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Lcom/iflytek/cloud/thirdparty/ak$a;->a([B)I

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/ak$a;->c()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    :try_start_20
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_23} :catch_a8

    move-result v0

    :cond_24
    :goto_24
    sput v0, Lcom/iflytek/cloud/thirdparty/aj;->c:I

    const-string v1, "history"

    const-string v3, ".txt"

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/cloud/thirdparty/ak$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "----------------------------------\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iflytek/cloud/thirdparty/ak$a;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/ak$a;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/iflytek/cloud/thirdparty/aj;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_7f
    const-string v3, "index"

    const-string v4, ".txt"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/ak$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/cloud/thirdparty/ak$a;->a([BZ)V

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/ak$a;->d()V
    :try_end_9a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7f .. :try_end_9a} :catch_9c
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_9a} :catch_a2

    move-object v0, v1

    :goto_9b
    return-object v0

    :catch_9c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_9b

    :catch_a2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_9b

    :catch_a8
    move-exception v1

    goto/16 :goto_24
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/aj;->d:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0, p2}, Lcom/iflytek/cloud/thirdparty/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/aj;->a:Ljava/lang/String;

    goto :goto_4

    :cond_12
    sput-object p1, Lcom/iflytek/cloud/thirdparty/aj;->a:Ljava/lang/String;

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_21
    sput-object p0, Lcom/iflytek/cloud/thirdparty/aj;->b:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/aj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ak$b;->a(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public static a(ZJJI)V
    .registers 13

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    sput-boolean p0, Lcom/iflytek/cloud/thirdparty/aj;->d:Z

    if-eqz p0, :cond_34

    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    if-nez v0, :cond_28

    cmp-long v0, v2, p1

    if-eqz v0, :cond_27

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ak$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/aj;->b:Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/cloud/thirdparty/ak$b;-><init>(Ljava/lang/String;JJI)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    const-string v1, "AIUI:DataSizeDeamonThread"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ak$b;->setName(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ak$b;->start()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    cmp-long v0, v2, p1

    if-nez v0, :cond_27

    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ak$b;->a()V

    sput-object v1, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    goto :goto_27

    :cond_34
    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ak$b;->a()V

    sput-object v1, Lcom/iflytek/cloud/thirdparty/aj;->e:Lcom/iflytek/cloud/thirdparty/ak$b;

    goto :goto_27
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/iflytek/cloud/thirdparty/aj;->c:I

    return v0
.end method

.method public static c()Z
    .registers 1

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/aj;->d:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ak$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    return-void
.end method

.method public a([BZ)Z
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_10

    :try_start_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/ak$a;->a([BZ)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_b

    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ak$a;->d()V

    :cond_9
    return-void
.end method

.method public e()V
    .registers 2

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/aj;->d:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ak$a;->b()V

    :cond_e
    sget-object v0, Lcom/iflytek/cloud/thirdparty/aj;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ak$a;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/ak$a;

    goto :goto_4
.end method
