.class Lorg/webrtc/HardwareVideoDecoder;
.super Ljava/lang/Object;
.source "HardwareVideoDecoder.java"

# interfaces
.implements Lorg/webrtc/VideoDecoder;
.implements Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;,
        Lorg/webrtc/HardwareVideoDecoder$FrameInfo;
    }
.end annotation


# static fields
.field private static final DEQUEUE_INPUT_TIMEOUT_US:I = 0x7a120

.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final MEDIA_FORMAT_KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final MEDIA_FORMAT_KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final MEDIA_FORMAT_KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final MEDIA_FORMAT_KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MEDIA_FORMAT_KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field private static final MEDIA_FORMAT_KEY_STRIDE:Ljava/lang/String; = "stride"

.field private static final TAG:Ljava/lang/String; = "HardwareVideoDecoder"


# instance fields
.field private activeOutputBuffers:I

.field private final activeOutputBuffersLock:Ljava/lang/Object;

.field private callback:Lorg/webrtc/VideoDecoder$Callback;

.field private codec:Landroid/media/MediaCodec;

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lorg/webrtc/VideoCodecType;

.field private colorFormat:I

.field private decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private final dimensionLock:Ljava/lang/Object;

.field private final frameInfos:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lorg/webrtc/HardwareVideoDecoder$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hasDecodedFirstFrame:Z

.field private height:I

.field private keyFrameRequired:Z

.field private outputThread:Ljava/lang/Thread;

.field private outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private renderedTextureMetadata:Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

.field private volatile running:Z

.field private final sharedContext:Lorg/webrtc/EglBase$Context;

.field private volatile shutdownException:Ljava/lang/Exception;

.field private sliceHeight:I

.field private stride:I

.field private surface:Landroid/view/Surface;

.field private surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private width:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/webrtc/VideoCodecType;ILorg/webrtc/EglBase$Context;)V
    .locals 3
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "codecType"    # Lorg/webrtc/VideoCodecType;
    .param p3, "colorFormat"    # I
    .param p4, "sharedContext"    # Lorg/webrtc/EglBase$Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v2, p0, Lorg/webrtc/HardwareVideoDecoder;->running:Z

    .line 84
    iput-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    .line 88
    iput v2, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 109
    iput-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->surface:Landroid/view/Surface;

    .line 137
    iput-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 141
    invoke-direct {p0, p3}, Lorg/webrtc/HardwareVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported color format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iput-object p1, p0, Lorg/webrtc/HardwareVideoDecoder;->codecName:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lorg/webrtc/HardwareVideoDecoder;->codecType:Lorg/webrtc/VideoCodecType;

    .line 146
    iput p3, p0, Lorg/webrtc/HardwareVideoDecoder;->colorFormat:I

    .line 147
    iput-object p4, p0, Lorg/webrtc/HardwareVideoDecoder;->sharedContext:Lorg/webrtc/EglBase$Context;

    .line 148
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 149
    return-void
.end method

.method static synthetic access$002(Lorg/webrtc/HardwareVideoDecoder;Lorg/webrtc/ThreadUtils$ThreadChecker;)Lorg/webrtc/ThreadUtils$ThreadChecker;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/HardwareVideoDecoder;
    .param p1, "x1"    # Lorg/webrtc/ThreadUtils$ThreadChecker;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    return-object p1
.end method

