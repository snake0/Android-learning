.class Lcom/iflytek/cloud/thirdparty/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/LexiconListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/x;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/x;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/x$1;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V
    .registers 9

    if-eqz p2, :cond_10

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x$1;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {p2}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/iflytek/cloud/SpeechError;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x;ILjava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v0, "lexicon_id"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/iflytek/aiui/AIUIEvent;

    const/16 v1, 0x8

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/aiui/AIUIEvent;-><init>(IIILjava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x$1;->a:Lcom/iflytek/cloud/thirdparty/x;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x$1;->a:Lcom/iflytek/cloud/thirdparty/x;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x;)Lcom/iflytek/cloud/thirdparty/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x;Landroid/os/Message;)V
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_3e} :catch_3f

    goto :goto_f

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f
.end method
