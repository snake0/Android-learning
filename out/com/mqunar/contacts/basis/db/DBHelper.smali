.class public final enum Lcom/mqunar/contacts/basis/db/DBHelper;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/contacts/basis/db/DBHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/contacts/basis/db/DBHelper;

.field public static final DB_IM_NAME:Ljava/lang/String; = "qunar_contacts_%s.db"

.field public static final DB_VERSION:I = 0x1

.field public static final enum INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

.field public static final TAG:Ljava/lang/String; = "Contacts"


# instance fields
.field private mContactsDatabase:Ljava/util/HashMap;
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

.field private mWriteTask:Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/mqunar/contacts/basis/db/DBHelper;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/mqunar/contacts/basis/db/DBHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mqunar/contacts/basis/db/DBHelper;

    sget-object v1, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mqunar/contacts/basis/db/DBHelper;->$VALUES:[Lcom/mqunar/contacts/basis/db/DBHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/contacts/basis/db/DBHelper;->mContactsDatabase:Ljava/util/HashMap;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/contacts/basis/db/DBHelper;
    .registers 2

    .prologue
    .line 20
    const-class v0, Lcom/mqunar/contacts/basis/db/DBHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/contacts/basis/db/DBHelper;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/contacts/basis/db/DBHelper;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/mqunar/contacts/basis/db/DBHelper;->$VALUES:[Lcom/mqunar/contacts/basis/db/DBHelper;

    invoke-virtual {v0}, [Lcom/mqunar/contacts/basis/db/DBHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/contacts/basis/db/DBHelper;

    return-object v0
.end method


# virtual methods
.method public getContacts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 72
    const/4 v0, 0x0

    .line 74
    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 75
    const-string v1, "Contacts"

    const-string v5, "uniqueKey is empty!"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 91
    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 94
    :goto_23
    const-string v7, "Contacts"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Database -> read contact ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ") waste "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v3, v5, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-object v0

    .line 77
    :cond_4a
    sget-object v1, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    invoke-virtual {v1, p1, p2}, Lcom/mqunar/contacts/basis/db/DBHelper;->getContactsDatabaseByUser(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v1

    .line 78
    if-nez v1, :cond_5c

    .line 79
    const-string v1, "Contacts"

    const-string v5, "databases is empty!"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 82
    :cond_5c
    :try_start_5c
    const-class v5, Lcom/mqunar/contacts/basis/model/Contact;

    invoke-virtual {v1, v5}, Lcom/mqunar/xutils/dbutils/DbUtils;->findAll(Ljava/lang/Class;)Ljava/util/List;
    :try_end_61
    .catch Lcom/mqunar/xutils/dbutils/exception/DbException; {:try_start_5c .. :try_end_61} :catch_63

    move-result-object v0

    goto :goto_15

    .line 83
    :catch_63
    move-exception v1

    .line 84
    const-string v5, "Contacts"

    invoke-static {v1}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_70
    move v1, v2

    goto :goto_23
.end method

.method public getContacts(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;)V
    .registers 5

    .prologue
    .line 65
    new-instance v0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;)V

    .line 66
    invoke-virtual {v0}, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->run()V

    .line 67
    return-void
.end method

.method public declared-synchronized getContactsDatabaseByUser(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/DbUtils;
    .registers 7

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userName is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 31
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 34
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBHelper;->mContactsDatabase:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/xutils/dbutils/DbUtils;

    .line 35
    if-nez v0, :cond_45

    .line 36
    new-instance v0, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;

    invoke-direct {v0, p1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v1, "qunar_contacts_%s.db"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbVersion(I)V

    .line 39
    new-instance v1, Lcom/mqunar/contacts/basis/db/DBHelper$1;

    invoke-direct {v1, p0}, Lcom/mqunar/contacts/basis/db/DBHelper$1;-><init>(Lcom/mqunar/contacts/basis/db/DBHelper;)V

    invoke-virtual {v0, v1}, Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;->setDbUpgradeListener(Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;)V

    .line 45
    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/DbUtils;->create(Lcom/mqunar/xutils/dbutils/DbUtils$DaoConfig;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/mqunar/contacts/basis/db/DBHelper;->mContactsDatabase:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_12 .. :try_end_45} :catchall_f

    .line 49
    :cond_45
    monitor-exit p0

    return-object v0
.end method

.method public saveContacts(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p1, :cond_8

    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 56
    :cond_8
    const-string v0, "Contacts"

    const-string v1, "saveContacts but context or contacts is empty! "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :goto_12
    return-void

    .line 60
    :cond_13
    new-instance v0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mqunar/contacts/basis/db/DBHelper;->mWriteTask:Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;

    .line 61
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBHelper;->mWriteTask:Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;

    invoke-virtual {v0}, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->run()V

    goto :goto_12
.end method
