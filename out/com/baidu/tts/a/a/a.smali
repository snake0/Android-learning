.class public Lcom/baidu/tts/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/tts/a/a/c",
            "<TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/tts/a/a/a;->a:Lcom/baidu/tts/a/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/a/a/c;->a()V

    .line 21
    return-void
.end method

.method public a(Lcom/baidu/tts/a/a/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/a/a/c",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lcom/baidu/tts/a/a/a;->a:Lcom/baidu/tts/a/a/c;

    .line 17
    return-void
.end method
