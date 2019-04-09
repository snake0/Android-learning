.class public Lcom/mqunar/contacts/basis/db/DBContactsReadTask;
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
        "Ljava/util/List",
        "<",
        "Lcom/mqunar/contacts/basis/model/Contact;",
        ">;>;",
        "Lcom/mqunar/contacts/basis/async/ITask;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Contacts"


# instance fields
.field private callback:Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;

.field private context:Landroid/content/Context;

.field private exception:Ljava/lang/Exception;

.field private uniqueKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mqunar/libtask/AsyncTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->uniqueKey:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->callback:Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 42
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->uniqueKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 45
    const-string v1, "Contacts"

    const-string v4, "uniqueKey is empty!"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    const-string v1, "Contacts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Database read contact waste "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-object v0

    .line 47
    :cond_38
    sget-object v1, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    iget-object v4, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/mqunar/contacts/basis/db/DBHelper;->getContactsDatabaseByUser(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v1

    .line 48
    if-nez v1, :cond_4e

    .line 49
    const-string v1, "Contacts"

    const-string v4, "databases is empty!"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 52
    :cond_4e
    :try_start_4e
    const-class v4, Lcom/mqunar/contacts/basis/model/Contact;

    invoke-virtual {v1, v4}, Lcom/mqunar/xutils/dbutils/DbUtils;->findAll(Ljava/lang/Class;)Ljava/util/List;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_8a

    move-result-object v1

    .line 54
    :try_start_54
    invoke-static {v1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5e
    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/contacts/basis/model/Contact;

    .line 56
    if-eqz v0, :cond_5e

    .line 57
    iget-object v5, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->context:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/mqunar/contacts/basis/utils/ContactUtils;->getPrefix(Landroid/content/Context;Lcom/mqunar/contacts/basis/model/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mqunar/contacts/basis/model/Contact;->setPrefix(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_75} :catch_76

    goto :goto_5e

    .line 62
    :catch_76
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 63
    :goto_7a
    iput-object v1, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->exception:Ljava/lang/Exception;

    .line 64
    const-string v4, "Contacts"

    invoke-static {v1}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_88
    move-object v0, v1

    .line 65
    goto :goto_17

    .line 62
    :catch_8a
    move-exception v1

    goto :goto_7a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 20
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->callback:Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;

    if-nez v0, :cond_8

    .line 95
    :goto_7
    return-void

    .line 82
    :cond_8
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_2d

    .line 83
    if-nez p1, :cond_20

    .line 84
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->callback:Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;

    new-instance v1, Lcom/mqunar/contacts/basis/db/ReadContactsError;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "contacts is empty!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/mqunar/contacts/basis/db/ReadContactsError;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;->onFailure(Lcom/mqunar/contacts/basis/db/ReadContactsError;)V

    goto :goto_7

    .line 86
    :cond_20
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->callback:Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;

    new-instance v1, Lcom/mqunar/contacts/basis/db/ReadContactsError;

    iget-object v2, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->exception:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lcom/mqunar/contacts/basis/db/ReadContactsError;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;->onFailure(Lcom/mqunar/contacts/basis/db/ReadContactsError;)V

    goto :goto_7

    .line 89
    :cond_2d
    if-nez p1, :cond_3d

    .line 90
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->callback:Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;

    new-instance v1, Lcom/mqunar/contacts/basis/db/ReadContactsError;

    const/4 v2, 0x2

    const-string v3, "data is empty!"

    invoke-direct {v1, v2, v3}, Lcom/mqunar/contacts/basis/db/ReadContactsError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;->onFailure(Lcom/mqunar/contacts/basis/db/ReadContactsError;)V

    goto :goto_7

    .line 92
    :cond_3d
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->callback:Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;

    invoke-interface {v0, p1}, Lcom/mqunar/contacts/basis/db/DBContactsReadCallback;->onSuccess(Ljava/util/List;)V

    goto :goto_7
.end method

.method public run()V
    .registers 3

    .prologue
    .line 99
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/contacts/basis/db/DBContactsReadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;

    .line 100
    return-void
.end method
