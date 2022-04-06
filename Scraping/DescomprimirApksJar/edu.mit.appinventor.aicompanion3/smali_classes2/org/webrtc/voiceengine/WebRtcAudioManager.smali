.class public Lorg/webrtc/voiceengine/WebRtcAudioManager;
.super Ljava/lang/Object;
.source "WebRtcAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;
    }
.end annotation


# static fields
.field private static final AUDIO_MODES:[Ljava/lang/String;

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_PER_BUFFER:I = 0x100

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioManager"

.field private static blacklistDeviceForOpenSLESUsage:Z

.field private static blacklistDeviceForOpenSLESUsageIsOverridden:Z

.field private static useStereoInput:Z

.field private static useStereoOutput:Z


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private hardwareAEC:Z

.field private hardwareAGC:Z

.field private hardwareNS:Z

.field private initialized:Z

.field private inputBufferSize:I

.field private inputChannels:I

.field private lowLatencyInput:Z

.field private lowLatencyOutput:Z

.field private final nativeAudioManager:J

.field private nativeChannels:I

.field private nativeSampleRate:I

.field private outputBufferSize:I

.field private outputChannels:I

.field private proAudio:Z

.field private sampleRate:I

.field private final volumeLogger:Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lorg/webrtc/voiceengine/WebRtcAudioManager;->useStereoOutput:Z

    .line 42
    sput-boolean v2, Lorg/webrtc/voiceengine/WebRtcAudioManager;->useStereoInput:Z

    .line 44
    sput-boolean v2, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z

    .line 45
    sput-boolean v2, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    .line 81
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

.method constructor <init>(J)V
    .locals 19
    .param p1, "nativeAudioManager"    # J

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    .line 160
    const-string v4, "WebRtcAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ctor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/webrtc/voiceengine/WebRtcAudioManager;->nativeAudioManager:J

    .line 163
    invoke-static {}, Lorg/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    .line 167
    new-instance v4, Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-direct {v4, v5}, Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;-><init>(Landroid/media/AudioManager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->volumeLogger:Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;

    .line 168
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->storeAudioParameters()V

    .line 169
    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->outputChannels:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->inputChannels:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareAEC:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareAGC:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareNS:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyInput:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->proAudio:Z

    move-object/from16 v0, p0

    iget v14, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->outputBufferSize:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->inputBufferSize:I

    move-object/from16 v4, p0

    move-wide/from16 v16, p1

    invoke-direct/range {v4 .. v17}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->nativeCacheAudioParameters(IIIZZZZZZIIJ)V

    .line 172
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 348
    if-nez p0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 351
    :cond_0
    return-void
.end method

.method private dispose()V
    .locals 3

    .prologue
    .line 186
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

    .line 187
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->volumeLogger:Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;

    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;->access$100(Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;)V

    goto :goto_0
.end method

.method private getLowLatencyInputFramesPerBuffer()I
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyInputSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 331
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getLowLatencyOutputFramesPerBuffer()I

    move-result v0

    return v0
.end method

.method private getLowLatencyOutputFramesPerBuffer()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/16 v1, 0x100

    .line 294
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v2

    invoke-static {v2}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 295
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR1OrHigher()Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 298
    :cond_1
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 299
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "framesPerBuffer":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private static getMinInputFrameSize(II)I
    .locals 3
    .param p0, "sampleRateInHz"    # I
    .param p1, "numChannels"    # I

    .prologue
    .line 338
    mul-int/lit8 v0, p1, 0x2

    .line 339
    .local v0, "bytesPerFrame":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 v1, 0x10

    .line 341
    .local v1, "channelConfig":I
    :goto_0
    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    div-int/2addr v2, v0

    return v2

    .line 339
    .end local v1    # "channelConfig":I
    :cond_0
    const/16 v1, 0xc

    goto :goto_0
.end method

.method private static getMinOutputFrameSize(II)I
    .locals 3
    .param p0, "sampleRateInHz"    # I
    .param p1, "numChannels"    # I

    .prologue
    .line 320
    mul-int/lit8 v0, p1, 0x2

    .line 321
    .local v0, "bytesPerFrame":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x4

    .line 323
    .local v1, "channelConfig":I
    :goto_0
    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    div-int/2addr v2, v0

    return v2

    .line 321
    .end local v1    # "channelConfig":I
    :cond_0
    const/16 v1, 0xc

    goto :goto_0
.end method

.method private getNativeOutputSampleRate()I
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnEmulator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string v1, "WebRtcAudioManager"

    const-string v2, "Running emulator, overriding sample rate to 8 kHz."

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/16 v0, 0x1f40

    .line 281
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->isDefaultSampleRateOverridden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    const-string v1, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default sample rate is overriden to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    goto :goto_0

    .line 275
    :cond_1
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR1OrHigher()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getSampleRateOnJellyBeanMR10OrHigher()I

    move-result v0

    .line 280
    .local v0, "sampleRateHz":I
    :goto_1
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

    goto :goto_0

    .line 278
    .end local v0    # "sampleRateHz":I
    :cond_2
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    .restart local v0    # "sampleRateHz":I
    goto :goto_1
.end method

.method private getSampleRateOnJellyBeanMR10OrHigher()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 286
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "sampleRateString":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v1

    :goto_0
    return v1

    .line 288
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static declared-synchronized getStereoInput()Z
    .locals 2

    .prologue
    .line 71
    const-class v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/webrtc/voiceengine/WebRtcAudioManager;->useStereoInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getStereoOutput()Z
    .locals 2

    .prologue
    .line 68
    const-class v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/webrtc/voiceengine/WebRtcAudioManager;->useStereoOutput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasEarpiece()Z
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lorg/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private init()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 175
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

    .line 176
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return v4

    .line 179
    :cond_0
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

    .line 180
    iput-boolean v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    .line 181
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->volumeLogger:Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;

    invoke-virtual {v0}, Lorg/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;->start()V

    goto :goto_0
.end method

.method private static isAcousticEchoCancelerSupported()Z
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v0

    return v0
.end method

.method private isCommunicationModeEnabled()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceBlacklistedForOpenSLESUsage()Z
    .locals 4

    .prologue
    .line 198
    sget-boolean v1, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    if-eqz v1, :cond_1

    sget-boolean v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z

    .line 201
    .local v0, "blacklisted":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 202
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

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    return v0

    .line 200
    .end local v0    # "blacklisted":Z
    :cond_1
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->deviceIsBlacklistedForOpenSLESUsage()Z

    move-result v0

    goto :goto_0
.end method

.method private isLowLatencyOutputSupported()Z
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lorg/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isNoiseSuppressorSupported()Z
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v0

    return v0
.end method

.method private isProAudioSupported()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnMarshmallowOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lorg/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.pro"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCacheAudioParameters(IIIZZZZZZIIJ)V
.end method

.method public static declared-synchronized setBlacklistDeviceForOpenSLESUsage(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 52
    const-class v1, Lorg/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    .line 53
    sput-boolean p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v1

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setStereoInput(Z)V
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 63
    const-class v1, Lorg/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding default input behavior: setStereoInput("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sput-boolean p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->useStereoInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v1

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setStereoOutput(Z)V
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 59
    const-class v1, Lorg/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding default output behavior: setStereoOutput("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sput-boolean p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->useStereoOutput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v1

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private storeAudioParameters()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 208
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getStereoOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->outputChannels:I

    .line 209
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getStereoInput()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->inputChannels:I

    .line 210
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getNativeOutputSampleRate()I

    move-result v0

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    .line 211
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isAcousticEchoCancelerSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareAEC:Z

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareAGC:Z

    .line 215
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isNoiseSuppressorSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->hardwareNS:Z

    .line 216
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    .line 217
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyInputSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyInput:Z

    .line 218
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isProAudioSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->proAudio:Z

    .line 219
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getLowLatencyOutputFramesPerBuffer()I

    move-result v0

    .line 220
    :goto_2
    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->outputBufferSize:I

    .line 221
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyInput:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getLowLatencyInputFramesPerBuffer()I

    move-result v0

    .line 222
    :goto_3
    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->inputBufferSize:I

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 208
    goto :goto_0

    :cond_1
    move v1, v2

    .line 209
    goto :goto_1

    .line 219
    :cond_2
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->outputChannels:I

    .line 220
    invoke-static {v0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getMinOutputFrameSize(II)I

    move-result v0

    goto :goto_2

    .line 221
    :cond_3
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioManager;->inputChannels:I

    .line 222
    invoke-static {v0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->getMinInputFrameSize(II)I

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public isLowLatencyInputSupported()Z
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
