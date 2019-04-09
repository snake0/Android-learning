.class public Lcom/mqunar/cock/model/PushAck;
.super Lcom/mqunar/cock/model/BaseHttpMessage;
.source "SourceFile"


# instance fields
.field public jsonObject:Lorg/json/JSONObject;

.field public msgId:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mqunar/cock/model/BaseHttpMessage;-><init>()V

    return-void
.end method
