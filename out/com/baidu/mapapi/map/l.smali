.class Lcom/baidu/mapapi/map/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/baidu/mapapi/map/l$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/baidu/mapapi/map/f;

.field private final b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/l",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(DDDDI)V
    .registers 20

    new-instance v1, Lcom/baidu/mapapi/map/f;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/baidu/mapapi/map/f;-><init>(DDDD)V

    move/from16 v0, p9

    invoke-direct {p0, v1, v0}, Lcom/baidu/mapapi/map/l;-><init>(Lcom/baidu/mapapi/map/f;I)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/map/f;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/l;-><init>(Lcom/baidu/mapapi/map/f;I)V

    return-void
.end method

.method private constructor <init>(Lcom/baidu/mapapi/map/f;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iput p2, p0, Lcom/baidu/mapapi/map/l;->b:I

    return-void
.end method

.method private a()V
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    iget-object v10, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    new-instance v0, Lcom/baidu/mapapi/map/l;

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v1, v1, Lcom/baidu/mapapi/map/f;->a:D

    iget-object v3, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v3, v3, Lcom/baidu/mapapi/map/f;->e:D

    iget-object v5, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v5, v5, Lcom/baidu/mapapi/map/f;->b:D

    iget-object v7, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v7, v7, Lcom/baidu/mapapi/map/f;->f:D

    iget v9, p0, Lcom/baidu/mapapi/map/l;->b:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mapapi/map/l;-><init>(DDDDI)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    new-instance v0, Lcom/baidu/mapapi/map/l;

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v1, v1, Lcom/baidu/mapapi/map/f;->e:D

    iget-object v3, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v3, v3, Lcom/baidu/mapapi/map/f;->c:D

    iget-object v5, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v5, v5, Lcom/baidu/mapapi/map/f;->b:D

    iget-object v7, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v7, v7, Lcom/baidu/mapapi/map/f;->f:D

    iget v9, p0, Lcom/baidu/mapapi/map/l;->b:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mapapi/map/l;-><init>(DDDDI)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    new-instance v0, Lcom/baidu/mapapi/map/l;

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v1, v1, Lcom/baidu/mapapi/map/f;->a:D

    iget-object v3, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v3, v3, Lcom/baidu/mapapi/map/f;->e:D

    iget-object v5, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v5, v5, Lcom/baidu/mapapi/map/f;->f:D

    iget-object v7, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v7, v7, Lcom/baidu/mapapi/map/f;->d:D

    iget v9, p0, Lcom/baidu/mapapi/map/l;->b:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mapapi/map/l;-><init>(DDDDI)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    new-instance v0, Lcom/baidu/mapapi/map/l;

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v1, v1, Lcom/baidu/mapapi/map/f;->e:D

    iget-object v3, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v3, v3, Lcom/baidu/mapapi/map/f;->c:D

    iget-object v5, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v5, v5, Lcom/baidu/mapapi/map/f;->f:D

    iget-object v7, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v7, v7, Lcom/baidu/mapapi/map/f;->d:D

    iget v9, p0, Lcom/baidu/mapapi/map/l;->b:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mapapi/map/l;-><init>(DDDDI)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_89
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/map/l$a;

    invoke-virtual {v5}, Lcom/baidu/mapapi/map/l$a;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v0

    invoke-virtual {v5}, Lcom/baidu/mapapi/map/l$a;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/map/l;->a(DDLcom/baidu/mapapi/map/l$a;)V

    goto :goto_89

    :cond_a8
    return-void
.end method

.method private a(DDLcom/baidu/mapapi/map/l$a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDTT;)V"
        }
    .end annotation

    const/16 v1, 0x28

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v0, v0, Lcom/baidu/mapapi/map/f;->f:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_36

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v0, v0, Lcom/baidu/mapapi/map/f;->e:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_26

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/l;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/map/l;->a(DDLcom/baidu/mapapi/map/l$a;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/l;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/map/l;->a(DDLcom/baidu/mapapi/map/l$a;)V

    goto :goto_25

    :cond_36
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v0, v0, Lcom/baidu/mapapi/map/f;->e:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_4e

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/l;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/map/l;->a(DDLcom/baidu/mapapi/map/l$a;)V

    goto :goto_25

    :cond_4e
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/l;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/map/l;->a(DDLcom/baidu/mapapi/map/l$a;)V

    goto :goto_25

    :cond_5e
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    if-nez v0, :cond_69

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    :cond_69
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_25

    iget v0, p0, Lcom/baidu/mapapi/map/l;->b:I

    if-ge v0, v1, :cond_25

    invoke-direct {p0}, Lcom/baidu/mapapi/map/l;->a()V

    goto :goto_25
.end method

.method private a(Lcom/baidu/mapapi/map/f;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/map/f;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/f;->a(Lcom/baidu/mapapi/map/f;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/l;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mapapi/map/l;->a(Lcom/baidu/mapapi/map/f;Ljava/util/Collection;)V

    goto :goto_13

    :cond_23
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/f;->b(Lcom/baidu/mapapi/map/f;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_35
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/l$a;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/l$a;->a()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/baidu/mapapi/map/f;->a(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/map/f;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/map/f;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/l;->a(Lcom/baidu/mapapi/map/f;Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Lcom/baidu/mapapi/map/l$a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/l$a;->a()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/map/f;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v3, v0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/map/l;->a(DDLcom/baidu/mapapi/map/l$a;)V

    :cond_1d
    return-void
.end method
