.class public Lcom/iflytek/cloud/thirdparty/cy;
.super Lcom/iflytek/cloud/util/AudioDetector;


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/iflytek/cloud/thirdparty/ce;

.field private final f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

.field private g:Lcom/iflytek/msc/MetaVAD$Instance;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cy;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cy;->d:Ljava/util/Map;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cy;->c:Ljava/util/Map;

    const-string v1, "vad_bos"

    const-string v2, "vad_starttimeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cy;->c:Ljava/util/Map;

    const-string v1, "vad_eos"

    const-string v2, "vad_endtimeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cy;->c:Ljava/util/Map;

    const-string v1, "threshold"

    const-string v2, "vad_threshold"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cy;->d:Ljava/util/Map;

    const-string v1, "vad_bos"

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cy;->d:Ljava/util/Map;

    const-string v1, "vad_eos"

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cy;->d:Ljava/util/Map;

    const-string v1, "threshold"

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/util/AudioDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->e:Lcom/iflytek/cloud/thirdparty/ce;

    new-instance v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    invoke-direct {v0}, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    new-instance v0, Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-direct {v0}, Lcom/iflytek/msc/MetaVAD$Instance;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    const-string v0, "gb2312"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->j:Z

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->k:I

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->l:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->m:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->n:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->o:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta VAD AudioDetector constructor enter, context: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", param: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->e:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, p2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;)V

    :try_start_57
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "text_encoding"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "extra"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/bt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    :goto_73
    const-string v2, "MetaVAD.VADInitialize begin."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/msc/MetaVAD;->VADInitialize([B)I

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "sample_rate"

    const/16 v4, 0x3e80

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/iflytek/msc/MetaVAD$Instance;->rate:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->e:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "vad_res_path"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_de

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/bt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    :goto_9c
    const-string v1, "MetaVAD.VADLoadResource begin."

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v1, v1, Lcom/iflytek/msc/MetaVAD$Instance;->rate:I

    invoke-static {v1, v0}, Lcom/iflytek/msc/MetaVAD;->VADLoadResource(I[B)I

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "MetaVAD.VADCreateSession begin."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-static {v0}, Lcom/iflytek/msc/MetaVAD;->VADCreateSession(Lcom/iflytek/msc/MetaVAD$Instance;)I

    move-result v0

    :cond_b6
    if-eqz v0, :cond_ce

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetaVAD Native error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_ce} :catch_d4

    :cond_ce
    :goto_ce
    const-string v0, "Meta VAD AudioDetector constructor leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return-void

    :catch_d4
    move-exception v0

    const-string v1, "Meta VAD AudioDetector constructor exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_ce

    :cond_de
    move-object v0, v1

    goto :goto_9c

    :cond_e0
    move-object v0, v1

    goto :goto_73
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->buffer:[B

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->end:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->length:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->offset:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->quality:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->start:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget-object v0, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->subs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput-boolean v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->voice:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->volume:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->confidence:F

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-virtual {v0}, Lcom/iflytek/msc/MetaVAD$Instance;->a()V

    :cond_44
    iput v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->k:I

    return-void
.end method

.method private a(I)V
    .registers 7

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_56

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput p1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    :goto_b
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->i:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v0, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    if-eqz v0, :cond_21

    iput-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/cy;->i:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v0, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v4, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    :cond_21
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v0, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-nez v0, :cond_32

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cy;->c()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/4 v1, 0x4

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    :cond_32
    return-void

    :pswitch_33
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iput v2, v0, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    goto :goto_b

    :pswitch_3c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v4, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    goto :goto_b

    :pswitch_41
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v0, v1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    goto :goto_b

    :pswitch_46
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->i:Z

    if-eqz v3, :cond_4f

    :goto_4c
    iput v0, v2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    goto :goto_b

    :cond_4f
    move v0, v1

    goto :goto_4c

    :pswitch_51
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    goto :goto_b

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3c
        :pswitch_3c
        :pswitch_41
        :pswitch_46
        :pswitch_51
        :pswitch_33
    .end packed-switch
.end method

.method private b()V
    .registers 6

    const/4 v4, 0x3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v0, v0, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget-object v0, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->subs:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v1, v1, Lcom/iflytek/msc/MetaVAD$Instance;->begin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v2, v2, Lcom/iflytek/msc/MetaVAD$Instance;->end:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update result error: repeat sub begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    const/16 v0, 0xa

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->k:I

    if-gt v0, v1, :cond_4f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/16 v1, 0x2774

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    const-string v0, "update result error: repeat sub reach max count."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    :cond_4f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v4, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v1, v1, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    if-eq v0, v1, :cond_64

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->j:Z

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v0, v0, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    if-ne v4, v0, :cond_72

    :cond_64
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v1, v1, Lcom/iflytek/msc/MetaVAD$Instance;->begin:I

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->start:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v0, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->start:I

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->l:I

    :cond_72
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v0, v0, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    if-ne v4, v0, :cond_90

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v1, v1, Lcom/iflytek/msc/MetaVAD$Instance;->end:I

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->end:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->l:I

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->start:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-static {v1}, Lcom/iflytek/msc/MetaVAD;->VADGetSentConfidence(Lcom/iflytek/msc/MetaVAD$Instance;)F

    move-result v1

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->confidence:F

    :cond_90
    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->j:Z

    :cond_92
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v3, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->quality:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput-boolean v3, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->voice:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v1, v1, Lcom/iflytek/msc/MetaVAD$Instance;->volume:I

    mul-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->volume:I

    return-void
.end method

.method private c()Z
    .registers 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->n:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_12

    iget-wide v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->n:J

    iget-wide v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->o:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method


# virtual methods
.method public destroy()Z
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "destroy enter"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/iflytek/cloud/thirdparty/cy;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget-wide v4, v2, Lcom/iflytek/msc/MetaVAD$Instance;->handle:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_b5

    const-string v2, "destroy MetaVAD.VADDestroySession begin"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-static {v2}, Lcom/iflytek/msc/MetaVAD;->VADDestroySession(Lcom/iflytek/msc/MetaVAD$Instance;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroy MetaVAD.VADDestroySession ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :goto_39
    if-nez v2, :cond_83

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/iflytek/msc/MetaVAD$Instance;->handle:J

    const-string v2, "destroy MetaVAD.VADDelResource begin"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v2, v2, Lcom/iflytek/msc/MetaVAD$Instance;->rate:I

    invoke-static {v2}, Lcom/iflytek/msc/MetaVAD;->VADDelResource(I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroy MetaVAD.VADDelResource ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const-string v2, "destroy MetaVAD.VADUninitialize begin"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/MetaVAD;->VADUninitialize()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroy MetaVAD.VADUninitialize ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    :cond_83
    if-nez v2, :cond_a5

    :goto_85
    if-eqz v0, :cond_8d

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    const/4 v2, 0x0

    sput-object v2, Lcom/iflytek/cloud/thirdparty/cy;->a:Lcom/iflytek/cloud/util/AudioDetector;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_8d} :catch_a7
    .catchall {:try_start_c .. :try_end_8d} :catchall_b2

    :cond_8d
    :goto_8d
    :try_start_8d
    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_b2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return v0

    :cond_a5
    move v0, v1

    goto :goto_85

    :catch_a7
    move-exception v0

    :try_start_a8
    const-string v2, "destroy exception:"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_8d

    :catchall_b2
    move-exception v0

    monitor-exit v3
    :try_end_b4
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_b2

    throw v0

    :cond_b5
    move v2, v1

    goto :goto_39
.end method

.method public detect([BIIZ)Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;
    .registers 12

    const/4 v1, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detect enter, buffer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", offset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isLast: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/cy;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_38
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cy;->a()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    if-eqz v0, :cond_49

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget-wide v5, v0, Lcom/iflytek/msc/MetaVAD$Instance;->handle:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_108

    :cond_49
    const-string v0, "detect error: vad instance null, or handle is invalid!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/16 v3, 0x520b

    iput v3, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v0, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez v0, :cond_ff

    if-eqz p4, :cond_162

    const/4 v0, 0x1

    :goto_5d
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-static {v3, p1, p2, p3, v0}, Lcom/iflytek/msc/MetaVAD;->VADAppendPCM(Lcom/iflytek/msc/MetaVAD$Instance;[BIII)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MetaVAD VADAppendPCM ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->i:Z

    if-eqz v3, :cond_83

    iget-wide v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->o:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->o:J

    :cond_83
    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/cy;->a(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v0, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez v0, :cond_ff

    move v0, v1

    :cond_8d
    if-ne v1, v0, :cond_ff

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-static {v0}, Lcom/iflytek/msc/MetaVAD;->VADGetSeg(Lcom/iflytek/msc/MetaVAD$Instance;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MetaVAD VADGetSeg ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seg status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v4, v4, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seg begin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v4, v4, Lcom/iflytek/msc/MetaVAD$Instance;->begin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seg end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v4, v4, Lcom/iflytek/msc/MetaVAD$Instance;->end:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/cy;->a(I)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v3, v3, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez v3, :cond_ed

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cy;->b()V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput-object p1, v3, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->buffer:[B

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput p3, v3, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->length:I

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput p2, v3, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->offset:I

    :cond_ed
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v4, v4, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    if-eq v3, v4, :cond_fa

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v3, v3, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-eqz v3, :cond_8d

    :cond_fa
    const-string v0, "detect get last seg or error."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_38 .. :try_end_ff} :catch_121
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_ff} :catch_14f
    .catchall {:try_start_38 .. :try_end_ff} :catchall_134

    :cond_ff
    :goto_ff
    :try_start_ff
    monitor-exit v2
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_134

    const-string v0, "detect leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    return-object v0

    :cond_108
    if-eqz p1, :cond_117

    if-lez p3, :cond_117

    const v0, 0x8000

    if-lt v0, p3, :cond_117

    if-ltz p2, :cond_117

    :try_start_113
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_137

    :cond_117
    if-nez p4, :cond_54

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/16 v3, 0x4e2c

    iput v3, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I
    :try_end_11f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_113 .. :try_end_11f} :catch_121
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_11f} :catch_14f
    .catchall {:try_start_113 .. :try_end_11f} :catchall_134

    goto/16 :goto_54

    :catch_121
    move-exception v0

    :try_start_122
    const-string v1, "detect exception"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cy;->a()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/16 v1, 0x4e35

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    goto :goto_ff

    :catchall_134
    move-exception v0

    monitor-exit v2
    :try_end_136
    .catchall {:try_start_122 .. :try_end_136} :catchall_134

    throw v0

    :cond_137
    :try_start_137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect buffer length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V
    :try_end_14d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_137 .. :try_end_14d} :catch_121
    .catch Ljava/lang/Throwable; {:try_start_137 .. :try_end_14d} :catch_14f
    .catchall {:try_start_137 .. :try_end_14d} :catchall_134

    goto/16 :goto_54

    :catch_14f
    move-exception v0

    :try_start_150
    const-string v1, "detect exception"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cy;->a()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->f:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/16 v1, 0x5207

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I
    :try_end_161
    .catchall {:try_start_150 .. :try_end_161} :catchall_134

    goto :goto_ff

    :cond_162
    const/4 v0, 0x0

    goto/16 :goto_5d
.end method

.method public reset()V
    .registers 7

    const-wide/16 v4, 0x0

    const-string v0, "reset enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cy;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget-wide v2, v0, Lcom/iflytek/msc/MetaVAD$Instance;->handle:J
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_5a

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5d

    :try_start_16
    const-string v0, "reset MetaVAD.VADResetSession begin"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-static {v0}, Lcom/iflytek/msc/MetaVAD;->VADResetSession(Lcom/iflytek/msc/MetaVAD$Instance;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset MetaVAD.VADResetSession return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-virtual {v0}, Lcom/iflytek/msc/MetaVAD$Instance;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->i:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/cy;->o:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->l:I
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_49} :catch_50
    .catchall {:try_start_16 .. :try_end_49} :catchall_5a

    :goto_49
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_5a

    const-string v0, "reset leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return-void

    :catch_50
    move-exception v0

    :try_start_51
    const-string v2, "reset exception:"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_49

    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    throw v0

    :cond_5d
    :try_start_5d
    const-string v0, "setParameter error: vad instance is null, or invalid handle."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_5a

    goto :goto_49
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide/16 v5, 0x0

    const-wide/16 v0, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameter enter, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/cy;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_27
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    if-eqz v3, :cond_17a

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget-wide v3, v3, Lcom/iflytek/msc/MetaVAD$Instance;->handle:J
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_d4

    cmp-long v3, v5, v3

    if-eqz v3, :cond_17a

    :try_start_33
    const-string v3, "reset_sentence"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    invoke-static {v0}, Lcom/iflytek/msc/MetaVAD;->VADResetSentence(Lcom/iflytek/msc/MetaVAD$Instance;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VAD VADResetSentence ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_57} :catch_ca
    .catchall {:try_start_33 .. :try_end_57} :catchall_d4

    :cond_57
    :goto_57
    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_d4

    const-string v0, "setParameter leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return-void

    :cond_5e
    :try_start_5e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_dd

    sget-object v3, Lcom/iflytek/cloud/thirdparty/cy;->c:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->e:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_77
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->e:Lcom/iflytek/cloud/thirdparty/ce;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cy;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cy;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cy;->h:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/thirdparty/bt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/cy;->h:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/iflytek/cloud/thirdparty/bt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/iflytek/msc/MetaVAD;->VADSetParam(Lcom/iflytek/msc/MetaVAD$Instance;[B[B)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VAD SetParameter key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", value="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_c9} :catch_ca
    .catchall {:try_start_5e .. :try_end_c9} :catchall_d4

    goto :goto_57

    :catch_ca
    move-exception v0

    :try_start_cb
    const-string v1, "setParameter exception"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_57

    :catchall_d4
    move-exception v0

    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_cb .. :try_end_d6} :catchall_d4

    throw v0

    :cond_d7
    :try_start_d7
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->e:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ce;->d(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_77

    :cond_dd
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "speech_timeout"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_e8} :catch_ca
    .catchall {:try_start_d7 .. :try_end_e8} :catchall_d4

    move-result v3

    if-eqz v3, :cond_13c

    :try_start_eb
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_ee
    .catch Ljava/lang/NumberFormatException; {:try_start_eb .. :try_end_ee} :catch_131
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_ee} :catch_ca
    .catchall {:try_start_eb .. :try_end_ee} :catchall_d4

    move-result-wide v0

    :goto_ef
    :try_start_ef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetParameter speech timeout value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    cmp-long v3, v5, v0

    if-gez v3, :cond_136

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget v3, v3, Lcom/iflytek/msc/MetaVAD$Instance;->rate:I

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/cy;->m:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->n:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetParameter BytesOfSpeechTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->n:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    goto/16 :goto_57

    :catch_131
    move-exception v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_ef

    :cond_136
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->n:J

    goto/16 :goto_57

    :cond_13c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cy;->g:Lcom/iflytek/msc/MetaVAD$Instance;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cy;->h:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/iflytek/cloud/thirdparty/bt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cy;->h:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/iflytek/cloud/thirdparty/bt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/iflytek/msc/MetaVAD;->VADSetParam(Lcom/iflytek/msc/MetaVAD$Instance;[B[B)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VAD SetParameter name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_178
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_178} :catch_ca
    .catchall {:try_start_ef .. :try_end_178} :catchall_d4

    goto/16 :goto_57

    :cond_17a
    :try_start_17a
    const-string v0, "setParameter error: vad instance is null, or invalid handle."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V
    :try_end_17f
    .catchall {:try_start_17a .. :try_end_17f} :catchall_d4

    goto/16 :goto_57
.end method
