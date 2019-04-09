.class public Lcom/mapquest/android/maps/ServiceResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private helper:Lcom/mapquest/android/maps/JSONHelper;

.field public info:Lcom/mapquest/android/maps/ServiceResponse$Info;

.field public serviceResponse:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/mapquest/android/maps/JSONHelper;

    invoke-direct {v0}, Lcom/mapquest/android/maps/JSONHelper;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    .line 15
    new-instance v0, Lcom/mapquest/android/maps/ServiceResponse$Info;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/ServiceResponse$Info;-><init>(Lcom/mapquest/android/maps/ServiceResponse;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/mapquest/android/maps/JSONHelper;

    invoke-direct {v0}, Lcom/mapquest/android/maps/JSONHelper;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    .line 19
    iput-object p1, p0, Lcom/mapquest/android/maps/ServiceResponse;->serviceResponse:Lorg/json/JSONObject;

    .line 20
    new-instance v0, Lcom/mapquest/android/maps/ServiceResponse$Info;

    iget-object v1, p0, Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    const-string v2, "info"

    invoke-virtual {v1, v2, p1}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ServiceResponse$Info;-><init>(Lcom/mapquest/android/maps/ServiceResponse;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/mapquest/android/maps/ServiceResponse;)Lcom/mapquest/android/maps/JSONHelper;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    return-object v0
.end method


# virtual methods
.method getHelper()Lcom/mapquest/android/maps/JSONHelper;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mapquest/android/maps/ServiceResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    return-object v0
.end method
