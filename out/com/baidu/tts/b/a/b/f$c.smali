.class Lcom/baidu/tts/b/a/b/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/tts/b/a/b/f;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/f;)V
    .registers 3

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$c;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/baidu/tts/tools/CommonUtility;->generateSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$c;->a:Ljava/lang/String;

    .line 93
    return-void
.end method
