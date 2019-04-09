.class public final Lorg/acra/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lorg/acra/config/ACRAConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/acra/util/e;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lorg/acra/util/e;->b:Lorg/acra/config/ACRAConfiguration;

    .line 40
    return-void
.end method

.method private a(Lorg/acra/b/e;)V
    .registers 8

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/acra/b/e;->i()[Ljava/io/File;

    move-result-object v1

    .line 176
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 179
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    const-string v4, "ACRA"

    const-string v5, "delete residual dmp.gz file"

    invoke-interface {v3, v4, v5}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 182
    :cond_1c
    return-void
.end method

.method private a(Lorg/acra/config/ACRAConfiguration;Lorg/acra/b/e;)V
    .registers 9

    .prologue
    .line 138
    invoke-virtual {p2}, Lorg/acra/b/e;->h()[Ljava/io/File;

    move-result-object v1

    .line 139
    array-length v0, v1

    if-lez v0, :cond_36

    .line 140
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->sendFailedDump()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 141
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no_send_dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lorg/acra/util/e$1;

    invoke-direct {v0, p0, v1}, Lorg/acra/util/e$1;-><init>(Lorg/acra/util/e;[Ljava/io/File;)V

    invoke-virtual {v0}, Lorg/acra/util/e$1;->start()V

    .line 171
    :cond_36
    return-void

    .line 160
    :cond_37
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no_send_dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    array-length v2, v1

    const/4 v0, 0x0

    :goto_5a
    if-ge v0, v2, :cond_36

    aget-object v3, v1, v0

    .line 162
    if-eqz v3, :cond_75

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 164
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "delete no send dump"

    invoke-interface {v3, v4, v5}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a
.end method

.method private a([Ljava/io/File;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 126
    new-instance v2, Lorg/acra/b/b;

    invoke-direct {v2}, Lorg/acra/b/b;-><init>()V

    .line 127
    array-length v3, p1

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_17

    aget-object v4, p1, v1

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/acra/b/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 129
    const/4 v0, 0x1

    .line 132
    :cond_17
    return v0

    .line 127
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private b(Lorg/acra/b/e;)V
    .registers 8

    .prologue
    .line 186
    invoke-virtual {p1}, Lorg/acra/b/e;->g()[Ljava/io/File;

    move-result-object v1

    .line 187
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 190
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    const-string v4, "ACRA"

    const-string v5, "delete residual acrajava.gz file"

    invoke-interface {v3, v4, v5}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 193
    :cond_1c
    return-void
.end method

.method private c(Lorg/acra/b/e;)V
    .registers 8

    .prologue
    .line 197
    invoke-virtual {p1}, Lorg/acra/b/e;->j()[Ljava/io/File;

    move-result-object v1

    .line 198
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    .line 199
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 201
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    const-string v4, "ACRA"

    const-string v5, "delete residual screen shot file"

    invoke-interface {v3, v4, v5}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 204
    :cond_1c
    return-void
.end method

.method private d()I
    .registers 3

    .prologue
    .line 120
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    iget-object v1, p0, Lorg/acra/util/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v0}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 122
    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_e
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 46
    new-instance v0, Lorg/acra/d/b;

    iget-object v1, p0, Lorg/acra/util/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/util/e;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/d/b;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v0}, Lorg/acra/d/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    const-string v1, "acra.lastVersionNr"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 48
    invoke-direct {p0}, Lorg/acra/util/e;->d()I

    move-result v3

    .line 50
    int-to-long v4, v3

    cmp-long v1, v4, v1

    if-lez v1, :cond_55

    .line 52
    const-string v1, "acra.acraLastVersion"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 53
    if-le v7, v1, :cond_35

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "acra.acraLastVersion"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lorg/acra/d/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 58
    :cond_35
    new-instance v1, Lorg/acra/b/a;

    iget-object v2, p0, Lorg/acra/util/e;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/acra/b/a;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Lorg/acra/b/a;->a(ZI)V

    .line 60
    invoke-virtual {v1, v6, v6}, Lorg/acra/b/a;->a(ZI)V

    .line 62
    invoke-virtual {v1}, Lorg/acra/b/a;->a()V

    .line 64
    invoke-virtual {v1}, Lorg/acra/b/a;->b()V

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    const-string v1, "acra.lastVersionNr"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-static {v0}, Lorg/acra/d/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 70
    :cond_55
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 80
    new-instance v0, Lorg/acra/b/a;

    iget-object v1, p0, Lorg/acra/util/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/b/a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/acra/b/a;->a(ZI)V

    .line 81
    return-void
.end method

.method public c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Lorg/acra/b/e;

    iget-object v1, p0, Lorg/acra/util/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/b/e;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, Lorg/acra/b/e;->f()[Ljava/io/File;

    move-result-object v1

    .line 92
    array-length v2, v1

    if-nez v2, :cond_1e

    .line 95
    invoke-direct {p0, v0}, Lorg/acra/util/e;->b(Lorg/acra/b/e;)V

    .line 97
    invoke-direct {p0, v0}, Lorg/acra/util/e;->a(Lorg/acra/b/e;)V

    .line 99
    iget-object v1, p0, Lorg/acra/util/e;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {p0, v1, v0}, Lorg/acra/util/e;->a(Lorg/acra/config/ACRAConfiguration;Lorg/acra/b/e;)V

    .line 101
    invoke-direct {p0, v0}, Lorg/acra/util/e;->c(Lorg/acra/b/e;)V

    .line 114
    :goto_1d
    return-void

    .line 106
    :cond_1e
    iget-object v0, p0, Lorg/acra/util/e;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v2, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v2, :cond_3a

    invoke-direct {p0, v1}, Lorg/acra/util/e;->a([Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 107
    iget-object v0, p0, Lorg/acra/util/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lorg/acra/util/e;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resToastText()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/acra/util/k;->a(Landroid/content/Context;II)V

    .line 111
    :cond_3a
    new-instance v0, Lorg/acra/sender/c;

    iget-object v1, p0, Lorg/acra/util/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/util/e;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/sender/c;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    .line 112
    invoke-virtual {v0, v3, v3}, Lorg/acra/sender/c;->a(ZZ)V

    goto :goto_1d
.end method
