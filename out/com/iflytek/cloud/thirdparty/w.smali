.class public Lcom/iflytek/cloud/thirdparty/w;
.super Lcom/iflytek/cloud/thirdparty/u;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/ar;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/iflytek/cloud/thirdparty/ap;

.field private j:Z

.field private k:Z

.field private l:Lcom/iflytek/cloud/thirdparty/ak$a;

.field private m:Lcom/iflytek/cloud/thirdparty/w$b;

.field private n:Lcom/iflytek/cloud/thirdparty/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AIUI/clearhistory/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/w;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 4

    const/4 v1, 0x0

    const-string v0, "CaeUnit"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/cloud/thirdparty/u;-><init>(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/t;)V

    const/16 v0, 0x600

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/w;->e:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/w;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/w;)Lcom/iflytek/cloud/thirdparty/ap;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    return-object v0
.end method

.method private a([B)V
    .registers 9

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v3, "audio"

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    iput v1, v6, Landroid/os/Message;->what:I

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/4 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/iflytek/cloud/thirdparty/w;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/w;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ap;->a(I)V

    :cond_9
    return-void
.end method

.method public a(I[B[B)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ap;->a(I[B[B)V

    :cond_9
    return-void
.end method

.method public a(I[B[B[B)V
    .registers 12

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_30

    :cond_4
    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "plain"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/16 v1, 0x3e8

    const-string v4, ""

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Lcom/iflytek/cloud/thirdparty/af;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/w;->n:Lcom/iflytek/cloud/thirdparty/ab;

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/aq;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Z

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/aq;->a()I

    move-result v0

    const-string v1, "CAE error!"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/w;->a(ILjava/lang/String;)V

    const-string v0, "CaeUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/aq;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x1

    const-string v0, "CaeUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeup, wakeInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->n:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->b()V

    :cond_26
    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/t;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/w;->a(Landroid/os/Message;)V

    :cond_3c
    return-void
.end method

.method public a([BIII)V
    .registers 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->n:Lcom/iflytek/cloud/thirdparty/ab;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->j:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/w;->a([B)V

    :cond_c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->n:Lcom/iflytek/cloud/thirdparty/ab;

    const-string v2, ""

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/ab;->a([BLjava/lang/String;III)V

    :cond_16
    return-void
.end method

.method public a([BLjava/lang/String;III)V
    .registers 10

    if-nez p1, :cond_a

    const-string v0, "CaeUnit"

    const-string v1, "audio is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_2d

    const-wide v0, 0x80000000L

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/ak$a;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_27

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/w;->j()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Lcom/iflytek/cloud/thirdparty/ak$a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ak$a;->b(Ljava/lang/String;)V

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Lcom/iflytek/cloud/thirdparty/ak$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/ak$a;->a([BZ)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_37

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->m:Lcom/iflytek/cloud/thirdparty/w$b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->m:Lcom/iflytek/cloud/thirdparty/w$b;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/w$b;->a([B)V

    goto :goto_9

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v1, 0x521d

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/w;->a(ILjava/lang/String;)V

    goto :goto_2d
.end method

.method public a()Z
    .registers 5

    const-string v0, "ivw"

    const-string v1, "res_type"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ivw"

    const-string v2, "res_path"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_24
    const-string v0, "CaeUnit"

    const-string v1, "critical params changed."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/w;->d()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/w;->c()I

    const-string v0, "CaeUnit"

    const-string v1, "CaeUnit reset."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->j:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ap;->a(I)V

    :cond_10
    return-void
.end method

.method public c()I
    .registers 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->a:Z

    if-eqz v0, :cond_e

    const-string v0, "CaeUnit"

    const-string v2, "CaeUnit was already started."

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/w;->g()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/w;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/at$a;->valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/at$a;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/at;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/at$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/w;->e:I

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ap;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/iflytek/cloud/thirdparty/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    if-nez v0, :cond_33

    const/4 v0, -0x1

    goto :goto_d

    :cond_33
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/ar;)V

    const-string v0, "ivw"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_62

    const-string v2, "cae_params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_62

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v5, v0, v4}, Lcom/iflytek/cloud/thirdparty/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_62
    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Z

    invoke-static {}, Lcom/iflytek/aiui/AIUISetting;->getRawAudioPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ak$a;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Lcom/iflytek/cloud/thirdparty/ak$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/w$b;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/w$b;-><init>(Lcom/iflytek/cloud/thirdparty/w;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->m:Lcom/iflytek/cloud/thirdparty/w$b;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->m:Lcom/iflytek/cloud/thirdparty/w$b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w$b;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->a:Z

    const-string v0, "CaeUnit"

    const-string v2, "CaeUnit started."

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_d
.end method

.method public d()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "CaeUnit"

    const-string v1, "destroy cae engine."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap;->b()V

    :cond_11
    const-string v0, "CaeUnit"

    const-string v1, "cae engine has been destroyed."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->m:Lcom/iflytek/cloud/thirdparty/w$b;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->m:Lcom/iflytek/cloud/thirdparty/w$b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w$b;->a()V

    :cond_21
    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/w;->a:Z

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/w;->j:Z

    return-void
.end method

.method public f()I
    .registers 2

    invoke-static {}, Lcom/iflytek/cae/jni/CAEJni;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ap;->c()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public g()V
    .registers 4

    const-string v0, "ivw"

    const-string v1, "res_type"

    const-string v2, "assets"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->g:Ljava/lang/String;

    const-string v0, "ivw"

    const-string v1, "res_path"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->f:Ljava/lang/String;

    const-string v0, "ivw"

    const-string v1, "lib_cae"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->h:Ljava/lang/String;

    const-string v0, "ivw"

    const-string v1, "audio_throw_size"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/w;->e:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/w;->e:I

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->j:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap;->a()V

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Z

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Lcom/iflytek/cloud/thirdparty/ak$a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ak$a;->b(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ak$a;->d()V

    :cond_9
    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->j:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap;->a()V

    :cond_10
    return-void
.end method
