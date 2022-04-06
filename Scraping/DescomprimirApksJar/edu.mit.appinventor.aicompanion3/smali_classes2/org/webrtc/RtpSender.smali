.class public Lorg/webrtc/RtpSender;
.super Ljava/lang/Object;
.source "RtpSender.java"


# instance fields
.field private cachedTrack:Lorg/webrtc/MediaStreamTrack;

.field private final dtmfSender:Lorg/webrtc/DtmfSender;

.field final nativeRtpSender:J

.field private ownsTrack:Z


# direct methods
.method public constructor <init>(J)V
    .locals 9
    .param p1, "nativeRtpSender"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/webrtc/RtpSender;->ownsTrack:Z

    .line 23
    iput-wide p1, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    .line 24
    invoke-static {p1, p2}, Lorg/webrtc/RtpSender;->nativeGetTrack(J)J

    move-result-wide v2

    .line 26
    .local v2, "track":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_1

    new-instance v4, Lorg/webrtc/MediaStreamTrack;

    invoke-direct {v4, v2, v3}, Lorg/webrtc/MediaStreamTrack;-><init>(J)V

    :goto_0
    iput-object v4, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    .line 28
    invoke-static {p1, p2}, Lorg/webrtc/RtpSender;->nativeGetDtmfSender(J)J

    move-result-wide v0

    .line 29
    .local v0, "nativeDtmfSender":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    new-instance v5, Lorg/webrtc/DtmfSender;

    invoke-direct {v5, v0, v1}, Lorg/webrtc/DtmfSender;-><init>(J)V

    :cond_0
    iput-object v5, p0, Lorg/webrtc/RtpSender;->dtmfSender:Lorg/webrtc/DtmfSender;

    .line 30
    return-void

    .end local v0    # "nativeDtmfSender":J
    :cond_1
    move-object v4, v5

    .line 26
    goto :goto_0
.end method

.method private static native nativeGetDtmfSender(J)J
.end method

.method private static native nativeGetParameters(J)Lorg/webrtc/RtpParameters;
.end method

.method private static native nativeGetTrack(J)J
.end method

.method private static native nativeId(J)Ljava/lang/String;
.end method

.method private static native nativeSetParameters(JLorg/webrtc/RtpParameters;)Z
.end method

.method private static native nativeSetTrack(JJ)Z
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/webrtc/RtpSender;->dtmfSender:Lorg/webrtc/DtmfSender;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/webrtc/RtpSender;->dtmfSender:Lorg/webrtc/DtmfSender;

    invoke-virtual {v0}, Lorg/webrtc/DtmfSender;->dispose()V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/webrtc/RtpSender;->ownsTrack:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    invoke-virtual {v0}, Lorg/webrtc/MediaStreamTrack;->dispose()V

    .line 85
    :cond_1
    iget-wide v0, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1}, Lorg/webrtc/JniCommon;->nativeReleaseRef(J)V

    .line 86
    return-void
.end method

.method public dtmf()Lorg/webrtc/DtmfSender;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/webrtc/RtpSender;->dtmfSender:Lorg/webrtc/DtmfSender;

    return-object v0
.end method

.method public getParameters()Lorg/webrtc/RtpParameters;
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1}, Lorg/webrtc/RtpSender;->nativeGetParameters(J)Lorg/webrtc/RtpParameters;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1}, Lorg/webrtc/RtpSender;->nativeId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParameters(Lorg/webrtc/RtpParameters;)Z
    .locals 2
    .param p1, "parameters"    # Lorg/webrtc/RtpParameters;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1, p1}, Lorg/webrtc/RtpSender;->nativeSetParameters(JLorg/webrtc/RtpParameters;)Z

    move-result v0

    return v0
.end method

.method public setTrack(Lorg/webrtc/MediaStreamTrack;Z)Z
    .locals 4
    .param p1, "track"    # Lorg/webrtc/MediaStreamTrack;
    .param p2, "takeOwnership"    # Z

    .prologue
    .line 47
    iget-wide v2, p0, Lorg/webrtc/RtpSender;->nativeRtpSender:J

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lorg/webrtc/RtpSender;->nativeSetTrack(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const/4 v0, 0x0

    .line 55
    :goto_1
    return v0

    .line 47
    :cond_0
    iget-wide v0, p1, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/webrtc/RtpSender;->ownsTrack:Z

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    invoke-virtual {v0}, Lorg/webrtc/MediaStreamTrack;->dispose()V

    .line 53
    :cond_2
    iput-object p1, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    .line 54
    iput-boolean p2, p0, Lorg/webrtc/RtpSender;->ownsTrack:Z

    .line 55
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public track()Lorg/webrtc/MediaStreamTrack;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/webrtc/RtpSender;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    return-object v0
.end method
