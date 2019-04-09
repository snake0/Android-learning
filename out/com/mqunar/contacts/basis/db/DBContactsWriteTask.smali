.class public Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;
.super Lcom/mqunar/libtask/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/contacts/basis/async/ITask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/libtask/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/mqunar/contacts/basis/async/ITask;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Contacts"


# instance fields
.field private contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private isRunningEnd:Z

.field private uniqueKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
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
    .line 33
    invoke-direct {p0}, Lcom/mqunar/libtask/AsyncTask;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->isRunningEnd:Z

    .line 34
    iput-object p1, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->contacts:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->uniqueKey:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 42
    const-string v2, "Contacts"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Database save contact ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->contacts:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    move v0, v1

    :goto_23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") start work "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 47
    :try_start_3a
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->contacts:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->uniqueKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 48
    :cond_4a
    const-string v0, "Contacts"

    const-string v4, "contacts or uniqueKey is empty!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_54} :catch_a4

    .line 66
    :goto_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 67
    const-string v0, "Contacts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Database save contact ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->contacts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") waste "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_86
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_23

    .line 50
    :cond_8d
    :try_start_8d
    sget-object v0, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    iget-object v4, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/mqunar/contacts/basis/db/DBHelper;->getContactsDatabaseByUser(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v0

    .line 51
    if-nez v0, :cond_b1

    .line 52
    const-string v0, "Contacts"

    const-string v4, "databases is empty!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a3} :catch_a4

    goto :goto_54

    .line 63
    :catch_a4
    move-exception v0

    .line 64
    const-string v4, "Contacts"

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_54

    .line 56
    :cond_b1
    :try_start_b1
    iget-object v4, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->contacts:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/mqunar/xutils/dbutils/DbUtils;->mergeAll(Ljava/util/List;)V

    .line 57
    const-string v0, "Contacts"

    const-string v4, "contacts save database success!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c0
    .catch Lcom/mqunar/xutils/dbutils/exception/DbException; {:try_start_b1 .. :try_end_c0} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c0} :catch_a4

    goto :goto_54

    .line 58
    :catch_c1
    move-exception v0

    .line 59
    :try_start_c2
    const-string v4, "Contacts"

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_ce} :catch_a4

    goto :goto_54
.end method

.method public isOver()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->isRunningEnd:Z

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->isRunningEnd:Z

    .line 75
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 79
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/contacts/basis/db/DBContactsWriteTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;

    .line 80
    return-void
.end method
