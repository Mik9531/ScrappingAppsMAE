.class Lorg/webrtc/Camera1Session$3;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/Camera1Session;->listenForBytebufferFrames()V
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
    .line 290
    iput-object p1, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$null$0$Camera1Session$3([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 317
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$300(Lorg/webrtc/Camera1Session;)Lorg/webrtc/Camera1Session$SessionState;

    move-result-object v0

    sget-object v1, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1200(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 320
    :cond_0
    return-void
.end method

.method final synthetic lambda$onPreviewFrame$1$Camera1Session$3([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 316
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1300(Lorg/webrtc/Camera1Session;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/webrtc/Camera1Session$3$$Lambda$1;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/Camera1Session$3$$Lambda$1;-><init>(Lorg/webrtc/Camera1Session$3;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "callbackCamera"    # Landroid/hardware/Camera;

    .prologue
    .line 293
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$200(Lorg/webrtc/Camera1Session;)V

    .line 295
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1200(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 296
    const-string v0, "Camera1Session"

    const-string v1, "Callback from a different camera. This should never happen."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$300(Lorg/webrtc/Camera1Session;)Lorg/webrtc/Camera1Session$SessionState;

    move-result-object v0

    sget-object v1, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    if-eq v0, v1, :cond_1

    .line 301
    const-string v0, "Camera1Session"

    const-string v1, "Bytebuffer frame captured but camera is no longer running."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 307
    .local v6, "captureTimeNs":J
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$500(Lorg/webrtc/Camera1Session;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 309
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v1, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/Camera1Session;->access$600(Lorg/webrtc/Camera1Session;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v10, v0

    .line 310
    .local v10, "startTimeMs":I
    invoke-static {}, Lorg/webrtc/Camera1Session;->access$700()Lorg/webrtc/Histogram;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 311
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/webrtc/Camera1Session;->access$502(Lorg/webrtc/Camera1Session;Z)Z

    .line 314
    .end local v10    # "startTimeMs":I
    :cond_2
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1000(Lorg/webrtc/Camera1Session;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    new-instance v9, Lorg/webrtc/NV21Buffer;

    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v0

    iget v0, v0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v1, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    .line 316
    invoke-static {v1}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v1

    iget v1, v1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    new-instance v2, Lorg/webrtc/Camera1Session$3$$Lambda$0;

    invoke-direct {v2, p0, p1}, Lorg/webrtc/Camera1Session$3$$Lambda$0;-><init>(Lorg/webrtc/Camera1Session$3;[B)V

    invoke-direct {v9, p1, v0, v1, v2}, Lorg/webrtc/NV21Buffer;-><init>([BIILjava/lang/Runnable;)V

    .line 321
    .local v9, "frameBuffer":Lorg/webrtc/VideoFrame$Buffer;
    new-instance v8, Lorg/webrtc/VideoFrame;

    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    .line 322
    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$800(Lorg/webrtc/Camera1Session;)I

    move-result v0

    invoke-direct {v8, v9, v0, v6, v7}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    .line 323
    .local v8, "frame":Lorg/webrtc/VideoFrame;
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-interface {v0, v1, v8}, Lorg/webrtc/CameraSession$Events;->onFrameCaptured(Lorg/webrtc/CameraSession;Lorg/webrtc/VideoFrame;)V

    .line 324
    invoke-virtual {v8}, Lorg/webrtc/VideoFrame;->release()V

    goto :goto_0

    .line 326
    .end local v8    # "frame":Lorg/webrtc/VideoFrame;
    .end local v9    # "frameBuffer":Lorg/webrtc/VideoFrame$Buffer;
    :cond_3
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    iget-object v2, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v2}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v3, v2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v2, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    .line 327
    invoke-static {v2}, Lorg/webrtc/Camera1Session;->access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v4, v2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    iget-object v2, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v2}, Lorg/webrtc/Camera1Session;->access$800(Lorg/webrtc/Camera1Session;)I

    move-result v5

    move-object v2, p1

    .line 326
    invoke-interface/range {v0 .. v7}, Lorg/webrtc/CameraSession$Events;->onByteBufferFrameCaptured(Lorg/webrtc/CameraSession;[BIIIJ)V

    .line 328
    iget-object v0, p0, Lorg/webrtc/Camera1Session$3;->this$0:Lorg/webrtc/Camera1Session;

    invoke-static {v0}, Lorg/webrtc/Camera1Session;->access$1200(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0
.end method
