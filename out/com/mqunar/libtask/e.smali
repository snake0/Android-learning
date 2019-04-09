.class Lcom/mqunar/libtask/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/mqunar/libtask/AsyncTask;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/mqunar/libtask/AsyncTask;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/libtask/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p1, p0, Lcom/mqunar/libtask/e;->a:Lcom/mqunar/libtask/AsyncTask;

    .line 682
    iput-object p2, p0, Lcom/mqunar/libtask/e;->b:[Ljava/lang/Object;

    .line 683
    return-void
.end method
