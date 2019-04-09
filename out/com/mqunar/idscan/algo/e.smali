.class public final Lcom/mqunar/idscan/algo/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Ljava/util/HashSet;

.field private c:Lcom/mqunar/idscan/algo/c;


# direct methods
.method public constructor <init>(Lcom/mqunar/idscan/algo/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CheckSurname"

    iput-object v0, p0, Lcom/mqunar/idscan/algo/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x169

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/idscan/algo/e;->b:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/mqunar/idscan/algo/e;->c:Lcom/mqunar/idscan/algo/c;

    invoke-direct {p0}, Lcom/mqunar/idscan/algo/e;->a()V

    return-void
.end method

.method private a()V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {}, Lcom/mqunar/idscan/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mqunar/idscan/R$raw;->idscan_surname:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_20} :catch_86
    .catchall {:try_start_2 .. :try_end_20} :catchall_77

    :goto_20
    :try_start_20
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v4

    move v2, v3

    :goto_31
    if-ge v2, v6, :cond_47

    aget-char v7, v4, v2

    if-ltz v7, :cond_45

    const/16 v0, 0xff

    if-gt v7, v0, :cond_45

    const/4 v0, 0x1

    :goto_3c
    if-eqz v0, :cond_41

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_41
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_31

    :cond_45
    move v0, v3

    goto :goto_3c

    :cond_47
    iget-object v0, p0, Lcom/mqunar/idscan/algo/e;->b:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_50} :catch_51
    .catchall {:try_start_20 .. :try_end_50} :catchall_84

    goto :goto_20

    :catch_51
    move-exception v0

    :goto_52
    :try_start_52
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_84

    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_72

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    :try_start_5b
    const-string v0, "CheckSurname"

    iget-object v2, p0, Lcom/mqunar/idscan/algo/e;->b:Ljava/util/HashSet;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_69} :catch_51
    .catchall {:try_start_5b .. :try_end_69} :catchall_84

    :try_start_69
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_5a

    :catch_6d
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5a

    :catch_72
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5a

    :catchall_77
    move-exception v0

    move-object v1, v2

    :goto_79
    if-eqz v1, :cond_7e

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    :cond_7e
    :goto_7e
    throw v0

    :catch_7f
    move-exception v1

    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7e

    :catchall_84
    move-exception v0

    goto :goto_79

    :catch_86
    move-exception v0

    move-object v1, v2

    goto :goto_52
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_4d

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_4d

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x48

    if-ne v1, v2, :cond_4d

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_4d

    const-string v1, "<<"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AAA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_37
    :goto_37
    return v0

    :cond_38
    iget-object v2, p0, Lcom/mqunar/idscan/algo/e;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_37

    iget-object v0, p0, Lcom/mqunar/idscan/algo/e;->c:Lcom/mqunar/idscan/algo/c;

    invoke-virtual {v0, v1}, Lcom/mqunar/idscan/algo/c;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_37

    :cond_4d
    const/4 v0, 0x1

    goto :goto_37
.end method
