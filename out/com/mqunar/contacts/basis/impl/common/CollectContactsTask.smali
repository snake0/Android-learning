.class public Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;
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
.field private callback:Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;

.field private context:Landroid/content/Context;

.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mqunar/libtask/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->callback:Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 3
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
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/ContactUtils;->getContacts(Landroid/content/Context;)Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 34
    :goto_6
    return-object v0

    .line 32
    :catch_7
    move-exception v0

    .line 33
    iput-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->exception:Ljava/lang/Exception;

    .line 34
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 5
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
    .line 40
    invoke-super {p0, p1}, Lcom/mqunar/libtask/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->callback:Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;

    if-nez v0, :cond_8

    .line 52
    :goto_7
    return-void

    .line 47
    :cond_8
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_19

    .line 48
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->callback:Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;

    new-instance v1, Lcom/mqunar/contacts/basis/impl/common/CollectContactsError;

    iget-object v2, p0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->exception:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lcom/mqunar/contacts/basis/impl/common/CollectContactsError;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;->onFailure(Lcom/mqunar/contacts/basis/impl/common/CollectContactsError;)V

    goto :goto_7

    .line 50
    :cond_19
    iget-object v0, p0, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->callback:Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;

    invoke-interface {v0, p1}, Lcom/mqunar/contacts/basis/impl/common/CollectContactsCallback;->onSuccess(Ljava/util/List;)V

    goto :goto_7
.end method

.method public run()V
    .registers 3

    .prologue
    .line 56
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/contacts/basis/impl/common/CollectContactsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;

    .line 57
    return-void
.end method
