.class public Lcom/mqunar/cock/network/RemoteSvcProxy$AcyncParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public baseParam:Lcom/mqunar/cock/model/BaseParam;

.field public callback:Lcom/mqunar/cock/network/TaskCallbackAdapter;

.field public serviceMap:Lcom/mqunar/cock/network/ServiceMap;


# direct methods
.method public constructor <init>(Lcom/mqunar/cock/network/ServiceMap;Lcom/mqunar/cock/model/BaseParam;Lcom/mqunar/cock/network/TaskCallbackAdapter;)V
    .registers 4

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/mqunar/cock/network/RemoteSvcProxy$AcyncParam;->serviceMap:Lcom/mqunar/cock/network/ServiceMap;

    .line 331
    iput-object p2, p0, Lcom/mqunar/cock/network/RemoteSvcProxy$AcyncParam;->baseParam:Lcom/mqunar/cock/model/BaseParam;

    .line 332
    iput-object p3, p0, Lcom/mqunar/cock/network/RemoteSvcProxy$AcyncParam;->callback:Lcom/mqunar/cock/network/TaskCallbackAdapter;

    .line 333
    return-void
.end method