.method static synthetic access$100(Lorg/webrtc/HardwareVideoDecoder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/HardwareVideoDecoder;

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/webrtc/HardwareVideoDecoder;->running:Z

    return v0
.end method

.method static synthetic access$200(Lorg/webrtc/HardwareVideoDecoder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/HardwareVideoDecoder;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoDecoder;->deliverDecodedFrame()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/HardwareVideoDecoder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/HardwareVideoDecoder;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoDecoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method static synthetic access$402(Lorg/webrtc/HardwareVideoDecoder;Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;)Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/HardwareVideoDecoder;
    .param p1, "x1"    # Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/webrtc/HardwareVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

    return-object p1
.end method

.method static synthetic access$500(Lorg/webrtc/HardwareVideoDecoder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/HardwareVideoDecoder;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private copyI420Buffer(Ljava/nio/ByteBuffer;IIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "outputBufferIndex"    # I
    .param p3, "stride"    # I
    .param p4, "sliceHeight"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 517
    div-int/lit8 v6, p3, 0x2

    .line 519
    .local v6, "uvStride":I
    const/4 v9, 0x0

    .line 520
    .local v9, "yPos":I
    mul-int v10, p3, p4

    add-int/lit8 v5, v10, 0x0

    .line 521
    .local v5, "uPos":I
    div-int/lit8 v10, p4, 0x2

    mul-int/2addr v10, v6

    add-int v4, v5, v10

    .line 522
    .local v4, "uEnd":I
    mul-int v10, v6, p4

    div-int/lit8 v10, v10, 0x2

    add-int v8, v5, v10

    .line 523
    .local v8, "vPos":I
    div-int/lit8 v10, p4, 0x2

    mul-int/2addr v10, v6

    add-int v7, v8, v10

    .line 525
    .local v7, "vEnd":I
    invoke-static/range {p5 .. p6}, Lorg/webrtc/I420BufferImpl;->allocate(II)Lorg/webrtc/I420BufferImpl;

    move-result-object v3

    .line 527
    .local v3, "frameBuffer":Lorg/webrtc/VideoFrame$I420Buffer;
    invoke-interface {v3}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 528
    .local v2, "dataY":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 529
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 530
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 531
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 532
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    invoke-interface {v3}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 535
    .local v0, "dataU":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 536
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 537
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 538
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 539
    rem-int/lit8 v10, p4, 0x2

    if-eqz v10, :cond_0

    .line 540
    sub-int v10, v4, v6

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 541
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 543
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 545
    invoke-interface {v3}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 546
    .local v1, "dataV":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 547
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 548
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 549
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 550
    rem-int/lit8 v10, p4, 0x2

    if-eqz v10, :cond_1

    .line 551
    sub-int v10, v7, v6

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 552
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 554
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 556
    iget-object v10, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, p2, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 558
    return-object v3
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lorg/webrtc/HardwareVideoDecoder$1;

    const-string v1, "HardwareVideoDecoder.outputThread"

    invoke-direct {v0, p0, v1}, Lorg/webrtc/HardwareVideoDecoder$1;-><init>(Lorg/webrtc/HardwareVideoDecoder;Ljava/lang/String;)V

    return-object v0
.end method

.method private deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 18
    .param p1, "result"    # I
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p3, "rotation"    # I
    .param p4, "decodeTimeMs"    # Ljava/lang/Integer;

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 454
    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Lorg/webrtc/HardwareVideoDecoder;->width:I

    .line 455
    .local v7, "width":I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/webrtc/HardwareVideoDecoder;->height:I

    .line 456
    .local v8, "height":I
    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/HardwareVideoDecoder;->stride:I

    .line 457
    .local v5, "stride":I
    move-object/from16 v0, p0

    iget v6, v0, Lorg/webrtc/HardwareVideoDecoder;->sliceHeight:I

    .line 458
    .local v6, "sliceHeight":I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    move-object/from16 v0, p2

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v4, v7, v8

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_0

    .line 463
    const-string v2, "HardwareVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Insufficient output buffer size: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v11, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_0
    return-void

    .line 458
    .end local v5    # "stride":I
    .end local v6    # "sliceHeight":I
    .end local v7    # "width":I
    .end local v8    # "height":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 467
    .restart local v5    # "stride":I
    .restart local v6    # "sliceHeight":I
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v4, v5, v8

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_1

    if-ne v6, v8, :cond_1

    if-le v5, v7, :cond_1

    .line 471
    move-object/from16 v0, p2

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v4, v8, 0x3

    div-int v5, v2, v4

    .line 474
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v3, v2, p1

    .line 475
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p2

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 476
    move-object/from16 v0, p2

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 477
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 480
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/HardwareVideoDecoder;->colorFormat:I

    const/16 v4, 0x13

    if-ne v2, v4, :cond_3

    .line 481
    rem-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    .line 482
    invoke-direct/range {v2 .. v8}, Lorg/webrtc/HardwareVideoDecoder;->wrapI420Buffer(Ljava/nio/ByteBuffer;IIIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v10

    .line 492
    .local v10, "frameBuffer":Lorg/webrtc/VideoFrame$Buffer;
    :goto_1
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v16, 0x3e8

    mul-long v12, v14, v16

    .line 493
    .local v12, "presentationTimeNs":J
    new-instance v9, Lorg/webrtc/VideoFrame;

    move/from16 v0, p3

    invoke-direct {v9, v10, v0, v12, v13}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    .line 496
    .local v9, "frame":Lorg/webrtc/VideoFrame;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/HardwareVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v2, v9, v0, v4}, Lorg/webrtc/VideoDecoder$Callback;->onDecodedFrame(Lorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 497
    invoke-virtual {v9}, Lorg/webrtc/VideoFrame;->release()V

    goto :goto_0

    .end local v9    # "frame":Lorg/webrtc/VideoFrame;
    .end local v10    # "frameBuffer":Lorg/webrtc/VideoFrame$Buffer;
    .end local v12    # "presentationTimeNs":J
    :cond_2
    move-object/from16 v2, p0

    move/from16 v4, p1

    .line 485
    invoke-direct/range {v2 .. v8}, Lorg/webrtc/HardwareVideoDecoder;->copyI420Buffer(Ljava/nio/ByteBuffer;IIIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v10

    .restart local v10    # "frameBuffer":Lorg/webrtc/VideoFrame$Buffer;
    goto :goto_1

    .end local v10    # "frameBuffer":Lorg/webrtc/VideoFrame$Buffer;
    :cond_3
    move-object/from16 v2, p0

    move/from16 v4, p1

    .line 489
    invoke-direct/range {v2 .. v8}, Lorg/webrtc/HardwareVideoDecoder;->wrapNV12Buffer(Ljava/nio/ByteBuffer;IIIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v10

    .restart local v10    # "frameBuffer":Lorg/webrtc/VideoFrame$Buffer;
    goto :goto_1
.end method

.method private deliverDecodedFrame()V
    .locals 10

    .prologue
    .line 379
    iget-object v6, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v6}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 381
    :try_start_0
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 386
    .local v3, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v6, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const-wide/32 v8, 0x186a0

    invoke-virtual {v6, v3, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 387
    .local v4, "result":I
    const/4 v6, -0x2

    if-ne v4, v6, :cond_0

    .line 388
    iget-object v6, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/webrtc/HardwareVideoDecoder;->reformat(Landroid/media/MediaFormat;)V

    .line 416
    .end local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v4    # "result":I
    :goto_0
    return-void

    .line 392
    .restart local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v4    # "result":I
    :cond_0
    if-gez v4, :cond_1

    .line 393
    const-string v6, "HardwareVideoDecoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dequeueOutputBuffer returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/webrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v6, "HardwareVideoDecoder"

    const-string v7, "deliverDecodedFrame failed"

    invoke-static {v6, v7, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 397
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v4    # "result":I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/webrtc/HardwareVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/HardwareVideoDecoder$FrameInfo;

    .line 398
    .local v2, "frameInfo":Lorg/webrtc/HardwareVideoDecoder$FrameInfo;
    const/4 v0, 0x0

    .line 399
    .local v0, "decodeTimeMs":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 400
    .local v5, "rotation":I
    if-eqz v2, :cond_2

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v2, Lorg/webrtc/HardwareVideoDecoder$FrameInfo;->decodeStartTimeMs:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 402
    iget v5, v2, Lorg/webrtc/HardwareVideoDecoder$FrameInfo;->rotation:I

    .line 405
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/webrtc/HardwareVideoDecoder;->hasDecodedFirstFrame:Z

    .line 407
    iget-object v6, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    if-eqz v6, :cond_3

    .line 408
    invoke-direct {p0, v4, v3, v5, v0}, Lorg/webrtc/HardwareVideoDecoder;->deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V

    goto :goto_0

    .line 410
    :cond_3
    invoke-direct {p0, v4, v3, v5, v0}, Lorg/webrtc/HardwareVideoDecoder;->deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p3, "rotation"    # I
    .param p4, "decodeTimeMs"    # Ljava/lang/Integer;

    .prologue
    .line 422
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget v2, p0, Lorg/webrtc/HardwareVideoDecoder;->width:I

    .line 424
    .local v2, "width":I
    iget v3, p0, Lorg/webrtc/HardwareVideoDecoder;->height:I

    .line 425
    .local v3, "height":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lorg/webrtc/HardwareVideoDecoder$2;

    move-object v1, p0

    move v4, p3

    move-object v5, p2

    move-object v6, p4

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/webrtc/HardwareVideoDecoder$2;-><init>(Lorg/webrtc/HardwareVideoDecoder;IIILandroid/media/MediaCodec$BufferInfo;Ljava/lang/Integer;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void

    .line 425
    .end local v2    # "width":I
    .end local v3    # "height":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initDecodeInternal(II)Lorg/webrtc/VideoCodecStatus;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 166
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 167
    const-string v2, "HardwareVideoDecoder"

    const-string v3, "initDecodeInternal"

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 169
    const-string v2, "HardwareVideoDecoder"

    const-string v3, "initDecodeInternal called while the codec is already running"

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    .line 206
    :goto_0
    return-object v2

    .line 175
    :cond_0
    iput p1, p0, Lorg/webrtc/HardwareVideoDecoder;->width:I

    .line 176
    iput p2, p0, Lorg/webrtc/HardwareVideoDecoder;->height:I

    .line 178
    iput p1, p0, Lorg/webrtc/HardwareVideoDecoder;->stride:I

    .line 179
    iput p2, p0, Lorg/webrtc/HardwareVideoDecoder;->sliceHeight:I

    .line 180
    iput-boolean v4, p0, Lorg/webrtc/HardwareVideoDecoder;->hasDecodedFirstFrame:Z

    .line 181
    iput-boolean v6, p0, Lorg/webrtc/HardwareVideoDecoder;->keyFrameRequired:Z

    .line 184
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->codecName:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 190
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->codecType:Lorg/webrtc/VideoCodecType;

    invoke-virtual {v2}, Lorg/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 191
    .local v1, "format":Landroid/media/MediaFormat;
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->sharedContext:Lorg/webrtc/EglBase$Context;

    if-nez v2, :cond_1

    .line 192
    const-string v2, "color-format"

    iget v3, p0, Lorg/webrtc/HardwareVideoDecoder;->colorFormat:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 194
    :cond_1
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->surface:Landroid/view/Surface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 195
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    iput-boolean v6, p0, Lorg/webrtc/HardwareVideoDecoder;->running:Z

    .line 202
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoDecoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 203
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 205
    const-string v2, "HardwareVideoDecoder"

    const-string v3, "initDecodeInternal done"

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 185
    .end local v1    # "format":Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "HardwareVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create media decoder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "HardwareVideoDecoder"

    const-string v3, "initDecode failed"

    invoke-static {v2, v3, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    invoke-virtual {p0}, Lorg/webrtc/HardwareVideoDecoder;->release()Lorg/webrtc/VideoCodecStatus;

    .line 199
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private isSupportedColorFormat(I)Z
    .locals 5
    .param p1, "colorFormat"    # I

    .prologue
    const/4 v1, 0x0

    .line 693
    sget-object v3, Lorg/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 694
    .local v0, "supported":I
    if-ne v0, p1, :cond_1

    .line 695
    const/4 v1, 0x1

    .line 698
    .end local v0    # "supported":I
    :cond_0
    return v1

    .line 693
    .restart local v0    # "supported":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private reformat(Landroid/media/MediaFormat;)V
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 600
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 601
    const-string v2, "HardwareVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoder format changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v2, "crop-left"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "crop-right"

    .line 605
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "crop-bottom"

    .line 606
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "crop-top"

    .line 607
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    const-string v2, "crop-right"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "crop-left"

    .line 609
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int v1, v2, v3

    .line 610
    .local v1, "newWidth":I
    const-string v2, "crop-bottom"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "crop-top"

    .line 611
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int v0, v2, v3

    .line 617
    .local v0, "newHeight":I
    :goto_0
    iget-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 618
    :try_start_0
    iget-boolean v2, p0, Lorg/webrtc/HardwareVideoDecoder;->hasDecodedFirstFrame:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/webrtc/HardwareVideoDecoder;->width:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lorg/webrtc/HardwareVideoDecoder;->height:I

    if-eq v2, v0, :cond_2

    .line 619
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected size change. Configured "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/HardwareVideoDecoder;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/HardwareVideoDecoder;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". New "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/webrtc/HardwareVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    .line 621
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :goto_1
    return-void

    .line 613
    .end local v0    # "newHeight":I
    .end local v1    # "newWidth":I
    :cond_1
    const-string v2, "width"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 614
    .restart local v1    # "newWidth":I
    const-string v2, "height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "newHeight":I
    goto :goto_0

    .line 623
    :cond_2
    :try_start_1
    iput v1, p0, Lorg/webrtc/HardwareVideoDecoder;->width:I

    .line 624
    iput v0, p0, Lorg/webrtc/HardwareVideoDecoder;->height:I

    .line 625
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    if-nez v2, :cond_3

    const-string v2, "color-format"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 630
    const-string v2, "color-format"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/HardwareVideoDecoder;->colorFormat:I

    .line 631
    const-string v2, "HardwareVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Color: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/HardwareVideoDecoder;->colorFormat:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget v2, p0, Lorg/webrtc/HardwareVideoDecoder;->colorFormat:I

    invoke-direct {p0, v2}, Lorg/webrtc/HardwareVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 633
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported color format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/HardwareVideoDecoder;->colorFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/webrtc/HardwareVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    goto :goto_1

    .line 625
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 639
    :cond_3
    iget-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 640
    :try_start_3
    const-string v2, "stride"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 641
    const-string v2, "stride"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/HardwareVideoDecoder;->stride:I

    .line 643
    :cond_4
    const-string v2, "slice-height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 644
    const-string v2, "slice-height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/HardwareVideoDecoder;->sliceHeight:I

    .line 646
    :cond_5
    const-string v2, "HardwareVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame stride and slice height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/HardwareVideoDecoder;->stride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/HardwareVideoDecoder;->sliceHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget v2, p0, Lorg/webrtc/HardwareVideoDecoder;->width:I

    iget v4, p0, Lorg/webrtc/HardwareVideoDecoder;->stride:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/webrtc/HardwareVideoDecoder;->stride:I

    .line 648
    iget v2, p0, Lorg/webrtc/HardwareVideoDecoder;->height:I

    iget v4, p0, Lorg/webrtc/HardwareVideoDecoder;->sliceHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/webrtc/HardwareVideoDecoder;->sliceHeight:I

    .line 649
    monitor-exit v3

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private reinitDecode(II)Lorg/webrtc/VideoCodecStatus;
    .locals 2
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 357
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 358
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoDecoder;->releaseInternal()Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 359
    .local v0, "status":Lorg/webrtc/VideoCodecStatus;
    sget-object v1, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    if-eq v0, v1, :cond_0

    .line 362
    .end local v0    # "status":Lorg/webrtc/VideoCodecStatus;
    :goto_0
    return-object v0

    .restart local v0    # "status":Lorg/webrtc/VideoCodecStatus;
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/webrtc/HardwareVideoDecoder;->initDecodeInternal(II)Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    goto :goto_0
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .prologue
    .line 653
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 654
    const-string v1, "HardwareVideoDecoder"

    const-string v2, "Releasing MediaCodec on output thread"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoDecoder;->waitOutputBuffersReleasedOnOutputThread()V

    .line 657
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 668
    :goto_1
    const-string v1, "HardwareVideoDecoder"

    const-string v2, "Release on output thread done"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HardwareVideoDecoder"

    const-string v2, "Media decoder stop failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 664
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "HardwareVideoDecoder"

    const-string v2, "Media decoder release failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    iput-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    goto :goto_1
.end method

.method private releaseInternal()Lorg/webrtc/VideoCodecStatus;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 330
    iget-boolean v0, p0, Lorg/webrtc/HardwareVideoDecoder;->running:Z

    if-nez v0, :cond_0

    .line 331
    const-string v0, "HardwareVideoDecoder"

    const-string v1, "release: Decoder is not running."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    .line 353
    :goto_0
    return-object v0

    .line 336
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/HardwareVideoDecoder;->running:Z

    .line 337
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    const-string v0, "HardwareVideoDecoder"

    const-string v1, "Media decoder release timeout"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->TIMEOUT:Lorg/webrtc/VideoCodecStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iput-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 351
    iput-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    goto :goto_0

    .line 342
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 345
    const-string v0, "HardwareVideoDecoder"

    const-string v1, "Media decoder release error"

    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 347
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    iput-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 351
    iput-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    goto :goto_0

    .line 350
    :cond_2
    iput-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 351
    iput-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 353
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    iput-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 351
    iput-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    throw v0
.end method

.method private stopOnOutputThread(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 687
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/HardwareVideoDecoder;->running:Z

    .line 689
    iput-object p1, p0, Lorg/webrtc/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 690
    return-void
.end method

.method private waitOutputBuffersReleasedOnOutputThread()V
    .locals 4

    .prologue
    .line 672
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 673
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 674
    :goto_0
    :try_start_0
    iget v1, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    if-lez v1, :cond_0

    .line 675
    const-string v1, "HardwareVideoDecoder"

    const-string v3, "Waiting for all frames to be released."

    invoke-static {v1, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "HardwareVideoDecoder"

    const-string v3, "Interrupted while waiting for output buffers to be released."

    invoke-static {v1, v3, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 680
    monitor-exit v2

    .line 684
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 683
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private wrapI420Buffer(Ljava/nio/ByteBuffer;IIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 17
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "outputBufferIndex"    # I
    .param p3, "stride"    # I
    .param p4, "sliceHeight"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 563
    div-int/lit8 v8, p3, 0x2

    .line 565
    .local v8, "uvStride":I
    const/16 v16, 0x0

    .line 566
    .local v16, "yPos":I
    mul-int v2, p3, p4

    add-int/lit8 v13, v2, 0x0

    .line 567
    .local v13, "uPos":I
    div-int/lit8 v2, p4, 0x2

    mul-int/2addr v2, v8

    add-int v12, v13, v2

    .line 568
    .local v12, "uEnd":I
    mul-int v2, v8, p4

    div-int/lit8 v2, v2, 0x2

    add-int v15, v13, v2

    .line 569
    .local v15, "vPos":I
    div-int/lit8 v2, p4, 0x2

    mul-int/2addr v2, v8

    add-int v14, v15, v2

    .line 571
    .local v14, "vEnd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 572
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    .line 573
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    new-instance v11, Lorg/webrtc/HardwareVideoDecoder$$Lambda$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v11, v0, v1}, Lorg/webrtc/HardwareVideoDecoder$$Lambda$1;-><init>(Lorg/webrtc/HardwareVideoDecoder;I)V

    .line 583
    .local v11, "releaseCallback":Ljava/lang/Runnable;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 584
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 585
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 587
    .local v5, "dataY":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 588
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 589
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 591
    .local v7, "dataU":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 592
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 593
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 595
    .local v9, "dataV":Ljava/nio/ByteBuffer;
    new-instance v2, Lorg/webrtc/I420BufferImpl;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v6, p3

    move v10, v8

    invoke-direct/range {v2 .. v11}, Lorg/webrtc/I420BufferImpl;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v2

    .line 573
    .end local v5    # "dataY":Ljava/nio/ByteBuffer;
    .end local v7    # "dataU":Ljava/nio/ByteBuffer;
    .end local v9    # "dataV":Ljava/nio/ByteBuffer;
    .end local v11    # "releaseCallback":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private wrapNV12Buffer(Ljava/nio/ByteBuffer;IIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "outputBufferIndex"    # I
    .param p3, "stride"    # I
    .param p4, "sliceHeight"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 502
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_0
    iget v0, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    .line 504
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    new-instance v0, Lorg/webrtc/NV12Buffer;

    new-instance v6, Lorg/webrtc/HardwareVideoDecoder$$Lambda$0;

    invoke-direct {v6, p0, p2}, Lorg/webrtc/HardwareVideoDecoder$$Lambda$0;-><init>(Lorg/webrtc/HardwareVideoDecoder;I)V

    move v1, p5

    move v2, p6

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/NV12Buffer;-><init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    return-object v0

    .line 504
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public decode(Lorg/webrtc/EncodedImage;Lorg/webrtc/VideoDecoder$DecodeInfo;)Lorg/webrtc/VideoCodecStatus;
    .locals 14
    .param p1, "frame"    # Lorg/webrtc/EncodedImage;
    .param p2, "info"    # Lorg/webrtc/VideoDecoder$DecodeInfo;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 212
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    if-nez v0, :cond_2

    .line 213
    :cond_0
    const-string v0, "HardwareVideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode uninitalized, codec: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", callback: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->UNINITIALIZED:Lorg/webrtc/VideoCodecStatus;

    .line 296
    :cond_1
    :goto_0
    return-object v10

    .line 217
    :cond_2
    iget-object v0, p1, Lorg/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 218
    const-string v0, "HardwareVideoDecoder"

    const-string v2, "decode() - no input data"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p1, Lorg/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 223
    .local v3, "size":I
    if-nez v3, :cond_4

    .line 224
    const-string v0, "HardwareVideoDecoder"

    const-string v2, "decode() - input buffer empty"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 230
    :cond_4
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    :try_start_0
    iget v11, p0, Lorg/webrtc/HardwareVideoDecoder;->width:I

    .line 232
    .local v11, "width":I
    iget v9, p0, Lorg/webrtc/HardwareVideoDecoder;->height:I

    .line 233
    .local v9, "height":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget v0, p1, Lorg/webrtc/EncodedImage;->encodedWidth:I

    iget v2, p1, Lorg/webrtc/EncodedImage;->encodedHeight:I

    mul-int/2addr v0, v2

    if-lez v0, :cond_6

    iget v0, p1, Lorg/webrtc/EncodedImage;->encodedWidth:I

    if-ne v0, v11, :cond_5

    iget v0, p1, Lorg/webrtc/EncodedImage;->encodedHeight:I

    if-eq v0, v9, :cond_6

    .line 238
    :cond_5
    iget v0, p1, Lorg/webrtc/EncodedImage;->encodedWidth:I

    iget v2, p1, Lorg/webrtc/EncodedImage;->encodedHeight:I

    invoke-direct {p0, v0, v2}, Lorg/webrtc/HardwareVideoDecoder;->reinitDecode(II)Lorg/webrtc/VideoCodecStatus;

    move-result-object v10

    .line 239
    .local v10, "status":Lorg/webrtc/VideoCodecStatus;
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    if-ne v10, v0, :cond_1

    .line 244
    .end local v10    # "status":Lorg/webrtc/VideoCodecStatus;
    :cond_6
    iget-boolean v0, p0, Lorg/webrtc/HardwareVideoDecoder;->keyFrameRequired:Z

    if-eqz v0, :cond_8

    .line 246
    iget-object v0, p1, Lorg/webrtc/EncodedImage;->frameType:Lorg/webrtc/EncodedImage$FrameType;

    sget-object v2, Lorg/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/EncodedImage$FrameType;

    if-eq v0, v2, :cond_7

    .line 247
    const-string v0, "HardwareVideoDecoder"

    const-string v2, "decode() - key frame required first"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 233
    .end local v9    # "height":I
    .end local v11    # "width":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 250
    .restart local v9    # "height":I
    .restart local v11    # "width":I
    :cond_7
    iget-boolean v0, p1, Lorg/webrtc/EncodedImage;->completeFrame:Z

    if-nez v0, :cond_8

    .line 251
    const-string v0, "HardwareVideoDecoder"

    const-string v2, "decode() - complete frame required first"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 258
    :cond_8
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const-wide/32 v4, 0x7a120

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 263
    .local v1, "index":I
    if-gez v1, :cond_9

    .line 266
    const-string v0, "HardwareVideoDecoder"

    const-string v2, "decode() - no HW buffers available; decoder falling behind"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 259
    .end local v1    # "index":I
    :catch_0
    move-exception v8

    .line 260
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string v0, "HardwareVideoDecoder"

    const-string v2, "dequeueInputBuffer failed"

    invoke-static {v0, v2, v8}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto/16 :goto_0

    .line 272
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "index":I
    :cond_9
    :try_start_3
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v7, v0, v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 278
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v3, :cond_a

    .line 279
    const-string v0, "HardwareVideoDecoder"

    const-string v2, "decode() - HW buffer too small"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto/16 :goto_0

    .line 273
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v8

    .line 274
    .restart local v8    # "e":Ljava/lang/IllegalStateException;
    const-string v0, "HardwareVideoDecoder"

    const-string v2, "getInputBuffers failed"

    invoke-static {v0, v2, v8}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto/16 :goto_0

    .line 282
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    :cond_a
    iget-object v0, p1, Lorg/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 284
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    new-instance v2, Lorg/webrtc/HardwareVideoDecoder$FrameInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p1, Lorg/webrtc/EncodedImage;->rotation:I

    invoke-direct {v2, v4, v5, v6}, Lorg/webrtc/HardwareVideoDecoder$FrameInfo;-><init>(JI)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 286
    :try_start_4
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v12, p1, Lorg/webrtc/EncodedImage;->captureTimeNs:J

    .line 287
    invoke-virtual {v4, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    const/4 v6, 0x0

    .line 286
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 293
    iget-boolean v0, p0, Lorg/webrtc/HardwareVideoDecoder;->keyFrameRequired:Z

    if-eqz v0, :cond_b

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/HardwareVideoDecoder;->keyFrameRequired:Z

    .line 296
    :cond_b
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    goto/16 :goto_0

    .line 288
    :catch_2
    move-exception v8

    .line 289
    .restart local v8    # "e":Ljava/lang/IllegalStateException;
    const-string v0, "HardwareVideoDecoder"

    const-string v2, "queueInputBuffer failed"

    invoke-static {v0, v2, v8}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->pollLast()Ljava/lang/Object;

    .line 291
    sget-object v10, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto/16 :goto_0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HardwareVideoDecoder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefersLateDecoding()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public initDecode(Lorg/webrtc/VideoDecoder$Settings;Lorg/webrtc/VideoDecoder$Callback;)Lorg/webrtc/VideoCodecStatus;
    .locals 2
    .param p1, "settings"    # Lorg/webrtc/VideoDecoder$Settings;
    .param p2, "callback"    # Lorg/webrtc/VideoDecoder$Callback;

    .prologue
    .line 153
    new-instance v0, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 155
    iput-object p2, p0, Lorg/webrtc/HardwareVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    .line 156
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->sharedContext:Lorg/webrtc/EglBase$Context;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "decoder-texture-thread"

    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->sharedContext:Lorg/webrtc/EglBase$Context;

    invoke-static {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 158
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lorg/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->surface:Landroid/view/Surface;

    .line 159
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0, p0}, Lorg/webrtc/SurfaceTextureHelper;->startListening(Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 161
    :cond_0
    iget v0, p1, Lorg/webrtc/VideoDecoder$Settings;->width:I

    iget v1, p1, Lorg/webrtc/VideoDecoder$Settings;->height:I

    invoke-direct {p0, v0, v1}, Lorg/webrtc/HardwareVideoDecoder;->initDecodeInternal(II)Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method final synthetic lambda$wrapI420Buffer$1$HardwareVideoDecoder(I)V
    .locals 2
    .param p1, "outputBufferIndex"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 577
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_0
    iget v0, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    .line 579
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 580
    monitor-exit v1

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic lambda$wrapNV12Buffer$0$HardwareVideoDecoder(I)V
    .locals 2
    .param p1, "outputBufferIndex"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 508
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    iget v0, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffers:I

    .line 510
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 511
    monitor-exit v1

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .locals 8
    .param p1, "oesTextureId"    # I
    .param p2, "transformMatrix"    # [F
    .param p3, "timestampNs"    # J

    .prologue
    .line 439
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    iget-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

    iget v3, v3, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->width:I

    iget-object v4, p0, Lorg/webrtc/HardwareVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

    iget v4, v4, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->height:I

    .line 441
    invoke-static {p2}, Lorg/webrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v5

    .line 439
    invoke-virtual {v2, v3, v4, v5}, Lorg/webrtc/SurfaceTextureHelper;->createTextureBuffer(IILandroid/graphics/Matrix;)Lorg/webrtc/VideoFrame$TextureBuffer;

    move-result-object v1

    .line 443
    .local v1, "oesBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    new-instance v0, Lorg/webrtc/VideoFrame;

    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

    iget v2, v2, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->rotation:I

    iget-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

    iget-wide v4, v3, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->presentationTimestampUs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    .line 445
    .local v0, "frame":Lorg/webrtc/VideoFrame;
    iget-object v2, p0, Lorg/webrtc/HardwareVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    iget-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

    iget-object v3, v3, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;->decodeTimeMs:Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lorg/webrtc/VideoDecoder$Callback;->onDecodedFrame(Lorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 446
    invoke-virtual {v0}, Lorg/webrtc/VideoFrame;->release()V

    .line 447
    return-void
.end method

.method public release()Lorg/webrtc/VideoCodecStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    const-string v1, "HardwareVideoDecoder"

    const-string v2, "release"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoDecoder;->releaseInternal()Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 316
    .local v0, "status":Lorg/webrtc/VideoCodecStatus;
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 318
    iput-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->surface:Landroid/view/Surface;

    .line 319
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lorg/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 320
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lorg/webrtc/SurfaceTextureHelper;->dispose()V

    .line 321
    iput-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 323
    :cond_0
    iput-object v3, p0, Lorg/webrtc/HardwareVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    .line 324
    iget-object v1, p0, Lorg/webrtc/HardwareVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 325
    return-object v0
.end method
