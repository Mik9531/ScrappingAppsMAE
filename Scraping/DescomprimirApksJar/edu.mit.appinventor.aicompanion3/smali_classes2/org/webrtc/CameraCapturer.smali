.class abstract Lorg/webrtc/CameraCapturer;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/CameraVideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/CameraCapturer$MediaRecorderState;,
        Lorg/webrtc/CameraCapturer$SwitchState;
    }
.end annotation


# static fields
.field private static final MAX_OPEN_CAMERA_ATTEMPTS:I = 0x3

.field private static final OPEN_CAMERA_DELAY_MS:I = 0x1f4

.field private static final OPEN_CAMERA_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CameraCapturer"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private final cameraEnumerator:Lorg/webrtc/CameraEnumerator;

.field private cameraName:Ljava/lang/String;

.field private final cameraSessionEventsHandler:Lorg/webrtc/CameraSession$Events;

.field private cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

.field private cameraThreadHandler:Landroid/os/Handler;

.field private capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

.field private final createSessionCallback:Lorg/webrtc/CameraSession$CreateSessionCallback;

.field private currentSession:Lorg/webrtc/CameraSession;

.field private final eventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

.field private firstFrameObserved:Z

.field private framerate:I

.field private height:I

.field private mediaRecorderEventsHandler:Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

.field private mediaRecorderState:Lorg/webrtc/CameraCapturer$MediaRecorderState;

.field private openAttemptsRemaining:I

.field private final openCameraTimeoutRunnable:Ljava/lang/Runnable;

.field private sessionOpening:Z

.field private final stateLock:Ljava/lang/Object;

.field private surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

.field private switchState:Lorg/webrtc/CameraCapturer$SwitchState;

.field private final uiThreadHandler:Landroid/os/Handler;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/CameraEnumerator;)V
    .locals 4
    .param p1, "cameraName"    # Ljava/lang/String;
    .param p2, "eventsHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    .param p3, "cameraEnumerator"    # Lorg/webrtc/CameraEnumerator;

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Lorg/webrtc/CameraCapturer$1;

    invoke-direct {v1, p0}, Lorg/webrtc/CameraCapturer$1;-><init>(Lorg/webrtc/CameraCapturer;)V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->createSessionCallback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    .line 128
    new-instance v1, Lorg/webrtc/CameraCapturer$2;

    invoke-direct {v1, p0}, Lorg/webrtc/CameraCapturer$2;-><init>(Lorg/webrtc/CameraCapturer;)V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraSessionEventsHandler:Lorg/webrtc/CameraSession$Events;

    .line 235
    new-instance v1, Lorg/webrtc/CameraCapturer$3;

    invoke-direct {v1, p0}, Lorg/webrtc/CameraCapturer$3;-><init>(Lorg/webrtc/CameraCapturer;)V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    .line 249
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 257
    sget-object v1, Lorg/webrtc/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    .line 264
    sget-object v1, Lorg/webrtc/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderState:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    .line 269
    if-nez p2, :cond_0

    .line 270
    new-instance p2, Lorg/webrtc/CameraCapturer$4;

    .end local p2    # "eventsHandler":Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    invoke-direct {p2, p0}, Lorg/webrtc/CameraCapturer$4;-><init>(Lorg/webrtc/CameraCapturer;)V

    .line 286
    .restart local p2    # "eventsHandler":Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    :cond_0
    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->eventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 287
    iput-object p3, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    .line 288
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 289
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    .line 291
    invoke-interface {p3}, Lorg/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "deviceNames":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_1

    .line 294
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No cameras attached."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match any known camera device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/CameraCapturer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/webrtc/CameraCapturer;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraCapturer$SwitchState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    return-object v0
.end method

