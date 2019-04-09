.class public Lcom/iflytek/cloud/thirdparty/cr;
.super Lcom/iflytek/cloud/thirdparty/cq;


# static fields
.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static final i:[B

.field private static final j:Ljava/lang/String;

.field private static k:Landroid/content/Context;

.field private static l:Z

.field private static m:I

.field private static final n:I

.field private static final o:I

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static v:Z


# instance fields
.field private t:[Ljava/lang/String;

.field private u:Ljava/lang/Object;

.field private w:Lcom/iflytek/cloud/thirdparty/cq$a;

.field private x:Z

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/cr;->g:Z

    const-string v2, "300008448508"

    sput-object v2, Lcom/iflytek/cloud/thirdparty/cr;->h:Ljava/lang/String;

    new-array v2, v0, [B

    const/16 v3, 0x1f

    aput-byte v3, v2, v1

    sput-object v2, Lcom/iflytek/cloud/thirdparty/cr;->i:[B

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/iflytek/cloud/thirdparty/cr;->i:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/iflytek/cloud/thirdparty/cr;->j:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/iflytek/cloud/thirdparty/cr;->k:Landroid/content/Context;

    sput-boolean v1, Lcom/iflytek/cloud/thirdparty/cr;->l:Z

    sput v1, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->b:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->n:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->o:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->c:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->p:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->q:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->r:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->d:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->e:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->f:I

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->m:I

    sput v2, Lcom/iflytek/cloud/thirdparty/cr;->s:I

    invoke-static {}, Lcom/iflytek/msc/MSC;->isIflyVersion()Z

    move-result v2

    if-nez v2, :cond_7d

    :goto_7a
    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/cr;->v:Z

    return-void

    :cond_7d
    move v0, v1

    goto :goto_7a
.end method

.method private constructor <init>(Lcom/iflytek/cloud/thirdparty/cq$a;)V
    .registers 4

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cq;-><init>()V

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->s:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    iput-object p0, p0, Lcom/iflytek/cloud/thirdparty/cr;->u:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->w:Lcom/iflytek/cloud/thirdparty/cq$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->x:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->y:J

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cr;->w:Lcom/iflytek/cloud/thirdparty/cq$a;

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cr;->h()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss SSS"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12
.end method

.method private static a(Landroid/content/Context;)V
    .registers 3

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lcom/iflytek/cloud/thirdparty/cr;->k:Landroid/content/Context;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static declared-synchronized a(Z)V
    .registers 4

    const-class v1, Lcom/iflytek/cloud/thirdparty/cr;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    :try_start_6
    sput-boolean p0, Lcom/iflytek/cloud/thirdparty/cr;->g:Z

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    :try_start_d
    throw v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final a(I)Z
    .registers 2

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->o:I

    if-eq v0, p0, :cond_10

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->p:I

    if-eq v0, p0, :cond_10

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->q:I

    if-eq v0, p0, :cond_10

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->r:I

    if-ne v0, p0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static declared-synchronized b(Lcom/iflytek/cloud/thirdparty/cq$a;)Lcom/iflytek/cloud/thirdparty/cr;
    .registers 4

    const-class v1, Lcom/iflytek/cloud/thirdparty/cr;

    monitor-enter v1

    :try_start_3
    const-string v0, "DC create enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cr;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/cr;-><init>(Lcom/iflytek/cloud/thirdparty/cq$a;)V

    const-string v2, "DC create leave."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 9

    const-class v1, Lcom/iflytek/cloud/thirdparty/cr;

    monitor-enter v1

    :try_start_3
    const-string v0, "DC init enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    const/4 v2, 0x0

    sget-object v3, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_42

    :try_start_c
    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/cr;->a(Z)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cr;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/cr;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->g()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_18} :catch_20
    .catchall {:try_start_c .. :try_end_18} :catchall_3f

    :goto_18
    :try_start_18
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_3f

    :try_start_19
    const-string v0, "DC init leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_42

    monitor-exit v1

    return v2

    :catch_20
    move-exception v0

    :try_start_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DC exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_18

    :catchall_3f
    move-exception v0

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_21 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static declared-synchronized c()V
    .registers 5

    const-class v1, Lcom/iflytek/cloud/thirdparty/cr;

    monitor-enter v1

    :try_start_3
    const-string v0, "DC destory enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3b

    const/4 v0, 0x0

    :try_start_c
    sput-object v0, Lcom/iflytek/cloud/thirdparty/cr;->k:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/cr;->l:Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_19
    .catchall {:try_start_c .. :try_end_11} :catchall_38

    :goto_11
    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_38

    :try_start_12
    const-string v0, "DC destory leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_3b

    monitor-exit v1

    return-void

    :catch_19
    move-exception v0

    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DC exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    :catchall_38
    move-exception v0

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Ljava/lang/String;)V
    .registers 3

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cr;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sput-object p0, Lcom/iflytek/cloud/thirdparty/cr;->h:Ljava/lang/String;

    :cond_b
    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMscParameter enter key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "getMscParameter MSC is not loaded"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMscParameter value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    const-string v0, "getMscParameter leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    return-object v1

    :cond_3e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "getMscParameter key is empty"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    goto :goto_22

    :cond_4a
    :try_start_4a
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_9b

    const-string v2, "pte"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_99

    const-string v0, "utf-8"

    move-object v2, v0

    :goto_5f
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v3, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v3}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    invoke-static {v0, v3}, Lcom/iflytek/msc/MSC;->QMSPGetParam([BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v0

    if-nez v0, :cond_77

    new-instance v0, Ljava/lang/String;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v0, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_75
    move-object v1, v0

    goto :goto_22

    :cond_77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMscParameter MSC return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4a .. :try_end_8d} :catch_8f
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_8d} :catch_94

    move-object v0, v1

    goto :goto_75

    :catch_8f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_22

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_22

    :cond_99
    move-object v2, v0

    goto :goto_5f

    :cond_9b
    move-object v0, v1

    goto :goto_56
.end method

.method public static declared-synchronized d()Z
    .registers 4

    const-class v1, Lcom/iflytek/cloud/thirdparty/cr;

    monitor-enter v1

    :try_start_3
    const-string v0, "DC getEnable enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_77

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC getEnable static value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/iflytek/cloud/thirdparty/cr;->g:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/cr;->g:Z

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_74

    if-eqz v0, :cond_57

    :try_start_28
    const-string v0, "idc"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC getEnable msc val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "li"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/cr;->v:Z

    :cond_55
    :goto_55
    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/cr;->v:Z

    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC getEnable value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    const-string v2, "DC getEnable leave."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_28 .. :try_end_72} :catchall_77

    monitor-exit v1

    return v0

    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7a
    const/4 v0, 0x0

    :try_start_7b
    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/cr;->v:Z
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_77

    goto :goto_55
