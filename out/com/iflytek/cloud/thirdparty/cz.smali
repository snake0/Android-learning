.class public Lcom/iflytek/cloud/thirdparty/cz;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/iflytek/cloud/thirdparty/dg;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/cloud/thirdparty/dd;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/dg;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->d:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->h:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/cz;->b:Lcom/iflytek/cloud/thirdparty/dg;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cz;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_12

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/cz;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->f:Ljava/util/HashMap;

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_23

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/cz;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->h:Ljava/util/HashMap;

    :cond_23
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_34

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/cz;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->e:Ljava/util/HashMap;

    :cond_34
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3f

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/cz;->c:[Ljava/lang/String;

    :cond_3f
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .registers 10

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/cz;->b()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->b:Lcom/iflytek/cloud/thirdparty/dg;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/dg;->d()Ljava/util/HashMap;

    move-result-object v3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->b:Lcom/iflytek/cloud/thirdparty/dg;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/dg;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/cloud/thirdparty/cz;->e:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "p"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "\u0000"

    const-string v6, " "

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/iflytek/cloud/thirdparty/cz;->h:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_5f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/dd;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/dd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/dd;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/dd;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/cloud/thirdparty/cz;->f:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cz;->e:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "\u0000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const-string v3, "\u0000"

    const-string v4, " "

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/cz;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c3
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/cz;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_c9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cz;->c:[Ljava/lang/String;

    return-object v0
.end method
