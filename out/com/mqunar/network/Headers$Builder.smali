.class public final Lcom/mqunar/network/Headers$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;
    .registers 5

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-object p0
.end method

.method static synthetic a(Lcom/mqunar/network/Headers$Builder;)Ljava/util/List;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;
    .registers 5

    .prologue
    .line 217
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 218
    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/mqunar/network/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 228
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_c
    if-nez p2, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_28

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4b

    .line 231
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_4b
    invoke-direct {p0, p1, p2}, Lcom/mqunar/network/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mqunar/network/Headers;
    .registers 3

    .prologue
    .line 280
    new-instance v0, Lcom/mqunar/network/Headers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mqunar/network/Headers;-><init>(Lcom/mqunar/network/Headers$Builder;Lcom/mqunar/network/c;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_9
    if-ltz v1, :cond_28

    .line 272
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 273
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    :goto_23
    return-object v0

    .line 271
    :cond_24
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_9

    .line 276
    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public removeAll(Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;
    .registers 4

    .prologue
    .line 247
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 248
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 249
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/mqunar/network/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 251
    add-int/lit8 v1, v1, -0x2

    .line 247
    :cond_24
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_2

    .line 254
    :cond_28
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;
    .registers 3

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/mqunar/network/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/network/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;

    .line 264
    return-object p0
.end method
