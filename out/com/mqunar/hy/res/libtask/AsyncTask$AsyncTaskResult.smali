.class Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;
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
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/mqunar/hy/res/libtask/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/mqunar/hy/res/libtask/AsyncTask;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/hy/res/libtask/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;->mTask:Lcom/mqunar/hy/res/libtask/AsyncTask;

    .line 681
    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 682
    return-void
.end method
