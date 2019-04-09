.class public abstract Lcom/mqunar/libtask/AsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CACHE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final CORE_POOL_SIZE:I = 0xa

.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final KEEP_ALIVE:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x64

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/mqunar/libtask/f;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/mqunar/libtask/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/mqunar/libtask/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mqunar/libtask/i",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    .line 206
    new-instance v0, Lcom/mqunar/libtask/a;

    invoke-direct {v0}, Lcom/mqunar/libtask/a;-><init>()V

    sput-object v0, Lcom/mqunar/libtask/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 215
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/mqunar/libtask/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 220
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0x64

    const-wide/16 v3, 0x8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/mqunar/libtask/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/mqunar/libtask/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/mqunar/libtask/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 227
    new-instance v0, Lcom/mqunar/libtask/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/libtask/g;-><init>(Lcom/mqunar/libtask/a;)V

    sput-object v0, Lcom/mqunar/libtask/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 229
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v9, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mqunar/libtask/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 231
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v9, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mqunar/libtask/AsyncTask;->CACHE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 236
    new-instance v0, Lcom/mqunar/libtask/f;

    invoke-direct {v0}, Lcom/mqunar/libtask/f;-><init>()V

    sput-object v0, Lcom/mqunar/libtask/AsyncTask;->sHandler:Lcom/mqunar/libtask/f;

    .line 238
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/mqunar/libtask/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    sget-object v0, Lcom/mqunar/libtask/AsyncTask$Status;->PENDING:Lcom/mqunar/libtask/AsyncTask$Status;

    iput-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mStatus:Lcom/mqunar/libtask/AsyncTask$Status;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 308
    new-instance v0, Lcom/mqunar/libtask/b;

    invoke-direct {v0, p0}, Lcom/mqunar/libtask/b;-><init>(Lcom/mqunar/libtask/AsyncTask;)V

    iput-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mWorker:Lcom/mqunar/libtask/i;

    .line 319
    new-instance v0, Lcom/mqunar/libtask/c;

    iget-object v1, p0, Lcom/mqunar/libtask/AsyncTask;->mWorker:Lcom/mqunar/libtask/i;

    invoke-direct {v0, p0, v1}, Lcom/mqunar/libtask/c;-><init>(Lcom/mqunar/libtask/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 333
    return-void
.end method

.method static synthetic access$200(Lcom/mqunar/libtask/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mqunar/libtask/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mqunar/libtask/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mqunar/libtask/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 619
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 620
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/mqunar/libtask/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 642
    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 646
    :goto_9
    sget-object v0, Lcom/mqunar/libtask/AsyncTask$Status;->FINISHED:Lcom/mqunar/libtask/AsyncTask$Status;

    iput-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mStatus:Lcom/mqunar/libtask/AsyncTask$Status;

    .line 647
    return-void

    .line 644
    :cond_e
    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static init()V
    .registers 1

    .prologue
    .line 296
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->sHandler:Lcom/mqunar/libtask/f;

    invoke-virtual {v0}, Lcom/mqunar/libtask/f;->getLooper()Landroid/os/Looper;

    .line 297
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 344
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->sHandler:Lcom/mqunar/libtask/f;

    new-instance v1, Lcom/mqunar/libtask/e;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mqunar/libtask/e;-><init>(Lcom/mqunar/libtask/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/mqunar/libtask/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 337
    if-nez v0, :cond_b

    .line 338
    invoke-direct {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_b
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 1

    .prologue
    .line 301
    sput-object p0, Lcom/mqunar/libtask/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 302
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 495
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/mqunar/libtask/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 556
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/mqunar/libtask/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/mqunar/libtask/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mStatus:Lcom/mqunar/libtask/AsyncTask$Status;

    sget-object v1, Lcom/mqunar/libtask/AsyncTask$Status;->PENDING:Lcom/mqunar/libtask/AsyncTask$Status;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mStatus:Lcom/mqunar/libtask/AsyncTask$Status;

    if-eqz v0, :cond_17

    .line 592
    sget-object v0, Lcom/mqunar/libtask/d;->a:[I

    iget-object v1, p0, Lcom/mqunar/libtask/AsyncTask;->mStatus:Lcom/mqunar/libtask/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/mqunar/libtask/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 601
    :cond_17
    sget-object v0, Lcom/mqunar/libtask/AsyncTask$Status;->RUNNING:Lcom/mqunar/libtask/AsyncTask$Status;

    iput-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mStatus:Lcom/mqunar/libtask/AsyncTask$Status;

    .line 603
    invoke-virtual {p0}, Lcom/mqunar/libtask/AsyncTask;->onPreExecute()V

    .line 605
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mWorker:Lcom/mqunar/libtask/i;

    iput-object p2, v0, Lcom/mqunar/libtask/i;->b:[Ljava/lang/Object;

    .line 606
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 608
    return-object p0

    .line 594
    :pswitch_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :pswitch_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_28
        :pswitch_30
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/mqunar/libtask/AsyncTask$Status;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mStatus:Lcom/mqunar/libtask/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/mqunar/libtask/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .registers 1

    .prologue
    .line 453
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/mqunar/libtask/AsyncTask;->onCancelled()V

    .line 435
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 401
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 381
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 414
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/mqunar/libtask/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 636
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->sHandler:Lcom/mqunar/libtask/f;

    const/4 v1, 0x2

    new-instance v2, Lcom/mqunar/libtask/e;

    invoke-direct {v2, p0, p1}, Lcom/mqunar/libtask/e;-><init>(Lcom/mqunar/libtask/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/libtask/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 638
    :cond_15
    return-void
.end method
