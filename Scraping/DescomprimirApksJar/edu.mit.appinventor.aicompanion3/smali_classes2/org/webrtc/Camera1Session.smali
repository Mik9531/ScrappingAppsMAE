.class Lorg/webrtc/Camera1Session;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Lorg/webrtc/CameraSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/Camera1Session$SessionState;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Camera1Session"

.field private static final camera1ResolutionHistogram:Lorg/webrtc/Histogram;

.field private static final camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

.field private static final camera1StopTimeMsHistogram:Lorg/webrtc/Histogram;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final camera:Landroid/hardware/Camera;

.field private final cameraId:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private final captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

.field private final captureToTexture:Z

.field private final constructionTimeNs:J

.field private final events:Lorg/webrtc/CameraSession$Events;

.field private firstFrameReported:Z

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private state:Lorg/webrtc/Camera1Session$SessionState;

.field private final surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private final videoFrameEmitTrialEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    const/16 v2, 0x32

    const/4 v1, 0x1

    .line 30
    const-string v0, "WebRTC.Android.Camera1.StartTimeMs"

    .line 31
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 32
    const-string v0, "WebRTC.Android.Camera1.StopTimeMs"

    .line 33
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera1Session;->camera1StopTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 34
    const-string v0, "WebRTC.Android.Camera1.Resolution"

    sget-object v1, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 34
    invoke-static {v0, v1}, Lorg/webrtc/Histogram;->createEnumeration(Ljava/lang/String;I)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera1Session;->camera1ResolutionHistogram:Lorg/webrtc/Histogram;

    return-void
.end method

.method private constructor <init>(Lorg/webrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;Landroid/media/MediaRecorder;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;J)V
    .locals 4
    .param p1, "events"    # Lorg/webrtc/CameraSession$Events;
    .param p2, "captureToTexture"    # Z
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p5, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p6, "cameraId"    # I
    .param p7, "camera"    # Landroid/hardware/Camera;
    .param p8, "info"    # Landroid/hardware/Camera$CameraInfo;
    .param p9, "captureFormat"    # Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .param p10, "constructionTimeNs"    # J

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    .line 154
    const-string v0, "Camera1Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create new camera1 session on camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "VideoFrameEmit"

    .line 156
    invoke-static {v0}, Lorg/webrtc/PeerConnectionFactory;->fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/Camera1Session;->videoFrameEmitTrialEnabled:Z

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 160
    iput-object p1, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    .line 161
    iput-boolean p2, p0, Lorg/webrtc/Camera1Session;->captureToTexture:Z

    .line 162
    iput-object p3, p0, Lorg/webrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    .line 163
    iput-object p4, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 164
    iput p6, p0, Lorg/webrtc/Camera1Session;->cameraId:I

    .line 165
    iput-object p7, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 166
    iput-object p8, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 167
    iput-object p9, p0, Lorg/webrtc/Camera1Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 168
    iput-wide p10, p0, Lorg/webrtc/Camera1Session;->constructionTimeNs:J

    .line 170
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->startCapturing()V

    .line 172
    if-eqz p5, :cond_0

    .line 173
    invoke-virtual {p7}, Landroid/hardware/Camera;->unlock()V

    .line 174
    invoke-virtual {p5, p7}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/Camera1Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->stopInternal()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/Camera1Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/webrtc/Camera1Session;->videoFrameEmitTrialEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/webrtc/Camera1Session;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lorg/webrtc/Camera1Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/Camera1Session;)Lorg/webrtc/Camera1Session$SessionState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/Camera1Session;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/Camera1Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    return v0
.end method

