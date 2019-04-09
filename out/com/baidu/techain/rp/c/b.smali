.class public final Lcom/baidu/techain/rp/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/baidu/techain/rp/c/b;->a:Lorg/json/JSONObject;

    .line 13
    iput-object p2, p0, Lcom/baidu/techain/rp/c/b;->b:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/baidu/techain/rp/c/b;->c:I

    .line 15
    return-void
.end method
