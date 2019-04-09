.class public Lcom/iflytek/cloud/thirdparty/bl;
.super Lcom/iflytek/cloud/thirdparty/be;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/cloud/thirdparty/bo;

.field private e:Lcom/iflytek/cloud/thirdparty/bm;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private final l:Lorg/json/JSONObject;

.field private m:Lorg/json/JSONArray;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/cloud/thirdparty/bl;->a:I

    sput v0, Lcom/iflytek/cloud/thirdparty/bl;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/ce;Landroid/os/HandlerThread;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/thirdparty/be;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->f:Ljava/util/ArrayList;

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->g:I

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->h:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->i:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->j:Z

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->k:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->l:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->n:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->o:I

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->p:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->q:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bo;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/bo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/bl;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    return-void
.end method

.method private i()V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->o:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->g:I

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->o:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->j:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->l:Lorg/json/JSONObject;

    const-string v1, "audio_len"

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->k:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_22
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->l:Lorg/json/JSONObject;

    const-string v1, "spell_info"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v5, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    :cond_31
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->f:Ljava/util/ArrayList;

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->h:I

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/bl;->g:I

    iget-object v6, p0, Lcom/iflytek/cloud/thirdparty/bl;->l:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_47

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/bl;->l:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_47
    invoke-interface/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/bm;->a(Ljava/util/ArrayList;IIILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->f:Ljava/util/ArrayList;

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->g:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->h:I

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts msg start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "engine_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v1

    const-string v2, "net_check"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "cloud"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "distributed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_3f
    if-eqz v1, :cond_46

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bz;->a(Landroid/content/Context;)V

    :cond_46
    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/bl;->a(I)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->a()V

    goto :goto_5

    :pswitch_a
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->b()V

    goto :goto_5

    :pswitch_e
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->h()V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_e
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bo;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/thirdparty/bl;->a:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bo;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/thirdparty/bl;->b:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->f()Ljava/lang/String;

    const-string v0, "SessionEndBegin"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bo;->a(Ljava/lang/String;)V

    :goto_28
    const-string v0, "SessionEndEnd"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->u:Z

    if-eqz v0, :cond_7f

    const-string v0, "MscSynthesizer#onCancel"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    if-eqz p1, :cond_77

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bo;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QTts Error Code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    goto :goto_28

    :cond_77
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bo;->a(Ljava/lang/String;)V

    goto :goto_28

    :cond_7f
    const-string v0, "MscSynthesizer#onEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/thirdparty/bm;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_3d
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/bm;)V
    .registers 6

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bl;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    if-eqz p1, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e29

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bl;->b(Lcom/iflytek/cloud/SpeechError;)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "tts_spell_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->i:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "audio_info"

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->j:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->a_()V

    goto :goto_16
.end method

.method protected b()V
    .registers 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "SDKSessionBegin"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->t:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/thirdparty/bo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/be;)I

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "unicode"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    const/4 v2, 0x2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bo;->a([B)V

    :goto_38
    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$b;->d:Lcom/iflytek/cloud/thirdparty/be$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bl;->a(Lcom/iflytek/cloud/thirdparty/be$b;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/bl;->a(I)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->p()V

    :cond_44
    :goto_44
    return-void

    :cond_45
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/bo;->a([B)V

    goto :goto_38

    :cond_4b
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->q:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->q:I

    const/16 v2, 0x28

    if-le v1, v2, :cond_5d

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_5d
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->v()Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/iflytek/cloud/thirdparty/bl;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    goto :goto_44
.end method

.method public b(Z)V
    .registers 5

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->v()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/thirdparty/bm;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_18
    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->b(Z)V

    return-void
.end method

.method protected c()V
    .registers 4

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "tts_buffer_time"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->n:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "tts_proc_scale"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->o:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->o:I

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/be;->c()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bo;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bo;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->p:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->p:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const-string v0, "tts"

    return-object v0
.end method

.method protected h()V
    .registers 8

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v0, "GetNotifyResult"

    invoke-static {v0, v6}, Lcom/iflytek/cloud/thirdparty/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bo;->d()Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bo;->a()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->f()Ljava/lang/String;

    if-eqz v2, :cond_ba

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    if-eqz v0, :cond_ba

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->k:I

    array-length v3, v2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->k:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bo;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get audio index value error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_48
    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->i:Z

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->d:Lcom/iflytek/cloud/thirdparty/bo;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/bo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    if-nez v4, :cond_63

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    :cond_63
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_68
    iget v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->n:I

    if-gez v3, :cond_a3

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->g:I

    if-eqz v3, :cond_a3

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->g:I

    if-eq v0, v3, :cond_a3

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tts msc get audio beg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/bl;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/bl;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bl;->i()V

    :cond_a3
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->p()V

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->g:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->n:I

    if-ltz v0, :cond_b4

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/bl;->i()V

    :cond_b4
    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {p0, v5, v0, v1, v1}, Lcom/iflytek/cloud/thirdparty/bl;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    :goto_b9
    return-void

    :cond_ba
    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    const/16 v2, 0xa

    invoke-virtual {p0, v5, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bl;->a(ILcom/iflytek/cloud/thirdparty/be$a;ZI)V

    goto :goto_b9

    :cond_c2
    const-string v0, "tts msc get last audio"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    if-eqz v0, :cond_108

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->j:Z

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->l:Lorg/json/JSONObject;

    const-string v1, "audio_len"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_d8
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->l:Lorg/json/JSONObject;

    const-string v1, "spell_info"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v6, p0, Lcom/iflytek/cloud/thirdparty/bl;->m:Lorg/json/JSONArray;

    :cond_e7
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bl;->e:Lcom/iflytek/cloud/thirdparty/bm;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bl;->f:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/bl;->o:I

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/bl;->h:I

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bl;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/bl;->l:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_10c

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/bl;->l:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_105
    invoke-interface/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/bm;->a(Ljava/util/ArrayList;IIILjava/lang/String;)V

    :cond_108
    invoke-virtual {p0, v6}, Lcom/iflytek/cloud/thirdparty/bl;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_b9

    :cond_10c
    move-object v5, v6

    goto :goto_105
.end method

.method public r()Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "text_encoding"

    const-string v2, "gb2312"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/bl;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "text_encoding"

    const-string v2, "unicode"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
