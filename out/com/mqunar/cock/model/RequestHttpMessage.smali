.class public Lcom/mqunar/cock/model/RequestHttpMessage;
.super Lcom/mqunar/cock/model/BaseHttpMessage;
.source "SourceFile"


# instance fields
.field public body:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public query:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mqunar/cock/model/BaseHttpMessage;-><init>()V

    return-void
.end method
