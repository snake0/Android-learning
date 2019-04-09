.class public Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;
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
.field private static final TAG:Ljava/lang/String; = "ContactsMakeDiffTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mMakeDiffCallback:Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;

.field public mOtherContacts:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mqunar/libtask/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->mContext:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->mOtherContacts:Ljava/util/List;

    .line 34
    iput-object p4, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->mMakeDiffCallback:Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;

    .line 35
    iput-object p2, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->uniqueKey:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 6
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
    const/4 v0, 0x0

    .line 41
    .line 43
    :try_start_1
    sget-object v1, Lcom/mqunar/contacts/basis/db/DBHelper;->INSTANCE:Lcom/mqunar/contacts/basis/db/DBHelper;

    iget-object v2, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/contacts/basis/db/DBHelper;->getContacts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_12

    move-result-object v1

    .line 48
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->mOtherContacts:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->getIncrement(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_21

    move-result-object v0

    .line 50
    :goto_11
    return-object v0

    .line 44
    :catch_12
    move-exception v1

    .line 45
    const-string v2, "Contacts"

    invoke-static {v1}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_b

    .line 49
    :catch_21
    move-exception v1

    goto :goto_11
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
    .line 76
    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 78
    const/4 p2, 0x0

    .line 95
    :cond_7
    :goto_7
    return-object p2

    .line 80
    :cond_8
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
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

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    move-object p2, v1

    .line 95
    goto :goto_7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 19
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->onPostExecute(Ljava/util/List;)V

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
    .line 56
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->mMakeDiffCallback:Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;

    if-nez v0, :cond_12

    .line 59
    const-string v0, "ContactsMakeDiffTask"

    const-string v1, "onPostExecute callback is empty!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :goto_11
    return-void

    .line 63
    :cond_12
    if-nez p1, :cond_26

    .line 64
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->mMakeDiffCallback:Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;

    new-instance v1, Lcom/mqunar/contacts/basis/db/ReadContactsError;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "no result!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/mqunar/contacts/basis/db/ReadContactsError;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;->onFailure(Lcom/mqunar/contacts/basis/db/ReadContactsError;)V

    goto :goto_11

    .line 66
    :cond_26
    iget-object v0, p0, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->mMakeDiffCallback:Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;

    invoke-interface {v0, p1}, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffCallback;->onSuccess(Ljava/util/List;)V

    goto :goto_11
.end method

.method public run()V
    .registers 3

    .prologue
    .line 72
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/contacts/basis/db/ContactsMakeDiffTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;

    .line 73
    return-void
.end method
