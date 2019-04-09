.class public Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;
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


# instance fields
.field private context:Landroid/content/Context;

.field private func:Lcom/mqunar/contacts/basis/upload/IUpload;

.field private isRunningEnd:Z

.field private mLocalContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/contacts/basis/upload/IUpload;)V
    .registers 5

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mqunar/libtask/AsyncTask;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->isRunningEnd:Z

    .line 36
    iput-object p1, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->context:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->func:Lcom/mqunar/contacts/basis/upload/IUpload;

    .line 38
    iput-object p2, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->uniqueKey:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->uniqueKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 11
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
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 50
    :try_start_6
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/ContactUtils;->getContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->mLocalContacts:Ljava/util/List;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_76

    .line 56
    :goto_e
    :try_start_e
    sget-object v0, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/mqunar/contacts/basis/db/DBHelper;->getContacts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_83

    move-result-object v0

    .line 64
    :goto_18
    :try_start_18
    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->mLocalContacts:Ljava/util/List;

    invoke-virtual {p0, v2, v0}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->getDecrement(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_91

    move-result-object v2

    .line 70
    :goto_1e
    invoke-static {v2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 71
    const-string v5, "Contacts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "make decrement... size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :try_start_42
    sget-object v5, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    iget-object v6, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/mqunar/contacts/basis/db/DBHelper;->getContactsDatabaseByUser(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/DbUtils;

    move-result-object v5

    .line 74
    invoke-virtual {v5, v2}, Lcom/mqunar/xutils/dbutils/DbUtils;->deleteAll(Ljava/util/List;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4f} :catch_a9

    .line 83
    :cond_4f
    :goto_4f
    :try_start_4f
    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->mLocalContacts:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->getIncrement(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_bf

    move-result-object v1

    .line 89
    :goto_55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 91
    const-string v0, "Contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sync time waste --> "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-object v1

    .line 51
    :catch_76
    move-exception v0

    .line 52
    const-string v2, "Contacts"

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 57
    :catch_83
    move-exception v0

    .line 58
    const-string v2, "Contacts"

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_18

    .line 65
    :catch_91
    move-exception v2

    .line 66
    const-string v5, "Contacts"

    const-string v6, "decrement failure!"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-string v5, "Contacts"

    invoke-static {v2}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    goto/16 :goto_1e

    .line 75
    :catch_a9
    move-exception v2

    .line 76
    const-string v5, "Contacts"

    const-string v6, "decrement delete failure!"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const-string v5, "Contacts"

    invoke-static {v2}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4f

    .line 84
    :catch_bf
    move-exception v0

    .line 85
    const-string v2, "Contacts"

    const-string v5, "increment failure!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-string v2, "Contacts"

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_55
.end method

.method public getDecrement(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    const/4 p2, 0x0

    .line 191
    :cond_7
    :goto_7
    return-object p2

    .line 176
    :cond_8
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/contacts/basis/model/Contact;

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 187
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    move-object p2, v1

    .line 191
    goto :goto_7
.end method

.method public getIncrement(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 148
    const/4 p2, 0x0

    .line 165
    :cond_7
    :goto_7
    return-object p2

    .line 150
    :cond_8
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/contacts/basis/model/Contact;

    .line 159
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 161
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    move-object p2, v1

    .line 165
    goto :goto_7
.end method

.method public isOver()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->isRunningEnd:Z

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 25
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->onPostExecute(Ljava/util/List;)V

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
    const/4 v3, 0x1

    .line 98
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->func:Lcom/mqunar/contacts/basis/upload/IUpload;

    if-nez v0, :cond_b

    .line 102
    iput-boolean v3, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->isRunningEnd:Z

    .line 134
    :goto_a
    return-void

    .line 106
    :cond_b
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 107
    const-string v0, "Contacts"

    const-string v1, "upload contacts but contact is empty!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 111
    :cond_1c
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->func:Lcom/mqunar/contacts/basis/upload/IUpload;

    iget-object v1, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->uniqueKey:Ljava/lang/String;

    new-instance v2, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask$1;

    invoke-direct {v2, p0}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask$1;-><init>(Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/mqunar/contacts/basis/upload/IUpload;->uploadContacts(Ljava/util/List;Ljava/lang/String;Lcom/mqunar/contacts/basis/upload/UploadListener;)V

    .line 133
    iput-boolean v3, p0, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->isRunningEnd:Z

    goto :goto_a
.end method

.method public run()V
    .registers 3

    .prologue
    .line 138
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/contacts/basis/impl/common/SyncContactsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;

    .line 139
    return-void
.end method
