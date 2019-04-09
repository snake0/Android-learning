.class Lcom/mqunar/splash/SplashActivity$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .prologue
    const/4 v2, 0x2

    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x5

    const/4 v8, 0x0

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_58

    .line 166
    invoke-static {}, Lcom/mqunar/splash/SplashUtils;->isLoadDone()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->isGranted:Z
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$000(Lcom/mqunar/splash/SplashActivity;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 167
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$100(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashLoadingView;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 168
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$100(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashLoadingView;->cancleAnimation()V

    .line 170
    :cond_28
    const-string v0, "SplashActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->dealLogicForJump()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$200(Lcom/mqunar/splash/SplashActivity;)V

    .line 226
    :cond_4b
    :goto_4b
    return-void

    .line 173
    :cond_4c
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4b

    .line 175
    :cond_58
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_60

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_6e

    .line 176
    :cond_60
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mqunar/splash/QWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4b

    .line 177
    :cond_6e
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_142

    .line 178
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    :try_start_84
    invoke-static {}, Lcom/mqunar/network/NetRequestManager;->getInstance()Lcom/mqunar/network/NetRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v1}, Lcom/mqunar/splash/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/network/NetRequestManager;->requestIpList(Landroid/content/Context;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_91} :catch_1a3

    .line 186
    :goto_91
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$500(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashMonitor;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 187
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$500(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v1}, Lcom/mqunar/splash/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/splash/SplashMonitor;->monitorPush(Landroid/content/Intent;Landroid/os/Handler;)V

    .line 191
    :cond_ae
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->isTransformForPush()Z
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$600(Lcom/mqunar/splash/SplashActivity;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 192
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$500(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashMonitor;

    move-result-object v0

    if-eqz v0, :cond_c7

    .line 193
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$500(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashMonitor;->monitorPushMessage()V

    .line 195
    :cond_c7
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4b

    .line 199
    :cond_d4
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-static {v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->getRouteUri(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/mqunar/splash/SplashActivity;->access$700(Lcom/mqunar/splash/SplashActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 202
    # setter for: Lcom/mqunar/splash/SplashActivity;->isShowNoticeOnce:Z
    invoke-static {v4}, Lcom/mqunar/splash/SplashActivity;->access$802(Z)Z

    .line 204
    :cond_e9
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    const/high16 v2, 0x24000000

    invoke-static {v0, v1, v2}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/content/Context;Ljava/lang/String;I)V

    .line 205
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$500(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashMonitor;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 206
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$500(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->isPreLoadDone:Z
    invoke-static {v1}, Lcom/mqunar/splash/SplashActivity;->access$900(Lcom/mqunar/splash/SplashActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashTime:J
    invoke-static {v2}, Lcom/mqunar/splash/SplashActivity;->access$1000(Lcom/mqunar/splash/SplashActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->startDeatAdTime:J
    invoke-static {v4}, Lcom/mqunar/splash/SplashActivity;->access$1100(Lcom/mqunar/splash/SplashActivity;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/mqunar/splash/SplashMonitor;->monitorAppStartCostTime(ZJJJ)V

    .line 208
    :cond_117
    const-string v0, "OPT-TIMES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8df3\u8f6cApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4b

    .line 210
    :cond_142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_167

    .line 211
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    const-string v1, "\u6587\u4ef6\u53d1\u751f\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d\u5b89\u88c5"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4b

    .line 214
    :cond_167
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v9, :cond_172

    .line 215
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashActivity;->finish()V

    goto/16 :goto_4b

    .line 216
    :cond_172
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4b

    .line 217
    invoke-static {}, Lcom/mqunar/splash/SplashUtils;->isLoadDone()Z

    move-result v0

    if-eqz v0, :cond_188

    .line 218
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4b

    .line 221
    :cond_188
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->initSplashLoadingView()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1200(Lcom/mqunar/splash/SplashActivity;)V

    .line 222
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$100(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashLoadingView;->showAnimation()V

    .line 223
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$1;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4b

    .line 183
    :catch_1a3
    move-exception v0

    goto/16 :goto_91
.end method
