.class public Lcom/baidu/tts/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/tts/auth/a;


# instance fields
.field private b:Lcom/baidu/tts/k/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/tts/k/c",
            "<",
            "Lcom/baidu/tts/auth/c;",
            "Lcom/baidu/tts/auth/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/tts/k/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/tts/k/c",
            "<",
            "Lcom/baidu/tts/auth/b;",
            "Lcom/baidu/tts/auth/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/auth/a;->a:Lcom/baidu/tts/auth/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/baidu/tts/k/c;

    invoke-direct {v0}, Lcom/baidu/tts/k/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/auth/a;->b:Lcom/baidu/tts/k/c;

    .line 43
    new-instance v0, Lcom/baidu/tts/k/c;

    invoke-direct {v0}, Lcom/baidu/tts/k/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/auth/a;->c:Lcom/baidu/tts/k/c;

    .line 44
    return-void
.end method

.method public static a()Lcom/baidu/tts/auth/a;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/baidu/tts/auth/a;->a:Lcom/baidu/tts/auth/a;

    if-nez v0, :cond_13

    .line 48
    const-class v1, Lcom/baidu/tts/auth/a;

    monitor-enter v1

    .line 49
    :try_start_7
    sget-object v0, Lcom/baidu/tts/auth/a;->a:Lcom/baidu/tts/auth/a;

    if-nez v0, :cond_12

    .line 50
    new-instance v0, Lcom/baidu/tts/auth/a;

    invoke-direct {v0}, Lcom/baidu/tts/auth/a;-><init>()V

    sput-object v0, Lcom/baidu/tts/auth/a;->a:Lcom/baidu/tts/auth/a;

    .line 52
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 54
    :cond_13
    sget-object v0, Lcom/baidu/tts/auth/a;->a:Lcom/baidu/tts/auth/a;

    return-object v0

    .line 52
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/baidu/tts/auth/a;)Lcom/baidu/tts/k/c;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/auth/a;->b:Lcom/baidu/tts/k/c;

    return-object v0
.end method

.method private a(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;J)TT;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/baidu/tts/auth/a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    .line 275
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 280
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 281
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 282
    return-object v0
.end method

