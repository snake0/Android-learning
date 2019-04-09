.class abstract Lcom/mqunar/hy/res/libtask/AsyncTask;
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

.field private static final MAXIMUM_POOL_SIZE:I = 0x64

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;

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

.field private volatile mStatus:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/mqunar/hy/res/libtask/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mqunar/hy/res/libtask/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    .line 205
    new-instance v0, Lcom/mqunar/hy/res/libtask/AsyncTask$1;

    invoke-direct {v0}, Lcom/mqunar/hy/res/libtask/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 214
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 219
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0x64

    const-wide/16 v3, 0x8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/mqunar/hy/res/libtask/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/mqunar/hy/res/libtask/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 226
    new-instance v0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;-><init>(Lcom/mqunar/hy/res/libtask/AsyncTask$1;)V

    sput-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 228
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v9, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 230
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v9, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->CACHE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 235
    new-instance v0, Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;

    invoke-direct {v0}, Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sHandler:Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;

    .line 237
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask$Status;->PENDING:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mStatus:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    .line 243
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 307
    new-instance v0, Lcom/mqunar/hy/res/libtask/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/mqunar/hy/res/libtask/AsyncTask$2;-><init>(Lcom/mqunar/hy/res/libtask/AsyncTask;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mWorker:Lcom/mqunar/hy/res/libtask/AsyncTask$WorkerRunnable;

    .line 318
    new-instance v0, Lcom/mqunar/hy/res/libtask/AsyncTask$3;

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mWorker:Lcom/mqunar/hy/res/libtask/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/mqunar/hy/res/libtask/AsyncTask$3;-><init>(Lcom/mqunar/hy/res/libtask/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 332
    return-void
.end method

.method static synthetic access$200(Lcom/mqunar/hy/res/libtask/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mqunar/hy/res/libtask/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mqunar/hy/res/libtask/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mqunar/hy/res/libtask/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 618
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 619
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
    .line 640
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 641
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/libtask/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 645
    :goto_9
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask$Status;->FINISHED:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mStatus:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    .line 646
    return-void

    .line 643
    :cond_e
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/libtask/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static init()V
    .registers 1

    .prologue
    .line 295
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sHandler:Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 296
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

    .line 343
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sHandler:Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;

    new-instance v1, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;-><init>(Lcom/mqunar/hy/res/libtask/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
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
    .line 335
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 336
    if-nez v0, :cond_b

    .line 337
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_b
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 1

    .prologue
    .line 300
    sput-object p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 301
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 4

    .prologue
    .line 493
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/mqunar/hy/res/libtask/AsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/mqunar/hy/res/libtask/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 555
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/mqunar/hy/res/libtask/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/hy/res/libtask/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/hy/res/libtask/AsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/mqunar/hy/res/libtask/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mStatus:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    sget-object v1, Lcom/mqunar/hy/res/libtask/AsyncTask$Status;->PENDING:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mStatus:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    if-eqz v0, :cond_17

    .line 591
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask$4;->$SwitchMap$com$mqunar$hy$res$libtask$AsyncTask$Status:[I

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mStatus:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/libtask/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 600
    :cond_17
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask$Status;->RUNNING:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mStatus:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    .line 602
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/AsyncTask;->onPreExecute()V

    .line 604
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mWorker:Lcom/mqunar/hy/res/libtask/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/mqunar/hy/res/libtask/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 605
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 607
    return-object p0

    .line 593
    :pswitch_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :pswitch_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
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
    .line 507
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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
    .line 525
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/mqunar/hy/res/libtask/AsyncTask$Status;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mStatus:Lcom/mqunar/hy/res/libtask/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .registers 1

    .prologue
    .line 452
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
    .line 433
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/AsyncTask;->onCancelled()V

    .line 434
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
    .line 400
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 380
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
    .line 413
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
    .line 634
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 635
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->sHandler:Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;-><init>(Lcom/mqunar/hy/res/libtask/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/hy/res/libtask/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 637
    :cond_15
    return-void
.end method
