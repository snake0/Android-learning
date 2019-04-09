.class Lorg/acra/collector/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/acra/config/ACRAConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->logcatFilterByPid()Z

    move-result v3

    if-eqz v3, :cond_c4

    if-lez v1, :cond_c4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 70
    :goto_26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const-string v0, "logcat"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    if-eqz p2, :cond_3a

    .line 73
    const-string v0, "-b"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3a
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->logcatArguments()Lorg/acra/a/b;

    move-result-object v4

    .line 82
    const-string v0, "-t"

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 83
    if-le v5, v2, :cond_b4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_b4

    .line 84
    add-int/lit8 v0, v5, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-ge v2, v6, :cond_6b

    .line 86
    add-int/lit8 v2, v5, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    const-string v2, "-d"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_6b
    :goto_6b
    new-instance v2, Lorg/acra/a/a;

    if-lez v0, :cond_b6

    :goto_6f
    invoke-direct {v2, v0}, Lorg/acra/a/a;-><init>(I)V

    .line 96
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :try_start_75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 101
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Retrieving logcat output..."

    invoke-interface {v3, v4, v5}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lorg/acra/collector/i$1;

    invoke-direct {v4, p0, v0}, Lorg/acra/collector/i$1;-><init>(Lorg/acra/collector/i;Ljava/lang/Process;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Lorg/acra/collector/i$2;

    invoke-direct {v3, p0, v1}, Lorg/acra/collector/i$2;-><init>(Lorg/acra/collector/i;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lorg/acra/util/g;->a(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_af} :catch_b9

    .line 126
    :goto_af
    invoke-virtual {v2}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b4
    move v0, v2

    .line 91
    goto :goto_6b

    .line 94
    :cond_b6
    const/16 v0, 0x64

    goto :goto_6f

    .line 122
    :catch_b9
    move-exception v0

    .line 123
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v4, "LogCatCollector.collectLogCat could not retrieve data."

    invoke-interface {v1, v3, v4, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_af

    :cond_c4
    move-object v1, v0

    goto/16 :goto_26
.end method
