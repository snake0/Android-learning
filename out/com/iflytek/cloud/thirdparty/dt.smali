.class public final Lcom/iflytek/cloud/thirdparty/dt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field private static final b:Ljava/util/concurrent/BlockingQueue;

.field private static final c:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/dt;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/du;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/du;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/dt;->c:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/iflytek/cloud/thirdparty/dt;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/iflytek/cloud/thirdparty/dt;->c:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/dt;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
