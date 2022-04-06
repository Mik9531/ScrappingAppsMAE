.class Lorg/webrtc/CameraCapturer$9;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/CameraCapturer;->removeMediaRecorderFromCamera(Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/CameraCapturer;

.field final synthetic val$mediaRecoderEventsHandler:Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;


# direct methods
.method constructor <init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 418
    iput-object p1, p0, Lorg/webrtc/CameraCapturer$9;->this$0:Lorg/webrtc/CameraCapturer;

    iput-object p2, p0, Lorg/webrtc/CameraCapturer$9;->val$mediaRecoderEventsHandler:Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lorg/webrtc/CameraCapturer$9;->this$0:Lorg/webrtc/CameraCapturer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/webrtc/CameraCapturer$9;->val$mediaRecoderEventsHandler:Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;

    invoke-static {v0, v1, v2}, Lorg/webrtc/CameraCapturer;->access$2600(Lorg/webrtc/CameraCapturer;Landroid/media/MediaRecorder;Lorg/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 422
    return-void
.end method
