.class public Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private createDatabase:Lcom/mqunar/xutils/dbutils/atom/ICreateDatabase;

.field private dbDir:Ljava/lang/String;

.field private dbName:Ljava/lang/String;

.field private dbUpgradeListener:Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;

.field private dbVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    const-string v0, "xUtils.db"

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbName:Ljava/lang/String;

    .line 605
    const/4 v0, 0x1

    iput v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbVersion:I

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->context:Landroid/content/Context;

    .line 613
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDbDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbUpgradeListener()Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbUpgradeListener:Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;

    return-object v0
.end method

.method public getDbVersion()I
    .registers 2

    .prologue
    .line 630
    iget v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbVersion:I

    return v0
.end method

.method public getInterfaceCreateDatabase()Lcom/mqunar/xutils/dbutils/atom/ICreateDatabase;
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->createDatabase:Lcom/mqunar/xutils/dbutils/atom/ICreateDatabase;

    return-object v0
.end method

.method public setDbDir(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 663
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbDir:Ljava/lang/String;

    .line 664
    return-void
.end method

.method public setDbName(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 625
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbName:Ljava/lang/String;

    .line 627
    :cond_8
    return-void
.end method

.method public setDbUpgradeListener(Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;)V
    .registers 2

    .prologue
    .line 642
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbUpgradeListener:Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;

    .line 643
    return-void
.end method

.method public setDbVersion(I)V
    .registers 2

    .prologue
    .line 634
    iput p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->dbVersion:I

    .line 635
    return-void
.end method

.method public setInterfaceCreateDatabase(Lcom/mqunar/xutils/dbutils/atom/ICreateDatabase;)V
    .registers 2

    .prologue
    .line 650
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->createDatabase:Lcom/mqunar/xutils/dbutils/atom/ICreateDatabase;

    .line 651
    return-void
.end method
