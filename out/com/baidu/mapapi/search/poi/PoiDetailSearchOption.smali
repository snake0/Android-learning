.class public Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;
.super Ljava/lang/Object;


# instance fields
.field public mUid:Ljava/lang/String;

.field public mUids:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->mUid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->mUids:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public poiUid(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->mUid:Ljava/lang/String;

    return-object p0
.end method
