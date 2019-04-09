.class public Lcom/baidu/tts/b/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/m/b;

.field private b:Lcom/baidu/tts/f/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private a(I)Z
    .registers 4

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/c;->b(I)I

    move-result v0

    .line 115
    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private b(I)I
    .registers 3

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_c

    .line 156
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 142
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 152
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 154
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 136
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private b()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 86
    :try_start_3
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/c;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v3}, Lcom/baidu/tts/m/b;->c()Lcom/baidu/tts/f/j;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_2b

    move-result-object v0

    .line 90
    :goto_9
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    if-nez v3, :cond_19

    .line 91
    if-nez v0, :cond_15

    .line 92
    sget-object v0, Lcom/baidu/tts/f/j;->a:Lcom/baidu/tts/f/j;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    move v0, v1

    .line 110
    :goto_14
    return v0

    .line 95
    :cond_15
    iput-object v0, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    move v0, v1

    .line 96
    goto :goto_14

    .line 99
    :cond_19
    if-nez v0, :cond_1d

    move v0, v2

    .line 100
    goto :goto_14

    .line 102
    :cond_1d
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    invoke-virtual {v3, v0}, Lcom/baidu/tts/f/j;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v0, v2

    .line 103
    goto :goto_14

    .line 105
    :cond_27
    iput-object v0, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    move v0, v1

    .line 106
    goto :goto_14

    .line 87
    :catch_2b
    move-exception v3

    goto :goto_9
.end method

.method private c(I)Z
    .registers 3

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_8

    .line 166
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 164
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 161
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/b;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/c;->a:Lcom/baidu/tts/m/b;

    .line 32
    return-void
.end method

.method public a()Z
    .registers 8

    .prologue
    const/16 v6, 0x9

    const/4 v2, 0x1

    .line 35
    const/4 v1, 0x0

    .line 37
    :try_start_4
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/h/b/b;->h()Landroid/content/Context;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_60

    .line 39
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/c;->b()Z

    move-result v3

    .line 40
    if-eqz v3, :cond_37

    .line 41
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/c;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v3}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    sget-object v5, Lcom/baidu/tts/f/j;->c:Lcom/baidu/tts/f/j;

    invoke-virtual {v4, v5}, Lcom/baidu/tts/f/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    sget-object v5, Lcom/baidu/tts/f/j;->d:Lcom/baidu/tts/f/j;

    invoke-virtual {v4, v5}, Lcom/baidu/tts/f/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 44
    :cond_2e
    sget-object v4, Lcom/baidu/tts/f/l;->b:Lcom/baidu/tts/f/l;

    invoke-virtual {v4}, Lcom/baidu/tts/f/l;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/tts/b/a/b/f$b;->c(I)V

    .line 50
    :cond_37
    :goto_37
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 53
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 54
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 55
    sget-object v4, Lcom/baidu/tts/b/a/b/c$1;->a:[I

    iget-object v5, p0, Lcom/baidu/tts/b/a/b/c;->b:Lcom/baidu/tts/f/j;

    invoke-virtual {v5}, Lcom/baidu/tts/f/j;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_92

    :cond_60
    :goto_60
    move v0, v1

    .line 79
    :goto_61
    return v0

    .line 46
    :cond_62
    sget-object v4, Lcom/baidu/tts/f/l;->c:Lcom/baidu/tts/f/l;

    invoke-virtual {v4}, Lcom/baidu/tts/f/l;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/tts/b/a/b/f$b;->c(I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6b} :catch_6c

    goto :goto_37

    .line 76
    :catch_6c
    move-exception v0

    .line 77
    const-string v2, "MixStrategy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 58
    :pswitch_77
    :try_start_77
    invoke-direct {p0, v3}, Lcom/baidu/tts/b/a/b/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_7f

    if-ne v3, v6, :cond_60

    :cond_7f
    move v0, v2

    .line 59
    goto :goto_61

    .line 64
    :pswitch_81
    invoke-direct {p0, v3}, Lcom/baidu/tts/b/a/b/c;->c(I)Z

    move-result v4

    if-nez v4, :cond_8f

    if-eq v3, v6, :cond_8f

    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/b/c;->a(I)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8c} :catch_6c

    move-result v0

    if-eqz v0, :cond_60

    :cond_8f
    move v0, v2

    .line 66
    goto :goto_61

    .line 55
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_77
        :pswitch_77
        :pswitch_81
        :pswitch_81
    .end packed-switch
.end method
