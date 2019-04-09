.class public abstract Lcom/mqunar/atomenv/Caller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected className:Ljava/lang/String;

.field protected modifierType:I

.field protected returnType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/mqunar/atomenv/Caller$CallerObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/mqunar/atomenv/Caller$CallerObject",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/mqunar/atomenv/Caller$CallerObject;

    invoke-direct {v0}, Lcom/mqunar/atomenv/Caller$CallerObject;-><init>()V

    .line 18
    :try_start_5
    invoke-virtual {p0, v0, p1, p2}, Lcom/mqunar/atomenv/Caller;->callInternal(Lcom/mqunar/atomenv/Caller$CallerObject;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_9

    .line 23
    :goto_8
    return-object v0

    .line 20
    :catch_9
    move-exception v1

    .line 21
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mqunar/atomenv/Caller$CallerObject;->success:Z

    .line 22
    iput-object v1, v0, Lcom/mqunar/atomenv/Caller$CallerObject;->cause:Ljava/lang/Throwable;

    goto :goto_8
.end method

.method protected varargs abstract callInternal(Lcom/mqunar/atomenv/Caller$CallerObject;Ljava/lang/Object;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/atomenv/Caller$CallerObject",
            "<TR;>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    .prologue
    .line 30
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected abstract sync(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
