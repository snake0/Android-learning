.class Lcom/mqunar/splash/SplashActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity;)V
    .registers 2

    .prologue
    .line 367
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const-wide/16 v5, 0x0

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 371
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-static {v0}, Lcom/mqunar/splash/AdSplash;->deleteAllCache(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_1f5

    .line 374
    :goto_a
    invoke-static {}, Lcom/mqunar/splash/SplashUtils;->getCrashTouchUrl()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getSplashWebUrl()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    :cond_30
    const-string v2, "qunar.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_c1

    .line 379
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    new-instance v2, Lcom/mqunar/splash/QWebView;

    iget-object v3, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {v2, v3}, Lcom/mqunar/splash/QWebView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v1, v2}, Lcom/mqunar/splash/SplashActivity;->access$402(Lcom/mqunar/splash/SplashActivity;Lcom/mqunar/splash/QWebView;)Lcom/mqunar/splash/QWebView;

    .line 380
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v1}, Lcom/mqunar/splash/SplashActivity;->access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/mqunar/splash/QWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->rootLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/mqunar/splash/SplashActivity;->access$1800(Lcom/mqunar/splash/SplashActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v2}, Lcom/mqunar/splash/SplashActivity;->access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 383
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v1}, Lcom/mqunar/splash/SplashActivity;->access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;

    move-result-object v1

    new-instance v2, Lcom/mqunar/splash/SplashJavascriptObject;

    iget-object v3, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    iget-object v7, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Lcom/mqunar/splash/SplashJavascriptObject;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    const-string v3, "qunarJsBridge"

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/splash/QWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v1}, Lcom/mqunar/splash/SplashActivity;->access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    iget-object v2, v2, Lcom/mqunar/splash/SplashActivity;->webViewObserver:Lcom/mqunar/splash/IWebViewObserver;

    invoke-virtual {v1, v2}, Lcom/mqunar/splash/QWebView;->setObserver(Lcom/mqunar/splash/IWebViewObserver;)V

    .line 385
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    const/4 v1, 0x2

    # setter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0, v1}, Lcom/mqunar/splash/SplashActivity;->access$1902(Lcom/mqunar/splash/SplashActivity;I)I

    .line 387
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1900(Lcom/mqunar/splash/SplashActivity;)I

    move-result v0

    iput v0, v4, Landroid/os/Message;->what:I

    .line 406
    :goto_96
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    const-string v1, "qunar_sys"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v2

    .line 407
    const-string v0, "isNotice"

    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/SwitchEnv;->isShowNetTips()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 408
    # getter for: Lcom/mqunar/splash/SplashActivity;->isShowNoticeOnce:Z
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->access$800()Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 409
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->sendBroadcast()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1500(Lcom/mqunar/splash/SplashActivity;)V

    .line 410
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 461
    :goto_c0
    return-void

    .line 389
    :cond_c1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_140

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d7

    const-string v0, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_140

    :cond_d7
    const-string v0, "qunar.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_140

    .line 390
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    new-instance v2, Lcom/mqunar/splash/QWebView;

    iget-object v3, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {v2, v3}, Lcom/mqunar/splash/QWebView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v0, v2}, Lcom/mqunar/splash/SplashActivity;->access$402(Lcom/mqunar/splash/SplashActivity;Lcom/mqunar/splash/QWebView;)Lcom/mqunar/splash/QWebView;

    .line 391
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/mqunar/splash/QWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->rootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1800(Lcom/mqunar/splash/SplashActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v2}, Lcom/mqunar/splash/SplashActivity;->access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 394
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;

    move-result-object v0

    new-instance v2, Lcom/mqunar/splash/SplashJavascriptObject;

    iget-object v3, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    iget-object v5, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/mqunar/splash/SplashJavascriptObject;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    const-string v3, "qunarJsBridge"

    invoke-virtual {v0, v2, v3}, Lcom/mqunar/splash/QWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;

    move-result-object v0

    iget-object v2, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    iget-object v2, v2, Lcom/mqunar/splash/SplashActivity;->webViewObserver:Lcom/mqunar/splash/IWebViewObserver;

    invoke-virtual {v0, v2}, Lcom/mqunar/splash/QWebView;->setObserver(Lcom/mqunar/splash/IWebViewObserver;)V

    .line 396
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # setter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0, v10}, Lcom/mqunar/splash/SplashActivity;->access$1902(Lcom/mqunar/splash/SplashActivity;I)I

    .line 398
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1900(Lcom/mqunar/splash/SplashActivity;)I

    move-result v0

    iput v0, v4, Landroid/os/Message;->what:I

    .line 399
    const-wide/16 v5, 0x1f4

    goto/16 :goto_96

    .line 401
    :cond_140
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    const/4 v1, 0x1

    # setter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0, v1}, Lcom/mqunar/splash/SplashActivity;->access$1902(Lcom/mqunar/splash/SplashActivity;I)I

    move-result v0

    iput v0, v4, Landroid/os/Message;->what:I

    goto/16 :goto_96

    .line 411
    :cond_14b
    if-nez v0, :cond_15d

    .line 412
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->sendBroadcast()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1500(Lcom/mqunar/splash/SplashActivity;)V

    .line 413
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_c0

    .line 416
    :cond_15d
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mqunar/splash/R$layout;->spider_splash_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 417
    sget v1, Lcom/mqunar/splash/R$id;->spider_checkbox:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 418
    iget-object v7, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    sget v9, Lcom/mqunar/splash/R$style;->spider_AppSplash:I

    invoke-direct {v1, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v8, "\u63d0\u793a"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9000\u51fa"

    new-instance v8, Lcom/mqunar/splash/SplashActivity$5$2;

    invoke-direct {v8, p0}, Lcom/mqunar/splash/SplashActivity$5$2;-><init>(Lcom/mqunar/splash/SplashActivity$5;)V

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v0, Lcom/mqunar/splash/SplashActivity$5$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mqunar/splash/SplashActivity$5$1;-><init>(Lcom/mqunar/splash/SplashActivity$5;Lcom/mqunar/storage/Storage;Landroid/widget/CheckBox;Landroid/os/Message;J)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    # setter for: Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v0}, Lcom/mqunar/splash/SplashActivity;->access$2002(Lcom/mqunar/splash/SplashActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 436
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$2000(Lcom/mqunar/splash/SplashActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/mqunar/splash/SplashActivity$5$3;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/SplashActivity$5$3;-><init>(Lcom/mqunar/splash/SplashActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 448
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$2000(Lcom/mqunar/splash/SplashActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mqunar/splash/SplashActivity;->access$2000(Lcom/mqunar/splash/SplashActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1d8

    if-eqz v0, :cond_1d8

    .line 450
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_1d8

    .line 452
    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 453
    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 454
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 457
    :cond_1d8
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$2000(Lcom/mqunar/splash/SplashActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 458
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$2000(Lcom/mqunar/splash/SplashActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 459
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$5;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$2000(Lcom/mqunar/splash/SplashActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_c0

    .line 372
    :catch_1f5
    move-exception v0

    goto/16 :goto_a
.end method
