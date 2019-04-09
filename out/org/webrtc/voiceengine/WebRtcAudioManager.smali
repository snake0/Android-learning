.class public Lorg/webrtc/voiceengine/WebRtcAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_MODES:[Ljava/lang/String;

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final CHANNELS:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_PER_BUFFER:I = 0x100

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioManager"

.field private static blacklistDeviceForOpenSLESUsage:Z

.field private static blacklistDeviceForOpenSLESUsageIsOverridden:Z


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private channels:I

.field private final context:Landroid/content/Context;

.field private hardwareAEC:Z

.field private hardwareAGC:Z

.field private hardwareNS:Z

.field private initialized:Z

.field private inputBufferSize:I

.field private lowLatencyOutput:Z

.field private final nativeAudioManager:J

.field private nativeChannels:I

.field private nativeSampleRate:I

.field private outputBufferSize:I

.field private sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 42
    sput-boolean v2, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z

    .line 43
    sput-boolean v2, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MODE_NORMAL"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "MODE_RINGTONE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MODE_IN_CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MODE_IN_COMMUNICATION"

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->AUDIO_MODES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .registers 15

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    .line 90
    const-string v0, "WebRtcAudioManager"

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

    .line 91
    iput-object p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->context:Landroid/content/Context;

    .line 92
    iput-wide p2, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->nativeAudioManager:J

    .line 93
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    .line 98
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->storeAudioParameters()V

    .line 99
    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->channels:I

    iget-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareAEC:Z

    iget-boolean v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareAGC:Z

    iget-boolean v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareNS:Z

    iget-boolean v6, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    iget v7, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->outputBufferSize:I

    iget v8, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->inputBufferSize:I

    move-object v0, p0

    move-wide v9, p2

    invoke-direct/range {v0 .. v10}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->nativeCacheAudioParameters(IIZZZZIIJ)V

    .line 103
    return-void
.end method

.method private static assertTrue(Z)V
    .registers 3

    .prologue
    .line 283
    if-nez p0, :cond_a

    .line 284
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 286
    :cond_a
    return-void
.end method

.method private dispose()V
    .registers 4

    .prologue
    .line 116
    const-string v0, "WebRtcAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    if-nez v0, :cond_20

    .line 120
    :cond_20
    return-void
.end method

.method private getLowLatencyInputFramesPerBuffer()I
    .registers 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyInputSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 261
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getLowLatencyOutputFramesPerBuffer()I

    move-result v0

    return v0
.end method

.method private getLowLatencyOutputFramesPerBuffer()I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/16 v0, 0x100

    .line 214
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v1

    invoke-static {v1}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 215
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR1OrHigher()Z

    move-result v1

    if-nez v1, :cond_10

    .line 220
    :cond_f
    :goto_f
    return v0

    .line 218
    :cond_10
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_f

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_f
.end method

.method private static getMinInputFrameSize(II)I
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 268
    mul-int/lit8 v1, p1, 0x2

    .line 269
    if-ne p1, v0, :cond_11

    :goto_5
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 270
    const/16 v0, 0x10

    const/4 v2, 0x2

    invoke-static {p0, v0, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    div-int/2addr v0, v1

    return v0

    .line 269
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static getMinOutputFrameSize(II)I
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 244
    mul-int/lit8 v1, p1, 0x2

    .line 246
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 247
    const/4 v0, 0x4

    .line 253
    :goto_7
    invoke-static {p0, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    div-int/2addr v0, v1

    :goto_c
    return v0

    .line 248
    :cond_d
    if-ne p1, v2, :cond_12

    .line 249
    const/16 v0, 0xc

    goto :goto_7

    .line 251
    :cond_12
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private getNativeOutputSampleRate()I
    .registers 5

    .prologue
    .line 179
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnEmulator()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 180
    const-string v0, "WebRtcAudioManager"

    const-string v1, "Running emulator, overriding sample rate to 8 kHz."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/16 v0, 0x1f40

    .line 199
    :goto_f
    return v0

    .line 185
    :cond_10
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->isDefaultSampleRateOverridden()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 186
    const-string v0, "WebRtcAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default sample rate is overriden to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    goto :goto_f

    .line 193
    :cond_3d
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR1OrHigher()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 194
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getSampleRateOnJellyBeanMR10OrHigher()I

    move-result v0

    .line 198
    :goto_47
    const-string v1, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sample rate is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 196
    :cond_66
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    goto :goto_47
.end method

.method private getSampleRateOnJellyBeanMR10OrHigher()I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-nez v0, :cond_f

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method private hasEarpiece()Z
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private init()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 106
    const-string v0, "WebRtcAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    if-eqz v0, :cond_22

    .line 112
    :goto_21
    return v4

    .line 110
    :cond_22
    const-string v0, "WebRtcAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/webrtc/voiceengine/WebRtcAudioManager;->AUDIO_MODES:[Ljava/lang/String;

    iget-object v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iput-boolean v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    goto :goto_21
.end method

.method private static isAcousticEchoCancelerSupported()Z
    .registers 1

    .prologue
    .line 231
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v0

    return v0
.end method

.method private static isAutomaticGainControlSupported()Z
    .registers 1

    .prologue
    .line 234
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl()Z

    move-result v0

    return v0
.end method

.method private isCommunicationModeEnabled()Z
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isDeviceBlacklistedForOpenSLESUsage()Z
    .registers 5

    .prologue
    .line 127
    sget-boolean v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z

    .line 130
    :goto_6
    if-eqz v0, :cond_22

    .line 131
    const-string v1, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is blacklisted for OpenSL ES usage!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_22
    return v0

    .line 127
    :cond_23
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->deviceIsBlacklistedForOpenSLESUsage()Z

    move-result v0

    goto :goto_6
.end method

.method private isLowLatencyOutputSupported()Z
    .registers 3

    .prologue
    .line 160
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isOpenSLESSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isNoiseSuppressorSupported()Z
    .registers 1

    .prologue
    .line 237
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v0

    return v0
.end method

.method private static isOpenSLESSupported()Z
    .registers 1

    .prologue
    .line 278
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnGingerBreadOrHigher()Z

    move-result v0

    return v0
.end method

.method private native nativeCacheAudioParameters(IIZZZZIIJ)V
.end method

.method public static declared-synchronized setBlacklistDeviceForOpenSLESUsage(Z)V
    .registers 3

    .prologue
    .line 51
    const-class v1, Lorg/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    .line 52
    sput-boolean p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    .line 53
    monitor-exit v1

    return-void

    .line 51
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private storeAudioParameters()V
    .registers 3

    .prologue
    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->channels:I

    .line 140
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getNativeOutputSampleRate()I

    move-result v0

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    .line 141
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isAcousticEchoCancelerSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareAEC:Z

    .line 142
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isAutomaticGainControlSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareAGC:Z

    .line 143
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isNoiseSuppressorSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareNS:Z

    .line 144
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    .line 145
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getLowLatencyOutputFramesPerBuffer()I

    move-result v0

    :goto_29
    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->outputBufferSize:I

    .line 149
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->channels:I

    invoke-static {v0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getMinInputFrameSize(II)I

    move-result v0

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->inputBufferSize:I

    .line 150
    return-void

    .line 145
    :cond_36
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->channels:I

    invoke-static {v0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getMinOutputFrameSize(II)I

    move-result v0

    goto :goto_29
.end method


# virtual methods
.method public isLowLatencyInputSupported()Z
    .registers 2

    .prologue
    .line 171
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
