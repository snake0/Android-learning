.class public Lcom/mqunar/hy/res/utils/HybridIdUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final map:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://touch.qunar.com/hy/flight/bargainflight"

    const-string v2, "flight_tejia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://touch.qunar.com/hy/flight/airportservice"

    const-string v2, "flight_traffic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://food.qunar.com/app"

    const-string v2, "group_food"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://hotel.qunar.com/global/mob/index"

    const-string v2, "hotel_internal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://m.huichang.qunar.com/app.html"

    const-string v2, "hotel_mice_user"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://review.qunar.com/mall/touch/indexV2.htm"

    const-string v2, "hotel_ugc_mall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://operation.qunar.com/syn/mpHotelVacation"

    const-string v2, "mob_activity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://bnb.qunar.com/touch/newbnbtouch.jsp"

    const-string v2, "mob_bnb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://searchtouch.qunar.com/queryData/hyIndex.do"

    const-string v2, "mob_destination"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://hy.touch.qunar.com/mobile-hotel-hybrid/prd/pages/panorama-view.html"

    const-string v2, "mob_hotel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://ochat.qunar.com/ochat-hybrid/prd/pages/profile.html"

    const-string v2, "mob_im"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://order.qunar.com/mordercenter/index"

    const-string v2, "mob_ordercenter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "https://user.qunar.com/mobile/security/securityQuestions.jsp"

    const-string v2, "mob_uc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "https://pay.qunar.com/mobile/h5/personalcenter/myaccount/index.htm"

    const-string v2, "mob_uc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "https://pay.qunar.com/mobile/h5/personalcenter/myaccount/myinfos.htm"

    const-string v2, "mob_uc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://user.qunar.com/mobile/feedback/feedback.jsp"

    const-string v2, "mob_uc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "https://pay.qunar.com/mobile/h5/personalcenter/myaccount/mysettings.htm"

    const-string v2, "mob_uc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "https://pay.qunar.com/mobile/h5/personalcenter/myaccount/mysafe.htm"

    const-string v2, "mob_uc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://waimai.qunar.com/mobile.jsp"

    const-string v2, "mob_waimai"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "https://pay.qunar.com/mobile/h5/asset/myWalletIndex.htm"

    const-string v2, "mob_wallet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "https://pay.qunar.com/m/member/asset/balance/withdraw.html"

    const-string v2, "mob_wallet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "https://pay.qunar.com/m/member/asset/balance/onine.html"

    const-string v2, "mob_wallet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://touch.travel.qunar.com/travelorder/"

    const-string v2, "travel_trade"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://touch.dujia.qunar.com/abroad/index.qunar"

    const-string v2, "vacation_abroad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://touch.dujia.qunar.com/abroad/theme_list.qunar"

    const-string v2, "vacation_abroad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    const-string v1, "http://touch.dujia.qunar.com/nindex.qunar"

    const-string v2, "vacation_home"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHybrididByUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    const/4 v0, 0x0

    .line 18
    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/mqunar/hy/res/utils/HybridIdUtils;->map:Ljava/util/Map;

    invoke-static {p0}, Lcom/mqunar/hy/res/utils/UriCodec;->getUrlWithOutQueryAndHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7
.end method
