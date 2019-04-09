.class public final Lorg/acra/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lorg/acra/util/g$1;

    invoke-direct {v0}, Lorg/acra/util/g$1;-><init>()V

    sput-object v0, Lorg/acra/util/g;->a:Lcom/android/internal/util/Predicate;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lorg/acra/util/g;->a:Lcom/android/internal/util/Predicate;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/acra/util/g;->a(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lorg/acra/util/g;->a:Lcom/android/internal/util/Predicate;

    invoke-static {p0, v0, p1}, Lorg/acra/util/g;->a(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/acra/util/g;->a(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/android/internal/util/Predicate;I)Ljava/lang/String;
    .registers 7
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 120
    const/4 v0, -0x1

    if-ne p2, v0, :cond_29

    :try_start_f
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 121
    :cond_14
    :goto_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 122
    invoke-interface {p1, v2}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_24

    goto :goto_14

    .line 128
    :catchall_24
    move-exception v0

    invoke-static {v1}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 120
    :cond_29
    :try_start_29
    new-instance v0, Lorg/acra/a/a;

    invoke-direct {v0, p2}, Lorg/acra/a/a;-><init>(I)V

    goto :goto_14

    .line 126
    :cond_2f
    const-string v2, "\n"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_24

    move-result-object v0

    .line 128
    invoke-static {v1}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2
    .param p0    # Ljava/io/Closeable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    if-nez p0, :cond_3

    .line 66
    :goto_2
    return-void

    .line 62
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 63
    :catch_7
    move-exception v0

    goto :goto_2
.end method
