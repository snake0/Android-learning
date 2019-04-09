.class final Lcom/baidu/techain/core/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:[I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/techain/core/e$1;->a:Landroid/content/Context;

    iput p2, p0, Lcom/baidu/techain/core/e$1;->b:I

    iput-object p3, p0, Lcom/baidu/techain/core/e$1;->c:[I

    iput-object p4, p0, Lcom/baidu/techain/core/e$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/techain/core/e$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/core/e$1;->a:Landroid/content/Context;

    sput-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/baidu/techain/core/e$1;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Z)Z

    move-result v0

    .line 41
    if-nez v0, :cond_11

    .line 42
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 71
    :goto_10
    return-void

    .line 45
    :cond_11
    iget-object v0, p0, Lcom/baidu/techain/core/e$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;)Z

    move-result v0

    .line 46
    if-nez v0, :cond_22

    .line 47
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 69
    :catch_1d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_10

    .line 50
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/baidu/techain/core/e$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/core/d;->a(Landroid/content/Context;)Lcom/baidu/techain/core/d;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/baidu/techain/core/e$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/b/g;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2d} :catch_1d

    .line 54
    :try_start_2d
    iget v1, p0, Lcom/baidu/techain/core/e$1;->b:I

    if-lez v1, :cond_39

    .line 55
    iget v1, p0, Lcom/baidu/techain/core/e$1;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_39} :catch_6e

    .line 61
    :cond_39
    :goto_39
    :try_start_39
    new-instance v1, Lcom/baidu/techain/e;

    iget-object v2, p0, Lcom/baidu/techain/core/e$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/baidu/techain/core/e$1;->c:[I

    invoke-virtual {v1, v2}, Lcom/baidu/techain/e;->a([I)V

    .line 63
    iget-object v1, p0, Lcom/baidu/techain/core/e$1;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/baidu/techain/core/e$1;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 64
    iget-object v1, p0, Lcom/baidu/techain/core/e$1;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/techain/core/e$1;->e:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_59} :catch_1d

    .line 1099
    :try_start_59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_62} :catch_a9

    move-result v3

    if-eqz v3, :cond_73

    .line 66
    :cond_65
    :goto_65
    const/4 v1, 0x1

    :try_start_66
    invoke-static {v1}, Lcom/baidu/techain/core/d;->a(I)V

    .line 1161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/techain/core/d;->a(Lcom/baidu/techain/ac/Callback;)V

    goto :goto_10

    .line 58
    :catch_6e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_72} :catch_1d

    goto :goto_39

    .line 1102
    :cond_73
    :try_start_73
    const-string v3, "3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const-string v3, "925fc15df8a49bed0b3eca8d2b44cb7b"

    .line 1103
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 1106
    :cond_83
    iget-object v3, v0, Lcom/baidu/techain/core/d;->a:Lcom/baidu/techain/e;

    .line 1115
    iget-object v4, v3, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v5, "svi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1116
    iget-object v1, v3, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_a8} :catch_a9

    goto :goto_65

    .line 1108
    :catch_a9
    move-exception v1

    :try_start_aa
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_ad} :catch_1d

    goto :goto_65
.end method
