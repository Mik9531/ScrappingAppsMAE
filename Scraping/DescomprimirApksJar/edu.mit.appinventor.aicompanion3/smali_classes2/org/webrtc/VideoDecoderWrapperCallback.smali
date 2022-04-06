.class Lorg/webrtc/VideoDecoderWrapperCallback;
.super Ljava/lang/Object;
.source "VideoDecoderWrapperCallback.java"

# interfaces
.implements Lorg/webrtc/VideoDecoder$Callback;


# instance fields
.field private final nativeDecoder:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeDecoder"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lorg/webrtc/VideoDecoderWrapperCallback;->nativeDecoder:J

    .line 21
    return-void
.end method

.method private static native nativeOnDecodedFrame(JLorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method


# virtual methods
.method public onDecodedFrame(Lorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "frame"    # Lorg/webrtc/VideoFrame;
    .param p2, "decodeTimeMs"    # Ljava/lang/Integer;
    .param p3, "qp"    # Ljava/lang/Integer;

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/webrtc/VideoDecoderWrapperCallback;->nativeDecoder:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/webrtc/VideoDecoderWrapperCallback;->nativeOnDecodedFrame(JLorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 26
    return-void
.end method
