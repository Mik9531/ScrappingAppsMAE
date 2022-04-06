.class Lorg/webrtc/Camera2Session;
.super Ljava/lang/Object;
.source "Camera2Session.java"

# interfaces
.implements Lorg/webrtc/CameraSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/Camera2Session$CameraCaptureCallback;,
        Lorg/webrtc/Camera2Session$CaptureSessionCallback;,
        Lorg/webrtc/Camera2Session$CameraStateCallback;,
        Lorg/webrtc/Camera2Session$SessionState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera2Session"

.field private static final camera2ResolutionHistogram:Lorg/webrtc/Histogram;

.field private static final camera2StartTimeMsHistogram:Lorg/webrtc/Histogram;

.field private static final camera2StopTimeMsHistogram:Lorg/webrtc/Histogram;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final callback:Lorg/webrtc/CameraSession$CreateSessionCallback;

.field private cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final cameraId:Ljava/lang/String;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private cameraOrientation:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

.field private captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final constructionTimeNs:J

.field private final events:Lorg/webrtc/CameraSession$Events;

.field private firstFrameReported:Z

.field private fpsUnitFactor:I

.field private final framerate:I

.field private final height:I

.field private isCameraFrontFacing:Z

.field private final mediaRecorderSurface:Landroid/view/Surface;

.field private state:Lorg/webrtc/Camera2Session$SessionState;

.field private surface:Landroid/view/Surface;

.field private final surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private final videoFrameEmitTrialEnabled:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    const/16 v2, 0x32

    const/4 v1, 0x1

    .line 39
    const-string v0, "WebRTC.Android.Camera2.StartTimeMs"

    .line 40
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera2Session;->camera2StartTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 41
    const-string v0, "WebRTC.Android.Camera2.StopTimeMs"

    .line 42
    invoke-static {v0, v1, v3, v2}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera2Session;->camera2StopTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 43
    const-string v0, "WebRTC.Android.Camera2.Resolution"

    sget-object v1, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 43
    invoke-static {v0, v1}, Lorg/webrtc/Histogram;->createEnumeration(Ljava/lang/String;I)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera2Session;->camera2ResolutionHistogram:Lorg/webrtc/Histogram;

    return-void
.end method

