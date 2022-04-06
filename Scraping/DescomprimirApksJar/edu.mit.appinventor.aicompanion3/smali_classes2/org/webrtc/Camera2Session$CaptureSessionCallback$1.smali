.class Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;
.super Ljava/lang/Object;
.source "Camera2Session.java"

# interfaces
.implements Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/Camera2Session$CaptureSessionCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;


# direct methods
.method constructor <init>(Lorg/webrtc/Camera2Session$CaptureSessionCallback;)V
    .locals 0
    .param p1, "this$1"    # Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    .prologue
    .line 200
    iput-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

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
    .line 204
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$000(Lorg/webrtc/Camera2Session;)V

    .line 206
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$200(Lorg/webrtc/Camera2Session;)Lorg/webrtc/Camera2Session$SessionState;

    move-result-object v3

    sget-object v4, Lorg/webrtc/Camera2Session$SessionState;->RUNNING:Lorg/webrtc/Camera2Session$SessionState;

    if-eq v3, v4, :cond_0

    .line 207
    const-string v3, "Camera2Session"

    const-string v4, "Texture frame captured but camera is no longer running."

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    .line 242
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$1600(Lorg/webrtc/Camera2Session;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/webrtc/Camera2Session;->access$1602(Lorg/webrtc/Camera2Session;Z)Z

    .line 214
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 215
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v6, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v6, v6, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v6}, Lorg/webrtc/Camera2Session;->access$1700(Lorg/webrtc/Camera2Session;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v13, v4

    .line 216
    .local v13, "startTimeMs":I
    invoke-static {}, Lorg/webrtc/Camera2Session;->access$1800()Lorg/webrtc/Histogram;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 219
    .end local v13    # "startTimeMs":I
    :cond_1
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$1900(Lorg/webrtc/Camera2Session;)I

    move-result v9

    .line 220
    .local v9, "rotation":I
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$2000(Lorg/webrtc/Camera2Session;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    invoke-static {}, Lorg/webrtc/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v3

    .line 223
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p2

    .line 228
    :cond_2
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 229
    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$2100(Lorg/webrtc/Camera2Session;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/webrtc/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object p2

    .line 231
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$2200(Lorg/webrtc/Camera2Session;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v4, v4, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 233
    invoke-static {v4}, Lorg/webrtc/Camera2Session;->access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget v4, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v5, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v5, v5, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v5}, Lorg/webrtc/Camera2Session;->access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v5

    iget v5, v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    .line 234
    invoke-static/range {p2 .. p2}, Lorg/webrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v6

    .line 232
    invoke-virtual {v3, v4, v5, v6}, Lorg/webrtc/SurfaceTextureHelper;->createTextureBuffer(IILandroid/graphics/Matrix;)Lorg/webrtc/VideoFrame$TextureBuffer;

    move-result-object v2

    .line 235
    .local v2, "buffer":Lorg/webrtc/VideoFrame$Buffer;
    new-instance v12, Lorg/webrtc/VideoFrame;

    move-wide/from16 v0, p3

    invoke-direct {v12, v2, v9, v0, v1}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    .line 236
    .local v12, "frame":Lorg/webrtc/VideoFrame;
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$500(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v4, v4, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-interface {v3, v4, v12}, Lorg/webrtc/CameraSession$Events;->onFrameCaptured(Lorg/webrtc/CameraSession;Lorg/webrtc/VideoFrame;)V

    .line 237
    invoke-virtual {v12}, Lorg/webrtc/VideoFrame;->release()V

    goto/16 :goto_0

    .line 239
    .end local v2    # "buffer":Lorg/webrtc/VideoFrame$Buffer;
    .end local v12    # "frame":Lorg/webrtc/VideoFrame;
    :cond_3
    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v3, v3, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$500(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v4, v4, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    iget-object v5, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v5, v5, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v5}, Lorg/webrtc/Camera2Session;->access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v5

    iget v5, v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v6, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$1;->this$1:Lorg/webrtc/Camera2Session$CaptureSessionCallback;

    iget-object v6, v6, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 240
    invoke-static {v6}, Lorg/webrtc/Camera2Session;->access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v6

    iget v6, v6, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v10, p3

    .line 239
    invoke-interface/range {v3 .. v11}, Lorg/webrtc/CameraSession$Events;->onTextureFrameCaptured(Lorg/webrtc/CameraSession;III[FIJ)V

    goto/16 :goto_0
.end method
