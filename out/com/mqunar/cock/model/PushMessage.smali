.class public Lcom/mqunar/cock/model/PushMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public data:Lcom/alibaba/fastjson/JSONObject;

.field public msgId:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public sendNo:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method
