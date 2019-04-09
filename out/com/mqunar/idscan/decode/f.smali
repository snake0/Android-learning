.class final Lcom/mqunar/idscan/decode/f;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mqunar/idscan/decode/e;


# direct methods
.method private constructor <init>(Lcom/mqunar/idscan/decode/e;)V
    .registers 2

    iput-object p1, p0, Lcom/mqunar/idscan/decode/f;->a:Lcom/mqunar/idscan/decode/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/idscan/decode/e;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mqunar/idscan/decode/f;-><init>(Lcom/mqunar/idscan/decode/e;)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-wide/32 v0, 0x2bf20

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/mqunar/idscan/decode/e;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finishing activity due to inactivity"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_12} :catch_14

    :goto_12
    const/4 v0, 0x0

    return-object v0

    :catch_14
    move-exception v0

    goto :goto_12
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mqunar/idscan/decode/f;->a:Lcom/mqunar/idscan/decode/e;

    invoke-static {v0}, Lcom/mqunar/idscan/decode/e;->a(Lcom/mqunar/idscan/decode/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/mqunar/idscan/decode/f;->a:Lcom/mqunar/idscan/decode/e;

    invoke-static {v0}, Lcom/mqunar/idscan/decode/e;->a(Lcom/mqunar/idscan/decode/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/qav/uelog/QAVLog;->getInstance(Landroid/content/Context;)Lcom/mqunar/qav/uelog/QAVLog;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/idscan/decode/e;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "finish activity time out"

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qav/uelog/QAVLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
