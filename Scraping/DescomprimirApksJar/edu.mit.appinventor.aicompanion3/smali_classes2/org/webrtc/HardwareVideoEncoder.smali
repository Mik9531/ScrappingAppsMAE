.class Lorg/webrtc/HardwareVideoEncoder;
.super Ljava/lang/Object;
.source "HardwareVideoEncoder.java"

# interfaces
.implements Lorg/webrtc/VideoEncoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/HardwareVideoEncoder$ColorFormat;
    }
.end annotation


# static fields
.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final KEY_BITRATE_MODE:Ljava/lang/String; = "bitrate-mode"

.field private static final MAX_ENCODER_Q_SIZE:I = 0x2

.field private static final MAX_VIDEO_FRAMERATE:I = 0x1e

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoder"

.field private static final VIDEO_ControlRateConstant:I = 0x2


# instance fields
.field private adjustedBitrate:I

.field private automaticResizeOn:Z

.field private final bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

.field private callback:Lorg/webrtc/VideoEncoder$Callback;

.field private codec:Landroid/media/MediaCodec;

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lorg/webrtc/VideoCodecType;

.field private final colorFormat:I

.field private configBuffer:Ljava/nio/ByteBuffer;

.field private final forcedKeyFrameNs:J

.field private height:I

.field private final inputColorFormat:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

.field private final keyFrameIntervalSec:I

.field private lastKeyFrameNs:J

.field private final outputBuilders:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lorg/webrtc/EncodedImage$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private outputThread:Ljava/lang/Thread;

.field private volatile running:Z

.field private volatile shutdownException:Ljava/lang/Exception;

.field private textureContext:Lorg/webrtc/EglBase14$Context;

.field private textureDrawer:Lorg/webrtc/GlRectDrawer;

.field private textureEglBase:Lorg/webrtc/EglBase14;

.field private textureInputSurface:Landroid/view/Surface;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/VideoCodecType;IIILorg/webrtc/BitrateAdjuster;Lorg/webrtc/EglBase14$Context;)V
    .locals 4
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "codecType"    # Lorg/webrtc/VideoCodecType;
    .param p3, "colorFormat"    # I
    .param p4, "keyFrameIntervalSec"    # I
    .param p5, "forceKeyFrameIntervalMs"    # I
    .param p6, "bitrateAdjuster"    # Lorg/webrtc/BitrateAdjuster;
    .param p7, "textureContext"    # Lorg/webrtc/EglBase14$Context;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/HardwareVideoEncoder;->running:Z

    .line 78
    iput-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    .line 101
    iput-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 120
    iput-object p1, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecType;

    .line 122
    iput p3, p0, Lorg/webrtc/HardwareVideoEncoder;->colorFormat:I

    .line 123
    if-nez p7, :cond_0

    .line 124
    invoke-static {p3}, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->valueOf(I)Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->inputColorFormat:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    .line 129
    :goto_0
    iput p4, p0, Lorg/webrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    .line 130
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    .line 131
    iput-object p6, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    .line 132
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    .line 133
    iput-object p7, p0, Lorg/webrtc/HardwareVideoEncoder;->textureContext:Lorg/webrtc/EglBase14$Context;

    .line 134
    return-void

    .line 127
    :cond_0
    iput-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->inputColorFormat:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/webrtc/HardwareVideoEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/HardwareVideoEncoder;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/webrtc/HardwareVideoEncoder;->running:Z

    return v0
.end method

