.class public Lorg/webrtc/NV12Buffer;
.super Ljava/lang/Object;
.source "NV12Buffer.java"

# interfaces
.implements Lorg/webrtc/VideoFrame$Buffer;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final height:I

.field private refCount:I

.field private final refCountLock:Ljava/lang/Object;

.field private final releaseCallback:Ljava/lang/Runnable;

.field private final sliceHeight:I

.field private final stride:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I
    .param p4, "sliceHeight"    # I
    .param p5, "buffer"    # Ljava/nio/ByteBuffer;
    .param p6, "releaseCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NV12Buffer;->refCountLock:Ljava/lang/Object;

    .line 28
    iput p1, p0, Lorg/webrtc/NV12Buffer;->width:I

    .line 29
    iput p2, p0, Lorg/webrtc/NV12Buffer;->height:I

    .line 30
    iput p3, p0, Lorg/webrtc/NV12Buffer;->stride:I

    .line 31
    iput p4, p0, Lorg/webrtc/NV12Buffer;->sliceHeight:I

    .line 32
    iput-object p5, p0, Lorg/webrtc/NV12Buffer;->buffer:Ljava/nio/ByteBuffer;

    .line 33
    iput-object p6, p0, Lorg/webrtc/NV12Buffer;->releaseCallback:Ljava/lang/Runnable;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lorg/webrtc/NV12Buffer;->refCount:I

    .line 36
    return-void
.end method

.method private static native nativeCropAndScale(IIIIIILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 19
    .param p1, "cropX"    # I
    .param p2, "cropY"    # I
    .param p3, "cropWidth"    # I
    .param p4, "cropHeight"    # I
    .param p5, "scaleWidth"    # I
    .param p6, "scaleHeight"    # I

    .prologue
    .line 72
    invoke-static/range {p5 .. p6}, Lorg/webrtc/I420BufferImpl;->allocate(II)Lorg/webrtc/I420BufferImpl;

    move-result-object v18

    .line 73
    .local v18, "newBuffer":Lorg/webrtc/I420BufferImpl;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/webrtc/NV12Buffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/webrtc/NV12Buffer;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/webrtc/NV12Buffer;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/webrtc/NV12Buffer;->stride:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/webrtc/NV12Buffer;->sliceHeight:I

    .line 74
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/I420BufferImpl;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/I420BufferImpl;->getStrideY()I

    move-result v13

    .line 75
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/I420BufferImpl;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/I420BufferImpl;->getStrideU()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/I420BufferImpl;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/I420BufferImpl;->getStrideV()I

    move-result v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 73
    invoke-static/range {v1 .. v17}, Lorg/webrtc/NV12Buffer;->nativeCropAndScale(IIIIIILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    .line 76
    return-object v18
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/webrtc/NV12Buffer;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/webrtc/NV12Buffer;->width:I

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lorg/webrtc/NV12Buffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget v0, p0, Lorg/webrtc/NV12Buffer;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/NV12Buffer;->refCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/NV12Buffer;->releaseCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/webrtc/NV12Buffer;->releaseCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 66
    :cond_0
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retain()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lorg/webrtc/NV12Buffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget v0, p0, Lorg/webrtc/NV12Buffer;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/NV12Buffer;->refCount:I

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toI420()Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 50
    iget v3, p0, Lorg/webrtc/NV12Buffer;->width:I

    iget v4, p0, Lorg/webrtc/NV12Buffer;->height:I

    iget v5, p0, Lorg/webrtc/NV12Buffer;->width:I

    iget v6, p0, Lorg/webrtc/NV12Buffer;->height:I

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lorg/webrtc/NV12Buffer;->cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoFrame$I420Buffer;

    return-object v0
.end method
