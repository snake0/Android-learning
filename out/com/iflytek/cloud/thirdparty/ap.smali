.class public Lcom/iflytek/cloud/thirdparty/ap;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/ap;

.field private static b:I

.field private static c:I


# instance fields
.field private d:Z

.field private e:Lcom/iflytek/cloud/thirdparty/ar;

.field private f:Lcom/iflytek/cloud/thirdparty/ap$a;

.field private g:Landroid/os/Handler;

.field private h:Lcom/iflytek/cae/jni/CAEJni$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    const/16 v0, 0x400

    sput v0, Lcom/iflytek/cloud/thirdparty/ap;->c:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->d:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ap$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/ap$1;-><init>(Lcom/iflytek/cloud/thirdparty/ap;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->g:Landroid/os/Handler;

    new-instance v0, Lcom/iflytek/cae/jni/CAEJni$a;

    invoke-direct {v0}, Lcom/iflytek/cae/jni/CAEJni$a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->h:Lcom/iflytek/cae/jni/CAEJni$a;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->f:Lcom/iflytek/cloud/thirdparty/ap$a;

    if-nez v0, :cond_23

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ap$a;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/ap$a;-><init>(Lcom/iflytek/cloud/thirdparty/ap;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->f:Lcom/iflytek/cloud/thirdparty/ap$a;

    :cond_23
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/iflytek/cloud/thirdparty/ap;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/iflytek/cae/jni/CAEJni;->a(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    const-string v1, "Ivw resouce path is empty!"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    :goto_11
    return-object v0

    :cond_12
    sput p2, Lcom/iflytek/cloud/thirdparty/ap;->c:I

    const-class v1, Lcom/iflytek/cloud/thirdparty/ap;

    monitor-enter v1

    :try_start_17
    sget-object v0, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    if-nez v0, :cond_69

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ap;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ap;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    const-string v0, "ivwCb"

    const-string v2, "audioCb"

    const-string v3, ""

    sget-object v4, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-static {p1, v0, v2, v3, v4}, Lcom/iflytek/cae/jni/CAEJni;->CAENew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_4d

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ap;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CAE engine create success. handle="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->a(Ljava/lang/String;)V

    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_66

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    goto :goto_11

    :cond_4d
    :try_start_4d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CAE engine create fail. error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    goto :goto_49

    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_4d .. :try_end_68} :catchall_66

    throw v0

    :cond_69
    :try_start_69
    const-string v0, "CAE engine has already existed!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_66

    goto :goto_49
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ap;)Lcom/iflytek/cloud/thirdparty/ar;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->e:Lcom/iflytek/cloud/thirdparty/ar;

    return-object v0
.end method

.method public static c()I
    .registers 1

    invoke-static {}, Lcom/iflytek/cae/jni/CAEJni;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/iflytek/cae/jni/CAEJni;->CAEGetChannel()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method static synthetic d()I
    .registers 1

    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->c:I

    return v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->f:Lcom/iflytek/cloud/thirdparty/ap$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->f:Lcom/iflytek/cloud/thirdparty/ap$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap$a;->start()V

    :cond_9
    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->f:Lcom/iflytek/cloud/thirdparty/ap$a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->f:Lcom/iflytek/cloud/thirdparty/ap$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->f:Lcom/iflytek/cloud/thirdparty/ap$a;

    :cond_c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    const-class v1, Lcom/iflytek/cloud/thirdparty/ap;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    if-eqz v0, :cond_43

    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    invoke-static {v0}, Lcom/iflytek/cae/jni/CAEJni;->CAEReset(I)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ap;->g:Landroid/os/Handler;

    const/4 v3, 0x3

    new-instance v4, Lcom/iflytek/cloud/thirdparty/aq;

    const-string v5, ""

    invoke-direct {v4, v0, v5}, Lcom/iflytek/cloud/thirdparty/aq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CAE engine reset fail. error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ap;->b()V

    :goto_35
    monitor-exit v1

    return-void

    :cond_37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->d:Z

    const-string v0, "CAE engine reset sucess."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->a(Ljava/lang/String;)V

    goto :goto_35

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    :try_start_43
    const-string v0, "CAE engine is destroyed, invalid call!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_40

    goto :goto_35
.end method

.method public a(I)V
    .registers 7

    const-class v1, Lcom/iflytek/cloud/thirdparty/ap;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    if-nez v0, :cond_e

    const-string v0, "CAE engine is destroyed, invalid call!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    monitor-exit v1

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    invoke-static {v0, p1}, Lcom/iflytek/cae/jni/CAEJni;->CAESetRealBeam(II)I

    move-result v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3b

    if-eqz v0, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CAE engine setRealBeam fail. error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/as;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap;->g:Landroid/os/Handler;

    const/4 v2, 0x3

    new-instance v3, Lcom/iflytek/cloud/thirdparty/aq;

    const-string v4, ""

    invoke-direct {v3, v0, v4}, Lcom/iflytek/cloud/thirdparty/aq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public a(I[B[B)V
    .registers 10

    const-class v1, Lcom/iflytek/cloud/thirdparty/ap;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    if-eqz v0, :cond_37

    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    invoke-static {v0, p1, p2, p3}, Lcom/iflytek/cae/jni/CAEJni;->CAESendMsg(II[B[B)I

    move-result v0

    if-eqz v0, :cond_35

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ap;->g:Landroid/os/Handler;

    const/4 v3, 0x3

    new-instance v4, Lcom/iflytek/cloud/thirdparty/aq;

    const-string v5, ""

    invoke-direct {v4, v0, v5}, Lcom/iflytek/cloud/thirdparty/aq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send message error. error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ap;->b()V

    :cond_35
    :goto_35
    monitor-exit v1

    return-void

    :cond_37
    const-string v0, "CAE engine is destroyed, invalid call!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    goto :goto_35

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ap;->e:Lcom/iflytek/cloud/thirdparty/ar;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    const-string v0, "key or val is empty."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    const-class v1, Lcom/iflytek/cloud/thirdparty/ap;

    monitor-enter v1

    :try_start_15
    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_2c

    if-eqz v0, :cond_39

    :try_start_19
    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iflytek/cae/jni/CAEJni;->CAESetWParam(I[B[B)I
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_2a} :catch_2f
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2c

    :goto_2a
    :try_start_2a
    monitor-exit v1

    goto :goto_11

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v0

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, "key or value is not utf-8 encoded!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    goto :goto_2a

    :cond_39
    const-string v0, "CAE engine is destroyed, invalid call!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_2c

    goto :goto_2a
.end method

.method public a([BI)V
    .registers 9

    const-class v1, Lcom/iflytek/cloud/thirdparty/ap;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    if-eqz v0, :cond_37

    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    invoke-static {v0, p1, p2}, Lcom/iflytek/cae/jni/CAEJni;->CAEAudioWrite(I[BI)I

    move-result v0

    if-eqz v0, :cond_35

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ap;->g:Landroid/os/Handler;

    const/4 v3, 0x3

    new-instance v4, Lcom/iflytek/cloud/thirdparty/aq;

    const-string v5, ""

    invoke-direct {v4, v0, v5}, Lcom/iflytek/cloud/thirdparty/aq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Write audio error. error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ap;->b()V

    :cond_35
    :goto_35
    monitor-exit v1

    return-void

    :cond_37
    const-string v0, "CAE engine is destroyed, invalid call!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/as;->b(Ljava/lang/String;)V

    goto :goto_35

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public b()V
    .registers 6

    const-class v1, Lcom/iflytek/cloud/thirdparty/ap;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    if-nez v0, :cond_9

    monitor-exit v1

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ap;->f()V

    :cond_12
    sget v0, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    invoke-static {v0}, Lcom/iflytek/cae/jni/CAEJni;->CAEDestroy(I)I

    move-result v0

    if-nez v0, :cond_4c

    const/4 v2, 0x0

    sput v2, Lcom/iflytek/cloud/thirdparty/ap;->b:I

    const/4 v2, 0x0

    sput-object v2, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    const-string v2, "CAE engine destroy sucess."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/as;->a(Ljava/lang/String;)V

    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_5f

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CAE engine destroy fail. error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/as;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap;->g:Landroid/os/Handler;

    const/4 v2, 0x3

    new-instance v3, Lcom/iflytek/cloud/thirdparty/aq;

    const-string v4, ""

    invoke-direct {v3, v0, v4}, Lcom/iflytek/cloud/thirdparty/aq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    :cond_4c
    :try_start_4c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CAE engine destroy, error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/as;->a(Ljava/lang/String;)V

    goto :goto_25

    :catchall_5f
    move-exception v0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_5f

    throw v0
.end method