.method static synthetic access$100(Lorg/webrtc/HardwareVideoEncoder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/HardwareVideoEncoder;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->deliverEncodedImage()V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/HardwareVideoEncoder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/HardwareVideoEncoder;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lorg/webrtc/HardwareVideoEncoder$1;

    invoke-direct {v0, p0}, Lorg/webrtc/HardwareVideoEncoder$1;-><init>(Lorg/webrtc/HardwareVideoEncoder;)V

    return-object v0
.end method

.method private deliverEncodedImage()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 437
    :try_start_0
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 438
    .local v6, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const-wide/32 v10, 0x186a0

    invoke-virtual {v8, v6, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 439
    .local v5, "index":I
    if-gez v5, :cond_0

    .line 487
    .end local v5    # "index":I
    .end local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    :goto_0
    return-void

    .line 443
    .restart local v5    # "index":I
    .restart local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_0
    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v1, v8, v5

    .line 444
    .local v1, "codecOutputBuffer":Ljava/nio/ByteBuffer;
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 445
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v9, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 447
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    .line 448
    const-string v8, "HardwareVideoEncoder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Config frame generated. Offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 450
    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 483
    :goto_1
    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v1    # "codecOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    :catch_0
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v8, "HardwareVideoEncoder"

    const-string v9, "deliverOutput failed"

    invoke-static {v8, v9, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 452
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "codecOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "index":I
    .restart local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    iget v9, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-interface {v8, v9}, Lorg/webrtc/BitrateAdjuster;->reportEncodedFrame(I)V

    .line 453
    iget v8, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    iget-object v9, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-interface {v9}, Lorg/webrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 454
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->updateBitrate()Lorg/webrtc/VideoCodecStatus;

    .line 458
    :cond_2
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    .line 459
    .local v7, "isKeyFrame":Z
    :cond_3
    if-eqz v7, :cond_5

    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecType;

    sget-object v9, Lorg/webrtc/VideoCodecType;->H264:Lorg/webrtc/VideoCodecType;

    if-ne v8, v9, :cond_5

    .line 460
    const-string v8, "HardwareVideoEncoder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepending config frame of size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 461
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to output buffer with offset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 460
    invoke-static {v8, v9}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v9, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 465
    .local v3, "frameBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 466
    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 470
    :goto_2
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 471
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 473
    sget-object v4, Lorg/webrtc/EncodedImage$FrameType;->VideoFrameDelta:Lorg/webrtc/EncodedImage$FrameType;

    .line 474
    .local v4, "frameType":Lorg/webrtc/EncodedImage$FrameType;
    if-eqz v7, :cond_4

    .line 475
    const-string v8, "HardwareVideoEncoder"

    const-string v9, "Sync frame generated"

    invoke-static {v8, v9}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v4, Lorg/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/EncodedImage$FrameType;

    .line 478
    :cond_4
    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v8}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/EncodedImage$Builder;

    .line 479
    .local v0, "builder":Lorg/webrtc/EncodedImage$Builder;
    invoke-virtual {v0, v3}, Lorg/webrtc/EncodedImage$Builder;->setBuffer(Ljava/nio/ByteBuffer;)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/webrtc/EncodedImage$Builder;->setFrameType(Lorg/webrtc/EncodedImage$FrameType;)Lorg/webrtc/EncodedImage$Builder;

    .line 481
    iget-object v8, p0, Lorg/webrtc/HardwareVideoEncoder;->callback:Lorg/webrtc/VideoEncoder$Callback;

    invoke-virtual {v0}, Lorg/webrtc/EncodedImage$Builder;->createEncodedImage()Lorg/webrtc/EncodedImage;

    move-result-object v9

    new-instance v10, Lorg/webrtc/VideoEncoder$CodecSpecificInfo;

    invoke-direct {v10}, Lorg/webrtc/VideoEncoder$CodecSpecificInfo;-><init>()V

    invoke-interface {v8, v9, v10}, Lorg/webrtc/VideoEncoder$Callback;->onEncodedFrame(Lorg/webrtc/EncodedImage;Lorg/webrtc/VideoEncoder$CodecSpecificInfo;)V

    goto/16 :goto_1

    .line 468
    .end local v0    # "builder":Lorg/webrtc/EncodedImage$Builder;
    .end local v3    # "frameBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "frameType":Lorg/webrtc/EncodedImage$FrameType;
    :cond_5
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "frameBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2
.end method

.method private encodeByteBuffer(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoFrame$Buffer;I)Lorg/webrtc/VideoCodecStatus;
    .locals 12
    .param p1, "videoFrame"    # Lorg/webrtc/VideoFrame;
    .param p2, "videoFrameBuffer"    # Lorg/webrtc/VideoFrame$Buffer;
    .param p3, "bufferSize"    # I

    .prologue
    .line 328
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v2

    const-wide/16 v10, 0x1f4

    add-long/2addr v2, v10

    const-wide/16 v10, 0x3e8

    div-long v4, v2, v10

    .line 333
    .local v4, "presentationTimestampUs":J
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 339
    .local v1, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 341
    const-string v0, "HardwareVideoEncoder"

    const-string v2, "Dropped frame, no input buffers available"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    .line 366
    .end local v1    # "index":I
    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v8

    .line 335
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string v0, "HardwareVideoEncoder"

    const-string v2, "dequeueInputBuffer failed"

    invoke-static {v0, v2, v8}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 347
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "index":I
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v7, v0, v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-interface {p2}, Lorg/webrtc/VideoFrame$Buffer;->toI420()Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object v9

    .line 353
    .local v9, "i420":Lorg/webrtc/VideoFrame$I420Buffer;
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->inputColorFormat:Lorg/webrtc/HardwareVideoEncoder$ColorFormat;

    invoke-virtual {v0, v7, v9}, Lorg/webrtc/HardwareVideoEncoder$ColorFormat;->fillBufferFromI420(Ljava/nio/ByteBuffer;Lorg/webrtc/VideoFrame$I420Buffer;)V

    .line 354
    invoke-interface {v9}, Lorg/webrtc/VideoFrame$I420Buffer;->release()V

    .line 357
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 366
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 348
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "i420":Lorg/webrtc/VideoFrame$I420Buffer;
    :catch_1
    move-exception v8

    .line 349
    .restart local v8    # "e":Ljava/lang/IllegalStateException;
    const-string v0, "HardwareVideoEncoder"

    const-string v2, "getInputBuffers failed"

    invoke-static {v0, v2, v8}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 359
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "i420":Lorg/webrtc/VideoFrame$I420Buffer;
    :catch_2
    move-exception v8

    .line 360
    .restart local v8    # "e":Ljava/lang/IllegalStateException;
    const-string v0, "HardwareVideoEncoder"

    const-string v2, "queueInputBuffer failed"

    invoke-static {v0, v2, v8}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 364
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0
.end method

.method private encodeTextureBuffer(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoFrame$TextureBuffer;)Lorg/webrtc/VideoCodecStatus;
    .locals 11
    .param p1, "videoFrame"    # Lorg/webrtc/VideoFrame;
    .param p2, "textureBuffer"    # Lorg/webrtc/VideoFrame$TextureBuffer;

    .prologue
    .line 297
    invoke-interface {p2}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 298
    .local v10, "matrix":Landroid/graphics/Matrix;
    invoke-static {v10}, Lorg/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v2

    .line 301
    .local v2, "transformationMatrix":[F
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/EglBase14;->makeCurrent()V

    .line 304
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 305
    sget-object v0, Lorg/webrtc/HardwareVideoEncoder$2;->$SwitchMap$org$webrtc$VideoFrame$TextureBuffer$Type:[I

    invoke-interface {p2}, Lorg/webrtc/VideoFrame$TextureBuffer;->getType()Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/VideoFrame$TextureBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/webrtc/EglBase14;->swapBuffers(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    :goto_1
    return-object v0

    .line 307
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    invoke-interface {p2}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v1

    iget v3, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    iget v4, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    iget v8, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    invoke-virtual/range {v0 .. v8}, Lorg/webrtc/GlRectDrawer;->drawOes(I[FIIIIII)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v9

    .line 317
    .local v9, "e":Ljava/lang/RuntimeException;
    const-string v0, "HardwareVideoEncoder"

    const-string v1, "encodeTexture failed"

    invoke-static {v0, v1, v9}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 320
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_1

    .line 311
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    invoke-interface {p2}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v1

    iget v3, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    iget v4, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    iget v8, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    invoke-virtual/range {v0 .. v8}, Lorg/webrtc/GlRectDrawer;->drawRgb(I[FIIIIII)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initEncodeInternal(IIIILorg/webrtc/VideoEncoder$Callback;)Lorg/webrtc/VideoCodecStatus;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitrateKbps"    # I
    .param p4, "fps"    # I
    .param p5, "callback"    # Lorg/webrtc/VideoEncoder$Callback;

    .prologue
    const/4 v6, 0x1

    .line 146
    const-string v2, "HardwareVideoEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initEncode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kbps. Fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput p1, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    .line 149
    iput p2, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    .line 150
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 151
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    mul-int/lit16 v3, p3, 0x3e8

    invoke-interface {v2, v3, p4}, Lorg/webrtc/BitrateAdjuster;->setTargets(II)V

    .line 153
    :cond_0
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-interface {v2}, Lorg/webrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v2

    iput v2, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 155
    iput-object p5, p0, Lorg/webrtc/HardwareVideoEncoder;->callback:Lorg/webrtc/VideoEncoder$Callback;

    .line 157
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    .line 160
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecType;

    invoke-virtual {v2}, Lorg/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 167
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v2, "bitrate"

    iget v3, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 168
    const-string v2, "bitrate-mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 169
    const-string v2, "color-format"

    iget v3, p0, Lorg/webrtc/HardwareVideoEncoder;->colorFormat:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 170
    const-string v2, "frame-rate"

    iget-object v3, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-interface {v3}, Lorg/webrtc/BitrateAdjuster;->getAdjustedFramerate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 171
    const-string v2, "i-frame-interval"

    iget v3, p0, Lorg/webrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 172
    const-string v2, "HardwareVideoEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 175
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->textureContext:Lorg/webrtc/EglBase14$Context;

    if-eqz v2, :cond_1

    .line 177
    new-instance v2, Lorg/webrtc/EglBase14;

    iget-object v3, p0, Lorg/webrtc/HardwareVideoEncoder;->textureContext:Lorg/webrtc/EglBase14$Context;

    sget-object v4, Lorg/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    invoke-direct {v2, v3, v4}, Lorg/webrtc/EglBase14;-><init>(Lorg/webrtc/EglBase14$Context;[I)V

    iput-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    .line 178
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 179
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    iget-object v3, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Lorg/webrtc/EglBase14;->createSurface(Landroid/view/Surface;)V

    .line 180
    new-instance v2, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v2}, Lorg/webrtc/GlRectDrawer;-><init>()V

    iput-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    .line 183
    :cond_1
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    iput-boolean v6, p0, Lorg/webrtc/HardwareVideoEncoder;->running:Z

    .line 191
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 192
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 194
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    .end local v1    # "format":Landroid/media/MediaFormat;
    :goto_0
    return-object v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "HardwareVideoEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create media encoder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "HardwareVideoEncoder"

    const-string v3, "initEncode failed"

    invoke-static {v2, v3, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    invoke-virtual {p0}, Lorg/webrtc/HardwareVideoEncoder;->release()Lorg/webrtc/VideoCodecStatus;

    .line 187
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .prologue
    .line 490
    const-string v1, "HardwareVideoEncoder"

    const-string v2, "Releasing MediaCodec on output thread"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    :goto_1
    const-string v1, "HardwareVideoEncoder"

    const-string v2, "Release on output thread done"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HardwareVideoEncoder"

    const-string v2, "Media encoder stop failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 498
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 499
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "HardwareVideoEncoder"

    const-string v2, "Media encoder release failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    goto :goto_1
.end method

.method private requestKeyFrame(J)V
    .locals 5
    .param p1, "presentationTimestampNs"    # J

    .prologue
    .line 413
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "request-sync"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    iput-wide p1, p0, Lorg/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    .line 421
    .end local v0    # "b":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "HardwareVideoEncoder"

    const-string v3, "requestKeyFrame failed"

    invoke-static {v2, v3, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resetCodec(II)Lorg/webrtc/VideoCodecStatus;
    .locals 7
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 395
    invoke-virtual {p0}, Lorg/webrtc/HardwareVideoEncoder;->release()Lorg/webrtc/VideoCodecStatus;

    move-result-object v6

    .line 396
    .local v6, "status":Lorg/webrtc/VideoCodecStatus;
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    if-eq v6, v0, :cond_0

    .line 400
    .end local v6    # "status":Lorg/webrtc/VideoCodecStatus;
    :goto_0
    return-object v6

    .restart local v6    # "status":Lorg/webrtc/VideoCodecStatus;
    :cond_0
    iget-object v5, p0, Lorg/webrtc/HardwareVideoEncoder;->callback:Lorg/webrtc/VideoEncoder$Callback;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/HardwareVideoEncoder;->initEncodeInternal(IIIILorg/webrtc/VideoEncoder$Callback;)Lorg/webrtc/VideoCodecStatus;

    move-result-object v6

    goto :goto_0
.end method

.method private shouldForceKeyFrame(J)Z
    .locals 5
    .param p1, "presentationTimestampNs"    # J

    .prologue
    .line 404
    iget-wide v0, p0, Lorg/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    iget-wide v2, p0, Lorg/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBitrate()Lorg/webrtc/VideoCodecStatus;
    .locals 4

    .prologue
    .line 507
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-interface {v2}, Lorg/webrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v2

    iput v2, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 509
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 510
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "video-bitrate"

    iget v3, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 512
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v1    # "params":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "HardwareVideoEncoder"

    const-string v3, "updateBitrate failed"

    invoke-static {v2, v3, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 515
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0
.end method


# virtual methods
.method public encode(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoEncoder$EncodeInfo;)Lorg/webrtc/VideoCodecStatus;
    .locals 13
    .param p1, "videoFrame"    # Lorg/webrtc/VideoFrame;
    .param p2, "encodeInfo"    # Lorg/webrtc/VideoEncoder$EncodeInfo;

    .prologue
    .line 237
    iget-object v9, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    if-nez v9, :cond_1

    .line 238
    sget-object v6, Lorg/webrtc/VideoCodecStatus;->UNINITIALIZED:Lorg/webrtc/VideoCodecStatus;

    .line 291
    :cond_0
    :goto_0
    return-object v6

    .line 242
    :cond_1
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v9

    invoke-interface {v9}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v4

    .line 243
    .local v4, "frameWidth":I
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v9

    invoke-interface {v9}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    .line 244
    .local v2, "frameHeight":I
    iget v9, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    if-ne v4, v9, :cond_2

    iget v9, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    if-eq v2, v9, :cond_3

    .line 245
    :cond_2
    invoke-direct {p0, v4, v2}, Lorg/webrtc/HardwareVideoEncoder;->resetCodec(II)Lorg/webrtc/VideoCodecStatus;

    move-result-object v6

    .line 246
    .local v6, "status":Lorg/webrtc/VideoCodecStatus;
    sget-object v9, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    if-ne v6, v9, :cond_0

    .line 251
    .end local v6    # "status":Lorg/webrtc/VideoCodecStatus;
    :cond_3
    iget-object v9, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v9}, Ljava/util/Deque;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_4

    .line 253
    const-string v9, "HardwareVideoEncoder"

    const-string v10, "Dropped frame, encoder queue full"

    invoke-static {v9, v10}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v6, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 257
    :cond_4
    const/4 v5, 0x0

    .line 258
    .local v5, "requestedKeyFrame":Z
    iget-object v10, p2, Lorg/webrtc/VideoEncoder$EncodeInfo;->frameTypes:[Lorg/webrtc/EncodedImage$FrameType;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_6

    aget-object v3, v10, v9

    .line 259
    .local v3, "frameType":Lorg/webrtc/EncodedImage$FrameType;
    sget-object v12, Lorg/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/EncodedImage$FrameType;

    if-ne v3, v12, :cond_5

    .line 260
    const/4 v5, 0x1

    .line 258
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 264
    .end local v3    # "frameType":Lorg/webrtc/EncodedImage$FrameType;
    :cond_6
    if-nez v5, :cond_7

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lorg/webrtc/HardwareVideoEncoder;->shouldForceKeyFrame(J)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 265
    :cond_7
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lorg/webrtc/HardwareVideoEncoder;->requestKeyFrame(J)V

    .line 268
    :cond_8
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v8

    .line 271
    .local v8, "videoFrameBuffer":Lorg/webrtc/VideoFrame$Buffer;
    invoke-interface {v8}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v9

    invoke-interface {v8}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v10

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v0, v9, 0x2

    .line 272
    .local v0, "bufferSize":I
    invoke-static {}, Lorg/webrtc/EncodedImage;->builder()Lorg/webrtc/EncodedImage$Builder;

    move-result-object v9

    .line 273
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/webrtc/EncodedImage$Builder;->setCaptureTimeNs(J)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v9

    const/4 v10, 0x1

    .line 274
    invoke-virtual {v9, v10}, Lorg/webrtc/EncodedImage$Builder;->setCompleteFrame(Z)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v9

    .line 275
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v10

    invoke-interface {v10}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/webrtc/EncodedImage$Builder;->setEncodedWidth(I)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v9

    .line 276
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v10

    invoke-interface {v10}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/webrtc/EncodedImage$Builder;->setEncodedHeight(I)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v9

    .line 277
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/webrtc/EncodedImage$Builder;->setRotation(I)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v1

    .line 278
    .local v1, "builder":Lorg/webrtc/EncodedImage$Builder;
    iget-object v9, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v9, v1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 280
    iget-object v9, p0, Lorg/webrtc/HardwareVideoEncoder;->textureContext:Lorg/webrtc/EglBase14$Context;

    if-eqz v9, :cond_a

    .line 281
    instance-of v9, v8, Lorg/webrtc/VideoFrame$TextureBuffer;

    if-nez v9, :cond_9

    .line 282
    const-string v9, "HardwareVideoEncoder"

    const-string v10, "Cannot encode non-texture buffer in texture mode"

    invoke-static {v9, v10}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v6, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto/16 :goto_0

    :cond_9
    move-object v7, v8

    .line 285
    check-cast v7, Lorg/webrtc/VideoFrame$TextureBuffer;

    .line 286
    .local v7, "textureBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    invoke-direct {p0, p1, v7}, Lorg/webrtc/HardwareVideoEncoder;->encodeTextureBuffer(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoFrame$TextureBuffer;)Lorg/webrtc/VideoCodecStatus;

    move-result-object v6

    goto/16 :goto_0

    .line 288
    .end local v7    # "textureBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    :cond_a
    instance-of v9, v8, Lorg/webrtc/VideoFrame$TextureBuffer;

    if-eqz v9, :cond_b

    .line 289
    const-string v9, "HardwareVideoEncoder"

    const-string v10, "Encoding texture buffer in byte mode; this may be inefficient"

    invoke-static {v9, v10}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_b
    invoke-direct {p0, p1, v8, v0}, Lorg/webrtc/HardwareVideoEncoder;->encodeByteBuffer(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoFrame$Buffer;I)Lorg/webrtc/VideoCodecStatus;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HardwareVideoEncoder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScalingSettings()Lorg/webrtc/VideoEncoder$ScalingSettings;
    .locals 2

    .prologue
    .line 386
    new-instance v0, Lorg/webrtc/VideoEncoder$ScalingSettings;

    iget-boolean v1, p0, Lorg/webrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    invoke-direct {v0, v1}, Lorg/webrtc/VideoEncoder$ScalingSettings;-><init>(Z)V

    return-object v0
.end method

.method public initEncode(Lorg/webrtc/VideoEncoder$Settings;Lorg/webrtc/VideoEncoder$Callback;)Lorg/webrtc/VideoCodecStatus;
    .locals 6
    .param p1, "settings"    # Lorg/webrtc/VideoEncoder$Settings;
    .param p2, "callback"    # Lorg/webrtc/VideoEncoder$Callback;

    .prologue
    .line 138
    iget-boolean v0, p1, Lorg/webrtc/VideoEncoder$Settings;->automaticResizeOn:Z

    iput-boolean v0, p0, Lorg/webrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    .line 140
    iget v1, p1, Lorg/webrtc/VideoEncoder$Settings;->width:I

    iget v2, p1, Lorg/webrtc/VideoEncoder$Settings;->height:I

    iget v3, p1, Lorg/webrtc/VideoEncoder$Settings;->startBitrate:I

    iget v4, p1, Lorg/webrtc/VideoEncoder$Settings;->maxFramerate:I

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/HardwareVideoEncoder;->initEncodeInternal(IIIILorg/webrtc/VideoEncoder$Callback;)Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public release()Lorg/webrtc/VideoCodecStatus;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    if-nez v0, :cond_3

    .line 201
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    .line 216
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 217
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 219
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    invoke-virtual {v1}, Lorg/webrtc/GlRectDrawer;->release()V

    .line 221
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v1}, Lorg/webrtc/EglBase14;->release()V

    .line 225
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    .line 227
    :cond_1
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 229
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 232
    :cond_2
    :goto_0
    return-object v0

    .line 204
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/webrtc/HardwareVideoEncoder;->running:Z

    .line 205
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_6

    .line 206
    const-string v0, "HardwareVideoEncoder"

    const-string v1, "Media encoder release timeout"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->TIMEOUT:Lorg/webrtc/VideoCodecStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    .line 216
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 217
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 219
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    if-eqz v1, :cond_4

    .line 220
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    invoke-virtual {v1}, Lorg/webrtc/GlRectDrawer;->release()V

    .line 221
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    .line 223
    :cond_4
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    if-eqz v1, :cond_5

    .line 224
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v1}, Lorg/webrtc/EglBase14;->release()V

    .line 225
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    .line 227
    :cond_5
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 229
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    goto :goto_0

    .line 209
    :cond_6
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_9

    .line 211
    const-string v0, "HardwareVideoEncoder"

    const-string v1, "Media encoder release exception"

    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    .line 216
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 217
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 219
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    if-eqz v1, :cond_7

    .line 220
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    invoke-virtual {v1}, Lorg/webrtc/GlRectDrawer;->release()V

    .line 221
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    .line 223
    :cond_7
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    if-eqz v1, :cond_8

    .line 224
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v1}, Lorg/webrtc/EglBase14;->release()V

    .line 225
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    .line 227
    :cond_8
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 229
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    goto :goto_0

    .line 215
    :cond_9
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    .line 216
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 217
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 219
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    if-eqz v0, :cond_a

    .line 220
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    invoke-virtual {v0}, Lorg/webrtc/GlRectDrawer;->release()V

    .line 221
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    .line 223
    :cond_a
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    if-eqz v0, :cond_b

    .line 224
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/EglBase14;->release()V

    .line 225
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    .line 227
    :cond_b
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    .line 228
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 229
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 232
    :cond_c
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    goto/16 :goto_0

    .line 215
    :catchall_0
    move-exception v0

    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    .line 216
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 217
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 219
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    if-eqz v1, :cond_d

    .line 220
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    invoke-virtual {v1}, Lorg/webrtc/GlRectDrawer;->release()V

    .line 221
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    .line 223
    :cond_d
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    if-eqz v1, :cond_e

    .line 224
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v1}, Lorg/webrtc/EglBase14;->release()V

    .line 225
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    .line 227
    :cond_e
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    if-eqz v1, :cond_f

    .line 228
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 229
    iput-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    :cond_f
    throw v0
.end method

.method public setChannelParameters(SJ)Lorg/webrtc/VideoCodecStatus;
    .locals 1
    .param p1, "packetLoss"    # S
    .param p2, "roundTripTimeMs"    # J

    .prologue
    .line 372
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object v0
.end method

.method public setRateAllocation(Lorg/webrtc/VideoEncoder$BitrateAllocation;I)Lorg/webrtc/VideoCodecStatus;
    .locals 2
    .param p1, "bitrateAllocation"    # Lorg/webrtc/VideoEncoder$BitrateAllocation;
    .param p2, "framerate"    # I

    .prologue
    .line 377
    const/16 v0, 0x1e

    if-le p2, v0, :cond_0

    .line 378
    const/16 p2, 0x1e

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-virtual {p1}, Lorg/webrtc/VideoEncoder$BitrateAllocation;->getSum()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lorg/webrtc/BitrateAdjuster;->setTargets(II)V

    .line 381
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->updateBitrate()Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method
