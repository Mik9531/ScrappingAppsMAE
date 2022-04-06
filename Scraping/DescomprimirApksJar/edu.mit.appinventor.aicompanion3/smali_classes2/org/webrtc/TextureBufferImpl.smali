.class Lorg/webrtc/TextureBufferImpl;
.super Ljava/lang/Object;
.source "TextureBufferImpl.java"

# interfaces
.implements Lorg/webrtc/VideoFrame$TextureBuffer;


# instance fields
.field private final height:I

.field private final id:I

.field private refCount:I

.field private final refCountLock:Ljava/lang/Object;

.field private final releaseCallback:Ljava/lang/Runnable;

.field private final surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final type:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

.field private final width:I


# direct methods
.method public constructor <init>(IILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "type"    # Lorg/webrtc/VideoFrame$TextureBuffer$Type;
    .param p4, "id"    # I
    .param p5, "transformMatrix"    # Landroid/graphics/Matrix;
    .param p6, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p7, "releaseCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/TextureBufferImpl;->refCountLock:Ljava/lang/Object;

    .line 33
    iput p1, p0, Lorg/webrtc/TextureBufferImpl;->width:I

    .line 34
    iput p2, p0, Lorg/webrtc/TextureBufferImpl;->height:I

    .line 35
    iput-object p3, p0, Lorg/webrtc/TextureBufferImpl;->type:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    .line 36
    iput p4, p0, Lorg/webrtc/TextureBufferImpl;->id:I

    .line 37
    iput-object p5, p0, Lorg/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 38
    iput-object p6, p0, Lorg/webrtc/TextureBufferImpl;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 39
    iput-object p7, p0, Lorg/webrtc/TextureBufferImpl;->releaseCallback:Ljava/lang/Runnable;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lorg/webrtc/TextureBufferImpl;->refCount:I

    .line 41
    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 8
    .param p1, "cropX"    # I
    .param p2, "cropY"    # I
    .param p3, "cropWidth"    # I
    .param p4, "cropHeight"    # I
    .param p5, "scaleWidth"    # I
    .param p6, "scaleHeight"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/webrtc/TextureBufferImpl;->retain()V

    .line 124
    new-instance v5, Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v5, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 125
    .local v5, "newMatrix":Landroid/graphics/Matrix;
    int-to-float v0, p3

    iget v1, p0, Lorg/webrtc/TextureBufferImpl;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p4

    iget v2, p0, Lorg/webrtc/TextureBufferImpl;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 126
    int-to-float v0, p1

    iget v1, p0, Lorg/webrtc/TextureBufferImpl;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lorg/webrtc/TextureBufferImpl;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 128
    new-instance v0, Lorg/webrtc/TextureBufferImpl;

    iget-object v3, p0, Lorg/webrtc/TextureBufferImpl;->type:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    iget v4, p0, Lorg/webrtc/TextureBufferImpl;->id:I

    iget-object v6, p0, Lorg/webrtc/TextureBufferImpl;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    new-instance v7, Lorg/webrtc/TextureBufferImpl$1;

    invoke-direct {v7, p0}, Lorg/webrtc/TextureBufferImpl$1;-><init>(Lorg/webrtc/TextureBufferImpl;)V

    move v1, p5

    move v2, p6

    invoke-direct/range {v0 .. v7}, Lorg/webrtc/TextureBufferImpl;-><init>(IILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/webrtc/TextureBufferImpl;->height:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/webrtc/TextureBufferImpl;->id:I

    return v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getType()Lorg/webrtc/VideoFrame$TextureBuffer$Type;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl;->type:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/webrtc/TextureBufferImpl;->width:I

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lorg/webrtc/TextureBufferImpl;->refCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget v0, p0, Lorg/webrtc/TextureBufferImpl;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/TextureBufferImpl;->refCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl;->releaseCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl;->releaseCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 117
    :cond_0
    monitor-exit v1

    .line 118
    return-void

    .line 117
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
    .line 106
    iget-object v1, p0, Lorg/webrtc/TextureBufferImpl;->refCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget v0, p0, Lorg/webrtc/TextureBufferImpl;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/TextureBufferImpl;->refCount:I

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toI420()Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 21

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget v1, v0, Lorg/webrtc/TextureBufferImpl;->width:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v5, v1, 0x8

    .line 73
    .local v5, "stride":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/webrtc/TextureBufferImpl;->height:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v18, v1, 0x2

    .line 78
    .local v18, "uvHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/webrtc/TextureBufferImpl;->height:I

    add-int v1, v1, v18

    add-int/lit8 v1, v1, 0x1

    mul-int v16, v5, v1

    .line 79
    .local v16, "size":I
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 80
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/TextureBufferImpl;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/TextureBufferImpl;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/TextureBufferImpl;->height:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/webrtc/TextureBufferImpl;->id:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 81
    invoke-static {v7}, Lorg/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v7

    .line 80
    invoke-virtual/range {v1 .. v7}, Lorg/webrtc/SurfaceTextureHelper;->textureToYUV(Ljava/nio/ByteBuffer;IIII[F)V

    .line 83
    const/16 v20, 0x0

    .line 84
    .local v20, "yPos":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/webrtc/TextureBufferImpl;->height:I

    mul-int/2addr v1, v5

    add-int v17, v20, v1

    .line 86
    .local v17, "uPos":I
    div-int/lit8 v1, v5, 0x2

    add-int v19, v17, v1

    .line 88
    .local v19, "vPos":I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    move-object/from16 v0, p0

    iget v1, v0, Lorg/webrtc/TextureBufferImpl;->height:I

    mul-int/2addr v1, v5

    add-int v1, v1, v20

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 90
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 92
    .local v9, "dataY":Ljava/nio/ByteBuffer;
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    mul-int v1, v5, v18

    add-int v1, v1, v17

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 94
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 96
    .local v11, "dataU":Ljava/nio/ByteBuffer;
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    mul-int v1, v5, v18

    add-int v1, v1, v19

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 98
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 101
    .local v13, "dataV":Ljava/nio/ByteBuffer;
    new-instance v6, Lorg/webrtc/I420BufferImpl;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/webrtc/TextureBufferImpl;->width:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/webrtc/TextureBufferImpl;->height:I

    const/4 v15, 0x0

    move v10, v5

    move v12, v5

    move v14, v5

    invoke-direct/range {v6 .. v15}, Lorg/webrtc/I420BufferImpl;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v6
.end method
