.class public Lcom/baidu/techain/d;
.super Landroid/os/FileObserver;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 19
    const/16 v0, 0xfff

    invoke-direct {p0, p3, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 21
    :try_start_5
    iput-object p3, p0, Lcom/baidu/techain/d;->a:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/baidu/techain/d;->b:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/baidu/techain/d;->c:I

    .line 24
    iput-object p1, p0, Lcom/baidu/techain/d;->d:Landroid/content/Context;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/techain/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/techain/d;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/techain/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3d} :catch_3e

    .line 30
    :goto_3d
    return-void

    .line 28
    :catch_3e
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_3d
.end method

.method static synthetic a(Lcom/baidu/techain/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/techain/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/techain/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/techain/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/techain/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/techain/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/techain/d;)I
    .registers 2

    .prologue
    .line 12
    iget v0, p0, Lcom/baidu/techain/d;->c:I

    return v0
.end method


# virtual methods
.method public final a()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 34
    .line 35
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/techain/d;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_13

    move-result v0

    .line 42
    :cond_12
    :goto_12
    return v0

    .line 41
    :catch_13
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_12
.end method

.method public onEvent(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 49
    sparse-switch p1, :sswitch_data_12

    .line 95
    :goto_3
    return-void

    .line 58
    :sswitch_4
    :try_start_4
    new-instance v0, Lcom/baidu/techain/d$1;

    invoke-direct {v0, p0}, Lcom/baidu/techain/d$1;-><init>(Lcom/baidu/techain/d;)V

    .line 87
    invoke-virtual {v0}, Lcom/baidu/techain/d$1;->start()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_3

    .line 89
    :catch_d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_3

    .line 49
    :sswitch_data_12
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_4
        0x40 -> :sswitch_4
        0x80 -> :sswitch_4
        0x200 -> :sswitch_4
        0x400 -> :sswitch_4
        0x800 -> :sswitch_4
    .end sparse-switch
.end method