.method private constructor <init>(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/SurfaceTextureHelper;Landroid/media/MediaRecorder;Ljava/lang/String;III)V
    .locals 3
    .param p1, "callback"    # Lorg/webrtc/CameraSession$CreateSessionCallback;
    .param p2, "events"    # Lorg/webrtc/CameraSession$Events;
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p5, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p6, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p7, "cameraId"    # Ljava/lang/String;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "framerate"    # I

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lorg/webrtc/Camera2Session$SessionState;->RUNNING:Lorg/webrtc/Camera2Session$SessionState;

    iput-object v0, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/Camera2Session;->firstFrameReported:Z

    .line 315
    const-string v0, "Camera2Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create new camera2 session on camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "VideoFrameEmit"

    .line 317
    invoke-static {v0}, Lorg/webrtc/PeerConnectionFactory;->fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/Camera2Session;->videoFrameEmitTrialEnabled:Z

    .line 320
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/Camera2Session;->constructionTimeNs:J

    .line 322
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 323
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->callback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    .line 324
    iput-object p2, p0, Lorg/webrtc/Camera2Session;->events:Lorg/webrtc/CameraSession$Events;

    .line 325
    iput-object p3, p0, Lorg/webrtc/Camera2Session;->applicationContext:Landroid/content/Context;

    .line 326
    iput-object p4, p0, Lorg/webrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 327
    iput-object p5, p0, Lorg/webrtc/Camera2Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 328
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/webrtc/Camera2Session;->mediaRecorderSurface:Landroid/view/Surface;

    .line 329
    iput-object p7, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    .line 330
    iput p8, p0, Lorg/webrtc/Camera2Session;->width:I

    .line 331
    iput p9, p0, Lorg/webrtc/Camera2Session;->height:I

    .line 332
    iput p10, p0, Lorg/webrtc/Camera2Session;->framerate:I

    .line 334
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->start()V

    .line 335
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/webrtc/Camera2Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/Camera2Session;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/webrtc/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$102(Lorg/webrtc/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/webrtc/Camera2Session;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->mediaRecorderSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/webrtc/Camera2Session;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/webrtc/Camera2Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget v0, p0, Lorg/webrtc/Camera2Session;->fpsUnitFactor:I

    return v0
.end method

.method static synthetic access$1600(Lorg/webrtc/Camera2Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/webrtc/Camera2Session;->firstFrameReported:Z

    return v0
.end method

.method static synthetic access$1602(Lorg/webrtc/Camera2Session;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/webrtc/Camera2Session;->firstFrameReported:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/webrtc/Camera2Session;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/webrtc/Camera2Session;->constructionTimeNs:J

    return-wide v0
.end method

.method static synthetic access$1800()Lorg/webrtc/Histogram;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/webrtc/Camera2Session;->camera2StartTimeMsHistogram:Lorg/webrtc/Histogram;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/webrtc/Camera2Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->getFrameOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/webrtc/Camera2Session;)Lorg/webrtc/Camera2Session$SessionState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/webrtc/Camera2Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/webrtc/Camera2Session;->isCameraFrontFacing:Z

    return v0
.end method

.method static synthetic access$202(Lorg/webrtc/Camera2Session;Lorg/webrtc/Camera2Session$SessionState;)Lorg/webrtc/Camera2Session$SessionState;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Lorg/webrtc/Camera2Session$SessionState;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/webrtc/Camera2Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget v0, p0, Lorg/webrtc/Camera2Session;->cameraOrientation:I

    return v0
.end method

.method static synthetic access$2200(Lorg/webrtc/Camera2Session;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/webrtc/Camera2Session;->videoFrameEmitTrialEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/Camera2Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->stopInternal()V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$CreateSessionCallback;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->callback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$Events;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->events:Lorg/webrtc/CameraSession$Events;

    return-object v0
.end method

.method static synthetic access$600(Lorg/webrtc/Camera2Session;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$702(Lorg/webrtc/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    return-object v0
.end method

.method static synthetic access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/Camera2Session;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    return-object v0
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .prologue
    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    return-void
.end method

.method public static create(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/SurfaceTextureHelper;Landroid/media/MediaRecorder;Ljava/lang/String;III)V
    .locals 11
    .param p0, "callback"    # Lorg/webrtc/CameraSession$CreateSessionCallback;
    .param p1, "events"    # Lorg/webrtc/CameraSession$Events;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p5, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p6, "cameraId"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "framerate"    # I

    .prologue
    .line 308
    new-instance v0, Lorg/webrtc/Camera2Session;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/webrtc/Camera2Session;-><init>(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/SurfaceTextureHelper;Landroid/media/MediaRecorder;Ljava/lang/String;III)V

    .line 310
    return-void
.end method

.method private findCaptureFormat()V
    .locals 8

    .prologue
    .line 356
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 358
    iget-object v5, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 359
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Range;

    .line 360
    .local v2, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v2}, Lorg/webrtc/Camera2Enumerator;->getFpsUnitFactor([Landroid/util/Range;)I

    move-result v5

    iput v5, p0, Lorg/webrtc/Camera2Session;->fpsUnitFactor:I

    .line 361
    iget v5, p0, Lorg/webrtc/Camera2Session;->fpsUnitFactor:I

    .line 362
    invoke-static {v2, v5}, Lorg/webrtc/Camera2Enumerator;->convertFramerates([Landroid/util/Range;I)Ljava/util/List;

    move-result-object v3

    .line 363
    .local v3, "framerateRanges":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;>;"
    iget-object v5, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5}, Lorg/webrtc/Camera2Enumerator;->getSupportedSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v4

    .line 364
    .local v4, "sizes":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/Size;>;"
    const-string v5, "Camera2Session"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Available preview sizes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v5, "Camera2Session"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Available fps ranges: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    :cond_0
    const-string v5, "No supported capture formats."

    invoke-direct {p0, v5}, Lorg/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    .line 380
    :goto_0
    return-void

    .line 372
    :cond_1
    iget v5, p0, Lorg/webrtc/Camera2Session;->framerate:I

    .line 373
    invoke-static {v3, v5}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object v0

    .line 375
    .local v0, "bestFpsRange":Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    iget v5, p0, Lorg/webrtc/Camera2Session;->width:I

    iget v6, p0, Lorg/webrtc/Camera2Session;->height:I

    invoke-static {v4, v5, v6}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;

    move-result-object v1

    .line 376
    .local v1, "bestSize":Lorg/webrtc/Size;
    sget-object v5, Lorg/webrtc/Camera2Session;->camera2ResolutionHistogram:Lorg/webrtc/Histogram;

    invoke-static {v5, v1}, Lorg/webrtc/CameraEnumerationAndroid;->reportCameraResolution(Lorg/webrtc/Histogram;Lorg/webrtc/Size;)V

    .line 378
    new-instance v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v6, v1, Lorg/webrtc/Size;->width:I

    iget v7, v1, Lorg/webrtc/Size;->height:I

    invoke-direct {v5, v6, v7, v0}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IILorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    iput-object v5, p0, Lorg/webrtc/Camera2Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 379
    const-string v5, "Camera2Session"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using capture format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/webrtc/Camera2Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDeviceOrientation()I
    .locals 4

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 448
    .local v0, "orientation":I
    iget-object v2, p0, Lorg/webrtc/Camera2Session;->applicationContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 449
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 461
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    .line 451
    :pswitch_0
    const/16 v0, 0x5a

    .line 452
    goto :goto_0

    .line 454
    :pswitch_1
    const/16 v0, 0xb4

    .line 455
    goto :goto_0

    .line 457
    :pswitch_2
    const/16 v0, 0x10e

    .line 458
    goto :goto_0

    .line 449
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
    .line 468
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->getDeviceOrientation()I

    move-result v0

    .line 469
    .local v0, "rotation":I
    iget-boolean v1, p0, Lorg/webrtc/Camera2Session;->isCameraFrontFacing:Z

    if-nez v1, :cond_0

    .line 470
    rsub-int v0, v0, 0x168

    .line 472
    :cond_0
    iget v1, p0, Lorg/webrtc/Camera2Session;->cameraOrientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private openCamera()V
    .locals 5

    .prologue
    .line 383
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 385
    const-string v1, "Camera2Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->events:Lorg/webrtc/CameraSession$Events;

    invoke-interface {v1}, Lorg/webrtc/CameraSession$Events;->onCameraOpening()V

    .line 389
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    new-instance v3, Lorg/webrtc/Camera2Session$CameraStateCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/webrtc/Camera2Session$CameraStateCallback;-><init>(Lorg/webrtc/Camera2Session;Lorg/webrtc/Camera2Session$1;)V

    iget-object v4, p0, Lorg/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 433
    const-string v1, "Camera2Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    sget-object v2, Lorg/webrtc/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/Camera2Session$SessionState;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 436
    .local v0, "startFailure":Z
    :goto_0
    sget-object v1, Lorg/webrtc/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/Camera2Session$SessionState;

    iput-object v1, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    .line 437
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->stopInternal()V

    .line 438
    if-eqz v0, :cond_1

    .line 439
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->callback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    sget-object v2, Lorg/webrtc/CameraSession$FailureType;->ERROR:Lorg/webrtc/CameraSession$FailureType;

    invoke-interface {v1, v2, p1}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    .line 443
    :goto_1
    return-void

    .line 435
    .end local v0    # "startFailure":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 441
    .restart local v0    # "startFailure":Z
    :cond_1
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->events:Lorg/webrtc/CameraSession$Events;

    invoke-interface {v1, p0, p1}, Lorg/webrtc/CameraSession$Events;->onCameraError(Lorg/webrtc/CameraSession;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private start()V
    .locals 3

    .prologue
    .line 338
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 339
    const-string v1, "Camera2Session"

    const-string v2, "start"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/webrtc/Camera2Session;->cameraOrientation:I

    .line 348
    iget-object v1, p0, Lorg/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/webrtc/Camera2Session;->isCameraFrontFacing:Z

    .line 351
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->findCaptureFormat()V

    .line 352
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->openCamera()V

    .line 353
    :goto_1
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraCharacteristics(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    goto :goto_1

    .line 348
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    const-string v0, "Camera2Session"

    const-string v1, "Stop internal"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 413
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 415
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 417
    iput-object v2, p0, Lorg/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 421
    iput-object v2, p0, Lorg/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    .line 423
    :cond_1
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 425
    iput-object v2, p0, Lorg/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 428
    :cond_2
    const-string v0, "Camera2Session"

    const-string v1, "Stop done"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 6

    .prologue
    .line 398
    const-string v3, "Camera2Session"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop camera2 session on camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 400
    iget-object v3, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    sget-object v4, Lorg/webrtc/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/Camera2Session$SessionState;

    if-eq v3, v4, :cond_0

    .line 401
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 402
    .local v0, "stopStartTime":J
    sget-object v3, Lorg/webrtc/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/Camera2Session$SessionState;

    iput-object v3, p0, Lorg/webrtc/Camera2Session;->state:Lorg/webrtc/Camera2Session$SessionState;

    .line 403
    invoke-direct {p0}, Lorg/webrtc/Camera2Session;->stopInternal()V

    .line 404
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v2, v4

    .line 405
    .local v2, "stopTimeMs":I
    sget-object v3, Lorg/webrtc/Camera2Session;->camera2StopTimeMsHistogram:Lorg/webrtc/Histogram;

    invoke-virtual {v3, v2}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 407
    .end local v0    # "stopStartTime":J
    .end local v2    # "stopTimeMs":I
    :cond_0
    return-void
.end method
