.class public Lcom/baidu/tts/client/model/Statistics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static isStatistics:Z


# instance fields
.field private a:Lcom/baidu/tts/p/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/baidu/tts/p/b;

    invoke-direct {v0, p1}, Lcom/baidu/tts/p/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Statistics;->a:Lcom/baidu/tts/p/b;

    .line 22
    return-void
.end method

.method public static setEnable(Z)V
    .registers 1

    .prologue
    .line 29
    sput-boolean p0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    .line 30
    return-void
.end method


# virtual methods
.method public start()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/tts/client/model/Statistics;->a:Lcom/baidu/tts/p/b;

    invoke-virtual {v0}, Lcom/baidu/tts/p/b;->a()V

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public stop()I
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/tts/client/model/Statistics;->a:Lcom/baidu/tts/p/b;

    invoke-virtual {v0}, Lcom/baidu/tts/p/b;->b()V

    .line 44
    const/4 v0, 0x0

    return v0
.end method
