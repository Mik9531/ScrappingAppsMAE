.class public Lorg/webrtc/NV21Buffer;
.super Ljava/lang/Object;
.source "NV21Buffer.java"

# interfaces
.implements Lorg/webrtc/VideoFrame$Buffer;


# instance fields
.field private final data:[B

.field private final height:I

.field private refCount:I

.field private final refCountLock:Ljava/lang/Object;

.field private final releaseCallback:Ljava/lang/Runnable;

.field private final width:I


# direct methods
.method public constructor <init>([BIILjava/lang/Runnable;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "releaseCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NV21Buffer;->refCountLock:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lorg/webrtc/NV21Buffer;->refCount:I

    .line 25
    iput-object p1, p0, Lorg/webrtc/NV21Buffer;->data:[B

    .line 26
    iput p2, p0, Lorg/webrtc/NV21Buffer;->width:I

    .line 27
    iput p3, p0, Lorg/webrtc/NV21Buffer;->height:I

    .line 28
    iput-object p4, p0, Lorg/webrtc/NV21Buffer;->releaseCallback:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method private static native nativeCropAndScale(IIIIII[BIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 17
    .param p1, "cropX"    # I
    .param p2, "cropY"    # I
    .param p3, "cropWidth"    # I
    .param p4, "cropHeight"    # I
    .param p5, "scaleWidth"    # I
    .param p6, "scaleHeight"    # I

    .prologue
    .line 67
    invoke-static/range {p5 .. p6}, Lorg/webrtc/I420BufferImpl;->allocate(II)Lorg/webrtc/I420BufferImpl;

    move-result-object v16

    .line 68
    .local v16, "newBuffer":Lorg/webrtc/I420BufferImpl;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/webrtc/NV21Buffer;->data:[B

    move-object/from16 v0, p0

    iget v8, v0, Lorg/webrtc/NV21Buffer;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/webrtc/NV21Buffer;->height:I

    .line 69
    invoke-virtual/range {v16 .. v16}, Lorg/webrtc/I420BufferImpl;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lorg/webrtc/I420BufferImpl;->getStrideY()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Lorg/webrtc/I420BufferImpl;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 70
    invoke-virtual/range {v16 .. v16}, Lorg/webrtc/I420BufferImpl;->getStrideU()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lorg/webrtc/I420BufferImpl;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v16 .. v16}, Lorg/webrtc/I420BufferImpl;->getStrideV()I

    move-result v15

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 68
    invoke-static/range {v1 .. v15}, Lorg/webrtc/NV21Buffer;->nativeCropAndScale(IIIIII[BIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    .line 71
    return-object v16
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/webrtc/NV21Buffer;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/webrtc/NV21Buffer;->width:I

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lorg/webrtc/NV21Buffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget v0, p0, Lorg/webrtc/NV21Buffer;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/NV21Buffer;->refCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/NV21Buffer;->releaseCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/webrtc/NV21Buffer;->releaseCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    :cond_0
    monitor-exit v1

    .line 62
    return-void

    .line 61
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
    .line 50
    iget-object v1, p0, Lorg/webrtc/NV21Buffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget v0, p0, Lorg/webrtc/NV21Buffer;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/NV21Buffer;->refCount:I

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
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

    .line 44
    iget v3, p0, Lorg/webrtc/NV21Buffer;->width:I

    iget v4, p0, Lorg/webrtc/NV21Buffer;->height:I

    iget v5, p0, Lorg/webrtc/NV21Buffer;->width:I

    iget v6, p0, Lorg/webrtc/NV21Buffer;->height:I

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lorg/webrtc/NV21Buffer;->cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoFrame$I420Buffer;

    return-object v0
.end method
