.class public Lorg/webrtc/PeerConnectionFactory;
.super Ljava/lang/Object;
.source "PeerConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/PeerConnectionFactory$Options;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PeerConnectionFactory"

.field public static final TRIAL_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final VIDEO_CAPTURER_THREAD_NAME:Ljava/lang/String; = "VideoCapturerThread"

.field public static final VIDEO_FRAME_EMIT_TRIAL:Ljava/lang/String; = "VideoFrameEmit"

.field private static applicationContext:Landroid/content/Context;

.field private static volatile nativeLibLoaded:Z

.field private static networkThread:Ljava/lang/Thread;

.field private static signalingThread:Ljava/lang/Thread;

.field private static workerThread:Ljava/lang/Thread;


# instance fields
.field private localEglbase:Lorg/webrtc/EglBase;

.field private final nativeFactory:J

.field private remoteEglbase:Lorg/webrtc/EglBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    :try_start_0
    const-string v1, "jingle_peerconnection_so"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const/4 v1, 0x1

    sput-boolean v1, Lorg/webrtc/PeerConnectionFactory;->nativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "t":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 27
    .end local v0    # "t":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 28
    .restart local v0    # "t":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Lorg/webrtc/PeerConnectionFactory;->nativeLibLoaded:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/PeerConnectionFactory;-><init>(Lorg/webrtc/PeerConnectionFactory$Options;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/webrtc/PeerConnectionFactory$Options;)V
    .locals 1
    .param p1, "options"    # Lorg/webrtc/PeerConnectionFactory$Options;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0, v0}, Lorg/webrtc/PeerConnectionFactory;-><init>(Lorg/webrtc/PeerConnectionFactory$Options;Lorg/webrtc/VideoEncoderFactory;Lorg/webrtc/VideoDecoderFactory;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/webrtc/PeerConnectionFactory$Options;Lorg/webrtc/VideoEncoderFactory;Lorg/webrtc/VideoDecoderFactory;)V
    .locals 4
    .param p1, "options"    # Lorg/webrtc/PeerConnectionFactory$Options;
    .param p2, "encoderFactory"    # Lorg/webrtc/VideoEncoderFactory;
    .param p3, "decoderFactory"    # Lorg/webrtc/VideoDecoderFactory;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1, p2, p3}, Lorg/webrtc/PeerConnectionFactory;->nativeCreatePeerConnectionFactory(Lorg/webrtc/PeerConnectionFactory$Options;Lorg/webrtc/VideoEncoderFactory;Lorg/webrtc/VideoDecoderFactory;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    .line 115
    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize PeerConnectionFactory!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method public static fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-boolean v0, Lorg/webrtc/PeerConnectionFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/webrtc/PeerConnectionFactory;->nativeFieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static initializeAndroidGlobals(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoHwAcceleration"    # Z

    .prologue
    .line 65
    invoke-static {p0}, Lorg/webrtc/ContextUtils;->initialize(Landroid/content/Context;)V

    .line 66
    invoke-static {p0, p1}, Lorg/webrtc/PeerConnectionFactory;->nativeInitializeAndroidGlobals(Landroid/content/Context;Z)V

    .line 67
    return-void
.end method

.method public static initializeAndroidGlobals(Ljava/lang/Object;ZZZ)Z
    .locals 1
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "initializeAudio"    # Z
    .param p2, "initializeVideo"    # Z
    .param p3, "videoHwAcceleration"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    check-cast p0, Landroid/content/Context;

    .end local p0    # "context":Ljava/lang/Object;
    invoke-static {p0, p3}, Lorg/webrtc/PeerConnectionFactory;->initializeAndroidGlobals(Landroid/content/Context;Z)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public static native initializeFieldTrials(Ljava/lang/String;)V
.end method

.method public static native initializeInternalTracer()V
.end method

.method private static native nativeCreateAudioSource(JLorg/webrtc/MediaConstraints;)J
.end method

.method private static native nativeCreateAudioTrack(JLjava/lang/String;J)J
.end method

.method private static native nativeCreateLocalMediaStream(JLjava/lang/String;)J
.end method

.method private static native nativeCreateObserver(Lorg/webrtc/PeerConnection$Observer;)J
.end method

.method private static native nativeCreatePeerConnection(JLorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;J)J
.end method

.method private static native nativeCreatePeerConnectionFactory(Lorg/webrtc/PeerConnectionFactory$Options;Lorg/webrtc/VideoEncoderFactory;Lorg/webrtc/VideoDecoderFactory;)J
.end method

.method private static native nativeCreateVideoSource(JLorg/webrtc/SurfaceTextureHelper;Z)J
.end method

.method private static native nativeCreateVideoTrack(JLjava/lang/String;J)J
.end method

.method private static native nativeFieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeFreeFactory(J)V
.end method

.method public static native nativeInitializeAndroidGlobals(Landroid/content/Context;Z)V
.end method

.method private static native nativeSetVideoHwAccelerationOptions(JLjava/lang/Object;Ljava/lang/Object;)V
.end method

.method private static native nativeStartAecDump(JII)Z
.end method

.method private static native nativeStopAecDump(J)V
.end method

.method private static native nativeThreadsCallbacks(J)V
.end method

.method private static onNetworkThreadReady()V
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/webrtc/PeerConnectionFactory;->networkThread:Ljava/lang/Thread;

    .line 245
    const-string v0, "PeerConnectionFactory"

    const-string v1, "onNetworkThreadReady"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private static onSignalingThreadReady()V
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/webrtc/PeerConnectionFactory;->signalingThread:Ljava/lang/Thread;

    .line 255
    const-string v0, "PeerConnectionFactory"

    const-string v1, "onSignalingThreadReady"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private static onWorkerThreadReady()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/webrtc/PeerConnectionFactory;->workerThread:Ljava/lang/Thread;

    .line 250
    const-string v0, "PeerConnectionFactory"

    const-string v1, "onWorkerThreadReady"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private static printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 6
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 226
    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 228
    .local v1, "stackTraces":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 229
    const-string v2, "PeerConnectionFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stacks trace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 231
    .local v0, "stackTrace":Ljava/lang/StackTraceElement;
    const-string v4, "PeerConnectionFactory"

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "stackTrace":Ljava/lang/StackTraceElement;
    .end local v1    # "stackTraces":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static printStackTraces()V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lorg/webrtc/PeerConnectionFactory;->networkThread:Ljava/lang/Thread;

    const-string v1, "Network thread"

    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lorg/webrtc/PeerConnectionFactory;->workerThread:Ljava/lang/Thread;

    const-string v1, "Worker thread"

    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lorg/webrtc/PeerConnectionFactory;->signalingThread:Ljava/lang/Thread;

    const-string v1, "Signaling thread"

    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static native shutdownInternalTracer()V
.end method

.method public static native startInternalTracingCapture(Ljava/lang/String;)Z
.end method

.method public static native stopInternalTracingCapture()V
.end method


# virtual methods
.method public createAudioSource(Lorg/webrtc/MediaConstraints;)Lorg/webrtc/AudioSource;
    .locals 4
    .param p1, "constraints"    # Lorg/webrtc/MediaConstraints;

    .prologue
    .line 163
    new-instance v0, Lorg/webrtc/AudioSource;

    iget-wide v2, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v2, v3, p1}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateAudioSource(JLorg/webrtc/MediaConstraints;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/AudioSource;-><init>(J)V

    return-object v0
.end method

.method public createAudioTrack(Ljava/lang/String;Lorg/webrtc/AudioSource;)Lorg/webrtc/AudioTrack;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "source"    # Lorg/webrtc/AudioSource;

    .prologue
    .line 167
    new-instance v0, Lorg/webrtc/AudioTrack;

    iget-wide v2, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    iget-wide v4, p2, Lorg/webrtc/AudioSource;->nativeSource:J

    invoke-static {v2, v3, p1, v4, v5}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateAudioTrack(JLjava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/AudioTrack;-><init>(J)V

    return-object v0
.end method

.method public createLocalMediaStream(Ljava/lang/String;)Lorg/webrtc/MediaStream;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Lorg/webrtc/MediaStream;

    iget-wide v2, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v2, v3, p1}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateLocalMediaStream(JLjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/MediaStream;-><init>(J)V

    return-object v0
.end method

.method public createPeerConnection(Ljava/util/List;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;
    .locals 2
    .param p2, "constraints"    # Lorg/webrtc/MediaConstraints;
    .param p3, "observer"    # Lorg/webrtc/PeerConnection$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;",
            "Lorg/webrtc/MediaConstraints;",
            "Lorg/webrtc/PeerConnection$Observer;",
            ")",
            "Lorg/webrtc/PeerConnection;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "iceServers":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/PeerConnection$IceServer;>;"
    new-instance v0, Lorg/webrtc/PeerConnection$RTCConfiguration;

    invoke-direct {v0, p1}, Lorg/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 137
    .local v0, "rtcConfig":Lorg/webrtc/PeerConnection$RTCConfiguration;
    invoke-virtual {p0, v0, p2, p3}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object v1

    return-object v1
.end method

.method public createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;
    .locals 12
    .param p1, "rtcConfig"    # Lorg/webrtc/PeerConnection$RTCConfiguration;
    .param p2, "constraints"    # Lorg/webrtc/MediaConstraints;
    .param p3, "observer"    # Lorg/webrtc/PeerConnection$Observer;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 122
    invoke-static {p3}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateObserver(Lorg/webrtc/PeerConnection$Observer;)J

    move-result-wide v4

    .line 123
    .local v4, "nativeObserver":J
    cmp-long v0, v4, v10

    if-nez v0, :cond_0

    move-object v0, v8

    .line 131
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    move-object v2, p1

    move-object v3, p2

    .line 127
    invoke-static/range {v0 .. v5}, Lorg/webrtc/PeerConnectionFactory;->nativeCreatePeerConnection(JLorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;J)J

    move-result-wide v6

    .line 128
    .local v6, "nativePeerConnection":J
    cmp-long v0, v6, v10

    if-nez v0, :cond_1

    move-object v0, v8

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Lorg/webrtc/PeerConnection;

    invoke-direct {v0, v6, v7, v4, v5}, Lorg/webrtc/PeerConnection;-><init>(JJ)V

    goto :goto_0
.end method

.method public createVideoSource(Lorg/webrtc/VideoCapturer;)Lorg/webrtc/VideoSource;
    .locals 8
    .param p1, "capturer"    # Lorg/webrtc/VideoCapturer;

    .prologue
    .line 145
    iget-object v5, p0, Lorg/webrtc/PeerConnectionFactory;->localEglbase:Lorg/webrtc/EglBase;

    if-nez v5, :cond_0

    const/4 v1, 0x0

    .line 147
    .local v1, "eglContext":Lorg/webrtc/EglBase$Context;
    :goto_0
    const-string v5, "VideoCapturerThread"

    .line 148
    invoke-static {v5, v1}, Lorg/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v4

    .line 149
    .local v4, "surfaceTextureHelper":Lorg/webrtc/SurfaceTextureHelper;
    iget-wide v6, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    .line 150
    invoke-interface {p1}, Lorg/webrtc/VideoCapturer;->isScreencast()Z

    move-result v5

    invoke-static {v6, v7, v4, v5}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateVideoSource(JLorg/webrtc/SurfaceTextureHelper;Z)J

    move-result-wide v2

    .line 151
    .local v2, "nativeAndroidVideoTrackSource":J
    new-instance v0, Lorg/webrtc/AndroidVideoTrackSourceObserver;

    invoke-direct {v0, v2, v3}, Lorg/webrtc/AndroidVideoTrackSourceObserver;-><init>(J)V

    .line 154
    .local v0, "capturerObserver":Lorg/webrtc/VideoCapturer$CapturerObserver;
    invoke-static {}, Lorg/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 153
    invoke-interface {p1, v4, v5, v0}, Lorg/webrtc/VideoCapturer;->initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/VideoCapturer$CapturerObserver;)V

    .line 155
    new-instance v5, Lorg/webrtc/VideoSource;

    invoke-direct {v5, v2, v3}, Lorg/webrtc/VideoSource;-><init>(J)V

    return-object v5

    .line 145
    .end local v0    # "capturerObserver":Lorg/webrtc/VideoCapturer$CapturerObserver;
    .end local v1    # "eglContext":Lorg/webrtc/EglBase$Context;
    .end local v2    # "nativeAndroidVideoTrackSource":J
    .end local v4    # "surfaceTextureHelper":Lorg/webrtc/SurfaceTextureHelper;
    :cond_0
    iget-object v5, p0, Lorg/webrtc/PeerConnectionFactory;->localEglbase:Lorg/webrtc/EglBase;

    .line 146
    invoke-virtual {v5}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    goto :goto_0
.end method

.method public createVideoTrack(Ljava/lang/String;Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoTrack;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "source"    # Lorg/webrtc/VideoSource;

    .prologue
    .line 159
    new-instance v0, Lorg/webrtc/VideoTrack;

    iget-wide v2, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    iget-wide v4, p2, Lorg/webrtc/VideoSource;->nativeSource:J

    invoke-static {v2, v3, p1, v4, v5}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateVideoTrack(JLjava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/VideoTrack;-><init>(J)V

    return-object v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->nativeFreeFactory(J)V

    .line 212
    sput-object v2, Lorg/webrtc/PeerConnectionFactory;->networkThread:Ljava/lang/Thread;

    .line 213
    sput-object v2, Lorg/webrtc/PeerConnectionFactory;->workerThread:Ljava/lang/Thread;

    .line 214
    sput-object v2, Lorg/webrtc/PeerConnectionFactory;->signalingThread:Ljava/lang/Thread;

    .line 215
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->localEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->localEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 219
    :cond_1
    return-void
.end method

.method public native nativeSetOptions(JLorg/webrtc/PeerConnectionFactory$Options;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setOptions(Lorg/webrtc/PeerConnectionFactory$Options;)V
    .locals 2
    .param p1, "options"    # Lorg/webrtc/PeerConnectionFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/PeerConnectionFactory;->nativeSetOptions(JLorg/webrtc/PeerConnectionFactory$Options;)V

    .line 186
    return-void
.end method

.method public setVideoHwAccelerationOptions(Lorg/webrtc/EglBase$Context;Lorg/webrtc/EglBase$Context;)V
    .locals 4
    .param p1, "localEglContext"    # Lorg/webrtc/EglBase$Context;
    .param p2, "remoteEglContext"    # Lorg/webrtc/EglBase$Context;

    .prologue
    .line 196
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->localEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "PeerConnectionFactory"

    const-string v1, "Egl context already set."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->localEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "PeerConnectionFactory"

    const-string v1, "Egl context already set."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 204
    :cond_1
    invoke-static {p1}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;)Lorg/webrtc/EglBase;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->localEglbase:Lorg/webrtc/EglBase;

    .line 205
    invoke-static {p2}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;)Lorg/webrtc/EglBase;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/EglBase;

    .line 206
    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    iget-object v2, p0, Lorg/webrtc/PeerConnectionFactory;->localEglbase:Lorg/webrtc/EglBase;

    .line 207
    invoke-virtual {v2}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v3}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v3

    .line 206
    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/PeerConnectionFactory;->nativeSetVideoHwAccelerationOptions(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public startAecDump(II)Z
    .locals 2
    .param p1, "file_descriptor"    # I
    .param p2, "filesize_limit_bytes"    # I

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1, p1, p2}, Lorg/webrtc/PeerConnectionFactory;->nativeStartAecDump(JII)Z

    move-result v0

    return v0
.end method

.method public stopAecDump()V
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->nativeStopAecDump(J)V

    .line 181
    return-void
.end method

.method public threadsCallbacks()V
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->nativeThreadsCallbacks(J)V

    .line 223
    return-void
.end method
