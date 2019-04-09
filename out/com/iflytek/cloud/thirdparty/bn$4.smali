.class Lcom/iflytek/cloud/thirdparty/bn$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/bm;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/cloud/thirdparty/bn;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/bn;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->k(Lcom/iflytek/cloud/thirdparty/bn;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/bn;->k:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1e
.end method

.method public a(Ljava/util/ArrayList;IIILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v8, 0x4e2a

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->l(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->m(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "tts_data_notify"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_73

    if-eqz p1, :cond_73

    move v1, v2

    :goto_2b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_73

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "buffer"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->k(Lcom/iflytek/cloud/thirdparty/bn;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v5, 0x5209

    iput v5, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v4, v4, Lcom/iflytek/cloud/thirdparty/bn;->k:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static {v4, v5, v2, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    :cond_67
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    const/16 v5, 0x5209

    invoke-interface {v0, v5, v2, v2, v4}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_63

    :cond_73
    :try_start_73
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->c(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/record/b;->a(Ljava/util/ArrayList;III)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_b1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "percent"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "begpos"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "endpos"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "spellinfo"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/bn;->k(Lcom/iflytek/cloud/thirdparty/bn;)Z

    move-result v1

    if-eqz v1, :cond_131

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v1, v1, Lcom/iflytek/cloud/thirdparty/bn;->k:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_b1
    :goto_b1
    const/16 v0, 0x64

    if-lt p2, v0, :cond_130

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->n(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->o(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "tts_data_notify"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->p(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "audio_format"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/bn;->c(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/record/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/record/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v6, :cond_17b

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_fb} :catch_fb

    :catch_fb
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->k(Lcom/iflytek/cloud/thirdparty/bn;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/bn;->k:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v8}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-static {v0, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_11f
    :goto_11f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->s(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->t(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/be;->b(Z)V

    :cond_130
    :goto_130
    return-void

    :cond_131
    :try_start_131
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/iflytek/cloud/SynthesizerListener;->onBufferProgress(IIILjava/lang/String;)V

    goto/16 :goto_b1

    :cond_13c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->q(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    if-eqz v0, :cond_1b9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->r(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/thirdparty/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/be;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    const-string v1, "audio_format"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_155
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/bn;->c(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/record/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/record/b;->b()I

    move-result v1

    if-nez v1, :cond_169

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x2786

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_169
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/bn;->c(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/record/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/record/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v6, :cond_17b

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_17b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->k(Lcom/iflytek/cloud/thirdparty/bn;)Z

    move-result v0

    if-eqz v0, :cond_199

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/bn;->k:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_130

    :cond_199
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_1a3} :catch_fb

    goto :goto_130

    :cond_1a4
    :try_start_1a4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$4;->b:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v3, 0x4e2a

    invoke-direct {v1, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1b4} :catch_1b6

    goto/16 :goto_11f

    :catch_1b6
    move-exception v0

    goto/16 :goto_11f

    :cond_1b9
    move-object v0, v3

    goto :goto_155
.end method
