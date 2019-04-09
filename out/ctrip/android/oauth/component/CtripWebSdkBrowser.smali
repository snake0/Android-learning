.class public Lctrip/android/oauth/component/CtripWebSdkBrowser;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_BAR_CONTAINER_ID:I = 0x1

.field private static final TITLE_BAR_HEIGHT:I = 0x32


# instance fields
.field private isErrorPage:Z

.field private isLoading:Z

.field private mCtripWebViewClient:Lctrip/android/oauth/component/CtripWebViewClient;

.field private mHtmlTitle:Ljava/lang/String;

.field private mLoadErrorRetryBtn:Landroid/widget/Button;

.field private mLoadErrorView:Landroid/widget/LinearLayout;

.field private mRequestParam:Lctrip/android/oauth/component/CtripBrowserRequestParamBase;

.field private mTitleText:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lctrip/android/oauth/component/CtripWebSdkBrowser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lctrip/android/oauth/component/CtripWebSdkBrowser;)V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->goBack()V

    return-void
.end method

.method static synthetic access$100(Lctrip/android/oauth/component/CtripWebSdkBrowser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lctrip/android/oauth/component/CtripWebSdkBrowser;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lctrip/android/oauth/component/CtripWebSdkBrowser;Z)Z
    .registers 2

    .prologue
    .line 39
    iput-boolean p1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->isErrorPage:Z

    return p1
.end method

.method static synthetic access$500(Lctrip/android/oauth/component/CtripWebSdkBrowser;)Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->isLoading:Z

    return v0
.end method

.method static synthetic access$502(Lctrip/android/oauth/component/CtripWebSdkBrowser;Z)Z
    .registers 2

    .prologue
    .line 39
    iput-boolean p1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->isLoading:Z

    return p1
.end method

.method static synthetic access$602(Lctrip/android/oauth/component/CtripWebSdkBrowser;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lctrip/android/oauth/component/CtripWebSdkBrowser;)V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->updateTitleName()V

    return-void
.end method

