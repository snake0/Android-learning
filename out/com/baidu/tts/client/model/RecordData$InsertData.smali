.class public Lcom/baidu/tts/client/model/RecordData$InsertData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/client/model/RecordData;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/client/model/RecordData;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->a:Lcom/baidu/tts/client/model/RecordData;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->b:Lorg/json/JSONObject;

    .line 65
    iput-object p3, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->c:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->d:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->d:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 72
    iget-object v0, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->a:Lcom/baidu/tts/client/model/RecordData;

    invoke-static {v0}, Lcom/baidu/tts/client/model/RecordData;->a(Lcom/baidu/tts/client/model/RecordData;)Lcom/baidu/tts/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/l/a;->c(Ljava/lang/String;)V

    .line 76
    :goto_13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 74
    :cond_19
    iget-object v0, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->a:Lcom/baidu/tts/client/model/RecordData;

    invoke-static {v0}, Lcom/baidu/tts/client/model/RecordData;->a(Lcom/baidu/tts/client/model/RecordData;)Lcom/baidu/tts/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->b:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/tts/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/baidu/tts/client/model/RecordData$InsertData;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
