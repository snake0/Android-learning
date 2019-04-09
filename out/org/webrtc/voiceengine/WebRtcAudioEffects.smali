.class Lorg/webrtc/voiceengine/WebRtcAudioEffects;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

.field private static final AOSP_AUTOMATIC_GAIN_CONTROL:Ljava/util/UUID;

.field private static final AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioEffects"

.field private static canUseAcousticEchoCanceler:Ljava/lang/Boolean;

.field private static canUseAutomaticGainControl:Ljava/lang/Boolean;

.field private static canUseNoiseSuppressor:Ljava/lang/Boolean;


# instance fields
.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private agc:Landroid/media/audiofx/AutomaticGainControl;

.field private ns:Landroid/media/audiofx/NoiseSuppressor;

.field private shouldEnableAec:Z

.field private shouldEnableAgc:Z

.field private shouldEnableNs:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "bb392ec0-8d4d-11e0-a896-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    .line 40
    const-string v0, "aa8130e0-66fc-11e0-bad0-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_AUTOMATIC_GAIN_CONTROL:Ljava/util/UUID;

    .line 42
    const-string v0, "c06c8400-8e06-11e0-9cb6-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    .line 48
    sput-object v1, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    .line 49
    sput-object v1, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    .line 50
    sput-object v1, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 55
    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 56
    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 63
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    .line 64
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    .line 65
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    .line 214
    const-string v0, "WebRtcAudioEffects"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private static assertTrue(Z)V
    .registers 3

    .prologue
    .line 390
    if-nez p0, :cond_a

    .line 391
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 393
    :cond_a
    return-void
.end method

.method public static canUseAcousticEchoCanceler()Z
    .registers 3

    .prologue
    .line 163
    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    if-nez v0, :cond_3e

    .line 164
    new-instance v1, Ljava/lang/Boolean;

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->useWebRtcBasedAcousticEchoCanceler()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerBlacklisted()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerExcludedByUUID()Z

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x1

    :goto_1f
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    .line 169
    const-string v0, "WebRtcAudioEffects"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseAcousticEchoCanceler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_3e
    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 164
    :cond_45
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static canUseAutomaticGainControl()Z
    .registers 3

    .prologue
    .line 178
    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    if-nez v0, :cond_3e

    .line 179
    new-instance v1, Ljava/lang/Boolean;

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlSupported()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->useWebRtcBasedAutomaticGainControl()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlBlacklisted()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlExcludedByUUID()Z

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x1

    :goto_1f
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    .line 184
    const-string v0, "WebRtcAudioEffects"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseAutomaticGainControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_3e
    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 179
    :cond_45
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static canUseNoiseSuppressor()Z
    .registers 3

    .prologue
    .line 193
    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    if-nez v0, :cond_3e

    .line 194
    new-instance v1, Ljava/lang/Boolean;

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->useWebRtcBasedNoiseSuppressor()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorBlacklisted()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorExcludedByUUID()Z

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x1

    :goto_1f
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    .line 199
    const-string v0, "WebRtcAudioEffects"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseNoiseSuppressor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_3e
    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 194
    :cond_45
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static create()Lorg/webrtc/voiceengine/WebRtcAudioEffects;
    .registers 2

    .prologue
    .line 206
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-nez v0, :cond_f

    .line 207
    const-string v0, "WebRtcAudioEffects"

    const-string v1, "API level 16 or higher is required!"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    invoke-direct {v0}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;-><init>()V

    goto :goto_e
.end method

