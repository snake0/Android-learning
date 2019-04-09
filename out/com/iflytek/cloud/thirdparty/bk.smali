.class public Lcom/iflytek/cloud/thirdparty/bk;
.super Lcom/iflytek/cloud/thirdparty/be;


# instance fields
.field private a:Lcom/iflytek/cloud/SpeechListener;

.field private b:Lcom/iflytek/cloud/thirdparty/bj;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->a:Lcom/iflytek/cloud/SpeechListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bj;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/bj;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->b:Lcom/iflytek/cloud/thirdparty/bj;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/bk;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/thirdparty/be;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->a:Lcom/iflytek/cloud/SpeechListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bj;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/bj;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->b:Lcom/iflytek/cloud/thirdparty/bj;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/bk;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechError;
    .registers 7

    const-string v0, "auth"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->c:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->t:Landroid/content/Context;

    invoke-static {v1, p1, p2, p0}, Lcom/iflytek/cloud/thirdparty/bj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)V
    :try_end_a
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_5 .. :try_end_a} :catch_2f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_59
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_8a
    .catchall {:try_start_5 .. :try_end_a} :catchall_bc

    if-eqz v0, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bk;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-object v0

    :catch_2f
    move-exception v1

    :try_start_30
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_bc

    if-eqz v1, :cond_e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bk;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " occur Error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2e

    :catch_59
    move-exception v1

    :try_start_5a
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e2a

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_bc

    if-eqz v1, :cond_e5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bk;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " occur Error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2e

    :catch_8a
    move-exception v1

    :try_start_8b
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x520b

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_95
    .catchall {:try_start_8b .. :try_end_95} :catchall_bc

    if-eqz v1, :cond_e2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bk;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " occur Error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_2e

    :catchall_bc
    move-exception v1

    if-eqz v0, :cond_e1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bk;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occur Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :cond_e1
    throw v1

    :cond_e2
    move-object v0, v1

    goto/16 :goto_2e

    :cond_e5
    move-object v0, v1

    goto/16 :goto_2e

    :cond_e8
    move-object v0, v1

    goto/16 :goto_2e
.end method

.method protected a(Landroid/os/Message;)V
    .registers 7

    const/16 v3, 0x4e29

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->a(Landroid/os/Message;)V

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string v0, "MscCommon process while utility is null!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2f

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bk;->b(Lcom/iflytek/cloud/SpeechError;)V

    :goto_1b
    return-void

    :cond_1c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a8

    move-object v0, v2

    :goto_22
    if-nez v0, :cond_96

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e24

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :pswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/bk$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bk$a;->a()[B

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bk$a;->a()[B

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_43

    :cond_3d
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_43
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->b:Lcom/iflytek/cloud/thirdparty/bj;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bk;->t:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bk$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bk$a;->a()[B

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0, p0}, Lcom/iflytek/cloud/thirdparty/bj;->a(Landroid/content/Context;Ljava/lang/String;[BLcom/iflytek/cloud/thirdparty/be;)[B

    move-result-object v0

    goto :goto_22

    :pswitch_54
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->b:Lcom/iflytek/cloud/thirdparty/bj;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->t:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/iflytek/cloud/thirdparty/bj;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)[B

    move-result-object v0

    goto :goto_22

    :pswitch_5d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_6d
    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$b;->d:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/bk;->a(Lcom/iflytek/cloud/thirdparty/be$b;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->b:Lcom/iflytek/cloud/thirdparty/bj;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bk;->t:Landroid/content/Context;

    invoke-virtual {v1, v3, p0, v0}, Lcom/iflytek/cloud/thirdparty/bj;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;Ljava/lang/String;)[B

    move-result-object v1

    :try_start_7a
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bk;->x:Lcom/iflytek/cloud/thirdparty/cq;

    if-nez v1, :cond_85

    move-object v0, v2

    :goto_7f
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/iflytek/cloud/thirdparty/cq;->a(Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_22

    :cond_85
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_8a} :catch_8b

    goto :goto_7f

    :catch_8b
    move-exception v0

    const-string v3, "DC exception:"

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_22

    :cond_96
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->a:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v1, :cond_a3

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->u:Z

    if-nez v1, :cond_a3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bk;->a:Lcom/iflytek/cloud/SpeechListener;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechListener;->onBufferReceived([B)V

    :cond_a3
    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/bk;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_1b

    :pswitch_data_a8
    .packed-switch 0xa
        :pswitch_2c
        :pswitch_54
        :pswitch_5d
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->a:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->u:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->a:Lcom/iflytek/cloud/SpeechListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SpeechListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_10
    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechListener;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bk;->a:Lcom/iflytek/cloud/SpeechListener;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bk;->a(I)V

    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->b:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bk;->a(Lcom/iflytek/cloud/thirdparty/be$b;)V

    const-string v0, "sch"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bk;->a:Lcom/iflytek/cloud/SpeechListener;

    :try_start_b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->x:Lcom/iflytek/cloud/thirdparty/cq;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cq;->b()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_1a

    :goto_10
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/iflytek/cloud/thirdparty/bk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bk;->d(Landroid/os/Message;)V

    return-void

    :catch_1a
    move-exception v0

    const-string v1, "DC exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public a(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;[B)V
    .registers 6

    const-string v0, "uup"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bk;->a:Lcom/iflytek/cloud/SpeechListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bk$a;

    invoke-direct {v0, p0, p3, p2}, Lcom/iflytek/cloud/thirdparty/bk$a;-><init>(Lcom/iflytek/cloud/thirdparty/bk;[BLjava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/bk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bk;->d(Landroid/os/Message;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk;->c:Ljava/lang/String;

    return-object v0
.end method