.method static synthetic access$502(Lorg/webrtc/Camera1Session;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    return p1
.end method

.method static synthetic access$600(Lorg/webrtc/Camera1Session;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/webrtc/Camera1Session;->constructionTimeNs:J

    return-wide v0
.end method

.method static synthetic access$700()Lorg/webrtc/Histogram;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

    return-object v0
.end method

.method static synthetic access$800(Lorg/webrtc/Camera1Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->getFrameOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera1Session;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    return-void
.end method

.method public static create(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;Landroid/media/MediaRecorder;IIII)V
    .locals 22
    .param p0, "callback"    # Lorg/webrtc/CameraSession$CreateSessionCallback;
    .param p1, "events"    # Lorg/webrtc/CameraSession$Events;
    .param p2, "captureToTexture"    # Z
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p5, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p6, "cameraId"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "framerate"    # I

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 61
    .local v14, "constructionTimeNs":J
    const-string v4, "Camera1Session"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface/range {p1 .. p1}, Lorg/webrtc/CameraSession$Events;->onCameraOpening()V

    .line 66
    :try_start_0
    invoke-static/range {p6 .. p6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 73
    .local v11, "camera":Landroid/hardware/Camera;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    new-instance v12, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v12}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 81
    .local v12, "info":Landroid/hardware/Camera$CameraInfo;
    move/from16 v0, p6

    invoke-static {v0, v12}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 83
    invoke-virtual {v11}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v20

    .line 85
    .local v20, "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, v20

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/Camera1Session;->findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v13

    .line 86
    .local v13, "captureFormat":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    move-object/from16 v0, v20

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-static {v0, v1, v2}, Lorg/webrtc/Camera1Session;->findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/webrtc/Size;

    move-result-object v21

    .line 88
    .local v21, "pictureSize":Lorg/webrtc/Size;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-static {v11, v0, v13, v1, v2}, Lorg/webrtc/Camera1Session;->updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;Lorg/webrtc/Size;Z)V

    .line 90
    if-nez p2, :cond_0

    .line 91
    invoke-virtual {v13}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->frameSize()I

    move-result v18

    .line 92
    .local v18, "frameSize":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    const/4 v4, 0x3

    move/from16 v0, v19

    if-ge v0, v4, :cond_0

    .line 93
    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 94
    .local v16, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 92
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 67
    .end local v11    # "camera":Landroid/hardware/Camera;
    .end local v12    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v13    # "captureFormat":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .end local v16    # "buffer":Ljava/nio/ByteBuffer;
    .end local v18    # "frameSize":I
    .end local v19    # "i":I
    .end local v20    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v21    # "pictureSize":Lorg/webrtc/Size;
    :catch_0
    move-exception v17

    .line 68
    .local v17, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lorg/webrtc/CameraSession$FailureType;->ERROR:Lorg/webrtc/CameraSession$FailureType;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v5}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    .line 104
    .end local v17    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 74
    .restart local v11    # "camera":Landroid/hardware/Camera;
    :catch_1
    move-exception v17

    .line 75
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Landroid/hardware/Camera;->release()V

    .line 76
    sget-object v4, Lorg/webrtc/CameraSession$FailureType;->ERROR:Lorg/webrtc/CameraSession$FailureType;

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v5}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v12    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v13    # "captureFormat":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .restart local v20    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v21    # "pictureSize":Lorg/webrtc/Size;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 101
    new-instance v4, Lorg/webrtc/Camera1Session;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v4 .. v15}, Lorg/webrtc/Camera1Session;-><init>(Lorg/webrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;Landroid/media/MediaRecorder;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;J)V

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onDone(Lorg/webrtc/CameraSession;)V

    goto :goto_1
.end method

