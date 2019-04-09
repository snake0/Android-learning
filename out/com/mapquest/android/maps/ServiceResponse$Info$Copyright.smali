.class public Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public imageAltText:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field final synthetic this$1:Lcom/mapquest/android/maps/ServiceResponse$Info;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/ServiceResponse$Info;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;->this$1:Lcom/mapquest/android/maps/ServiceResponse$Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;->text:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;->imageUrl:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;->imageAltText:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/mapquest/android/maps/ServiceResponse$Info;->this$0:Lcom/mapquest/android/maps/ServiceResponse;

    # getter for: Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/ServiceResponse;->access$000(Lcom/mapquest/android/maps/ServiceResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;->text:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/mapquest/android/maps/ServiceResponse$Info;->this$0:Lcom/mapquest/android/maps/ServiceResponse;

    # getter for: Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/ServiceResponse;->access$000(Lcom/mapquest/android/maps/ServiceResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;->imageUrl:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/mapquest/android/maps/ServiceResponse$Info;->this$0:Lcom/mapquest/android/maps/ServiceResponse;

    # getter for: Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/ServiceResponse;->access$000(Lcom/mapquest/android/maps/ServiceResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "imageAltText"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse$Info$Copyright;->imageAltText:Ljava/lang/String;

    .line 55
    return-void
.end method
