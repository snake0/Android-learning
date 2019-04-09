.class public Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/tts/chainofresponsibility/logger/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    invoke-static {}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a()Lcom/baidu/tts/chainofresponsibility/logger/d;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static addPrintString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static addPrintStrings(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Ljava/util/List;)V

    .line 75
    return-void
.end method

.method public static addUnPrintString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 78
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->b(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static clearHandler()V
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->b()V

    .line 63
    return-void
.end method

.method public static clearSpecifyStrings()V
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->c()V

    .line 83
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static isModeRelease()Z
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->e()Z

    move-result v0

    return v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 47
    :try_start_0
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 51
    :goto_5
    return-void

    .line 48
    :catch_6
    move-exception v0

    .line 49
    const-string v1, "LoggerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static printable(Z)V
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Z)V

    .line 55
    return-void
.end method

.method public static setModeRelease()V
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->d()V

    .line 59
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 22
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
