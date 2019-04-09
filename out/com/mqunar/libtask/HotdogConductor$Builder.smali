.class public Lcom/mqunar/libtask/HotdogConductor$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/FormPart;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/mqunar/libtask/HttpHeader;

.field private g:Ljava/util/Map;
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

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->h:Z

    return-void
.end method


# virtual methods
.method public addAppendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/libtask/HotdogConductor$Builder;
    .registers 4

    .prologue
    .line 903
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->g:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 904
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->g:Ljava/util/Map;

    .line 906
    :cond_b
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    return-object p0
.end method

.method public addBPart(Lcom/mqunar/libtask/FormPart;)Lcom/mqunar/libtask/HotdogConductor$Builder;
    .registers 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->e:Ljava/util/List;

    if-nez v0, :cond_b

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->e:Ljava/util/List;

    .line 914
    :cond_b
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/libtask/HotdogConductor$Builder;
    .registers 4

    .prologue
    .line 895
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->f:Lcom/mqunar/libtask/HttpHeader;

    if-nez v0, :cond_b

    .line 896
    new-instance v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-direct {v0}, Lcom/mqunar/libtask/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->f:Lcom/mqunar/libtask/HttpHeader;

    .line 898
    :cond_b
    iget-object v0, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->f:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/libtask/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return-object p0
.end method

.method public varargs create([Lcom/mqunar/libtask/TaskCallback;)Lcom/mqunar/libtask/HotdogConductor;
    .registers 6

    .prologue
    .line 928
    new-instance v0, Lcom/mqunar/libtask/HotdogConductor;

    invoke-direct {v0, p1}, Lcom/mqunar/libtask/HotdogConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 929
    iget-boolean v1, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->h:Z

    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/HotdogConductor;->setProxy(Z)V

    .line 930
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->f:Lcom/mqunar/libtask/HttpHeader;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->g:Ljava/util/Map;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->e:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/HotdogConductor;->setParams([Ljava/lang/Object;)V

    .line 931
    return-object v0
.end method

.method public setCacheKey(Ljava/lang/String;)Lcom/mqunar/libtask/HotdogConductor$Builder;
    .registers 2

    .prologue
    .line 890
    iput-object p1, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->d:Ljava/lang/String;

    .line 891
    return-object p0
.end method

.method public setHostUrl(Ljava/lang/String;)Lcom/mqunar/libtask/HotdogConductor$Builder;
    .registers 2

    .prologue
    .line 875
    iput-object p1, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->a:Ljava/lang/String;

    .line 876
    return-object p0
.end method

.method public setParam(Ljava/lang/String;)Lcom/mqunar/libtask/HotdogConductor$Builder;
    .registers 2

    .prologue
    .line 885
    iput-object p1, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->c:Ljava/lang/String;

    .line 886
    return-object p0
.end method

.method public setProxy(Z)V
    .registers 2

    .prologue
    .line 924
    iput-boolean p1, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->h:Z

    .line 925
    return-void
.end method

.method public setT(Ljava/lang/String;)Lcom/mqunar/libtask/HotdogConductor$Builder;
    .registers 2

    .prologue
    .line 880
    iput-object p1, p0, Lcom/mqunar/libtask/HotdogConductor$Builder;->b:Ljava/lang/String;

    .line 881
    return-object p0
.end method
