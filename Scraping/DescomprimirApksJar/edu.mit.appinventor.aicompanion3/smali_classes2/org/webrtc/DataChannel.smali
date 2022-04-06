.class public Lorg/webrtc/DataChannel;
.super Ljava/lang/Object;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/DataChannel$State;,
        Lorg/webrtc/DataChannel$Observer;,
        Lorg/webrtc/DataChannel$Buffer;,
        Lorg/webrtc/DataChannel$Init;
    }
.end annotation


# instance fields
.field private final nativeDataChannel:J

.field private nativeObserver:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeDataChannel"    # J

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p1, p0, Lorg/webrtc/DataChannel;->nativeDataChannel:J

    .line 82
    return-void
.end method

.method private native registerObserverNative(Lorg/webrtc/DataChannel$Observer;)J
.end method

.method private native sendNative([BZ)Z
.end method

.method private native unregisterObserverNative(J)V
.end method


# virtual methods
.method public native bufferedAmount()J
.end method

.method public native close()V
.end method

.method public native dispose()V
.end method

.method public native id()I
.end method

.method public native label()Ljava/lang/String;
.end method

.method public registerObserver(Lorg/webrtc/DataChannel$Observer;)V
    .locals 4
    .param p1, "observer"    # Lorg/webrtc/DataChannel$Observer;

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/webrtc/DataChannel;->nativeObserver:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 87
    iget-wide v0, p0, Lorg/webrtc/DataChannel;->nativeObserver:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/DataChannel;->unregisterObserverNative(J)V

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lorg/webrtc/DataChannel;->registerObserverNative(Lorg/webrtc/DataChannel$Observer;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/DataChannel;->nativeObserver:J

    .line 90
    return-void
.end method

.method public send(Lorg/webrtc/DataChannel$Buffer;)Z
    .locals 2
    .param p1, "buffer"    # Lorg/webrtc/DataChannel$Buffer;

    .prologue
    .line 119
    iget-object v1, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 120
    .local v0, "data":[B
    iget-object v1, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 121
    iget-boolean v1, p1, Lorg/webrtc/DataChannel$Buffer;->binary:Z

    invoke-direct {p0, v0, v1}, Lorg/webrtc/DataChannel;->sendNative([BZ)Z

    move-result v1

    return v1
.end method

.method public native state()Lorg/webrtc/DataChannel$State;
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/webrtc/DataChannel;->nativeObserver:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/DataChannel;->unregisterObserverNative(J)V

    .line 96
    return-void
.end method
