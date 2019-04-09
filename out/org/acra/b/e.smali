.class public final Lorg/acra/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/acra/b/e;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/io/FilenameFilter;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lorg/acra/b/e$1;

    invoke-direct {v0, p0, p1}, Lorg/acra/b/e$1;-><init>(Lorg/acra/b/e;Ljava/lang/String;)V

    .line 168
    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/acra/b/e;->b:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/acra/b/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 38
    iget-object v0, p0, Lorg/acra/b/e;->b:Ljava/io/File;

    .line 42
    :goto_e
    return-object v0

    .line 40
    :cond_f
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/acra/b/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/acra/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACRA-unapproved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/acra/b/e;->b:Ljava/io/File;

    .line 41
    iget-object v0, p0, Lorg/acra/b/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    iget-object v0, p0, Lorg/acra/b/e;->b:Ljava/io/File;

    goto :goto_e
.end method

.method public b()[Ljava/io/File;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/acra/b/e;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 49
    if-nez v0, :cond_d

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 52
    :cond_d
    return-object v0
.end method

.method public c()Ljava/io/File;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/acra/b/e;->c:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/acra/b/e;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 60
    iget-object v0, p0, Lorg/acra/b/e;->c:Ljava/io/File;

    .line 64
    :goto_e
    return-object v0

    .line 62
    :cond_f
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/acra/b/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/acra/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACRA-approved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/acra/b/e;->c:Ljava/io/File;

    .line 63
    iget-object v0, p0, Lorg/acra/b/e;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 64
    iget-object v0, p0, Lorg/acra/b/e;->c:Ljava/io/File;

    goto :goto_e
.end method

.method public d()Ljava/io/File;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/acra/b/e;->d:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/acra/b/e;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    iget-object v0, p0, Lorg/acra/b/e;->d:Ljava/io/File;

    .line 77
    :goto_e
    return-object v0

    .line 75
    :cond_f
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/acra/b/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/acra/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACRA-dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/acra/b/e;->d:Ljava/io/File;

    .line 76
    iget-object v0, p0, Lorg/acra/b/e;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 77
    iget-object v0, p0, Lorg/acra/b/e;->d:Ljava/io/File;

    goto :goto_e
.end method

.method public e()Ljava/io/File;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/acra/b/e;->e:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/acra/b/e;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 87
    iget-object v0, p0, Lorg/acra/b/e;->e:Ljava/io/File;

    .line 91
    :goto_e
    return-object v0

    .line 89
    :cond_f
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/acra/b/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/acra/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACRA-screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/acra/b/e;->e:Ljava/io/File;

    .line 90
    iget-object v0, p0, Lorg/acra/b/e;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    iget-object v0, p0, Lorg/acra/b/e;->e:Ljava/io/File;

    goto :goto_e
.end method

.method public f()[Ljava/io/File;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/acra/b/e;->c()Ljava/io/File;

    move-result-object v0

    const-string v1, ".stacktrace"

    invoke-direct {p0, v1}, Lorg/acra/b/e;->a(Ljava/lang/String;)Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 101
    if-nez v0, :cond_14

    .line 102
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 105
    :goto_13
    return-object v0

    .line 104
    :cond_14
    new-instance v1, Lorg/acra/b/d;

    invoke-direct {v1}, Lorg/acra/b/d;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_13
.end method

.method public g()[Ljava/io/File;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/acra/b/e;->c()Ljava/io/File;

    move-result-object v0

    const-string v1, ".acrajava.gz"

    invoke-direct {p0, v1}, Lorg/acra/b/e;->a(Ljava/lang/String;)Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 115
    if-nez v0, :cond_14

    .line 116
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 119
    :goto_13
    return-object v0

    .line 118
    :cond_14
    new-instance v1, Lorg/acra/b/d;

    invoke-direct {v1}, Lorg/acra/b/d;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_13
.end method

.method public h()[Ljava/io/File;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/acra/b/e;->d()Ljava/io/File;

    move-result-object v0

    const-string v1, ".dmp"

    invoke-direct {p0, v1}, Lorg/acra/b/e;->a(Ljava/lang/String;)Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 128
    if-nez v0, :cond_14

    .line 129
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 132
    :goto_13
    return-object v0

    .line 131
    :cond_14
    new-instance v1, Lorg/acra/b/d;

    invoke-direct {v1}, Lorg/acra/b/d;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_13
.end method

.method public i()[Ljava/io/File;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/acra/b/e;->d()Ljava/io/File;

    move-result-object v0

    const-string v1, ".dmp.gz"

    invoke-direct {p0, v1}, Lorg/acra/b/e;->a(Ljava/lang/String;)Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 141
    if-nez v0, :cond_14

    .line 142
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 145
    :goto_13
    return-object v0

    .line 144
    :cond_14
    new-instance v1, Lorg/acra/b/d;

    invoke-direct {v1}, Lorg/acra/b/d;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_13
.end method

.method public j()[Ljava/io/File;
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/acra/b/e;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 153
    if-nez v0, :cond_d

    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 156
    :cond_d
    return-object v0
.end method
