.class Lorg/webrtc/CameraCapturer$4;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/CameraCapturer;-><init>(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/CameraEnumerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/CameraCapturer;


# direct methods
.method constructor <init>(Lorg/webrtc/CameraCapturer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 270
    iput-object p1, p0, Lorg/webrtc/CameraCapturer$4;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public onCameraDisconnected()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onCameraError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 272
    return-void
.end method

.method public onCameraFreezed(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 276
    return-void
.end method

.method public onCameraOpening(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraName"    # Ljava/lang/String;

    .prologue
    .line 278
    return-void
.end method

.method public onFirstFrameAvailable()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method
