.class public Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:[B

.field private header:Ljava/util/Map;
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

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->content:[B

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->header:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->header:Ljava/util/Map;

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object p0
.end method

.method public varargs create([Lcom/mqunar/hy/res/libtask/TaskCallback;)Lcom/mqunar/hy/res/libtask/ProxyConductor;
    .registers 6

    .prologue
    .line 90
    new-instance v0, Lcom/mqunar/hy/res/libtask/ProxyConductor;

    invoke-direct {v0, p1}, Lcom/mqunar/hy/res/libtask/ProxyConductor;-><init>([Lcom/mqunar/hy/res/libtask/TaskCallback;)V

    .line 91
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->content:[B

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->header:Ljava/util/Map;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/libtask/ProxyConductor;->setParams([Ljava/lang/Object;)V

    .line 92
    return-object v0
.end method

.method public setContent([B)Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->content:[B

    .line 78
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/ProxyConductor$Builder;->url:Ljava/lang/String;

    .line 73
    return-object p0
.end method
