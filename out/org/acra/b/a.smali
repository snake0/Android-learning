.class public final Lorg/acra/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/acra/b/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/acra/b/e;

    invoke-direct {v0, p1}, Lorg/acra/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/b/a;->a:Lorg/acra/b/e;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    .line 45
    iget-object v0, p0, Lorg/acra/b/a;->a:Lorg/acra/b/e;

    invoke-virtual {v0}, Lorg/acra/b/e;->h()[Ljava/io/File;

    move-result-object v1

    .line 47
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_2f

    aget-object v3, v1, v0

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 49
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not delete dump : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 52
    :cond_2f
    return-void
.end method

.method public a(ZI)V
    .registers 9

    .prologue
    .line 30
    if-eqz p1, :cond_3c

    iget-object v0, p0, Lorg/acra/b/a;->a:Lorg/acra/b/e;

    invoke-virtual {v0}, Lorg/acra/b/e;->f()[Ljava/io/File;

    move-result-object v0

    .line 32
    :goto_8
    new-instance v1, Lorg/acra/b/d;

    invoke-direct {v1}, Lorg/acra/b/d;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 34
    const/4 v1, 0x0

    :goto_11
    array-length v2, v0

    sub-int/2addr v2, p2

    if-ge v1, v2, :cond_43

    .line 35
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_39

    .line 36
    sget-object v2, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete report : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 30
    :cond_3c
    iget-object v0, p0, Lorg/acra/b/a;->a:Lorg/acra/b/e;

    invoke-virtual {v0}, Lorg/acra/b/e;->b()[Ljava/io/File;

    move-result-object v0

    goto :goto_8

    .line 39
    :cond_43
    return-void
.end method

.method public b()V
    .registers 9

    .prologue
    .line 58
    iget-object v0, p0, Lorg/acra/b/a;->a:Lorg/acra/b/e;

    invoke-virtual {v0}, Lorg/acra/b/e;->j()[Ljava/io/File;

    move-result-object v1

    .line 60
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_2f

    aget-object v3, v1, v0

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 62
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not delete screen shot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 65
    :cond_2f
    return-void
.end method
