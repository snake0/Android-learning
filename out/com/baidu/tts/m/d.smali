.class public Lcom/baidu/tts/m/d;
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
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/tts/f/d;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    .line 19
    const-string v0, "5"

    iput-object v0, p0, Lcom/baidu/tts/m/d;->a:Ljava/lang/String;

    .line 20
    const-string v0, "5"

    iput-object v0, p0, Lcom/baidu/tts/m/d;->b:Ljava/lang/String;

    .line 21
    const-string v0, "5"

    iput-object v0, p0, Lcom/baidu/tts/m/d;->c:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/baidu/tts/f/h;->a:Lcom/baidu/tts/f/h;

    invoke-virtual {v0}, Lcom/baidu/tts/f/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/m/d;->d:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/baidu/tts/f/d;->c:Lcom/baidu/tts/f/d;

    iput-object v0, p0, Lcom/baidu/tts/m/d;->e:Lcom/baidu/tts/f/d;

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/m/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/d;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/tts/m/d;->e:Lcom/baidu/tts/f/d;

    .line 46
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/tts/m/d;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/tts/m/d;->f:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/tts/m/d;->a:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/tts/m/d;->b:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/baidu/tts/m/d;->c:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/m/d;->e:Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/tts/m/d;->e:Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/m/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/tts/m/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public u()J
    .registers 4

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    .line 83
    :try_start_2
    iget-object v2, p0, Lcom/baidu/tts/m/d;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move-result-wide v0

    .line 87
    :goto_8
    return-wide v0

    .line 84
    :catch_9
    move-exception v2

    goto :goto_8
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/tts/m/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/tts/m/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/tts/m/d;->c:Ljava/lang/String;

    return-object v0
.end method
