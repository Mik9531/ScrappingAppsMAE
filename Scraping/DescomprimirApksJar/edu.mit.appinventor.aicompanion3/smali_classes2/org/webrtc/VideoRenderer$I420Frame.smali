.class public Lorg/webrtc/VideoRenderer$I420Frame;
.super Ljava/lang/Object;
.source "VideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "I420Frame"
.end annotation


# instance fields
.field public final height:I

.field private nativeFramePointer:J

.field public rotationDegree:I

.field public final samplingMatrix:[F

.field public textureId:I

.field public final width:I

.field public final yuvFrame:Z

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public final yuvStrides:[I


# direct methods
.method public constructor <init>(IIII[FJ)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotationDegree"    # I
    .param p4, "textureId"    # I
    .param p5, "samplingMatrix"    # [F
    .param p6, "nativeFramePointer"    # J

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    .line 73
    iput p2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    .line 74
    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 75
    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 76
    iput-object p5, p0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 77
    iput p4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 79
    iput p3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    .line 80
    iput-wide p6, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 81
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation degree not multiple of 90: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method public constructor <init>(III[I[Ljava/nio/ByteBuffer;J)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotationDegree"    # I
    .param p4, "yuvStrides"    # [I
    .param p5, "yuvPlanes"    # [Ljava/nio/ByteBuffer;
    .param p6, "nativeFramePointer"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    .line 51
    iput p2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    .line 52
    iput-object p4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 53
    iput-object p5, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 55
    iput p3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    .line 56
    iput-wide p6, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 57
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation degree not multiple of 90: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-static {}, Lorg/webrtc/RendererCommon;->verticalFlipMatrix()[F

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 65
    return-void
.end method

.method public constructor <init>(ILorg/webrtc/VideoFrame$Buffer;J)V
    .locals 9
    .param p1, "rotationDegree"    # I
    .param p2, "buffer"    # Lorg/webrtc/VideoFrame$Buffer;
    .param p3, "nativeFramePointer"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-interface {p2}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    iput v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    .line 91
    invoke-interface {p2}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    iput v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    .line 92
    iput p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    .line 93
    rem-int/lit8 v2, p1, 0x5a

    if-eqz v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rotation degree not multiple of 90: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    instance-of v2, p2, Lorg/webrtc/VideoFrame$TextureBuffer;

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 97
    check-cast v1, Lorg/webrtc/VideoFrame$TextureBuffer;

    .line 98
    .local v1, "textureBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    iput-boolean v4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 99
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v2

    iput v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    .line 101
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 100
    invoke-static {v2}, Lorg/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 103
    iput-object v3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 104
    iput-object v3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 121
    .end local v1    # "textureBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    :goto_0
    iput-wide p3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 122
    return-void

    .line 106
    :cond_1
    invoke-interface {p2}, Lorg/webrtc/VideoFrame$Buffer;->toI420()Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object v0

    .line 107
    .local v0, "i420Buffer":Lorg/webrtc/VideoFrame$I420Buffer;
    invoke-interface {p2}, Lorg/webrtc/VideoFrame$Buffer;->release()V

    .line 108
    iput-boolean v5, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 109
    new-array v2, v7, [I

    .line 110
    invoke-interface {v0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v3

    aput v3, v2, v4

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    aput v3, v2, v5

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v3

    aput v3, v2, v6

    iput-object v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 111
    new-array v2, v7, [Ljava/nio/ByteBuffer;

    .line 112
    invoke-interface {v0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v6

    iput-object v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 117
    invoke-static {}, Lorg/webrtc/RendererCommon;->verticalFlipMatrix()[F

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 119
    iput v4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/webrtc/VideoRenderer$I420Frame;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/webrtc/VideoRenderer$I420Frame;J)J
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/VideoRenderer$I420Frame;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    return-wide p1
.end method


# virtual methods
.method final synthetic lambda$toVideoFrame$0$VideoRenderer$I420Frame()V
    .locals 0

    .prologue
    .line 145
    invoke-static {p0}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    return-void
.end method

.method final synthetic lambda$toVideoFrame$1$VideoRenderer$I420Frame()V
    .locals 0

    .prologue
    .line 150
    invoke-static {p0}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V

    return-void
.end method

.method public rotatedHeight()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    goto :goto_0
.end method

.method public rotatedWidth()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    iget-boolean v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", U: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", V: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "type":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method toVideoFrame()Lorg/webrtc/VideoFrame;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 142
    iget-boolean v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v1, :cond_0

    .line 143
    new-instance v0, Lorg/webrtc/I420BufferImpl;

    iget v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iget-object v3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v5

    iget-object v4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    aget v4, v4, v5

    iget-object v5, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v7

    iget-object v6, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    aget v6, v6, v7

    iget-object v7, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v9

    iget-object v8, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    aget v8, v8, v9

    new-instance v9, Lorg/webrtc/VideoRenderer$I420Frame$$Lambda$0;

    invoke-direct {v9, p0}, Lorg/webrtc/VideoRenderer$I420Frame$$Lambda$0;-><init>(Lorg/webrtc/VideoRenderer$I420Frame;)V

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/I420BufferImpl;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    .line 152
    .local v0, "buffer":Lorg/webrtc/VideoFrame$Buffer;
    :goto_0
    new-instance v1, Lorg/webrtc/VideoFrame;

    iget v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    const-wide/16 v4, 0x0

    invoke-direct {v1, v0, v2, v4, v5}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    return-object v1

    .line 148
    .end local v0    # "buffer":Lorg/webrtc/VideoFrame$Buffer;
    :cond_0
    new-instance v0, Lorg/webrtc/TextureBufferImpl;

    iget v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    sget-object v3, Lorg/webrtc/VideoFrame$TextureBuffer$Type;->OES:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    iget v4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    iget-object v5, p0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 149
    invoke-static {v5}, Lorg/webrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lorg/webrtc/VideoRenderer$I420Frame$$Lambda$1;

    invoke-direct {v7, p0}, Lorg/webrtc/VideoRenderer$I420Frame$$Lambda$1;-><init>(Lorg/webrtc/VideoRenderer$I420Frame;)V

    invoke-direct/range {v0 .. v7}, Lorg/webrtc/TextureBufferImpl;-><init>(IILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/Runnable;)V

    .restart local v0    # "buffer":Lorg/webrtc/VideoFrame$Buffer;
    goto :goto_0
.end method