.end method

.method private static e(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static e()Z
    .registers 3

    const-string v0, "DC isActive enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/cr;->l:Z

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC isActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    const-string v1, "DC isActive leave."

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    return v0

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private static f(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private static g()V
    .registers 4

    const-string v0, "DC inner init enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->d()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v0, "DC calling MA.init"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MobileMarket"

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DC MA.init end"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/cr;->l:Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2e} :catch_3b
    .catchall {:try_start_8 .. :try_end_2e} :catchall_5a

    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_5a

    const-string v0, "DC inner init leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    return-void

    :cond_35
    :try_start_35
    const-string v0, "DC init is not enable."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3a} :catch_3b
    .catchall {:try_start_35 .. :try_end_3a} :catchall_5a

    goto :goto_2e

    :catch_3b
    move-exception v0

    :try_start_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2e

    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method private static g(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .registers 5

    const-string v0, "DC resetAllValues enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->u:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_35

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_17
    .catchall {:try_start_9 .. :try_end_14} :catchall_3c

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :catch_17
    move-exception v0

    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_3c

    const-string v0, "DC resetAllValues leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    return-void

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private static h(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .registers 5

    const-string v0, "DC resetDynamicValues enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->u:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3b

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->a(I)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1a} :catch_1d
    .catchall {:try_start_9 .. :try_end_1a} :catchall_42

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :catch_1d
    move-exception v0

    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_42

    const-string v0, "DC resetDynamicValues leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    return-void

    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method private j()V
    .registers 6

    const-string v0, "DC initStaticValues enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->o:I

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->o:I

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v3

    const-string v4, "appid"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC info APPID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v3, Lcom/iflytek/cloud/thirdparty/cr;->o:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    :cond_40
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->p:I

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->p:I

    invoke-static {}, Lcom/iflytek/cloud/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_56
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->q:I

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->q:I

    sget-object v3, Lcom/iflytek/cloud/thirdparty/cr;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/bp;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v3

    const-string v4, "os.imsi"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_74
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->r:I

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->r:I

    sget-object v3, Lcom/iflytek/cloud/thirdparty/cr;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/bp;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v3

    const-string v4, "os.imei"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_92
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->n:I

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    sget v2, Lcom/iflytek/cloud/thirdparty/cr;->n:I

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_a8} :catch_af
    .catchall {:try_start_8 .. :try_end_a8} :catchall_ce

    :cond_a8
    :goto_a8
    :try_start_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_ce

    const-string v0, "DC initStaticValues leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    return-void

    :catch_af
    move-exception v0

    :try_start_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a8

    :catchall_ce
    move-exception v0

    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_b0 .. :try_end_d0} :catchall_ce

    throw v0
.end method

