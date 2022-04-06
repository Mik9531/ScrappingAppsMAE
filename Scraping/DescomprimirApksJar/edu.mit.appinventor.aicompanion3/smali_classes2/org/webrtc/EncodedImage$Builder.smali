.class public Lorg/webrtc/EncodedImage$Builder;
.super Ljava/lang/Object;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/EncodedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private captureTimeNs:J

.field private completeFrame:Z

.field private encodedHeight:I

.field private encodedWidth:I

.field private frameType:Lorg/webrtc/EncodedImage$FrameType;

.field private qp:Ljava/lang/Integer;

.field private rotation:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/EncodedImage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/EncodedImage$1;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/webrtc/EncodedImage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public createEncodedImage()Lorg/webrtc/EncodedImage;
    .locals 11

    .prologue
    .line 133
    new-instance v0, Lorg/webrtc/EncodedImage;

    iget-object v1, p0, Lorg/webrtc/EncodedImage$Builder;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/webrtc/EncodedImage$Builder;->encodedWidth:I

    iget v3, p0, Lorg/webrtc/EncodedImage$Builder;->encodedHeight:I

    iget-wide v4, p0, Lorg/webrtc/EncodedImage$Builder;->captureTimeNs:J

    iget-object v6, p0, Lorg/webrtc/EncodedImage$Builder;->frameType:Lorg/webrtc/EncodedImage$FrameType;

    iget v7, p0, Lorg/webrtc/EncodedImage$Builder;->rotation:I

    iget-boolean v8, p0, Lorg/webrtc/EncodedImage$Builder;->completeFrame:Z

    iget-object v9, p0, Lorg/webrtc/EncodedImage$Builder;->qp:Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/webrtc/EncodedImage;-><init>(Ljava/nio/ByteBuffer;IIJLorg/webrtc/EncodedImage$FrameType;IZLjava/lang/Integer;Lorg/webrtc/EncodedImage$1;)V

    return-object v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)Lorg/webrtc/EncodedImage$Builder;
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/webrtc/EncodedImage$Builder;->buffer:Ljava/nio/ByteBuffer;

    .line 88
    return-object p0
.end method

.method public setCaptureTimeMs(J)Lorg/webrtc/EncodedImage$Builder;
    .locals 3
    .param p1, "captureTimeMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/EncodedImage$Builder;->captureTimeNs:J

    .line 104
    return-object p0
.end method

.method public setCaptureTimeNs(J)Lorg/webrtc/EncodedImage$Builder;
    .locals 1
    .param p1, "captureTimeNs"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lorg/webrtc/EncodedImage$Builder;->captureTimeNs:J

    .line 109
    return-object p0
.end method

.method public setCompleteFrame(Z)Lorg/webrtc/EncodedImage$Builder;
    .locals 0
    .param p1, "completeFrame"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lorg/webrtc/EncodedImage$Builder;->completeFrame:Z

    .line 124
    return-object p0
.end method

.method public setEncodedHeight(I)Lorg/webrtc/EncodedImage$Builder;
    .locals 0
    .param p1, "encodedHeight"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/webrtc/EncodedImage$Builder;->encodedHeight:I

    .line 98
    return-object p0
.end method

.method public setEncodedWidth(I)Lorg/webrtc/EncodedImage$Builder;
    .locals 0
    .param p1, "encodedWidth"    # I

    .prologue
    .line 92
    iput p1, p0, Lorg/webrtc/EncodedImage$Builder;->encodedWidth:I

    .line 93
    return-object p0
.end method

.method public setFrameType(Lorg/webrtc/EncodedImage$FrameType;)Lorg/webrtc/EncodedImage$Builder;
    .locals 0
    .param p1, "frameType"    # Lorg/webrtc/EncodedImage$FrameType;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/webrtc/EncodedImage$Builder;->frameType:Lorg/webrtc/EncodedImage$FrameType;

    .line 114
    return-object p0
.end method

.method public setQp(Ljava/lang/Integer;)Lorg/webrtc/EncodedImage$Builder;
    .locals 0
    .param p1, "qp"    # Ljava/lang/Integer;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/webrtc/EncodedImage$Builder;->qp:Ljava/lang/Integer;

    .line 129
    return-object p0
.end method

.method public setRotation(I)Lorg/webrtc/EncodedImage$Builder;
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 118
    iput p1, p0, Lorg/webrtc/EncodedImage$Builder;->rotation:I

    .line 119
    return-object p0
.end method
