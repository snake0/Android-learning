.class public Lcom/mqunar/libtask/CrossConductor$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/FormPart;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->b:[B

    .line 30
    iput-object v0, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/libtask/CrossConductor$Builder;
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->d:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->d:Ljava/util/Map;

    .line 52
    :cond_b
    iget-object v0, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object p0
.end method

.method public varargs create([Lcom/mqunar/libtask/TaskCallback;)Lcom/mqunar/libtask/CrossConductor;
    .registers 6

    .prologue
    .line 57
    new-instance v1, Lcom/mqunar/libtask/CrossConductor;

    invoke-direct {v1, p1}, Lcom/mqunar/libtask/CrossConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 58
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->c:Ljava/util/List;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->b:[B

    :goto_14
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->d:Ljava/util/Map;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/mqunar/libtask/CrossConductor;->setParams([Ljava/lang/Object;)V

    .line 59
    return-object v1

    .line 58
    :cond_1f
    iget-object v0, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->c:Ljava/util/List;

    goto :goto_14
.end method

.method public setContent([B)Lcom/mqunar/libtask/CrossConductor$Builder;
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->b:[B

    .line 40
    return-object p0
.end method

.method public setFormParts(Ljava/util/List;)Lcom/mqunar/libtask/CrossConductor$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/FormPart;",
            ">;)",
            "Lcom/mqunar/libtask/CrossConductor$Builder;"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->c:Ljava/util/List;

    .line 45
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/mqunar/libtask/CrossConductor$Builder;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mqunar/libtask/CrossConductor$Builder;->a:Ljava/lang/String;

    .line 35
    return-object p0
.end method
