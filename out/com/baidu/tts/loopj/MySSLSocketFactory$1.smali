.class Lcom/baidu/tts/loopj/MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic this$0:Lcom/baidu/tts/loopj/MySSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/MySSLSocketFactory;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/tts/loopj/MySSLSocketFactory$1;->this$0:Lcom/baidu/tts/loopj/MySSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 75
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 78
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method
