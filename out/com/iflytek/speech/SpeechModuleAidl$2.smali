.class Lcom/iflytek/speech/SpeechModuleAidl$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/iflytek/speech/SpeechModuleAidl;


# direct methods
.method constructor <init>(Lcom/iflytek/speech/SpeechModuleAidl;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/speech/SpeechModuleAidl$2;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$2;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    # getter for: Lcom/iflytek/speech/SpeechModuleAidl;->mInitListener:Lcom/iflytek/cloud/InitListener;
    invoke-static {v0}, Lcom/iflytek/speech/SpeechModuleAidl;->access$100(Lcom/iflytek/speech/SpeechModuleAidl;)Lcom/iflytek/cloud/InitListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$2;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    # getter for: Lcom/iflytek/speech/SpeechModuleAidl;->mInitListener:Lcom/iflytek/cloud/InitListener;
    invoke-static {v0}, Lcom/iflytek/speech/SpeechModuleAidl;->access$100(Lcom/iflytek/speech/SpeechModuleAidl;)Lcom/iflytek/cloud/InitListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/InitListener;->onInit(I)V

    goto :goto_8
.end method
