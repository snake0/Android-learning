.class Lcom/baidu/tts/loopj/RequestParams$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 169
    iput-object p1, p0, Lcom/baidu/tts/loopj/RequestParams$1;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/tts/loopj/RequestParams$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 170
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestParams$1;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/tts/loopj/RequestParams$1;->val$value:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/loopj/RequestParams$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method
