.class public Lorg/webrtc/EncodedImage;
.super Ljava/lang/Object;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/EncodedImage$Builder;,
        Lorg/webrtc/EncodedImage$FrameType;
    }
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final captureTimeMs:J

.field public final captureTimeNs:J

.field public final completeFrame:Z

.field public final encodedHeight:I

.field public final encodedWidth:I

.field public final frameType:Lorg/webrtc/EncodedImage$FrameType;

.field public final qp:Ljava/lang/Integer;

.field public final rotation:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;IIJLorg/webrtc/EncodedImage$FrameType;IZLjava/lang/Integer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "encodedWidth"    # I
    .param p3, "encodedHeight"    # I
    .param p4, "captureTimeNs"    # J
    .param p6, "frameType"    # Lorg/webrtc/EncodedImage$FrameType;
    .param p7, "rotation"    # I
    .param p8, "completeFrame"    # Z
    .param p9, "qp"    # Ljava/lang/Integer;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 60
    iput p2, p0, Lorg/webrtc/EncodedImage;->encodedWidth:I

    .line 61
    iput p3, p0, Lorg/webrtc/EncodedImage;->encodedHeight:I

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/EncodedImage;->captureTimeMs:J

    .line 63
    iput-wide p4, p0, Lorg/webrtc/EncodedImage;->captureTimeNs:J

    .line 64
    iput-object p6, p0, Lorg/webrtc/EncodedImage;->frameType:Lorg/webrtc/EncodedImage$FrameType;

    .line 65
    iput p7, p0, Lorg/webrtc/EncodedImage;->rotation:I

    .line 66
    iput-boolean p8, p0, Lorg/webrtc/EncodedImage;->completeFrame:Z

    .line 67
    iput-object p9, p0, Lorg/webrtc/EncodedImage;->qp:Ljava/lang/Integer;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;IIJLorg/webrtc/EncodedImage$FrameType;IZLjava/lang/Integer;Lorg/webrtc/EncodedImage$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # Lorg/webrtc/EncodedImage$FrameType;
    .param p7, "x5"    # I
    .param p8, "x6"    # Z
    .param p9, "x7"    # Ljava/lang/Integer;
    .param p10, "x8"    # Lorg/webrtc/EncodedImage$1;

    .prologue
    .line 20
    invoke-direct/range {p0 .. p9}, Lorg/webrtc/EncodedImage;-><init>(Ljava/nio/ByteBuffer;IIJLorg/webrtc/EncodedImage$FrameType;IZLjava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lorg/webrtc/EncodedImage$Builder;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lorg/webrtc/EncodedImage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/webrtc/EncodedImage$Builder;-><init>(Lorg/webrtc/EncodedImage$1;)V

    return-object v0
.end method