.method private final k()V
    .registers 4

    const-string v0, "DC check enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    :try_start_6
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_17} :catch_1a

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_38
    const-string v0, "DC check leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized l()Ljava/lang/String;
    .registers 5

    const-class v2, Lcom/iflytek/cloud/thirdparty/cr;

    monitor-enter v2

    :try_start_3
    const-string v0, "DC getUid enter."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a1

    const/4 v0, 0x0

    :try_start_9
    const-string v1, "loginid"

    const-string v1, "@"

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    const-string v3, "pte"

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v1, "utf-8"

    :cond_1f
    new-instance v3, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v3}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    const-string v4, "loginid"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v3}, Lcom/iflytek/msc/MSC;->QMSPGetParam([BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    if-nez v1, :cond_a4

    new-instance v1, Ljava/lang/String;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DC getUid loginid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6b

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_63} :catch_82
    .catchall {:try_start_9 .. :try_end_63} :catchall_a1

    move-result-object v0

    :goto_64
    :try_start_64
    const-string v1, "DC getUid leave."

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_a1

    monitor-exit v2

    return-object v0

    :cond_6b
    :try_start_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DC getUid error, loginid has no tag of @:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_81} :catch_82
    .catchall {:try_start_6b .. :try_end_81} :catchall_a1

    goto :goto_64

    :catch_82
    move-exception v1

    :try_start_83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DC exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_83 .. :try_end_a0} :catchall_a1

    goto :goto_64

    :catchall_a1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_a4
    :try_start_a4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DC getUid error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_ba} :catch_82
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_a1

    goto :goto_64
.end method

.method private static m()Ljava/lang/String;
    .registers 2

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/cr;->h:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static n()Landroid/content/Context;
    .registers 2

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/cr;->k:Landroid/content/Context;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method


# virtual methods
.method public a(II)V
    .registers 4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/thirdparty/cr;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(IJ)V
    .registers 5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/thirdparty/cr;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DC setData enter: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    aput-object p2, v0, p1

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->d:I

    if-eq v0, p1, :cond_2f

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->e:I

    if-ne v0, p1, :cond_37

    :cond_2f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    :cond_37
    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->d:I

    if-eq v0, p1, :cond_47

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->e:I

    if-eq v0, p1, :cond_47

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->b:I

    if-eq v0, p1, :cond_47

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->c:I

    if-ne v0, p1, :cond_6b

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC info: key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_6b} :catch_72
    .catchall {:try_start_23 .. :try_end_6b} :catchall_91

    :cond_6b
    :goto_6b
    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_91

    const-string v0, "DC setData leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    return-void

    :catch_72
    move-exception v0

    :try_start_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6b

    :catchall_91
    move-exception v0

    monitor-exit v1
    :try_end_93
    .catchall {:try_start_73 .. :try_end_93} :catchall_91

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->u:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_70

    :try_start_3
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->x:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->x:Z

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_7a

    :try_start_d
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->w:Lcom/iflytek/cloud/thirdparty/cq$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->w:Lcom/iflytek/cloud/thirdparty/cq$a;

    invoke-interface {v0}, Lcom/iflytek/cloud/thirdparty/cq$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    sget v1, Lcom/iflytek/cloud/thirdparty/cr;->c:I

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/cr;->a(ILjava/lang/String;)V

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->d:I

    iget-wide v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->y:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/cr;->a(IJ)V

    const-string v0, "local"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cr;->w:Lcom/iflytek/cloud/thirdparty/cq$a;

    invoke-interface {v1}, Lcom/iflytek/cloud/thirdparty/cq$a;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string v0, "csid:"

    :goto_3f
    sget v1, Lcom/iflytek/cloud/thirdparty/cr;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->w:Lcom/iflytek/cloud/thirdparty/cq$a;

    invoke-interface {v2}, Lcom/iflytek/cloud/thirdparty/cq$a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/cr;->a(ILjava/lang/String;)V

    if-nez p1, :cond_80

    const/4 v0, 0x0

    :goto_5e
    sget v1, Lcom/iflytek/cloud/thirdparty/cr;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/cr;->a(II)V

    sget v0, Lcom/iflytek/cloud/thirdparty/cr;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/cr;->a(IJ)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cr;->f()Z
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_6f} :catch_70

    goto :goto_8

    :catch_70
    move-exception v0

    const-string v1, "DC exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    :try_start_7c
    throw v0

    :cond_7d
    const-string v0, "sid:"

    goto :goto_3f

    :cond_80
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_83} :catch_70

    move-result v0

    goto :goto_5e
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public b()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/cr;->y:J

    return-void
.end method

.method public f()Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "DC flush enter."

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    :try_start_6
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->e()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->g()V

    :cond_f
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->e()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cr;->j()V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cr;->k()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_20
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3a

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/cr;->t:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_32
    sget-object v2, Lcom/iflytek/cloud/thirdparty/cr;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3a
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC flush data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cr;->f(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cr;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_61} :catch_8c

    :try_start_61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cr;->e()Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string v2, "DC calling MA.onEvent"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/cr;->k:Landroid/content/Context;

    const-string v3, "iflytek"

    invoke-static {v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DC MA.onEvent end"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    :cond_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_89

    :try_start_7f
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cr;->i()V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_8c

    :cond_82
    :goto_82
    const-string v0, "DC flush leave."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cr;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v0
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8c} :catch_8c

    :catch_8c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cr;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_82
.end method
