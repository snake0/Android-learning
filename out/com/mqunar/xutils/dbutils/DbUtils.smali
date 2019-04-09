.class public Lcom/mqunar/xutils/dbutils/DbUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DbUtils"

.field private static daoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/DbUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static sEncrtpts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/xutils/dbutils/atom/IEncrypt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowTransaction:Z

.field private daoConfig:Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private debug:Z

.field private final findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

.field private writeLock:Ljava/util/concurrent/locks/Lock;

.field private volatile writeLocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/xutils/dbutils/DbUtils;->daoMap:Ljava/util/HashMap;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/xutils/dbutils/DbUtils;->sEncrtpts:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->debug:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->allowTransaction:Z

    .line 824
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 825
    iput-boolean v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLocked:Z

    .line 907
    new-instance v0, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;-><init>(Lcom/mqunar/xutils/dbutils/DbUtils;Lcom/mqunar/xutils/dbutils/DbUtils$1;)V

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    .line 65
    if-nez p1, :cond_24

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "daoConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_24
    invoke-direct {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->createDatabase(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->daoConfig:Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    .line 70
    return-void
.end method

.method public static addEncrypt(Ljava/lang/String;Lcom/mqunar/xutils/dbutils/atom/IEncrypt;)Lcom/mqunar/xutils/dbutils/atom/IEncrypt;
    .registers 3

    .prologue
    .line 73
    sget-object v0, Lcom/mqunar/xutils/dbutils/DbUtils;->sEncrtpts:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/xutils/dbutils/DbUtils;->sEncrtpts:Ljava/util/HashMap;

    .line 76
    :cond_b
    sget-object v0, Lcom/mqunar/xutils/dbutils/DbUtils;->sEncrtpts:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

    return-object v0
.end method

.method private beginTransaction()V
    .registers 3

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginTransaction isLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") , allowTransaction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->allowTransaction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->log(Ljava/lang/String;)V

    .line 829
    iget-boolean v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->allowTransaction:Z

    if-eqz v0, :cond_34

    .line 830
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 835
    :goto_33
    return-void

    .line 832
    :cond_34
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLocked:Z

    goto :goto_33
.end method

.method public static create(Landroid/content/Context;)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 2

    .prologue
    .line 120
    new-instance v0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->getInstance(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 3

    .prologue
    .line 125
    new-instance v0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 127
    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->getInstance(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ILcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 5

    .prologue
    .line 138
    new-instance v0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p2}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbVersion(I)V

    .line 141
    invoke-virtual {v0, p3}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbUpgradeListener(Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;)V

    .line 142
    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->getInstance(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 4

    .prologue
    .line 131
    new-instance v0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbDir(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p2}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->getInstance(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 6

    .prologue
    .line 146
    new-instance v0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbDir(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p2}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p3}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbVersion(I)V

    .line 150
    invoke-virtual {v0, p4}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbUpgradeListener(Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;)V

    .line 151
    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->getInstance(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 2

    .prologue
    .line 155
    invoke-static {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->getInstance(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v0

    return-object v0
.end method

.method private createDatabase(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 672
    .line 674
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getInterfaceCreateDatabase()Lcom/mqunar/xutils/dbutils/atom/ICreateDatabase;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 675
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getInterfaceCreateDatabase()Lcom/mqunar/xutils/dbutils/atom/ICreateDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mqunar/xutils/dbutils/atom/ICreateDatabase;->createDatabase(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 688
    :cond_f
    :goto_f
    return-object v0

    .line 678
    :cond_10
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbDir()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 680
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 682
    :cond_2b
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-static {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_f

    .line 686
    :cond_39
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_f
.end method

.method private debugSql(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->debug:Z

    if-eqz v0, :cond_c

    .line 820
    const-string v0, "DbUtils"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    :cond_c
    return-void
.end method

.method private endTransaction()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransaction isLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") , allowTransaction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->allowTransaction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->log(Ljava/lang/String;)V

    .line 846
    iget-boolean v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->allowTransaction:Z

    if-eqz v0, :cond_35

    .line 847
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 863
    :cond_34
    :goto_34
    return-void

    .line 849
    :cond_35
    iget-boolean v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLocked:Z

    if-eqz v0, :cond_34

    .line 851
    :try_start_39
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3e
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_39 .. :try_end_3e} :catch_41
    .catchall {:try_start_39 .. :try_end_3e} :catchall_a6

    .line 859
    iput-boolean v6, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLocked:Z

    goto :goto_34

    .line 852
    :catch_41
    move-exception v0

    .line 853
    :try_start_42
    const-string v1, " [writeLock %s , allowTransaction %s , dbName %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->allowTransaction:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->daoConfig:Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    # getter for: Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->access$000(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 854
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/IllegalMonitorStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 857
    throw v2
    :try_end_a6
    .catchall {:try_start_42 .. :try_end_a6} :catchall_a6

    .line 859
    :catchall_a6
    move-exception v0

    iput-boolean v6, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLocked:Z

    throw v0
.end method

.method public static getEncrypt(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/atom/IEncrypt;
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lcom/mqunar/xutils/dbutils/DbUtils;->sEncrtpts:Ljava/util/HashMap;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/mqunar/xutils/dbutils/DbUtils;->sEncrtpts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 81
    :cond_12
    const/4 v0, 0x0

    .line 83
    :goto_13
    return-object v0

    :cond_14
    sget-object v0, Lcom/mqunar/xutils/dbutils/DbUtils;->sEncrtpts:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

    goto :goto_13
.end method

.method private static declared-synchronized getInstance(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 7

    .prologue
    .line 88
    const-class v1, Lcom/mqunar/xutils/dbutils/DbUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mqunar/xutils/dbutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/DbUtils;

    .line 89
    if-nez v0, :cond_3b

    .line 90
    new-instance v0, Lcom/mqunar/xutils/dbutils/DbUtils;

    invoke-direct {v0, p0}, Lcom/mqunar/xutils/dbutils/DbUtils;-><init>(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)V

    .line 91
    sget-object v2, Lcom/mqunar/xutils/dbutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_1f
    iget-object v2, v0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 99
    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbVersion()I

    move-result v4

    .line 100
    if-eq v3, v4, :cond_39

    .line 101
    if-eqz v3, :cond_36

    .line 102
    invoke-virtual {p0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbUpgradeListener()Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;

    move-result-object v5

    .line 103
    if-eqz v5, :cond_41

    .line 104
    invoke-interface {v5, v0, v3, v4}, Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;->onUpgrade(Lcom/mqunar/xutils/dbutils/DbUtils;II)V

    .line 113
    :cond_36
    :goto_36
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_3e

    .line 116
    :cond_39
    monitor-exit v1

    return-object v0

    .line 93
    :cond_3b
    :try_start_3b
    iput-object p0, v0, Lcom/mqunar/xutils/dbutils/DbUtils;->daoConfig:Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_3e

    goto :goto_1f

    .line 88
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 107
    :cond_41
    :try_start_41
    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->dropDb()V
    :try_end_44
    .catch Lcom/mqunar/xutils/dbutils/exception/DbException; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    goto :goto_36

    .line 108
    :catch_45
    move-exception v3

    .line 109
    :try_start_46
    invoke-static {v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_3e

    goto :goto_36
.end method

.method private getLastAutoIncrementId(Ljava/lang/String;)J
    .registers 6

    .prologue
    .line 727
    const-wide/16 v0, -0x1

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT seq FROM sqlite_sequence WHERE name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 729
    if-eqz v2, :cond_2f

    .line 731
    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 732
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2b} :catch_30
    .catchall {:try_start_21 .. :try_end_2b} :catchall_37

    move-result-wide v0

    .line 737
    :cond_2c
    invoke-static {v2}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 740
    :cond_2f
    return-wide v0

    .line 734
    :catch_30
    move-exception v0

    .line 735
    :try_start_31
    new-instance v1, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_37

    .line 737
    :catchall_37
    move-exception v0

    invoke-static {v2}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method private saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    .line 707
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 708
    invoke-static {p0, v1}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v1

    .line 709
    iget-object v2, v1, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 710
    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrement()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 711
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 712
    iget-object v1, v1, Lcom/mqunar/xutils/dbutils/table/Table;->tableName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->getLastAutoIncrementId(Ljava/lang/String;)J

    move-result-wide v3

    .line 713
    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_26

    .line 714
    const/4 v0, 0x0

    .line 720
    :goto_25
    return v0

    .line 716
    :cond_26
    invoke-virtual {v2, p1, v3, v4}, Lcom/mqunar/xutils/dbutils/table/Id;->setAutoIncrementId(Ljava/lang/Object;J)V

    goto :goto_25

    .line 719
    :cond_2a
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    goto :goto_25
.end method

.method private saveOrUpdateWithoutTransaction(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 693
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v0

    .line 694
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 695
    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Id;->isAutoIncrement()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 696
    invoke-virtual {v0, p1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 697
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 704
    :goto_20
    return-void

    .line 699
    :cond_21
    invoke-direct {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z

    goto :goto_20

    .line 702
    :cond_25
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    goto :goto_20
.end method

.method private setTransactionSuccessful()V
    .registers 3

    .prologue
    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTransactionSuccessful isLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") , allowTransaction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->allowTransaction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->log(Ljava/lang/String;)V

    .line 839
    iget-boolean v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->allowTransaction:Z

    if-eqz v0, :cond_33

    .line 840
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 842
    :cond_33
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->daoConfig:Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v0

    .line 811
    sget-object v1, Lcom/mqunar/xutils/dbutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 812
    sget-object v1, Lcom/mqunar/xutils/dbutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 815
    :cond_18
    return-void
.end method

.method public configAllowTransaction(Z)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 2

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->allowTransaction:Z

    .line 165
    return-object p0
.end method

.method public configDebug(Z)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 2

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->debug:Z

    .line 160
    return-object p0
.end method

.method public count(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)J
    .registers 7

    .prologue
    .line 588
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    .line 589
    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d

    const-wide/16 v0, 0x0

    .line 593
    :goto_c
    return-wide v0

    .line 591
    :cond_d
    invoke-static {p0, v0}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v0

    .line 592
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    invoke-virtual {v0}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") as count"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->select([Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;

    move-result-object v0

    .line 593
    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->findDbModelFirst(Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;)Lcom/mqunar/xutils/dbutils/table/DbModel;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/table/DbModel;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_c
.end method

.method public count(Ljava/lang/Class;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 597
    invoke-static {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->count(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createTableIfNotExist(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 745
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildCreateTableSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    .line 746
    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 747
    invoke-static {p1}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getExecAfterTableCreated(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 749
    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Ljava/lang/String;)V

    .line 752
    :cond_1a
    return-void
.end method

.method public delete(Ljava/lang/Class;Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 335
    :goto_6
    return-void

    .line 327
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 329
    invoke-static {p0, p1, p2}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 331
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 333
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_6

    :catchall_18
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 322
    :goto_a
    return-void

    .line 314
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 316
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 318
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 320
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_a

    :catchall_1c
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->delete(Ljava/lang/Class;Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;)V

    .line 355
    return-void
.end method

.method public deleteAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 338
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 351
    :cond_17
    :goto_17
    return-void

    .line 341
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 344
    invoke-static {p0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_31

    goto :goto_1f

    .line 349
    :catchall_31
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0

    .line 347
    :cond_36
    :try_start_36
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_31

    .line 349
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_17
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 309
    :goto_6
    return-void

    .line 301
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 303
    invoke-static {p0, p1, p2}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 305
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 307
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_6

    :catchall_18
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0
.end method

.method public dropDb()V
    .registers 5

    .prologue
    .line 781
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name<>\'sqlite_sequence\'"

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 782
    if-eqz v1, :cond_41

    .line 784
    :goto_8
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_32
    .catchall {:try_start_8 .. :try_end_b} :catchall_39

    move-result v0

    if-eqz v0, :cond_3e

    .line 786
    const/4 v0, 0x0

    :try_start_f
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Ljava/lang/String;)V

    .line 788
    invoke-static {p0, v0}, Lcom/mqunar/xutils/dbutils/table/Table;->remove(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_2c} :catch_2d
    .catchall {:try_start_f .. :try_end_2c} :catchall_39

    goto :goto_8

    .line 789
    :catch_2d
    move-exception v0

    .line 790
    :try_start_2e
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    goto :goto_8

    .line 794
    :catch_32
    move-exception v0

    .line 795
    :try_start_33
    new-instance v2, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v2, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_39

    .line 797
    :catchall_39
    move-exception v0

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :cond_3e
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 800
    :cond_41
    return-void
.end method

.method public dropTable(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 807
    :goto_6
    return-void

    .line 804
    :cond_7
    invoke-static {p1}, Lcom/mqunar/xutils/dbutils/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Ljava/lang/String;)V

    .line 806
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/table/Table;->remove(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)V

    goto :goto_6
.end method

.method public execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V
    .registers 5

    .prologue
    .line 867
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->debugSql(Ljava/lang/String;)V

    .line 869
    :try_start_7
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->getBindArgs()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 870
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->getBindArgsAsArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    :goto_1a
    return-void

    .line 872
    :cond_1b
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_25

    goto :goto_1a

    .line 874
    :catch_25
    move-exception v0

    .line 875
    new-instance v1, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execNonQuery(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->debugSql(Ljava/lang/String;)V

    .line 882
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_9

    .line 886
    return-void

    .line 883
    :catch_9
    move-exception v0

    .line 884
    new-instance v1, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 889
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->debugSql(Ljava/lang/String;)V

    .line 891
    :try_start_7
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;->getBindArgsAsStrArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_16

    move-result-object v0

    return-object v0

    .line 892
    :catch_16
    move-exception v0

    .line 893
    new-instance v1, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 898
    invoke-direct {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->debugSql(Ljava/lang/String;)V

    .line 900
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 901
    :catch_b
    move-exception v0

    .line 902
    new-instance v1, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public findAll(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mqunar/xutils/dbutils/sqlite/Selector;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 508
    :cond_b
    :goto_b
    return-object v0

    .line 484
    :cond_c
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-static {}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->getSeq()J

    move-result-wide v2

    .line 486
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    invoke-virtual {v0, v2, v3}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->setSeq(J)V

    .line 487
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_24

    .line 489
    check-cast v0, Ljava/util/List;

    goto :goto_b

    .line 492
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 495
    if-eqz v4, :cond_b

    .line 497
    :goto_2f
    :try_start_2f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 498
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p0, v4, v5, v2, v3}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils;->getEntity(Lcom/mqunar/xutils/dbutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v5

    .line 499
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_40} :catch_41
    .catchall {:try_start_2f .. :try_end_40} :catchall_48

    goto :goto_2f

    .line 502
    :catch_41
    move-exception v0

    .line 503
    :try_start_42
    new-instance v1, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_48

    .line 505
    :catchall_48
    move-exception v0

    invoke-static {v4}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    .line 501
    :cond_4d
    :try_start_4d
    iget-object v2, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    invoke-virtual {v2, v1, v0}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_52} :catch_41
    .catchall {:try_start_4d .. :try_end_52} :catchall_48

    .line 505
    invoke-static {v4}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->findAll(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 444
    :cond_7
    :goto_7
    return-object v0

    .line 419
    :cond_8
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v1

    .line 420
    invoke-static {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v2

    iget-object v1, v1, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v2, v1, v3, p2}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    .line 422
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->limit(I)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->getSeq()J

    move-result-wide v3

    .line 424
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    invoke-virtual {v1, v3, v4}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->setSeq(J)V

    .line 425
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    invoke-virtual {v1, v2}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_38

    move-object v0, v1

    .line 427
    goto :goto_7

    .line 430
    :cond_38
    invoke-virtual {p0, v2}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_7

    .line 433
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 434
    invoke-static {p0, v1, p1, v3, v4}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils;->getEntity(Lcom/mqunar/xutils/dbutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v0

    .line 435
    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    invoke-virtual {v3, v2, v0}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_4d} :catch_55
    .catchall {:try_start_3e .. :try_end_4d} :catchall_5c

    .line 441
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_7

    :cond_51
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_7

    .line 438
    :catch_55
    move-exception v0

    .line 439
    :try_start_56
    new-instance v2, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v2, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5c

    .line 441
    :catchall_5c
    move-exception v0

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public findDbModelAll(Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/xutils/dbutils/table/DbModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 584
    :cond_b
    :goto_b
    return-object v0

    .line 570
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 573
    if-eqz v1, :cond_b

    .line 575
    :goto_1b
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 576
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/mqunar/xutils/dbutils/table/DbModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_28} :catch_29
    .catchall {:try_start_1b .. :try_end_28} :catchall_30

    goto :goto_1b

    .line 578
    :catch_29
    move-exception v0

    .line 579
    :try_start_2a
    new-instance v2, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v2, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    .line 581
    :catchall_30
    move-exception v0

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :cond_35
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b
.end method

.method public findDbModelAll(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/xutils/dbutils/table/DbModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_28

    .line 555
    :goto_b
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 556
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/mqunar/xutils/dbutils/table/DbModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_19
    .catchall {:try_start_b .. :try_end_18} :catchall_20

    goto :goto_b

    .line 558
    :catch_19
    move-exception v0

    .line 559
    :try_start_1a
    new-instance v2, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v2, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 561
    :catchall_20
    move-exception v0

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :cond_25
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 564
    :cond_28
    return-object v0
.end method

.method public findDbModelFirst(Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;)Lcom/mqunar/xutils/dbutils/table/DbModel;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 532
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->getEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 546
    :cond_b
    :goto_b
    return-object v0

    .line 534
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->limit(I)Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/sqlite/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 535
    if-eqz v1, :cond_b

    .line 537
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 538
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/mqunar/xutils/dbutils/table/DbModel;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_24} :catch_2d
    .catchall {:try_start_1b .. :try_end_24} :catchall_34

    move-result-object v0

    .line 543
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b

    :cond_29
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b

    .line 540
    :catch_2d
    move-exception v0

    .line 541
    :try_start_2e
    new-instance v2, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v2, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_34

    .line 543
    :catchall_34
    move-exception v0

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public findDbModelFirst(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)Lcom/mqunar/xutils/dbutils/table/DbModel;
    .registers 5

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v1

    .line 517
    if-eqz v1, :cond_17

    .line 519
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 520
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/mqunar/xutils/dbutils/table/DbModel;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_19
    .catchall {:try_start_6 .. :try_end_f} :catchall_20

    move-result-object v0

    .line 525
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 528
    :goto_13
    return-object v0

    .line 525
    :cond_14
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 528
    :cond_17
    const/4 v0, 0x0

    goto :goto_13

    .line 522
    :catch_19
    move-exception v0

    .line 523
    :try_start_1a
    new-instance v2, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v2, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 525
    :catchall_20
    move-exception v0

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public findFirst(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mqunar/xutils/dbutils/sqlite/Selector;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 449
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 473
    :cond_b
    :goto_b
    return-object v0

    .line 451
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->limit(I)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-static {}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils$FindCacheSequence;->getSeq()J

    move-result-wide v3

    .line 453
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    invoke-virtual {v1, v3, v4}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->setSeq(J)V

    .line 454
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    invoke-virtual {v1, v2}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 455
    if-eqz v1, :cond_28

    move-object v0, v1

    .line 456
    goto :goto_b

    .line 459
    :cond_28
    invoke-virtual {p0, v2}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_b

    .line 462
    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 463
    invoke-virtual {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v1, v0, v3, v4}, Lcom/mqunar/xutils/dbutils/sqlite/CursorUtils;->getEntity(Lcom/mqunar/xutils/dbutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v0

    .line 464
    iget-object v3, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->findTempCache:Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;

    invoke-virtual {v3, v2, v0}, Lcom/mqunar/xutils/dbutils/DbUtils$FindTempCache;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_41} :catch_49
    .catchall {:try_start_2e .. :try_end_41} :catchall_50

    .line 470
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b

    :cond_45
    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b

    .line 467
    :catch_49
    move-exception v0

    .line 468
    :try_start_4a
    new-instance v2, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v2, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_50

    .line 470
    :catchall_50
    move-exception v0

    invoke-static {v1}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {p1}, Lcom/mqunar/xutils/dbutils/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/sqlite/Selector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->findFirst(Lcom/mqunar/xutils/dbutils/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDaoConfig()Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->daoConfig:Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils;->debug:Z

    if-eqz v0, :cond_3a

    .line 1040
    const-string v0, ""

    .line 1042
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1043
    const-string v1, "DbUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_3b

    .line 1048
    :cond_3a
    :goto_3a
    return-void

    .line 1044
    :catch_3b
    move-exception v0

    goto :goto_3a
.end method

.method public merge(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 947
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 948
    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 949
    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 951
    :cond_16
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->save(Ljava/lang/Object;)V

    .line 977
    :goto_19
    return-void

    .line 953
    :cond_1a
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 954
    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    .line 956
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->save(Ljava/lang/Object;)V

    goto :goto_19

    .line 959
    :cond_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_36

    .line 961
    new-instance v0, Lcom/mqunar/xutils/dbutils/exception/DbException;

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 965
    :cond_36
    :try_start_36
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 966
    invoke-static {p0, v0}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v0

    .line 967
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 968
    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 969
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/mqunar/xutils/dbutils/table/Id;->setAutoIncrementId(Ljava/lang/Object;J)V

    .line 970
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_55} :catch_56

    goto :goto_19

    .line 971
    :catch_56
    move-exception v0

    .line 972
    new-instance v1, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public mergeAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1015
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1036
    :cond_8
    :goto_8
    return-void

    .line 1019
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1021
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->saveAll(Ljava/util/List;)V

    goto :goto_8

    .line 1025
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 1027
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1028
    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->mergeByNONETransaction(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_31

    goto :goto_23

    .line 1033
    :catchall_31
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0

    .line 1031
    :cond_36
    :try_start_36
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_31

    .line 1033
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_8
.end method

.method public mergeByNONETransaction(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 980
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 981
    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 982
    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 984
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 985
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 1012
    :goto_24
    return-void

    .line 987
    :cond_25
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 988
    const/4 v3, -0x1

    if-ne v2, v3, :cond_34

    .line 990
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    goto :goto_24

    .line 993
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_45

    .line 995
    new-instance v0, Lcom/mqunar/xutils/dbutils/exception/DbException;

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 999
    :cond_45
    :try_start_45
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1000
    invoke-static {p0, v0}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v0

    .line 1001
    iget-object v0, v0, Lcom/mqunar/xutils/dbutils/table/Table;->id:Lcom/mqunar/xutils/dbutils/table/Id;

    .line 1002
    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1003
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/mqunar/xutils/dbutils/table/Id;->setAutoIncrementId(Ljava/lang/Object;J)V

    .line 1005
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_68} :catch_69

    goto :goto_24

    .line 1006
    :catch_69
    move-exception v0

    .line 1007
    new-instance v1, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replace(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 209
    :try_start_0
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 212
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 214
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_18

    .line 216
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    .line 218
    return-void

    .line 216
    :catchall_18
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0
.end method

.method public replaceAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 221
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 234
    :cond_8
    :goto_8
    return-void

    .line 223
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 225
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 227
    invoke-static {p0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2e

    goto :goto_1c

    .line 232
    :catchall_2e
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0

    .line 230
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_2e

    .line 232
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_8
.end method

.method public save(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 241
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 243
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_18

    .line 245
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    .line 247
    return-void

    .line 245
    :catchall_18
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0
.end method

.method public saveAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 250
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 263
    :cond_8
    :goto_8
    return-void

    .line 252
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 254
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 256
    invoke-static {p0, v1}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2e

    goto :goto_1c

    .line 261
    :catchall_2e
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0

    .line 259
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_2e

    .line 261
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_8
.end method

.method public saveBindingId(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 266
    .line 268
    :try_start_0
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z

    move-result v0

    .line 273
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_15

    .line 275
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    .line 277
    return v0

    .line 275
    :catchall_15
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0
.end method

.method public saveBindingIdAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 281
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 296
    :cond_8
    :goto_8
    return-void

    .line 283
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 285
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 287
    invoke-direct {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 288
    new-instance v0, Lcom/mqunar/xutils/dbutils/exception/DbException;

    const-string v1, "saveBindingId error, transaction will not commit!"

    invoke-direct {v0, v1}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_34

    .line 294
    :catchall_34
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0

    .line 292
    :cond_39
    :try_start_39
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_34

    .line 294
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_8
.end method

.method public saveOrUpdate(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->saveOrUpdateWithoutTransaction(Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_14

    .line 187
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    .line 189
    return-void

    .line 187
    :catchall_14
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0
.end method

.method public saveOrUpdateAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 192
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 205
    :cond_8
    :goto_8
    return-void

    .line 194
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 196
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 198
    invoke-direct {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->saveOrUpdateWithoutTransaction(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2a

    goto :goto_1c

    .line 203
    :catchall_2a
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0

    .line 201
    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2a

    .line 203
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_8
.end method

.method public tableIsExist(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 755
    invoke-static {p0, p1}, Lcom/mqunar/xutils/dbutils/table/Table;->get(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/table/Table;

    move-result-object v2

    .line 756
    invoke-virtual {v2}, Lcom/mqunar/xutils/dbutils/table/Table;->isCheckedDatabase()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 777
    :goto_c
    return v0

    .line 760
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/mqunar/xutils/dbutils/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mqunar/xutils/dbutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 761
    if-eqz v3, :cond_46

    .line 763
    :try_start_2e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 764
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 765
    if-lez v4, :cond_43

    .line 766
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/mqunar/xutils/dbutils/table/Table;->setCheckedDatabase(Z)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3f} :catch_48
    .catchall {:try_start_2e .. :try_end_3f} :catchall_4f

    .line 773
    invoke-static {v3}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_c

    :cond_43
    invoke-static {v3}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    :cond_46
    move v0, v1

    .line 777
    goto :goto_c

    .line 770
    :catch_48
    move-exception v0

    .line 771
    :try_start_49
    new-instance v1, Lcom/mqunar/xutils/dbutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/mqunar/xutils/dbutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4f

    .line 773
    :catchall_4f
    move-exception v0

    invoke-static {v3}, Lcom/mqunar/xutils/dbutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public varargs update(Ljava/lang/Object;Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 381
    :goto_a
    return-void

    .line 373
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 375
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 377
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 379
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_a

    :catchall_1c
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 368
    :goto_a
    return-void

    .line 360
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 362
    invoke-static {p0, p1, p2}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V

    .line 364
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 366
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_a

    :catchall_1c
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0
.end method

.method public varargs updateAll(Ljava/util/List;Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 413
    :cond_17
    :goto_17
    return-void

    .line 403
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 405
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 406
    invoke-static {p0, v1, p2, p3}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;Lcom/mqunar/xutils/dbutils/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_31

    goto :goto_1f

    .line 411
    :catchall_31
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0

    .line 409
    :cond_36
    :try_start_36
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_31

    .line 411
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_17
.end method

.method public varargs updateAll(Ljava/util/List;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 397
    :cond_17
    :goto_17
    return-void

    .line 387
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->beginTransaction()V

    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 390
    invoke-static {p0, v1, p2}, Lcom/mqunar/xutils/dbutils/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/mqunar/xutils/dbutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils;->execNonQuery(Lcom/mqunar/xutils/dbutils/sqlite/SqlInfo;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_31

    goto :goto_1f

    .line 395
    :catchall_31
    move-exception v0

    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    throw v0

    .line 393
    :cond_36
    :try_start_36
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_31

    .line 395
    invoke-direct {p0}, Lcom/mqunar/xutils/dbutils/DbUtils;->endTransaction()V

    goto :goto_17
.end method
