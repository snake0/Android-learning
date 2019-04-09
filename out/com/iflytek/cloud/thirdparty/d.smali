.class public final Lcom/iflytek/cloud/thirdparty/d;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    iput p2, p0, Lcom/iflytek/cloud/thirdparty/d;->c:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    iput p2, p0, Lcom/iflytek/cloud/thirdparty/d;->c:I

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/d;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/d;->c:I

    packed-switch v0, :pswitch_data_90

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/b;->g(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_5

    :catch_c
    move-exception v0

    const-string v1, "MobileAgent"

    const-string v2, "Exception occurred when recording usage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :pswitch_18
    :try_start_18
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_5

    :pswitch_20
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/d;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/b;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :pswitch_2a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_5

    :pswitch_32
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/b;->c(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_5

    :pswitch_39
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_55

    :cond_4d
    const-string v0, "UploadThread"

    const-string v1, "unexpected empty appkey"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_55
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_64

    :cond_5d
    const-string v0, "UploadThread"

    const-string v1, "unexpected empty channelId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Z)V

    goto :goto_5

    :pswitch_6b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Z)V

    goto :goto_5

    :pswitch_72
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/d;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_7c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/d;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_84
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/d;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_8d} :catch_c

    goto/16 :goto_5

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_18
        :pswitch_20
        :pswitch_2a
        :pswitch_32
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_39
        :pswitch_6b
        :pswitch_72
        :pswitch_7c
        :pswitch_84
    .end packed-switch
.end method
