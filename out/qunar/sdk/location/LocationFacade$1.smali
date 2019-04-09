.class Lqunar/sdk/location/LocationFacade$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lqunar/sdk/location/LocationFacade;

.field final synthetic val$timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;


# direct methods
.method constructor <init>(Lqunar/sdk/location/LocationFacade;Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;)V
    .registers 3

    .prologue
    .line 222
    iput-object p1, p0, Lqunar/sdk/location/LocationFacade$1;->this$0:Lqunar/sdk/location/LocationFacade;

    iput-object p2, p0, Lqunar/sdk/location/LocationFacade$1;->val$timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 225
    # getter for: Lqunar/sdk/location/LocationFacade;->SUBJECT:Lqunar/sdk/location/LocationFacade$LocSub;
    invoke-static {}, Lqunar/sdk/location/LocationFacade;->access$100()Lqunar/sdk/location/LocationFacade$LocSub;

    move-result-object v0

    iget-object v0, v0, Lqunar/sdk/location/LocationFacade$LocSub;->observers:Ljava/util/List;

    iget-object v1, p0, Lqunar/sdk/location/LocationFacade$1;->this$0:Lqunar/sdk/location/LocationFacade;

    # getter for: Lqunar/sdk/location/LocationFacade;->eListener:Lqunar/sdk/location/QunarGPSLocationListener;
    invoke-static {v1}, Lqunar/sdk/location/LocationFacade;->access$000(Lqunar/sdk/location/LocationFacade;)Lqunar/sdk/location/QunarGPSLocationListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 226
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$1;->this$0:Lqunar/sdk/location/LocationFacade;

    # getter for: Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;
    invoke-static {v0}, Lqunar/sdk/location/LocationFacade;->access$200(Lqunar/sdk/location/LocationFacade;)Lqunar/sdk/location/QunarGPSLocationStrategy;

    move-result-object v0

    iget-object v0, v0, Lqunar/sdk/location/QunarGPSLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    if-nez v0, :cond_2e

    .line 227
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$1;->this$0:Lqunar/sdk/location/LocationFacade;

    # getter for: Lqunar/sdk/location/LocationFacade;->locationStrategy:Lqunar/sdk/location/QunarGPSLocationStrategy;
    invoke-static {v0}, Lqunar/sdk/location/LocationFacade;->access$200(Lqunar/sdk/location/LocationFacade;)Lqunar/sdk/location/QunarGPSLocationStrategy;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lqunar/sdk/location/QunarGPSLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    .line 228
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$1;->val$timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;

    if-eqz v0, :cond_2e

    .line 229
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$1;->val$timeoutCallback:Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;

    invoke-interface {v0}, Lqunar/sdk/location/QunarGPSLocationTimeoutCallback;->locationTimeOutCallback()V

    .line 232
    :cond_2e
    iget-object v0, p0, Lqunar/sdk/location/LocationFacade$1;->this$0:Lqunar/sdk/location/LocationFacade;

    invoke-virtual {v0}, Lqunar/sdk/location/LocationFacade;->stopLoc()V

    .line 234
    :cond_33
    return-void
.end method
