.class public Lcom/baidu/tts/m/c;
.super Lcom/baidu/tts/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/baidu/tts/n/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/tts/m/c;->a:I

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/tts/m/c;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/baidu/tts/m/c;->a:I

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/tts/m/c;->b:I

    .line 56
    return-void
.end method

.method public g()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/baidu/tts/m/c;->a:I

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/baidu/tts/m/c;->b:I

    return v0
.end method
