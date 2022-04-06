.class final enum Lorg/webrtc/HardwareVideoEncoder$ColorFormat$2;
.super Lorg/webrtc/HardwareVideoEncoder$ColorFormat;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/HardwareVideoEncoder$ColorFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;-><init>(Ljava/lang/String;ILorg/webrtc/HardwareVideoEncoder$1;)V

    return-void
.end method


# virtual methods
.method fillBufferFromI420(Ljava/nio/ByteBuffer;Lorg/webrtc/VideoFrame$I420Buffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "i420"    # Lorg/webrtc/VideoFrame$I420Buffer;

    .prologue
    .line 534
    invoke-interface {p2}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 537
    invoke-interface {p2}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 538
    .local v1, "u":Ljava/nio/ByteBuffer;
    invoke-interface {p2}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 539
    .local v2, "v":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 540
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 542
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 544
    :cond_0
    return-void
.end method
