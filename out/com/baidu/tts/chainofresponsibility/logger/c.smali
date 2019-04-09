.class public Lcom/baidu/tts/chainofresponsibility/logger/c;
.super Lcom/baidu/tts/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/n/a",
        "<",
        "Lcom/baidu/tts/chainofresponsibility/logger/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 32
    iput p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->a:I

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->d:Ljava/lang/String;

    return-object v0
.end method
