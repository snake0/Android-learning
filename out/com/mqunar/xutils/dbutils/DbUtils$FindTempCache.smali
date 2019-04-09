.class Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private seq:J

.field final synthetic this$0:Lcom/mqunar/xutils/dbutils/DbUtils;


# direct methods
.method private constructor <init>(Lcom/mqunar/xutils/dbutils/DbUtils;)V
    .registers 4

    .prologue
    .line 910
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->this$0:Lcom/mqunar/xutils/dbutils/DbUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 919
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->seq:J

    .line 911
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/xutils/dbutils/DbUtils;Lcom/mqunar/xutils/dbutils/DbUtils$1;)V
    .registers 3

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;-><init>(Lcom/mqunar/xutils/dbutils/DbUtils;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 928
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 922
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 923
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_9
    return-void
.end method

.method public setSeq(J)V
    .registers 5

    .prologue
    .line 932
    iget-wide v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->seq:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_d

    .line 933
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 934
    iput-wide p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->seq:J

    .line 936
    :cond_d
    return-void
.end method
