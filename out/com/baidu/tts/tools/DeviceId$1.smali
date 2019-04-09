.class Lcom/baidu/tts/tools/DeviceId$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/tts/tools/DeviceId$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/tools/DeviceId;


# direct methods
.method constructor <init>(Lcom/baidu/tts/tools/DeviceId;)V
    .registers 2

    .prologue
    .line 425
    iput-object p1, p0, Lcom/baidu/tts/tools/DeviceId$1;->a:Lcom/baidu/tts/tools/DeviceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/tools/DeviceId$a;Lcom/baidu/tts/tools/DeviceId$a;)I
    .registers 5

    .prologue
    .line 428
    iget v0, p2, Lcom/baidu/tts/tools/DeviceId$a;->b:I

    iget v1, p1, Lcom/baidu/tts/tools/DeviceId$a;->b:I

    sub-int/2addr v0, v1

    .line 429
    if-nez v0, :cond_10

    .line 430
    iget-boolean v1, p1, Lcom/baidu/tts/tools/DeviceId$a;->d:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p2, Lcom/baidu/tts/tools/DeviceId$a;->d:Z

    if-eqz v1, :cond_11

    .line 431
    const/4 v0, 0x0

    .line 442
    :cond_10
    :goto_10
    return v0

    .line 434
    :cond_11
    iget-boolean v1, p1, Lcom/baidu/tts/tools/DeviceId$a;->d:Z

    if-eqz v1, :cond_17

    .line 435
    const/4 v0, -0x1

    goto :goto_10

    .line 438
    :cond_17
    iget-boolean v1, p2, Lcom/baidu/tts/tools/DeviceId$a;->d:Z

    if-eqz v1, :cond_10

    .line 439
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 425
    check-cast p1, Lcom/baidu/tts/tools/DeviceId$a;

    check-cast p2, Lcom/baidu/tts/tools/DeviceId$a;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/tts/tools/DeviceId$1;->a(Lcom/baidu/tts/tools/DeviceId$a;Lcom/baidu/tts/tools/DeviceId$a;)I

    move-result v0

    return v0
.end method
