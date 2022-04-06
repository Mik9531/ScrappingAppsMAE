.class Lorg/webrtc/I420BufferImpl;
.super Ljava/lang/Object;
.source "I420BufferImpl.java"

# interfaces
.implements Lorg/webrtc/VideoFrame$I420Buffer;


# instance fields
.field private final dataU:Ljava/nio/ByteBuffer;

.field private final dataV:Ljava/nio/ByteBuffer;

.field private final dataY:Ljava/nio/ByteBuffer;

.field private final height:I

.field private refCount:I

.field private final refCountLock:Ljava/lang/Object;

.field private final releaseCallback:Ljava/lang/Runnable;

.field private final strideU:I

.field private final strideV:I

.field private final strideY:I

.field private final width:I


# direct methods
.method constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dataY"    # Ljava/nio/ByteBuffer;
    .param p4, "strideY"    # I
    .param p5, "dataU"    # Ljava/nio/ByteBuffer;
    .param p6, "strideU"    # I
    .param p7, "dataV"    # Ljava/nio/ByteBuffer;
    .param p8, "strideV"    # I
    .param p9, "releaseCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/I420BufferImpl;->refCountLock:Ljava/lang/Object;

    .line 34
    iput p1, p0, Lorg/webrtc/I420BufferImpl;->width:I

    .line 35
    iput p2, p0, Lorg/webrtc/I420BufferImpl;->height:I

    .line 36
    iput-object p3, p0, Lorg/webrtc/I420BufferImpl;->dataY:Ljava/nio/ByteBuffer;

    .line 37
    iput-object p5, p0, Lorg/webrtc/I420BufferImpl;->dataU:Ljava/nio/ByteBuffer;

    .line 38
    iput-object p7, p0, Lorg/webrtc/I420BufferImpl;->dataV:Ljava/nio/ByteBuffer;

    .line 39
    iput p4, p0, Lorg/webrtc/I420BufferImpl;->strideY:I

    .line 40
    iput p6, p0, Lorg/webrtc/I420BufferImpl;->strideU:I

    .line 41
    iput p8, p0, Lorg/webrtc/I420BufferImpl;->strideV:I

    .line 42
    iput-object p9, p0, Lorg/webrtc/I420BufferImpl;->releaseCallback:Ljava/lang/Runnable;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lorg/webrtc/I420BufferImpl;->refCount:I

    .line 45
    return-void
.end method

.method static allocate(II)Lorg/webrtc/I420BufferImpl;
    .locals 15
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 49
    add-int/lit8 v0, p1, 0x1

    div-int/lit8 v11, v0, 0x2

    .line 50
    .local v11, "chromaHeight":I
    add-int/lit8 v0, p0, 0x1

    div-int/lit8 v6, v0, 0x2

    .line 51
    .local v6, "strideUV":I
    const/4 v14, 0x0

    .line 52
    .local v14, "yPos":I
    mul-int v0, p0, p1

    add-int v12, v14, v0

    .line 53
    .local v12, "uPos":I
    mul-int v0, v6, v11

    add-int v13, v12, v0

    .line 55
    .local v13, "vPos":I
    mul-int v0, p0, p1

    mul-int/lit8 v1, v6, 0x2

    mul-int/2addr v1, v11

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 57
    .local v10, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 61
    .local v3, "dataY":Ljava/nio/ByteBuffer;
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 63
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 65
    .local v5, "dataU":Ljava/nio/ByteBuffer;
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    mul-int v0, v6, v11

    add-int/2addr v0, v13

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 67
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 69
    .local v7, "dataV":Ljava/nio/ByteBuffer;
    new-instance v0, Lorg/webrtc/I420BufferImpl;

    const/4 v9, 0x0

    move v1, p0

    move/from16 v2, p1

    move v4, p0

    move v8, v6

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/I420BufferImpl;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 1
    .param p1, "cropX"    # I
    .param p2, "cropY"    # I
    .param p3, "cropWidth"    # I
    .param p4, "cropHeight"    # I
    .param p5, "scaleWidth"    # I
    .param p6, "scaleHeight"    # I

    .prologue
    .line 137
    invoke-static/range {p0 .. p6}, Lorg/webrtc/VideoFrame;->cropAndScaleI420(Lorg/webrtc/VideoFrame$I420Buffer;IIIIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/webrtc/I420BufferImpl;->dataU:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/webrtc/I420BufferImpl;->dataV:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/webrtc/I420BufferImpl;->dataY:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/webrtc/I420BufferImpl;->height:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/webrtc/I420BufferImpl;->strideU:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/webrtc/I420BufferImpl;->strideV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/webrtc/I420BufferImpl;->strideY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/webrtc/I420BufferImpl;->width:I

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lorg/webrtc/I420BufferImpl;->refCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget v0, p0, Lorg/webrtc/I420BufferImpl;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/I420BufferImpl;->refCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/I420BufferImpl;->releaseCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/webrtc/I420BufferImpl;->releaseCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_0
    monitor-exit v1

    .line 132
    return-void

    .line 131
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
    .line 120
    iget-object v1, p0, Lorg/webrtc/I420BufferImpl;->refCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget v0, p0, Lorg/webrtc/I420BufferImpl;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/I420BufferImpl;->refCount:I

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toI420()Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/webrtc/I420BufferImpl;->retain()V

    .line 115
    return-object p0
.end method
