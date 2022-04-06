.class public Lorg/webrtc/VideoFrame;
.super Ljava/lang/Object;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/VideoFrame$TextureBuffer;,
        Lorg/webrtc/VideoFrame$I420Buffer;,
        Lorg/webrtc/VideoFrame$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/webrtc/VideoFrame$Buffer;

.field private final rotation:I

.field private final timestampNs:J


# direct methods
.method public constructor <init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V
    .locals 3
    .param p1, "buffer"    # Lorg/webrtc/VideoFrame$Buffer;
    .param p2, "rotation"    # I
    .param p3, "timestampNs"    # J

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    rem-int/lit8 v0, p2, 0x5a

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rotation must be a multiple of 90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    iput-object p1, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    .line 98
    iput p2, p0, Lorg/webrtc/VideoFrame;->rotation:I

    .line 99
    iput-wide p3, p0, Lorg/webrtc/VideoFrame;->timestampNs:J

    .line 100
    return-void
.end method

.method public static cropAndScaleI420(Lorg/webrtc/VideoFrame$I420Buffer;IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 24
    .param p0, "buffer"    # Lorg/webrtc/VideoFrame$I420Buffer;
    .param p1, "cropX"    # I
    .param p2, "cropY"    # I
    .param p3, "cropWidth"    # I
    .param p4, "cropHeight"    # I
    .param p5, "scaleWidth"    # I
    .param p6, "scaleHeight"    # I

    .prologue
    .line 147
    move/from16 v0, p3

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    move/from16 v0, p4

    move/from16 v1, p6

    if-ne v0, v1, :cond_0

    .line 149
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v22

    .line 150
    .local v22, "dataY":Ljava/nio/ByteBuffer;
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 151
    .local v20, "dataU":Ljava/nio/ByteBuffer;
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 153
    .local v21, "dataV":Ljava/nio/ByteBuffer;
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v2

    mul-int v2, v2, p2

    add-int v2, v2, p1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    div-int/lit8 v2, p1, 0x2

    div-int/lit8 v3, p2, 0x2

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    div-int/lit8 v2, p1, 0x2

    div-int/lit8 v3, p2, 0x2

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->retain()V

    .line 158
    new-instance v2, Lorg/webrtc/I420BufferImpl;

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v4

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 159
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v8

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 160
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v10

    new-instance v11, Lorg/webrtc/VideoFrame$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/webrtc/VideoFrame$1;-><init>(Lorg/webrtc/VideoFrame$I420Buffer;)V

    invoke-direct/range {v2 .. v11}, Lorg/webrtc/I420BufferImpl;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    .line 174
    .end local v20    # "dataU":Ljava/nio/ByteBuffer;
    .end local v21    # "dataV":Ljava/nio/ByteBuffer;
    .end local v22    # "dataY":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v2

    .line 168
    :cond_0
    invoke-static/range {p5 .. p6}, Lorg/webrtc/I420BufferImpl;->allocate(II)Lorg/webrtc/I420BufferImpl;

    move-result-object v23

    .line 169
    .local v23, "newBuffer":Lorg/webrtc/I420BufferImpl;
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 170
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v5

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v7

    .line 171
    invoke-virtual/range {v23 .. v23}, Lorg/webrtc/I420BufferImpl;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual/range {v23 .. v23}, Lorg/webrtc/I420BufferImpl;->getStrideY()I

    move-result v13

    invoke-virtual/range {v23 .. v23}, Lorg/webrtc/I420BufferImpl;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 172
    invoke-virtual/range {v23 .. v23}, Lorg/webrtc/I420BufferImpl;->getStrideU()I

    move-result v15

    invoke-virtual/range {v23 .. v23}, Lorg/webrtc/I420BufferImpl;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {v23 .. v23}, Lorg/webrtc/I420BufferImpl;->getStrideV()I

    move-result v17

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v18, p5

    move/from16 v19, p6

    .line 169
    invoke-static/range {v2 .. v19}, Lorg/webrtc/VideoFrame;->nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    move-object/from16 v2, v23

    .line 174
    goto :goto_0
.end method

.method private static native nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method


# virtual methods
.method public getBuffer()Lorg/webrtc/VideoFrame$Buffer;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    return-object v0
.end method

.method public getRotatedHeight()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/webrtc/VideoFrame;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getRotatedWidth()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/webrtc/VideoFrame;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/webrtc/VideoFrame;->rotation:I

    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/webrtc/VideoFrame;->timestampNs:J

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$Buffer;->release()V

    .line 143
    return-void
.end method

.method public retain()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$Buffer;->retain()V

    .line 139
    return-void
.end method
