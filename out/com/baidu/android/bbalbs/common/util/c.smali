.class Lcom/baidu/android/bbalbs/common/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/android/bbalbs/common/util/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/bbalbs/common/util/b;


# direct methods
.method constructor <init>(Lcom/baidu/android/bbalbs/common/util/b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/bbalbs/common/util/c;->a:Lcom/baidu/android/bbalbs/common/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/android/bbalbs/common/util/b$a;Lcom/baidu/android/bbalbs/common/util/b$a;)I
    .registers 5

    iget v0, p2, Lcom/baidu/android/bbalbs/common/util/b$a;->b:I

    iget v1, p1, Lcom/baidu/android/bbalbs/common/util/b$a;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_10

    iget-boolean v1, p1, Lcom/baidu/android/bbalbs/common/util/b$a;->d:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p2, Lcom/baidu/android/bbalbs/common/util/b$a;->d:Z

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-boolean v1, p1, Lcom/baidu/android/bbalbs/common/util/b$a;->d:Z

    if-eqz v1, :cond_17

    const/4 v0, -0x1

    goto :goto_10

    :cond_17
    iget-boolean v1, p2, Lcom/baidu/android/bbalbs/common/util/b$a;->d:Z

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_10
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/baidu/android/bbalbs/common/util/b$a;

    check-cast p2, Lcom/baidu/android/bbalbs/common/util/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/android/bbalbs/common/util/c;->a(Lcom/baidu/android/bbalbs/common/util/b$a;Lcom/baidu/android/bbalbs/common/util/b$a;)I

    move-result v0

    return v0
.end method