.method private createBrowserRequestParam(Landroid/os/Bundle;)Lctrip/android/oauth/component/CtripBrowserRequestParamBase;
    .registers 3

    .prologue
    .line 159
    .line 160
    new-instance v0, Lctrip/android/oauth/component/CtripAuthRequestParam;

    invoke-direct {v0, p0}, Lctrip/android/oauth/component/CtripAuthRequestParam;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {v0, p1}, Lctrip/android/oauth/component/CtripAuthRequestParam;->setupRequestParam(Landroid/os/Bundle;)V

    .line 162
    invoke-direct {p0, v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->installAuthWebViewClient(Lctrip/android/oauth/component/CtripAuthRequestParam;)V

    .line 164
    return-object v0
.end method

.method private goBack()V
    .registers 6

    .prologue
    .line 367
    new-instance v1, Lctrip/android/oauth/RequestProcessor$Request;

    invoke-direct {v1}, Lctrip/android/oauth/RequestProcessor$Request;-><init>()V

    .line 368
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 369
    const-string v0, "_ctripapi_sendauth_response_state"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "_ctripapi_sendauth_response_code"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "_ctripapi_baseresponse_errcode"

    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    const-string v0, "_ctripapi_baseresponse_errstr"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mRequestParam:Lctrip/android/oauth/component/CtripBrowserRequestParamBase;

    instance-of v0, v0, Lctrip/android/oauth/component/CtripAuthRequestParam;

    if-eqz v0, :cond_5b

    .line 374
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mRequestParam:Lctrip/android/oauth/component/CtripBrowserRequestParamBase;

    check-cast v0, Lctrip/android/oauth/component/CtripAuthRequestParam;

    .line 375
    const-string v3, "_ctripapi_command_type"

    invoke-virtual {v0}, Lctrip/android/oauth/component/CtripAuthRequestParam;->getAuthRequest()Lctrip/android/oauth/model/auth/SendAuthRequest;

    move-result-object v4

    invoke-virtual {v4}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    invoke-virtual {v0}, Lctrip/android/oauth/component/CtripAuthRequestParam;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lctrip/android/oauth/RequestProcessor$Request;->targetPackageName:Ljava/lang/String;

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lctrip/android/oauth/component/CtripAuthRequestParam;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".ctripapi.CtripEntryActivity"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lctrip/android/oauth/RequestProcessor$Request;->targetClassName:Ljava/lang/String;

    .line 379
    :cond_5b
    iput-object v2, v1, Lctrip/android/oauth/RequestProcessor$Request;->bundle:Landroid/os/Bundle;

    .line 380
    const-string v0, ""

    iput-object v0, v1, Lctrip/android/oauth/RequestProcessor$Request;->messageContent:Ljava/lang/String;

    .line 381
    const/high16 v0, 0x4000000

    iput v0, v1, Lctrip/android/oauth/RequestProcessor$Request;->flags:I

    .line 383
    invoke-static {p0, v1}, Lctrip/android/oauth/RequestProcessor;->startActivity(Landroid/content/Context;Lctrip/android/oauth/RequestProcessor$Request;)Z

    .line 385
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->finish()V

    .line 386
    return-void
.end method

.method private handleReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->isErrorPage:Z

    .line 342
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->promptError()V

    .line 343
    return-void
.end method

.method private hiddenErrorPrompt()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 354
    return-void
.end method

.method private initDataFromIntent(Landroid/content/Intent;)Z
    .registers 5

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 280
    invoke-direct {p0, v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->createBrowserRequestParam(Landroid/os/Bundle;)Lctrip/android/oauth/component/CtripBrowserRequestParamBase;

    move-result-object v1

    iput-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mRequestParam:Lctrip/android/oauth/component/CtripBrowserRequestParamBase;

    .line 281
    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mRequestParam:Lctrip/android/oauth/component/CtripBrowserRequestParamBase;

    if-eqz v1, :cond_20

    .line 282
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mRequestParam:Lctrip/android/oauth/component/CtripBrowserRequestParamBase;

    invoke-virtual {v0}, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mUrl:Ljava/lang/String;

    .line 290
    :cond_16
    :goto_16
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 291
    const/4 v0, 0x0

    .line 295
    :goto_1f
    return v0

    .line 284
    :cond_20
    const-string v1, "key_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 286
    iput-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mUrl:Ljava/lang/String;

    goto :goto_16

    .line 293
    :cond_37
    sget-object v0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOAD URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private initLoadingErrorView()V
    .registers 10

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 223
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    .line 224
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 227
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 234
    sget v1, Lctrip/android/oauth/R$drawable;->common_network_unstable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lctrip/android/oauth/utils/DeviceUtils;->getPixelFromDip(Landroid/util/DisplayMetrics;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 249
    const-string v1, "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 258
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 259
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 260
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    const-string v1, "\u91cd\u65b0\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 262
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x430e0000    # 142.0f

    invoke-static {v1, v2}, Lctrip/android/oauth/utils/DeviceUtils;->getPixelFromDip(Landroid/util/DisplayMetrics;F)I

    move-result v1

    .line 263
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x42380000    # 46.0f

    invoke-static {v2, v3}, Lctrip/android/oauth/utils/DeviceUtils;->getPixelFromDip(Landroid/util/DisplayMetrics;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 264
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lctrip/android/oauth/utils/DeviceUtils;->getPixelFromDip(Landroid/util/DisplayMetrics;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 265
    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    sget v1, Lctrip/android/oauth/R$drawable;->common_btn_search_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 267
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    new-instance v1, Lctrip/android/oauth/component/CtripWebSdkBrowser$4;

    invoke-direct {v1, p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser$4;-><init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    return-void
.end method

.method private initWebView()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 303
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 304
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mCtripWebViewClient:Lctrip/android/oauth/component/CtripWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 305
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;-><init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;Lctrip/android/oauth/component/CtripWebSdkBrowser$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 306
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 307
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3e

    .line 310
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 313
    :goto_3d
    return-void

    .line 312
    :cond_3e
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->removeJavascriptInterface(Landroid/webkit/WebView;)V

    goto :goto_3d
.end method

.method private installAuthWebViewClient(Lctrip/android/oauth/component/CtripAuthRequestParam;)V
    .registers 3

    .prologue
    .line 168
    new-instance v0, Lctrip/android/oauth/component/CtripAuthWebViewClient;

    invoke-direct {v0, p0, p1}, Lctrip/android/oauth/component/CtripAuthWebViewClient;-><init>(Landroid/app/Activity;Lctrip/android/oauth/component/CtripAuthRequestParam;)V

    iput-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mCtripWebViewClient:Lctrip/android/oauth/component/CtripWebViewClient;

    .line 169
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mCtripWebViewClient:Lctrip/android/oauth/component/CtripWebViewClient;

    invoke-virtual {v0, p0}, Lctrip/android/oauth/component/CtripWebViewClient;->setBrowserRequestCallBack(Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;)V

    .line 170
    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method private promptError()V
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const-string v1, "\u643a\u7a0b\u6388\u6743\u9875"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 349
    return-void
.end method

.method private setContentView()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 174
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 179
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 182
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 183
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 186
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v1, v4}, Lctrip/android/oauth/utils/DeviceUtils;->getPixelFromDip(Landroid/util/DisplayMetrics;F)I

    move-result v1

    invoke-direct {v0, v6, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 183
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctrip/android/oauth/R$layout;->common_topbar_layout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 188
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 191
    sget v1, Lctrip/android/oauth/R$id;->common_titleview_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mTitleText:Landroid/widget/TextView;

    .line 193
    sget v1, Lctrip/android/oauth/R$id;->common_titleview_btn_left:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v5, Lctrip/android/oauth/component/CtripWebSdkBrowser$3;

    invoke-direct {v5, p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser$3;-><init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    .line 203
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 205
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 206
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->initLoadingErrorView()V

    .line 214
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 218
    invoke-virtual {p0, v2}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->setContentView(Landroid/view/View;)V

    .line 219
    return-void
.end method

.method private setViewLoading()V
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d...."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method

.method private setViewNormal()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->updateTitleName()V

    .line 331
    return-void
.end method

.method private updateTitleName()V
    .registers 3

    .prologue
    .line 358
    const-string v0, ""

    .line 360
    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 361
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    .line 363
    :cond_c
    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->initDataFromIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 65
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->finish()V

    .line 76
    :goto_10
    return-void

    .line 70
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->requestWindowFeature(I)Z

    .line 71
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->setContentView()V

    .line 73
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->initWebView()V

    .line 75
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->openUrl(Ljava/lang/String;)V

    goto :goto_10
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 93
    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    .line 94
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mRequestParam:Lctrip/android/oauth/component/CtripBrowserRequestParamBase;

    if-eqz v0, :cond_10

    .line 95
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mRequestParam:Lctrip/android/oauth/component/CtripBrowserRequestParamBase;

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->execRequest(Landroid/app/Activity;I)V

    .line 97
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->goBack()V

    .line 99
    :cond_10
    invoke-virtual {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->finish()V

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 120
    sget-object v0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->isErrorPage:Z

    if-eqz v0, :cond_20

    .line 122
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->promptError()V

    .line 127
    :goto_1f
    return-void

    .line 124
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->isErrorPage:Z

    .line 125
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->hiddenErrorPrompt()V

    goto :goto_1f
.end method

.method public onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    .line 108
    sget-object v0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p2, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->mUrl:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 131
    sget-object v0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failingUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->handleReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onReceivedSslErrorCallBack(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7

    .prologue
    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    const-string v1, "\u8bbf\u95ee\u7684\u7f51\u7ad9\u5b58\u5728\u5b89\u5168\u95ee\u9898"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 141
    const-string v1, "\u7ee7\u7eed"

    new-instance v2, Lctrip/android/oauth/component/CtripWebSdkBrowser$1;

    invoke-direct {v2, p0, p2}, Lctrip/android/oauth/component/CtripWebSdkBrowser$1;-><init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lctrip/android/oauth/component/CtripWebSdkBrowser$2;

    invoke-direct {v2, p0, p2}, Lctrip/android/oauth/component/CtripWebSdkBrowser$2;-><init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 155
    sget-object v0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->TAG:Ljava/lang/String;

    const-string v1, "onReceivedSslErrorCallBack........."

    invoke-static {v0, v1}, Lctrip/android/oauth/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    return-void
.end method

.method protected refreshAllViews()V
    .registers 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->isLoading:Z

    if-eqz v0, :cond_8

    .line 322
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->setViewLoading()V

    .line 325
    :goto_7
    return-void

    .line 324
    :cond_8
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->setViewNormal()V

    goto :goto_7
.end method

.method public removeJavascriptInterface(Landroid/webkit/WebView;)V
    .registers 5

    .prologue
    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1b

    .line 391
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 392
    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 393
    const-string v1, "searchBoxJavaBridge_"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 397
    :cond_1b
    :goto_1b
    return-void

    .line 394
    :catch_1c
    move-exception v0

    .line 395
    sget-object v1, Lctrip/android/oauth/component/CtripWebSdkBrowser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 114
    sget-object v0, Lctrip/android/oauth/component/CtripWebSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lctrip/android/oauth/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    return v0
.end method
