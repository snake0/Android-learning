.class public abstract Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailed(Lcom/baidu/mapapi/http/HttpClient$HttpStateError;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
