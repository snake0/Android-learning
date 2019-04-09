.class Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final connected:Z

.field private final subtype:I

.field private final type:I


# direct methods
.method public constructor <init>(ZII)V
    .registers 4

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->connected:Z

    .line 80
    iput p2, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->type:I

    .line 81
    iput p3, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->subtype:I

    .line 82
    return-void
.end method


# virtual methods
.method public getNetworkSubType()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->subtype:I

    return v0
.end method

.method public getNetworkType()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->type:I

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->connected:Z

    return v0
.end method
