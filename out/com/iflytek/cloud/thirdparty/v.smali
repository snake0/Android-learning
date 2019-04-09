.class public Lcom/iflytek/cloud/thirdparty/v;
.super Lcom/iflytek/cloud/thirdparty/u;


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Ljava/util/regex/Pattern;

.field private static f:Ljava/util/regex/Pattern;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/iflytek/cloud/thirdparty/v$a;

.field private k:Landroid/os/HandlerThread;

.field private l:Lcom/iflytek/cloud/SpeechRecognizer;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/iflytek/cloud/GrammarListener;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/iflytek/cloud/LexiconListener;

.field private t:Lcom/iflytek/cloud/RecognizerListener;

.field private u:Lcom/iflytek/cloud/thirdparty/ae;

.field private v:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/aiui/AIUISetting;->getAIUIPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "asr/grammar/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Ljava/lang/String;

    const-string v0, "!grammar .+?;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/util/regex/Pattern;

    const-string v0, "#BNF.+?;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/t;)V
    .registers 4

    const/4 v1, 0x0

    const-string v0, "AsrUnit"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/cloud/thirdparty/u;-><init>(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/t;)V

    const-string v0, "cloud"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->v:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v;->p:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/v$1;-><init>(Lcom/iflytek/cloud/thirdparty/v;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->o:Lcom/iflytek/cloud/GrammarListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$2;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/v$2;-><init>(Lcom/iflytek/cloud/thirdparty/v;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->s:Lcom/iflytek/cloud/LexiconListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$3;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/v$3;-><init>(Lcom/iflytek/cloud/thirdparty/v;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->t:Lcom/iflytek/cloud/RecognizerListener;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v;->n:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v;->g()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AIUI:ASR-HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ae;->a()Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->u:Lcom/iflytek/cloud/thirdparty/ae;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v;Lcom/iflytek/cloud/SpeechRecognizer;)Lcom/iflytek/cloud/SpeechRecognizer;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/t;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/v;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/v;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/v;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v;Ljava/lang/String;Ljava/util/Map;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/v;->a(Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/af;->f()Lcom/iflytek/cloud/thirdparty/ag;

    move-result-object v0

    :try_start_a
    const-string v1, ""

    const-string v4, ""

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/v;->m:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_16} :catch_17
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_16} :catch_1c

    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_16

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_16
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/v;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/v;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/v;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/v;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/v;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/v;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/v;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/ae;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->u:Lcom/iflytek/cloud/thirdparty/ae;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/v;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/v;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/v;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Z

    return p1
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/v;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Z

    return p1
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/v;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/SpeechRecognizer;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/t;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 5

    const-string v0, "asr"

    const-string v1, "res_type"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    move-result-object v0

    const-string v1, "asr"

    const-string v2, "res_path"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Ljava/lang/String;

    const-string v0, "asr"

    const-string v1, "threshold"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic i(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/RecognizerListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->t:Lcom/iflytek/cloud/RecognizerListener;

    return-object v0
.end method

.method static synthetic k(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/t;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->c:Lcom/iflytek/cloud/thirdparty/t;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/cloud/thirdparty/v;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->v:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/cloud/thirdparty/v;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->p:Z

    return v0
.end method

.method static synthetic n(Lcom/iflytek/cloud/thirdparty/v;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Z

    return v0
.end method

.method static synthetic o(Lcom/iflytek/cloud/thirdparty/v;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/thirdparty/y;)V
    .registers 4

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->a:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$a;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->h()V

    const-string v0, "global"

    const-string v1, "scene"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/v;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!grammar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_49
    :goto_49
    const-string v0, "AsrUnit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace grammar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "engine_type"

    const-string v3, "local"

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "text_encoding"

    const-string v3, "utf-8"

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "result_type"

    const-string v3, "json"

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "asr_res_path"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "grm_build_path"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v1, "bnf"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->o:Lcom/iflytek/cloud/GrammarListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->buildGrammar(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;)I

    const-string v0, "AsrUnit"

    const-string v1, "build grammar."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_aa
    sget-object v2, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$0\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_49
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "global"

    const-string v3, "scene"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->c:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/t;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v4, "engine_type"

    const-string v5, "local"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v4, "grammar_list"

    invoke-virtual {v3, v4, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v3, "request_audio_focus"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->s:Lcom/iflytek/cloud/LexiconListener;

    invoke-virtual {v2, v1, v0, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->updateLexicon(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;)I

    const-string v0, "AsrUnit"

    const-string v1, "update asr lexicon."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4f} :catch_50

    :goto_4f
    return-void

    :catch_50
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, 0x4e2c

    const-string v1, "Invalid asr lexicon json!"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/v;->a(ILjava/lang/String;)V

    goto :goto_4f
.end method

.method public c()I
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v;->a:Z

    if-eqz v1, :cond_d

    const-string v1, "AsrUnit"

    const-string v2, "AsrUnit is already started."

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->h()V

    new-instance v1, Lcom/iflytek/cloud/thirdparty/v$a;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->k:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/iflytek/cloud/thirdparty/v$a;-><init>(Lcom/iflytek/cloud/thirdparty/v;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$a;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v;->a:Z

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->n:Z

    const-string v0, "AsrUnit"

    const-string v1, "AsrUnit started"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/u;->c()I

    move-result v0

    goto :goto_c
.end method

.method public d()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/v$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$a;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/v;->a:Z

    const-string v0, "AsrUnit"

    const-string v1, "AsrUnit stopped"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v;->d()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_c
    const-string v0, "AsrUnit"

    const-string v1, "destoryed"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 4

    const-string v0, "speech"

    const-string v1, "intent_engine_type"

    const-string v2, "cloud"

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Ljava/lang/String;

    return-void
.end method
