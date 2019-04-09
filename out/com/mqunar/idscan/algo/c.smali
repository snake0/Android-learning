.class public final Lcom/mqunar/idscan/algo/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x19e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/idscan/algo/c;->a:Ljava/util/Set;

    invoke-direct {p0}, Lcom/mqunar/idscan/algo/c;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {}, Lcom/mqunar/idscan/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mqunar/idscan/R$raw;->idscan_pinyin:I

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

    iget-object v2, p0, Lcom/mqunar/idscan/algo/c;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
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
    const-string v0, "CheckName"

    iget-object v2, p0, Lcom/mqunar/idscan/algo/c;->a:Ljava/util/Set;

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


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_45

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_45

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x48

    if-ne v1, v2, :cond_45

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_45

    const-string v1, "<<"

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "<<"

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    :goto_3f
    return v0

    :cond_40
    invoke-virtual {p0, v1}, Lcom/mqunar/idscan/algo/c;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3f

    :cond_45
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/mqunar/idscan/algo/c;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Z

    const/4 v0, 0x0

    aput-boolean v1, v4, v0

    move v0, v1

    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_31

    add-int/lit8 v2, v0, -0x1

    :goto_19
    if-ltz v2, :cond_2b

    aget-boolean v5, v4, v2

    if-eqz v5, :cond_2e

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    aput-boolean v1, v4, v0

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    aget-boolean v0, v4, v0

    return v0
.end method