.method static synthetic access$102(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraCapturer$SwitchState;)Lorg/webrtc/CameraCapturer$SwitchState;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraCapturer$SwitchState;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->eventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/webrtc/CameraCapturer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-boolean v0, p0, Lorg/webrtc/CameraCapturer;->firstFrameObserved:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/webrtc/CameraCapturer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lorg/webrtc/CameraCapturer;->firstFrameObserved:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/webrtc/CameraCapturer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraEnumerator;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/webrtc/CameraCapturer;->switchCameraInternal(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderEventsHandler:Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderEventsHandler:Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/webrtc/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$1810(Lorg/webrtc/CameraCapturer;)I
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$1900(Lorg/webrtc/CameraCapturer;ILandroid/media/MediaRecorder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/MediaRecorder;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/webrtc/CameraCapturer;->createSessionInternal(ILandroid/media/MediaRecorder;)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraCapturer$MediaRecorderState;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderState:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession$CreateSessionCallback;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->createSessionCallback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    return-object v0
.end method

.method static synthetic access$202(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraCapturer$MediaRecorderState;)Lorg/webrtc/CameraCapturer$MediaRecorderState;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraCapturer$MediaRecorderState;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderState:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession$Events;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraSessionEventsHandler:Lorg/webrtc/CameraSession$Events;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/webrtc/CameraCapturer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/webrtc/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/CameraCapturer;->width:I

    return v0
.end method

.method static synthetic access$2400(Lorg/webrtc/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/CameraCapturer;->height:I

    return v0
.end method

.method static synthetic access$2500(Lorg/webrtc/CameraCapturer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget v0, p0, Lorg/webrtc/CameraCapturer;->framerate:I

    return v0
.end method

.method static synthetic access$2600(Lorg/webrtc/CameraCapturer;Landroid/media/MediaRecorder;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Landroid/media/MediaRecorder;
    .param p2, "x2"    # Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/webrtc/CameraCapturer;->updateMediaRecorderInternal(Landroid/media/MediaRecorder;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/CameraCapturer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/CameraCapturer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/CameraCapturer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/VideoCapturer$CapturerObserver;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    return-object v0
.end method

.method static synthetic access$702(Lorg/webrtc/CameraCapturer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    return p1
.end method

.method static synthetic access$800(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    return-object v0
.end method

.method static synthetic access$802(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)Lorg/webrtc/CameraSession;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraSession;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    return-object p1
.end method

.method static synthetic access$900(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraStatistics;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    return-object v0
.end method

.method static synthetic access$902(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/CameraVideoCapturer$CameraStatistics;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/CameraCapturer;
    .param p1, "x1"    # Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    return-object p1
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .prologue
    .line 574
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 575
    const-string v0, "CameraCapturer"

    const-string v1, "Check is on camera thread failed."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on camera thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    return-void
.end method

.method private createSessionInternal(ILandroid/media/MediaRecorder;)V
    .locals 4
    .param p1, "delayMs"    # I
    .param p2, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 336
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    add-int/lit16 v2, p1, 0x2710

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/CameraCapturer$5;

    invoke-direct {v1, p0, p2}, Lorg/webrtc/CameraCapturer$5;-><init>(Lorg/webrtc/CameraCapturer;Landroid/media/MediaRecorder;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    return-void
.end method

.method private reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "switchEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 448
    const-string v0, "CameraCapturer"

    invoke-static {v0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    if-eqz p2, :cond_0

    .line 450
    invoke-interface {p2, p1}, Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method private reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "mediaRecoderEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    .prologue
    .line 512
    invoke-direct {p0}, Lorg/webrtc/CameraCapturer;->checkIsOnCameraThread()V

    .line 513
    const-string v0, "CameraCapturer"

    invoke-static {v0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-eqz p2, :cond_0

    .line 515
    invoke-interface {p2, p1}, Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;->onMediaRecorderError(Ljava/lang/String;)V

    .line 517
    :cond_0
    return-void
.end method

.method private switchCameraInternal(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 6
    .param p1, "switchEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 455
    const-string v3, "CameraCapturer"

    const-string v4, "switchCamera internal"

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    invoke-interface {v3}, Lorg/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "deviceNames":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 460
    if-eqz p1, :cond_0

    .line 461
    const-string v3, "No camera to switch to."

    invoke-interface {p1, v3}, Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v4, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 467
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    sget-object v5, Lorg/webrtc/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

    if-eq v3, v5, :cond_2

    .line 468
    const-string v3, "Camera switch already in progress."

    invoke-direct {p0, v3, p1}, Lorg/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 469
    monitor-exit v4

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 471
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderState:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    sget-object v5, Lorg/webrtc/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    if-eq v3, v5, :cond_3

    .line 472
    const-string v3, "switchCamera: media recording is active"

    invoke-direct {p0, v3, p1}, Lorg/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 473
    monitor-exit v4

    goto :goto_0

    .line 475
    :cond_3
    iget-boolean v3, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-nez v3, :cond_4

    .line 476
    const-string v3, "switchCamera: camera is not running."

    invoke-direct {p0, v3, p1}, Lorg/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 477
    monitor-exit v4

    goto :goto_0

    .line 480
    :cond_4
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 481
    iget-boolean v3, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-eqz v3, :cond_5

    .line 482
    sget-object v3, Lorg/webrtc/CameraCapturer$SwitchState;->PENDING:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    .line 483
    monitor-exit v4

    goto :goto_0

    .line 485
    :cond_5
    sget-object v3, Lorg/webrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    .line 488
    const-string v3, "CameraCapturer"

    const-string v5, "switchCamera: Stopping session"

    invoke-static {v3, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {v3}, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->release()V

    .line 490
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    .line 491
    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 492
    .local v2, "oldSession":Lorg/webrtc/CameraSession;
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v5, Lorg/webrtc/CameraCapturer$10;

    invoke-direct {v5, p0, v2}, Lorg/webrtc/CameraCapturer$10;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 500
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 501
    .local v0, "cameraNameIndex":I
    add-int/lit8 v3, v0, 0x1

    array-length v5, v1

    rem-int/2addr v3, v5

    aget-object v3, v1, v3

    iput-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 503
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    .line 504
    const/4 v3, 0x1

    iput v3, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 505
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lorg/webrtc/CameraCapturer;->createSessionInternal(ILandroid/media/MediaRecorder;)V

    .line 506
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    const-string v3, "CameraCapturer"

    const-string v4, "switchCamera done"

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateMediaRecorderInternal(Landroid/media/MediaRecorder;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 5
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "mediaRecoderEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 521
    invoke-direct {p0}, Lorg/webrtc/CameraCapturer;->checkIsOnCameraThread()V

    .line 522
    if-eqz p1, :cond_2

    .line 523
    .local v0, "addMediaRecorder":Z
    :goto_0
    const-string v2, "CameraCapturer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaRecoderInternal internal. State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderState:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Switch state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Add MediaRecorder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 528
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderState:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    sget-object v4, Lorg/webrtc/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    if-ne v2, v4, :cond_1

    :cond_0
    if-nez v0, :cond_3

    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderState:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    sget-object v4, Lorg/webrtc/CameraCapturer$MediaRecorderState;->ACTIVE:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    if-eq v2, v4, :cond_3

    .line 530
    :cond_1
    const-string v2, "Incorrect state for MediaRecorder update."

    invoke-direct {p0, v2, p2}, Lorg/webrtc/CameraCapturer;->reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 532
    monitor-exit v3

    .line 571
    :goto_1
    return-void

    .end local v0    # "addMediaRecorder":Z
    :cond_2
    move v0, v2

    .line 522
    goto :goto_0

    .line 534
    .restart local v0    # "addMediaRecorder":Z
    :cond_3
    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    sget-object v4, Lorg/webrtc/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

    if-eq v2, v4, :cond_4

    .line 535
    const-string v2, "MediaRecorder update while camera is switching."

    invoke-direct {p0, v2, p2}, Lorg/webrtc/CameraCapturer;->reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 537
    monitor-exit v3

    goto :goto_1

    .line 569
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 539
    :cond_4
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-nez v2, :cond_5

    .line 540
    const-string v2, "MediaRecorder update while camera is closed."

    invoke-direct {p0, v2, p2}, Lorg/webrtc/CameraCapturer;->reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 542
    monitor-exit v3

    goto :goto_1

    .line 544
    :cond_5
    iget-boolean v2, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-eqz v2, :cond_6

    .line 545
    const-string v2, "MediaRecorder update while camera is still opening."

    invoke-direct {p0, v2, p2}, Lorg/webrtc/CameraCapturer;->reportUpdateMediaRecorderError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 547
    monitor-exit v3

    goto :goto_1

    .line 550
    :cond_6
    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderEventsHandler:Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    .line 551
    if-eqz v0, :cond_7

    sget-object v2, Lorg/webrtc/CameraCapturer$MediaRecorderState;->IDLE_TO_ACTIVE:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    :goto_2
    iput-object v2, p0, Lorg/webrtc/CameraCapturer;->mediaRecorderState:Lorg/webrtc/CameraCapturer$MediaRecorderState;

    .line 554
    const-string v2, "CameraCapturer"

    const-string v4, "updateMediaRecoder: Stopping session"

    invoke-static {v2, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {v2}, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->release()V

    .line 556
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    .line 557
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 558
    .local v1, "oldSession":Lorg/webrtc/CameraSession;
    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v4, Lorg/webrtc/CameraCapturer$11;

    invoke-direct {v4, p0, v1}, Lorg/webrtc/CameraCapturer$11;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 566
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    .line 567
    const/4 v2, 0x1

    iput v2, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 568
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lorg/webrtc/CameraCapturer;->createSessionInternal(ILandroid/media/MediaRecorder;)V

    .line 569
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    const-string v2, "CameraCapturer"

    const-string v3, "updateMediaRecoderInternal done"

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 551
    .end local v1    # "oldSession":Lorg/webrtc/CameraSession;
    :cond_7
    :try_start_2
    sget-object v2, Lorg/webrtc/CameraCapturer$MediaRecorderState;->ACTIVE_TO_IDLE:Lorg/webrtc/CameraCapturer$MediaRecorderState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 2
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "mediaRecoderEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    .prologue
    .line 406
    const-string v0, "CameraCapturer"

    const-string v1, "addMediaRecorderToCamera"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/CameraCapturer$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/CameraCapturer$8;-><init>(Lorg/webrtc/CameraCapturer;Landroid/media/MediaRecorder;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method public changeCaptureFormat(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    .prologue
    .line 379
    const-string v0, "CameraCapturer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCaptureFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    invoke-virtual {p0}, Lorg/webrtc/CameraCapturer;->stopCapture()V

    .line 382
    invoke-virtual {p0, p1, p2, p3}, Lorg/webrtc/CameraCapturer;->startCapture(III)V

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract createCameraSession(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;Landroid/media/MediaRecorder;Ljava/lang/String;III)V
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "CameraCapturer"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lorg/webrtc/CameraCapturer;->stopCapture()V

    .line 390
    return-void
.end method

.method protected getCameraName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 581
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/VideoCapturer$CapturerObserver;)V
    .locals 1
    .param p1, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "capturerObserver"    # Lorg/webrtc/VideoCapturer$CapturerObserver;

    .prologue
    .line 305
    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    .line 306
    iput-object p3, p0, Lorg/webrtc/CameraCapturer;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    .line 307
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 308
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 309
    :goto_0
    iput-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 310
    return-void

    .line 309
    :cond_0
    invoke-virtual {p1}, Lorg/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method public isScreencast()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public printStackTrace()V
    .locals 7

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, "cameraThread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 434
    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 436
    :cond_0
    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 438
    .local v0, "cameraStackTrace":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 439
    const-string v3, "CameraCapturer"

    const-string v4, "CameraCapturer stack trace:"

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 441
    .local v2, "traceElem":Ljava/lang/StackTraceElement;
    const-string v5, "CameraCapturer"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "cameraStackTrace":[Ljava/lang/StackTraceElement;
    .end local v2    # "traceElem":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public removeMediaRecorderFromCamera(Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 2
    .param p1, "mediaRecoderEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    .prologue
    .line 417
    const-string v0, "CameraCapturer"

    const-string v1, "removeMediaRecorderFromCamera"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/CameraCapturer$9;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/CameraCapturer$9;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method

.method public startCapture(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    .prologue
    .line 314
    const-string v0, "CameraCapturer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CameraCapturer must be initialized before calling startCapture."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v0, :cond_2

    .line 321
    :cond_1
    const-string v0, "CameraCapturer"

    const-string v2, "Session already open"

    invoke-static {v0, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    monitor-exit v1

    .line 333
    :goto_0
    return-void

    .line 325
    :cond_2
    iput p1, p0, Lorg/webrtc/CameraCapturer;->width:I

    .line 326
    iput p2, p0, Lorg/webrtc/CameraCapturer;->height:I

    .line 327
    iput p3, p0, Lorg/webrtc/CameraCapturer;->framerate:I

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    .line 330
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 331
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/webrtc/CameraCapturer;->createSessionInternal(ILandroid/media/MediaRecorder;)V

    .line 332
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopCapture()V
    .locals 4

    .prologue
    .line 348
    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-eqz v1, :cond_0

    .line 352
    const-string v1, "CameraCapturer"

    const-string v3, "Stop capture: Waiting for session to open"

    invoke-static {v1, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    invoke-static {v1}, Lorg/webrtc/ThreadUtils;->waitUninterruptibly(Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 356
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v1, :cond_1

    .line 357
    const-string v1, "CameraCapturer"

    const-string v3, "Stop capture: Nulling session"

    invoke-static {v1, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {v1}, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->release()V

    .line 359
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    .line 360
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 361
    .local v0, "oldSession":Lorg/webrtc/CameraSession;
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v3, Lorg/webrtc/CameraCapturer$6;

    invoke-direct {v3, p0, v0}, Lorg/webrtc/CameraCapturer$6;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    .line 368
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    invoke-interface {v1}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onCapturerStopped()V

    .line 372
    .end local v0    # "oldSession":Lorg/webrtc/CameraSession;
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture done"

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void

    .line 370
    :cond_1
    :try_start_2
    const-string v1, "CameraCapturer"

    const-string v3, "Stop capture: No session open"

    invoke-static {v1, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 2
    .param p1, "switchEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .prologue
    .line 394
    const-string v0, "CameraCapturer"

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/CameraCapturer$7;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/CameraCapturer$7;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method
