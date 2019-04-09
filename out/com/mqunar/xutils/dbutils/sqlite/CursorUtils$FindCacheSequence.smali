.class public Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FINDER_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

.field private static final FOREIGN_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

.field private static seq:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->seq:J

    .line 88
    const-class v0, Lcom/mqunar/xutils/dbutils/sqlite/ForeignLazyLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->FOREIGN_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

    .line 89
    const-class v0, Lcom/mqunar/xutils/dbutils/sqlite/FinderLazyLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->FINDER_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static getSeq()J
    .registers 4

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->FOREIGN_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->FINDER_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 94
    sget-wide v0, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->seq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->seq:J

    .line 96
    :cond_26
    sget-wide v0, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->seq:J

    return-wide v0
.end method
