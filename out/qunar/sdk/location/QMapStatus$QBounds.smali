.class public Lqunar/sdk/location/QMapStatus$QBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public northeast:Lqunar/sdk/location/QLocation;

.field public southwest:Lqunar/sdk/location/QLocation;

.field final synthetic this$0:Lqunar/sdk/location/QMapStatus;


# direct methods
.method constructor <init>(Lqunar/sdk/location/QMapStatus;Lqunar/sdk/location/QLocation;Lqunar/sdk/location/QLocation;)V
    .registers 4

    .prologue
    .line 30
    iput-object p1, p0, Lqunar/sdk/location/QMapStatus$QBounds;->this$0:Lqunar/sdk/location/QMapStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lqunar/sdk/location/QMapStatus$QBounds;->southwest:Lqunar/sdk/location/QLocation;

    .line 32
    iput-object p3, p0, Lqunar/sdk/location/QMapStatus$QBounds;->northeast:Lqunar/sdk/location/QLocation;

    .line 33
    return-void
.end method
