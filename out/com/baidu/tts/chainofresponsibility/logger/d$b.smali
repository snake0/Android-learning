.class Lcom/baidu/tts/chainofresponsibility/logger/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/tts/chainofresponsibility/logger/d;

.field private b:Lcom/baidu/tts/chainofresponsibility/logger/c;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/chainofresponsibility/logger/d;Lcom/baidu/tts/chainofresponsibility/logger/c;)V
    .registers 3

    .prologue
    .line 175
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->b:Lcom/baidu/tts/chainofresponsibility/logger/c;

    .line 178
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-static {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Lcom/baidu/tts/chainofresponsibility/logger/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/chainofresponsibility/logger/b;

    .line 185
    iget-object v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->b:Lcom/baidu/tts/chainofresponsibility/logger/c;

    const/4 v3, 0x0

    invoke-static {}, Lcom/baidu/tts/chainofresponsibility/logger/d;->f()Lcom/baidu/tts/chainofresponsibility/logger/d;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/baidu/tts/chainofresponsibility/logger/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 187
    :cond_21
    return-void
.end method
