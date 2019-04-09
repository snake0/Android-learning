.class Lcom/mqunar/spider/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mqunar/spider/c;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/mqunar/spider/c;->b:Ljava/lang/String;

    .line 60
    return-void
.end method
