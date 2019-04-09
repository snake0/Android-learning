.class public Lcom/iflytek/cloud/thirdparty/ae;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/ae;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/cloud/thirdparty/ae$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/iflytek/cloud/thirdparty/ae;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->a:Lcom/iflytek/cloud/thirdparty/ae;

    if-nez v0, :cond_b

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ae;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ae;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ae;->a:Lcom/iflytek/cloud/thirdparty/ae;

    :cond_b
    sget-object v0, Lcom/iflytek/cloud/thirdparty/ae;->a:Lcom/iflytek/cloud/thirdparty/ae;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)F
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ae$a;->a(Lcom/iflytek/cloud/thirdparty/ae$a;)F

    move-result v0

    goto :goto_b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ad;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ad;

    goto :goto_7
.end method

.method public a(Ljava/lang/String;F)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-eqz v0, :cond_d

    invoke-static {v0, p2}, Lcom/iflytek/cloud/thirdparty/ae$a;->a(Lcom/iflytek/cloud/thirdparty/ae$a;F)F

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-eqz v0, :cond_10

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->b:Ljava/lang/Long;

    :cond_10
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ae$a;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/ad;)V
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->c:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1c
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->a:Ljava/lang/Long;

    goto :goto_b
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/cloud/thirdparty/ad;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->c:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_b
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->b:Ljava/lang/Long;

    goto :goto_b
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ae;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->c:Ljava/util/Map;

    if-nez v1, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->c:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ad;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ad;->f()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->d:Ljava/lang/String;

    goto :goto_c
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ae$a;

    if-eqz v0, :cond_d

    iput-object p2, v0, Lcom/iflytek/cloud/thirdparty/ae$a;->d:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