.method private effectTypeIsVoIP(Ljava/util/UUID;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR2OrHigher()Z

    move-result v1

    if-nez v1, :cond_8

    .line 380
    :cond_7
    :goto_7
    return v0

    :cond_8
    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v1

    if-nez v1, :cond_32

    :cond_16
    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlSupported()Z

    move-result v1

    if-nez v1, :cond_32

    :cond_24
    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_32
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isAcousticEchoCancelerBlacklisted()Z
    .registers 4

    .prologue
    .line 90
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getBlackListedModelsForAecUsage()Ljava/util/List;

    move-result-object v0

    .line 92
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    if-eqz v0, :cond_26

    .line 94
    const-string v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is blacklisted for HW AEC usage!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_26
    return v0
.end method

.method private static isAcousticEchoCancelerExcludedByUUID()Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_20

    aget-object v4, v2, v1

    .line 126
    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 128
    const/4 v0, 0x1

    .line 131
    :cond_20
    return v0

    .line 125
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static isAcousticEchoCancelerSupported()Z
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isAutomaticGainControlBlacklisted()Z
    .registers 4

    .prologue
    .line 101
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getBlackListedModelsForAgcUsage()Ljava/util/List;

    move-result-object v0

    .line 103
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_26

    .line 105
    const-string v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is blacklisted for HW AGC usage!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_26
    return v0
.end method

.method private static isAutomaticGainControlExcludedByUUID()Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_20

    aget-object v4, v2, v1

    .line 139
    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_AUTOMATIC_GAIN_CONTROL:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 141
    const/4 v0, 0x1

    .line 144
    :cond_20
    return v0

    .line 138
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static isAutomaticGainControlSupported()Z
    .registers 1

    .prologue
    .line 77
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNoiseSuppressorBlacklisted()Z
    .registers 4

    .prologue
    .line 112
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getBlackListedModelsForNsUsage()Ljava/util/List;

    move-result-object v0

    .line 114
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_26

    .line 116
    const-string v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is blacklisted for HW NS usage!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_26
    return v0
.end method

.method private static isNoiseSuppressorExcludedByUUID()Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_20

    aget-object v4, v2, v1

    .line 152
    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 154
    const/4 v0, 0x1

    .line 157
    :cond_20
    return v0

    .line 151
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static isNoiseSuppressorSupported()Z
    .registers 1

    .prologue
    .line 84
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public enable(I)V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 275
    const-string v0, "WebRtcAudioEffects"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable(audioSession="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez v0, :cond_4d

    move v0, v1

    :goto_25
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->assertTrue(Z)V

    .line 277
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-nez v0, :cond_4f

    move v0, v1

    :goto_2d
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->assertTrue(Z)V

    .line 278
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-nez v0, :cond_51

    move v0, v1

    :goto_35
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->assertTrue(Z)V

    .line 282
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_3e
    if-ge v0, v4, :cond_a4

    aget-object v5, v3, v0

    .line 283
    iget-object v6, v5, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-direct {p0, v6}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->effectTypeIsVoIP(Ljava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 282
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4d
    move v0, v2

    .line 276
    goto :goto_25

    :cond_4f
    move v0, v2

    .line 277
    goto :goto_2d

    :cond_51
    move v0, v2

    .line 278
    goto :goto_35

    .line 284
    :cond_53
    const-string v6, "WebRtcAudioEffects"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "implementor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UUID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v5, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 291
    :cond_a4
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 294
    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 295
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_1ed

    .line 296
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v3

    .line 297
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eqz v0, :cond_1e2

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v0

    if-eqz v0, :cond_1e2

    move v0, v1

    .line 298
    :goto_c5
    iget-object v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v4, v0}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v4

    if-eqz v4, :cond_d4

    .line 299
    const-string v4, "WebRtcAudioEffects"

    const-string v5, "Failed to set the AcousticEchoCanceler state"

    invoke-static {v4, v5}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_d4
    const-string v4, "WebRtcAudioEffects"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AcousticEchoCanceler: was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_1e5

    const-string v3, "enabled"

    :goto_e5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", enable: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", is now: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e9

    const-string v0, "enabled"

    :goto_103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_10e
    :goto_10e
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlSupported()Z

    move-result v0

    if-eqz v0, :cond_178

    .line 313
    invoke-static {p1}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 314
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_201

    .line 315
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->getEnabled()Z

    move-result v3

    .line 316
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    if-eqz v0, :cond_1f6

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl()Z

    move-result v0

    if-eqz v0, :cond_1f6

    move v0, v1

    .line 317
    :goto_12f
    iget-object v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v4, v0}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    move-result v4

    if-eqz v4, :cond_13e

    .line 318
    const-string v4, "WebRtcAudioEffects"

    const-string v5, "Failed to set the AutomaticGainControl state"

    invoke-static {v4, v5}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_13e
    const-string v4, "WebRtcAudioEffects"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutomaticGainControl: was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_1f9

    const-string v3, "enabled"

    :goto_14f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", enable: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", is now: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1fd

    const-string v0, "enabled"

    :goto_16d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_178
    :goto_178
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 332
    invoke-static {p1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 333
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_212

    .line 334
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result v0

    .line 335
    iget-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eqz v3, :cond_20a

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v3

    if-eqz v3, :cond_20a

    .line 336
    :goto_198
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result v2

    if-eqz v2, :cond_1a7

    .line 337
    const-string v2, "WebRtcAudioEffects"

    const-string v3, "Failed to set the NoiseSuppressor state"

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_1a7
    const-string v2, "WebRtcAudioEffects"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoiseSuppressor: was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_20c

    const-string v0, "enabled"

    :goto_1b8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", enable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_20f

    const-string v0, "enabled"

    :goto_1d6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_1e1
    :goto_1e1
    return-void

    :cond_1e2
    move v0, v2

    .line 297
    goto/16 :goto_c5

    .line 301
    :cond_1e5
    const-string v3, "disabled"

    goto/16 :goto_e5

    :cond_1e9
    const-string v0, "disabled"

    goto/16 :goto_103

    .line 306
    :cond_1ed
    const-string v0, "WebRtcAudioEffects"

    const-string v3, "Failed to create the AcousticEchoCanceler instance"

    invoke-static {v0, v3}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10e

    :cond_1f6
    move v0, v2

    .line 316
    goto/16 :goto_12f

    .line 320
    :cond_1f9
    const-string v3, "disabled"

    goto/16 :goto_14f

    :cond_1fd
    const-string v0, "disabled"

    goto/16 :goto_16d

    .line 325
    :cond_201
    const-string v0, "WebRtcAudioEffects"

    const-string v3, "Failed to create the AutomaticGainControl instance"

    invoke-static {v0, v3}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_178

    :cond_20a
    move v1, v2

    .line 335
    goto :goto_198

    .line 339
    :cond_20c
    const-string v0, "disabled"

    goto :goto_1b8

    :cond_20f
    const-string v0, "disabled"

    goto :goto_1d6

    .line 344
    :cond_212
    const-string v0, "WebRtcAudioEffects"

    const-string v1, "Failed to create the NoiseSuppressor instance"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e1
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 353
    const-string v0, "WebRtcAudioEffects"

    const-string v1, "release"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_13

    .line 355
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 356
    iput-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 358
    :cond_13
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_1e

    .line 359
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    .line 360
    iput-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 362
    :cond_1e
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_29

    .line 363
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 364
    iput-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 366
    :cond_29
    return-void
.end method

.method public setAEC(Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 222
    const-string v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAEC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 224
    const-string v1, "WebRtcAudioEffects"

    const-string v2, "Platform AEC is not supported"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    .line 233
    :goto_2e
    return v0

    .line 228
    :cond_2f
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eq p1, v1, :cond_3f

    .line 229
    const-string v1, "WebRtcAudioEffects"

    const-string v2, "Platform AEC state can\'t be modified while recording"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 232
    :cond_3f
    iput-boolean p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    .line 233
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method public setAGC(Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 241
    const-string v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAGC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 243
    const-string v1, "WebRtcAudioEffects"

    const-string v2, "Platform AGC is not supported"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    .line 252
    :goto_2e
    return v0

    .line 247
    :cond_2f
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    if-eq p1, v1, :cond_3f

    .line 248
    const-string v1, "WebRtcAudioEffects"

    const-string v2, "Platform AGC state can\'t be modified while recording"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 251
    :cond_3f
    iput-boolean p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    .line 252
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method public setNS(Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 260
    const-string v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 262
    const-string v1, "WebRtcAudioEffects"

    const-string v2, "Platform NS is not supported"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    .line 271
    :goto_2e
    return v0

    .line 266
    :cond_2f
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eq p1, v1, :cond_3f

    .line 267
    const-string v1, "WebRtcAudioEffects"

    const-string v2, "Platform NS state can\'t be modified while recording"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 270
    :cond_3f
    iput-boolean p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    .line 271
    const/4 v0, 0x1

    goto :goto_2e
.end method
