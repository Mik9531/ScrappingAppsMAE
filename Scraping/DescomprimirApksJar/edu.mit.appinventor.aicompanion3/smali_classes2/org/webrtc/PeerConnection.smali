.class public Lorg/webrtc/PeerConnection;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/PeerConnection$RTCConfiguration;,
        Lorg/webrtc/PeerConnection$IntervalRange;,
        Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;,
        Lorg/webrtc/PeerConnection$KeyType;,
        Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;,
        Lorg/webrtc/PeerConnection$TcpCandidatePolicy;,
        Lorg/webrtc/PeerConnection$RtcpMuxPolicy;,
        Lorg/webrtc/PeerConnection$BundlePolicy;,
        Lorg/webrtc/PeerConnection$IceTransportsType;,
        Lorg/webrtc/PeerConnection$IceServer;,
        Lorg/webrtc/PeerConnection$Observer;,
        Lorg/webrtc/PeerConnection$SignalingState;,
        Lorg/webrtc/PeerConnection$TlsCertPolicy;,
        Lorg/webrtc/PeerConnection$IceConnectionState;,
        Lorg/webrtc/PeerConnection$IceGatheringState;
    }
.end annotation


# instance fields
.field private final localStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeObserver:J

.field private final nativePeerConnection:J

.field private receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/RtpReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private senders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/RtpSender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "jingle_peerconnection_so"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 1
    .param p1, "nativePeerConnection"    # J
    .param p3, "nativeObserver"    # J

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-wide p1, p0, Lorg/webrtc/PeerConnection;->nativePeerConnection:J

    .line 301
    iput-wide p3, p0, Lorg/webrtc/PeerConnection;->nativeObserver:J

    .line 302
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    .line 303
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/PeerConnection;->senders:Ljava/util/List;

    .line 304
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/PeerConnection;->receivers:Ljava/util/List;

    .line 305
    return-void
.end method

.method private static native freeObserver(J)V
.end method