.method static synthetic b(Lcom/baidu/tts/auth/a;)Lcom/baidu/tts/k/c;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/auth/a;->c:Lcom/baidu/tts/k/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/m;Lcom/baidu/tts/m/j;)Lcom/baidu/tts/auth/AuthInfo;
    .registers 7

    .prologue
    .line 58
    invoke-virtual {p2}, Lcom/baidu/tts/m/j;->a()Lcom/baidu/tts/m/b;

    move-result-object v1

    .line 59
    new-instance v0, Lcom/baidu/tts/auth/AuthInfo;

    invoke-direct {v0}, Lcom/baidu/tts/auth/AuthInfo;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/f/m;)V

    .line 61
    sget-object v2, Lcom/baidu/tts/auth/a$3;->a:[I

    invoke-virtual {p1}, Lcom/baidu/tts/f/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_36

    .line 76
    :goto_17
    return-object v0

    .line 63
    :pswitch_18
    invoke-virtual {v1}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/auth/c$a;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/AuthInfo;->setOnlineResult(Lcom/baidu/tts/auth/c$a;)V

    goto :goto_17

    .line 67
    :pswitch_24
    invoke-virtual {v1}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/e$b;)Lcom/baidu/tts/auth/b$a;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/AuthInfo;->setOfflineResult(Lcom/baidu/tts/auth/b$a;)V

    goto :goto_17

    .line 71
    :pswitch_30
    invoke-virtual {p0, v1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/m/b;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object v0

    goto :goto_17

    .line 61
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_18
        :pswitch_24
        :pswitch_30
    .end packed-switch
.end method

.method public a(Lcom/baidu/tts/m/b;)Lcom/baidu/tts/auth/AuthInfo;
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 191
    const-string v0, "AuthClient"

    const-string v1, "enter authMix"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 193
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/auth/a$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/baidu/tts/auth/a$1;-><init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/m/b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 205
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/auth/a$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/baidu/tts/auth/a$2;-><init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/m/b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 217
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 218
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 219
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 222
    :try_start_32
    const-string v1, "AuthClient"

    const-string v4, "+ await"

    invoke-static {v1, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 224
    const-string v0, "AuthClient"

    const-string v1, "- await"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_43} :catch_b0

    .line 230
    :goto_43
    new-instance v1, Lcom/baidu/tts/auth/c$a;

    invoke-direct {v1}, Lcom/baidu/tts/auth/c$a;-><init>()V

    .line 231
    const-string v0, "AuthClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ mix online get onlineResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :try_start_60
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/auth/c$a;
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_66} :catch_bf
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_60 .. :try_end_66} :catch_d8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_60 .. :try_end_66} :catch_ec

    move-object v1, v0

    .line 246
    :goto_67
    const-string v0, "AuthClient"

    const-string v2, "- online get"

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v2, Lcom/baidu/tts/auth/b$a;

    invoke-direct {v2}, Lcom/baidu/tts/auth/b$a;-><init>()V

    .line 248
    const-string v0, "AuthClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ mix offline get offlineResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :try_start_8b
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/auth/b$a;
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_91} :catch_fc
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8b .. :try_end_91} :catch_117
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8b .. :try_end_91} :catch_12c

    .line 263
    :goto_91
    const-string v2, "AuthClient"

    const-string v3, "- offline get"

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v2, Lcom/baidu/tts/auth/AuthInfo;

    invoke-direct {v2}, Lcom/baidu/tts/auth/AuthInfo;-><init>()V

    .line 265
    sget-object v3, Lcom/baidu/tts/f/m;->c:Lcom/baidu/tts/f/m;

    invoke-virtual {v2, v3}, Lcom/baidu/tts/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/f/m;)V

    .line 266
    invoke-virtual {v2, v1}, Lcom/baidu/tts/auth/AuthInfo;->setOnlineResult(Lcom/baidu/tts/auth/c$a;)V

    .line 267
    invoke-virtual {v2, v0}, Lcom/baidu/tts/auth/AuthInfo;->setOfflineResult(Lcom/baidu/tts/auth/b$a;)V

    .line 268
    const-string v0, "AuthClient"

    const-string v1, "end authMix"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-object v2

    .line 225
    :catch_b0
    move-exception v0

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 227
    invoke-virtual {v2, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 228
    invoke-virtual {v3, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_43

    .line 234
    :catch_bf
    move-exception v0

    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 236
    invoke-virtual {v2, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 237
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v4, Lcom/baidu/tts/f/n;->d:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v4, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_67

    .line 239
    :catch_d8
    move-exception v0

    .line 240
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v4, Lcom/baidu/tts/f/n;->e:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_67

    .line 242
    :catch_ec
    move-exception v0

    .line 243
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v4, Lcom/baidu/tts/f/n;->p:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v4, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_67

    .line 251
    :catch_fc
    move-exception v0

    .line 252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 253
    invoke-virtual {v3, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 254
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v4, Lcom/baidu/tts/f/n;->v:Lcom/baidu/tts/f/n;

    invoke-virtual {v3, v4, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/tts/auth/b$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v2

    .line 262
    goto/16 :goto_91

    .line 256
    :catch_117
    move-exception v0

    .line 257
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v4, Lcom/baidu/tts/f/n;->w:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/tts/auth/b$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v2

    .line 262
    goto/16 :goto_91

    .line 259
    :catch_12c
    move-exception v0

    .line 260
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v4, Lcom/baidu/tts/f/n;->I:Lcom/baidu/tts/f/n;

    invoke-virtual {v3, v4, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/tts/auth/b$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v2

    goto/16 :goto_91
.end method

.method public a(Lcom/baidu/tts/b/a/b/e$b;)Lcom/baidu/tts/auth/b$a;
    .registers 6

    .prologue
    .line 131
    new-instance v1, Lcom/baidu/tts/auth/b$a;

    invoke-direct {v1}, Lcom/baidu/tts/auth/b$a;-><init>()V

    .line 133
    :try_start_5
    new-instance v0, Lcom/baidu/tts/auth/a$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/auth/a$a;-><init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/b/a/b/e$b;)V

    sget-object v2, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v2}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/baidu/tts/auth/a;->a(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/auth/b$a;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_16} :catch_17
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_16} :catch_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_16} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_16} :catch_52

    .line 145
    :goto_16
    return-object v0

    .line 134
    :catch_17
    move-exception v0

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 136
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->v:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/b$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v1

    .line 144
    goto :goto_16

    .line 137
    :catch_2e
    move-exception v0

    .line 138
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->w:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/b$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v1

    .line 144
    goto :goto_16

    .line 140
    :catch_42
    move-exception v0

    .line 141
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->x:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/b$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v1

    .line 144
    goto :goto_16

    .line 142
    :catch_52
    move-exception v0

    .line 143
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->I:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/b$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v1

    goto :goto_16
.end method

.method public a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/auth/c$a;
    .registers 6

    .prologue
    .line 80
    new-instance v1, Lcom/baidu/tts/auth/c$a;

    invoke-direct {v1}, Lcom/baidu/tts/auth/c$a;-><init>()V

    .line 82
    :try_start_5
    new-instance v0, Lcom/baidu/tts/auth/a$b;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/auth/a$b;-><init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/b/a/b/f$b;)V

    sget-object v2, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v2}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/baidu/tts/auth/a;->a(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/auth/c$a;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_16} :catch_17
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_16} :catch_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_16} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_16} :catch_52

    .line 94
    :goto_16
    return-object v0

    .line 83
    :catch_17
    move-exception v0

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 85
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->d:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v1

    .line 93
    goto :goto_16

    .line 86
    :catch_2e
    move-exception v0

    .line 87
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->e:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v1

    .line 93
    goto :goto_16

    .line 89
    :catch_42
    move-exception v0

    .line 90
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->f:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v1

    .line 93
    goto :goto_16

    .line 91
    :catch_52
    move-exception v0

    .line 92
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->p:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/c$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    move-object v0, v1

    goto :goto_16
.end method

.method public b()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/baidu/tts/auth/a;->b:Lcom/baidu/tts/k/c;

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lcom/baidu/tts/auth/a;->b:Lcom/baidu/tts/k/c;

    invoke-virtual {v0}, Lcom/baidu/tts/k/c;->a()V

    .line 289
    :cond_9
    iget-object v0, p0, Lcom/baidu/tts/auth/a;->c:Lcom/baidu/tts/k/c;

    if-eqz v0, :cond_12

    .line 290
    iget-object v0, p0, Lcom/baidu/tts/auth/a;->c:Lcom/baidu/tts/k/c;

    invoke-virtual {v0}, Lcom/baidu/tts/k/c;->a()V

    .line 292
    :cond_12
    return-void
.end method
