.class public Lcom/baidu/tts/chainofresponsibility/logger/f;
.super Lcom/baidu/tts/chainofresponsibility/logger/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/baidu/tts/chainofresponsibility/logger/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/chainofresponsibility/logger/c;Ljava/lang/Void;Lcom/baidu/tts/chainofresponsibility/logger/d;)V
    .registers 4

    .prologue
    .line 20
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 9
    check-cast p1, Lcom/baidu/tts/chainofresponsibility/logger/c;

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/tts/chainofresponsibility/logger/f;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;Ljava/lang/Void;Lcom/baidu/tts/chainofresponsibility/logger/d;)V

    return-void
.end method