.method private native nativeAddIceCandidate(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method private native nativeAddLocalStream(J)Z
.end method

.method private native nativeCreateSender(Ljava/lang/String;Ljava/lang/String;)Lorg/webrtc/RtpSender;
.end method

.method private native nativeGetReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/RtpReceiver;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetSenders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/RtpSender;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeNewGetStats(Lorg/webrtc/RTCStatsCollectorCallback;)V
.end method

.method private native nativeOldGetStats(Lorg/webrtc/StatsObserver;J)Z
.end method

.method private native nativeRemoveIceCandidates([Lorg/webrtc/IceCandidate;)Z
.end method

.method private native nativeRemoveLocalStream(J)V
.end method

.method private native nativeStartRtcEventLog(II)Z
.end method

.method private native nativeStopRtcEventLog()V
.end method


# virtual methods
.method public addIceCandidate(Lorg/webrtc/IceCandidate;)Z
    .locals 3
    .param p1, "candidate"    # Lorg/webrtc/IceCandidate;

    .prologue
    .line 327
    iget-object v0, p1, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iget v1, p1, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    iget-object v2, p1, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/webrtc/PeerConnection;->nativeAddIceCandidate(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addStream(Lorg/webrtc/MediaStream;)Z
    .locals 4
    .param p1, "stream"    # Lorg/webrtc/MediaStream;

    .prologue
    .line 335
    iget-wide v2, p1, Lorg/webrtc/MediaStream;->nativeStream:J

    invoke-direct {p0, v2, v3}, Lorg/webrtc/PeerConnection;->nativeAddLocalStream(J)Z

    move-result v0

    .line 336
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 337
    const/4 v1, 0x0

    .line 340
    :goto_0
    return v1

    .line 339
    :cond_0
    iget-object v1, p0, Lorg/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public native close()V
.end method

.method public native createAnswer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V
.end method

.method public native createDataChannel(Ljava/lang/String;Lorg/webrtc/DataChannel$Init;)Lorg/webrtc/DataChannel;
.end method

.method public native createOffer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V
.end method

.method public createSender(Ljava/lang/String;Ljava/lang/String;)Lorg/webrtc/RtpSender;
    .locals 2
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "stream_id"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-direct {p0, p1, p2}, Lorg/webrtc/PeerConnection;->nativeCreateSender(Ljava/lang/String;Ljava/lang/String;)Lorg/webrtc/RtpSender;

    move-result-object v0

    .line 387
    .local v0, "new_sender":Lorg/webrtc/RtpSender;
    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lorg/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_0
    return-object v0
.end method

.method public dispose()V
    .locals 6

    .prologue
    .line 453
    invoke-virtual {p0}, Lorg/webrtc/PeerConnection;->close()V

    .line 454
    iget-object v3, p0, Lorg/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/MediaStream;

    .line 455
    .local v2, "stream":Lorg/webrtc/MediaStream;
    iget-wide v4, v2, Lorg/webrtc/MediaStream;->nativeStream:J

    invoke-direct {p0, v4, v5}, Lorg/webrtc/PeerConnection;->nativeRemoveLocalStream(J)V

    .line 456
    invoke-virtual {v2}, Lorg/webrtc/MediaStream;->dispose()V

    goto :goto_0

    .line 458
    .end local v2    # "stream":Lorg/webrtc/MediaStream;
    :cond_0
    iget-object v3, p0, Lorg/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 459
    iget-object v3, p0, Lorg/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/RtpSender;

    .line 460
    .local v1, "sender":Lorg/webrtc/RtpSender;
    invoke-virtual {v1}, Lorg/webrtc/RtpSender;->dispose()V

    goto :goto_1

    .line 462
    .end local v1    # "sender":Lorg/webrtc/RtpSender;
    :cond_1
    iget-object v3, p0, Lorg/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 463
    iget-object v3, p0, Lorg/webrtc/PeerConnection;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/RtpReceiver;

    .line 464
    .local v0, "receiver":Lorg/webrtc/RtpReceiver;
    invoke-virtual {v0}, Lorg/webrtc/RtpReceiver;->dispose()V

    goto :goto_2

    .line 466
    .end local v0    # "receiver":Lorg/webrtc/RtpReceiver;
    :cond_2
    iget-object v3, p0, Lorg/webrtc/PeerConnection;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 467
    iget-wide v4, p0, Lorg/webrtc/PeerConnection;->nativePeerConnection:J

    invoke-static {v4, v5}, Lorg/webrtc/JniCommon;->nativeReleaseRef(J)V

    .line 468
    iget-wide v4, p0, Lorg/webrtc/PeerConnection;->nativeObserver:J

    invoke-static {v4, v5}, Lorg/webrtc/PeerConnection;->freeObserver(J)V

    .line 469
    return-void
.end method

.method public native getLocalDescription()Lorg/webrtc/SessionDescription;
.end method

.method public getReceivers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/RtpReceiver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v1, p0, Lorg/webrtc/PeerConnection;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/RtpReceiver;

    .line 405
    .local v0, "receiver":Lorg/webrtc/RtpReceiver;
    invoke-virtual {v0}, Lorg/webrtc/RtpReceiver;->dispose()V

    goto :goto_0

    .line 407
    .end local v0    # "receiver":Lorg/webrtc/RtpReceiver;
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/PeerConnection;->nativeGetReceivers()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/PeerConnection;->receivers:Ljava/util/List;

    .line 408
    iget-object v1, p0, Lorg/webrtc/PeerConnection;->receivers:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public native getRemoteDescription()Lorg/webrtc/SessionDescription;
.end method

.method public getSenders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/RtpSender;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v1, p0, Lorg/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/RtpSender;

    .line 397
    .local v0, "sender":Lorg/webrtc/RtpSender;
    invoke-virtual {v0}, Lorg/webrtc/RtpSender;->dispose()V

    goto :goto_0

    .line 399
    .end local v0    # "sender":Lorg/webrtc/RtpSender;
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/PeerConnection;->nativeGetSenders()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/PeerConnection;->senders:Ljava/util/List;

    .line 400
    iget-object v1, p0, Lorg/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getStats(Lorg/webrtc/RTCStatsCollectorCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/webrtc/RTCStatsCollectorCallback;

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lorg/webrtc/PeerConnection;->nativeNewGetStats(Lorg/webrtc/RTCStatsCollectorCallback;)V

    .line 421
    return-void
.end method

.method public getStats(Lorg/webrtc/StatsObserver;Lorg/webrtc/MediaStreamTrack;)Z
    .locals 2
    .param p1, "observer"    # Lorg/webrtc/StatsObserver;
    .param p2, "track"    # Lorg/webrtc/MediaStreamTrack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 414
    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lorg/webrtc/PeerConnection;->nativeOldGetStats(Lorg/webrtc/StatsObserver;J)Z

    move-result v0

    return v0

    :cond_0
    iget-wide v0, p2, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    goto :goto_0
.end method

.method public native iceConnectionState()Lorg/webrtc/PeerConnection$IceConnectionState;
.end method

.method public native iceGatheringState()Lorg/webrtc/PeerConnection$IceGatheringState;
.end method

.method public native nativeSetConfiguration(Lorg/webrtc/PeerConnection$RTCConfiguration;J)Z
.end method

.method public removeIceCandidates([Lorg/webrtc/IceCandidate;)Z
    .locals 1
    .param p1, "candidates"    # [Lorg/webrtc/IceCandidate;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lorg/webrtc/PeerConnection;->nativeRemoveIceCandidates([Lorg/webrtc/IceCandidate;)Z

    move-result v0

    return v0
.end method

.method public removeStream(Lorg/webrtc/MediaStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/webrtc/MediaStream;

    .prologue
    .line 344
    iget-wide v0, p1, Lorg/webrtc/MediaStream;->nativeStream:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/PeerConnection;->nativeRemoveLocalStream(J)V

    .line 345
    iget-object v0, p0, Lorg/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public native setBitrate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
.end method

.method public setConfiguration(Lorg/webrtc/PeerConnection$RTCConfiguration;)Z
    .locals 2
    .param p1, "config"    # Lorg/webrtc/PeerConnection$RTCConfiguration;

    .prologue
    .line 323
    iget-wide v0, p0, Lorg/webrtc/PeerConnection;->nativeObserver:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/webrtc/PeerConnection;->nativeSetConfiguration(Lorg/webrtc/PeerConnection$RTCConfiguration;J)Z

    move-result v0

    return v0
.end method

.method public native setLocalDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V
.end method

.method public native setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V
.end method

.method public native signalingState()Lorg/webrtc/PeerConnection$SignalingState;
.end method

.method public startRtcEventLog(II)Z
    .locals 1
    .param p1, "file_descriptor"    # I
    .param p2, "max_size_bytes"    # I

    .prologue
    .line 433
    invoke-direct {p0, p1, p2}, Lorg/webrtc/PeerConnection;->nativeStartRtcEventLog(II)Z

    move-result v0

    return v0
.end method

.method public stopRtcEventLog()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Lorg/webrtc/PeerConnection;->nativeStopRtcEventLog()V

    .line 440
    return-void
.end method
