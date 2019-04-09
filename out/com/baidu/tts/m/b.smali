.class public Lcom/baidu/tts/m/b;
.super Lcom/baidu/tts/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/n/a",
        "<",
        "Lcom/baidu/tts/m/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/b/a/b/f$b;

.field private b:Lcom/baidu/tts/b/a/b/e$b;

.field private c:Lcom/baidu/tts/f/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    .line 26
    new-instance v0, Lcom/baidu/tts/b/a/b/f$b;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/f$b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    .line 27
    new-instance v0, Lcom/baidu/tts/b/a/b/e$b;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e$b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$b;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/b/a/b/f$b;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/f/j;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/baidu/tts/m/b;->c:Lcom/baidu/tts/f/j;

    .line 95
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f$b;->k(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e$b;->k(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public b()Lcom/baidu/tts/b/a/b/e$b;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$b;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f$b;->m(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e$b;->m(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public c()Lcom/baidu/tts/f/j;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/m/b;->c:Lcom/baidu/tts/f/j;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f$b;->l(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e$b;->l(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public d(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 74
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->isLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f$b;->j(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e$b;->j(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_11
    return v0

    :cond_12
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    goto :goto_11
.end method