.method private static findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    .prologue
    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/webrtc/Camera1Enumerator;->convertFramerates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "supportedFramerates":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;>;"
    const-string v3, "Camera1Session"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Available fps ranges: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v2, p3}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object v0

    .line 138
    .local v0, "fpsRange":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/webrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 137
    invoke-static {v3, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;

    move-result-object v1

    .line 139
    .local v1, "previewSize":Lorg/webrtc/Size;
    sget-object v3, Lorg/webrtc/Camera1Session;->camera1ResolutionHistogram:Lorg/webrtc/Histogram;

    invoke-static {v3, v1}, Lorg/webrtc/CameraEnumerationAndroid;->reportCameraResolution(Lorg/webrtc/Histogram;Lorg/webrtc/Size;)V

    .line 141
    new-instance v3, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v4, v1, Lorg/webrtc/Size;->width:I

    iget v5, v1, Lorg/webrtc/Size;->height:I

    invoke-direct {v3, v4, v5, v0}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IILorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    return-object v3
.end method

.method private static findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/webrtc/Size;
    .locals 1
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-static {v0, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceOrientation()I
    .locals 4

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "orientation":I
    iget-object v2, p0, Lorg/webrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 338
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 350
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    .line 340
    :pswitch_0
    const/16 v0, 0x5a

    .line 341
    goto :goto_0

    .line 343
    :pswitch_1
    const/16 v0, 0xb4

    .line 344
    goto :goto_0

    .line 346
    :pswitch_2
    const/16 v0, 0x10e

    .line 347
    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFrameOrientation()I
    .locals 2

    .prologue
    .line 357
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->getDeviceOrientation()I

    move-result v0

    .line 358
    .local v0, "rotation":I
    iget-object v1, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    .line 359
    rsub-int v0, v0, 0x168

    .line 361
    :cond_0
    iget-object v1, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private listenForBytebufferFrames()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v1, Lorg/webrtc/Camera1Session$3;

    invoke-direct {v1, p0}, Lorg/webrtc/Camera1Session$3;-><init>(Lorg/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 332
    return-void
.end method

.method private listenForTextureFrames()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    new-instance v1, Lorg/webrtc/Camera1Session$2;

    invoke-direct {v1, p0}, Lorg/webrtc/Camera1Session$2;-><init>(Lorg/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->startListening(Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 287
    return-void
.end method

.method private startCapturing()V
    .locals 3

    .prologue
    .line 191
    const-string v1, "Camera1Session"

    const-string v2, "Start capturing"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 194
    sget-object v1, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    iput-object v1, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    .line 196
    iget-object v1, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v2, Lorg/webrtc/Camera1Session$1;

    invoke-direct {v2, p0}, Lorg/webrtc/Camera1Session$1;-><init>(Lorg/webrtc/Camera1Session;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 215
    iget-boolean v1, p0, Lorg/webrtc/Camera1Session;->captureToTexture:Z

    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->listenForTextureFrames()V

    .line 221
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->listenForBytebufferFrames()V

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->stopInternal()V

    .line 224
    iget-object v1, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/webrtc/CameraSession$Events;->onCameraError(Lorg/webrtc/CameraSession;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopInternal()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "Camera1Session"

    const-string v1, "Stop internal"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 231
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    sget-object v1, Lorg/webrtc/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/Camera1Session$SessionState;

    if-ne v0, v1, :cond_0

    .line 232
    const-string v0, "Camera1Session"

    const-string v1, "Camera is already stopped"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 236
    :cond_0
    sget-object v0, Lorg/webrtc/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/Camera1Session$SessionState;

    iput-object v0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    .line 237
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 241
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 242
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 243
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    invoke-interface {v0, p0}, Lorg/webrtc/CameraSession$Events;->onCameraClosed(Lorg/webrtc/CameraSession;)V

    .line 244
    const-string v0, "Camera1Session"

    const-string v1, "Stop done"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;Lorg/webrtc/Size;Z)V
    .locals 3
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "captureFormat"    # Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .param p3, "pictureSize"    # Lorg/webrtc/Size;
    .param p4, "captureToTexture"    # Z

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v1, v1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v2, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v2, v2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 112
    iget v1, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v2, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 113
    iget v1, p3, Lorg/webrtc/Size;->width:I

    iget v2, p3, Lorg/webrtc/Size;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 114
    if-nez p4, :cond_0

    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 121
    :cond_1
    const-string v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    const-string v1, "continuous-video"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 124
    :cond_2
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 125
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 6

    .prologue
    .line 180
    const-string v3, "Camera1Session"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop camera1 session on camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/Camera1Session;->cameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 182
    iget-object v3, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    sget-object v4, Lorg/webrtc/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/Camera1Session$SessionState;

    if-eq v3, v4, :cond_0

    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 184
    .local v0, "stopStartTime":J
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->stopInternal()V

    .line 185
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v2, v4

    .line 186
    .local v2, "stopTimeMs":I
    sget-object v3, Lorg/webrtc/Camera1Session;->camera1StopTimeMsHistogram:Lorg/webrtc/Histogram;

    invoke-virtual {v3, v2}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 188
    .end local v0    # "stopStartTime":J
    .end local v2    # "stopTimeMs":I
    :cond_0
    return-void
.end method
