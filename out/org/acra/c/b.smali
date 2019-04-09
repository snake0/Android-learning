.class public final Lorg/acra/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 17
    sget-boolean v0, Lorg/acra/ACRA;->b:Z

    if-eqz v0, :cond_9

    .line 18
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 20
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .prologue
    .line 38
    sget-boolean v0, Lorg/acra/ACRA;->b:Z

    if-eqz v0, :cond_9

    .line 39
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 41
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 31
    sget-boolean v0, Lorg/acra/ACRA;->b:Z

    if-eqz v0, :cond_9

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .prologue
    .line 67
    sget-boolean v0, Lorg/acra/ACRA;->b:Z

    if-eqz v0, :cond_9

    .line 68
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 70
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 45
    sget-boolean v0, Lorg/acra/ACRA;->b:Z

    if-eqz v0, :cond_9

    .line 46
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 48
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .prologue
    .line 89
    sget-boolean v0, Lorg/acra/ACRA;->b:Z

    if-eqz v0, :cond_9

    .line 90
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 92
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 60
    sget-boolean v0, Lorg/acra/ACRA;->b:Z

    if-eqz v0, :cond_9

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 82
    sget-boolean v0, Lorg/acra/ACRA;->b:Z

    if-eqz v0, :cond_9

    .line 83
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
