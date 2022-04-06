.class Lorg/webrtc/VideoEncoderWrapperCallback;
.super Ljava/lang/Object;
.source "VideoEncoderWrapperCallback.java"

# interfaces
.implements Lorg/webrtc/VideoEncoder$Callback;


# instance fields
.field private final nativeEncoder:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeEncoder"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lorg/webrtc/VideoEncoderWrapperCallback;->nativeEncoder:J

    .line 23
    return-void
.end method

.method private static native nativeOnEncodedFrame(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;)V
.end method


# virtual methods
.method public onEncodedFrame(Lorg/webrtc/EncodedImage;Lorg/webrtc/VideoEncoder$CodecSpecificInfo;)V
    .locals 11
    .param p1, "frame"    # Lorg/webrtc/EncodedImage;
    .param p2, "info"    # Lorg/webrtc/VideoEncoder$CodecSpecificInfo;

    .prologue
    .line 27
    iget-wide v0, p0, Lorg/webrtc/VideoEncoderWrapperCallback;->nativeEncoder:J

    iget-object v2, p1, Lorg/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p1, Lorg/webrtc/EncodedImage;->encodedWidth:I

    iget v4, p1, Lorg/webrtc/EncodedImage;->encodedHeight:I

    iget-wide v5, p1, Lorg/webrtc/EncodedImage;->captureTimeNs:J

    iget-object v7, p1, Lorg/webrtc/EncodedImage;->frameType:Lorg/webrtc/EncodedImage$FrameType;

    .line 28
    invoke-virtual {v7}, Lorg/webrtc/EncodedImage$FrameType;->getNative()I

    move-result v7

    iget v8, p1, Lorg/webrtc/EncodedImage;->rotation:I

    iget-boolean v9, p1, Lorg/webrtc/EncodedImage;->completeFrame:Z

    iget-object v10, p1, Lorg/webrtc/EncodedImage;->qp:Ljava/lang/Integer;

    .line 27
    invoke-static/range {v0 .. v10}, Lorg/webrtc/VideoEncoderWrapperCallback;->nativeOnEncodedFrame(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;)V

    .line 30
    return-void
.end method
