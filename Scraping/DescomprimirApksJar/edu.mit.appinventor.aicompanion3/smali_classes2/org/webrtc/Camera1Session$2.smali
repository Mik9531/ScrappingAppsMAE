.class Lorg/webrtc/Camera1Session$2;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/Camera1Session;->listenForTextureFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/Camera1Session;


# direct methods
.method constructor <init>(Lorg/webrtc/Camera1Session;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 248
    iput-object p1, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextureFrameAvailable(I[FJ)V
    .locals 15
    .param p1, "oesTextureId"    # I
    .param p2, "transformMatrix"    # [F
    .param p3, "timestampNs"    # J

    .prologue
    .line 252
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$200(Lorg/webrtc/Camera1Session;)V

    .line 254
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$300(Lorg/webrtc/Camera1Session;)Lorg/webrtc/Camera1Session$SessionState;

    move-result-object v3

    sget-object v4, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    if-eq v3, v4, :cond_0

    .line 255
    const-string v3, "Camera1Session"

    const-string v4, "Texture frame captured but camera is no longer running."

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$400(Lorg/webrtc/Camera1Session;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    .line 285
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$500(Lorg/webrtc/Camera1Session;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 262
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v6, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v6}, Lorg/webrtc/Camera1Session;->access$600(Lorg/webrtc/Camera1Session;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v13, v4

    .line 263
    .local v13, "startTimeMs":I
    invoke-static {}, Lorg/webrtc/Camera1Session;->access$700()Lorg/webrtc/Histogram;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 264
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/webrtc/Camera1Session;->access$502(Lorg/webrtc/Camera1Session;Z)Z

    .line 267
    .end local v13    # "startTimeMs":I
    :cond_1
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$800(Lorg/webrtc/Camera1Session;)I

    move-result v9

    .line 268
    .local v9, "rotation":I
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$900(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 272
    invoke-static {}, Lorg/webrtc/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v3

    .line 271
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p2

    .line 274
    :cond_2
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$1000(Lorg/webrtc/Camera1Session;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 275
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 276
    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$400(Lorg/webrtc/Camera1Session;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v4}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget v4, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v5, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v5}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v5

    iget v5, v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    .line 277
    invoke-static/range {p2 .. p2}, Lorg/webrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v6

    .line 276
    invoke-virtual {v3, v4, v5, v6}, Lorg/webrtc/SurfaceTextureHelper;->createTextureBuffer(IILandroid/graphics/Matrix;)Lorg/webrtc/VideoFrame$TextureBuffer;

    move-result-object v2

    .line 278
    .local v2, "buffer":Lorg/webrtc/VideoFrame$Buffer;
    new-instance v12, Lorg/webrtc/VideoFrame;

    move-wide/from16 v0, p3

    invoke-direct {v12, v2, v9, v0, v1}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    .line 279
    .local v12, "frame":Lorg/webrtc/VideoFrame;
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-interface {v3, v4, v12}, Lorg/webrtc/CameraSession$Events;->onFrameCaptured(Lorg/webrtc/CameraSession;Lorg/webrtc/VideoFrame;)V

    .line 280
    invoke-virtual {v12}, Lorg/webrtc/VideoFrame;->release()V

    goto :goto_0

    .line 282
    .end local v2    # "buffer":Lorg/webrtc/VideoFrame$Buffer;
    .end local v12    # "frame":Lorg/webrtc/VideoFrame;
    :cond_3
    iget-object v3, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v3}, Lorg/webrtc/Camera1Session;->access$100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    iget-object v5, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v5}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v5

    iget v5, v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v6, p0, Lorg/webrtc/Camera1Session$2;->this$0:Lorg/webrtc/Camera1Session;

    .line 283
    invoke-static {v6}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v6

    iget v6, v6, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v10, p3

    .line 282
    invoke-interface/range {v3 .. v11}, Lorg/webrtc/CameraSession$Events;->onTextureFrameCaptured(Lorg/webrtc/CameraSession;III[FIJ)V

    goto/16 :goto_0
.end method
