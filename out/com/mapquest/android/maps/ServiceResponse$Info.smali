.class public Lcom/mapquest/android/maps/ServiceResponse$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public copyright:Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;

.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public statusCode:I

.field final synthetic this$0:Lcom/mapquest/android/maps/ServiceResponse;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/ServiceResponse;)V
    .registers 3

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mapquest/android/maps/ServiceResponse$Info;->this$0:Lcom/mapquest/android/maps/ServiceResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info;->statusCode:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info;->messages:Ljava/util/List;

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/mapquest/android/maps/ServiceResponse;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mapquest/android/maps/ServiceResponse$Info;->this$0:Lcom/mapquest/android/maps/ServiceResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info;->statusCode:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info;->messages:Ljava/util/List;

    .line 36
    new-instance v0, Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;

    # getter for: Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/ServiceResponse;->access$000(Lcom/mapquest/android/maps/ServiceResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v1

    const-string v2, "copyright"

    invoke-virtual {v1, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;-><init>(Lcom/mapquest/android/maps/ServiceResponse$Info;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info;->copyright:Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;

    .line 37
    # getter for: Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/ServiceResponse;->access$000(Lcom/mapquest/android/maps/ServiceResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "statuscode"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info;->statusCode:I

    .line 38
    # getter for: Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/ServiceResponse;->access$000(Lcom/mapquest/android/maps/ServiceResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "messages"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 40
    const/4 v0, 0x0

    :goto_37
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4d

    .line 41
    iget-object v2, p0, Lcom/mapquest/android/maps/ServiceResponse$Info;->messages:Ljava/util/List;

    # getter for: Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/ServiceResponse;->access$000(Lcom/mapquest/android/maps/ServiceResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/mapquest/android/maps/JSONHelper;->getString(ILorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 44
    :cond_4d
    return-void
.end method
